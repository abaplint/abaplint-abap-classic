* TS: src/rules/function_module_recommendations.ts:99:1 FunctionModuleRecommendations
CLASS zcl_lnt_fnctn_mdl_rcmmndtns DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_fnctn_mdl_rcmmndtn_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_i_s_r_fn_md_rc_ts_fn_md_rc RETURNING VALUE(result) TYPE REF TO zcl_lnt_fnctn_mdl_rcmmndtn_cnf.
    METHODS s_c_i_s_r_fn_md_rc_ts_fn_md_rc IMPORTING i_conf TYPE REF TO zcl_lnt_fnctn_mdl_rcmmndtn_cnf.
    METHODS r_p_i_s_r_fn_md_rc_ts_fn_md_rc IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_message IMPORTING i_index TYPE f RETURNING VALUE(result) TYPE string.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS fn_callback_208245 IMPORTING i_config_release TYPE REF TO zcl_lnt_abap_release i_func_name TYPE REF TO zcl_lnt_closure_ba6c457f i_i TYPE REF TO zcl_lnt_recommendations RETURNING VALUE(result) TYPE abap_bool.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_fnctn_mdl_rcmmndtns IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_fnctn_mdl_rcmmndtn_cnf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = |https://docs.abapopenchecks.org/checks/53/|.
    t8 = t12.
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t18.
    t18->load( ).
    APPEND |SingleFile| TO t18->items.
    t18->save( ).
    t14 = t18.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t27) = |CALL FUNCTION 'GUID_CREATE'\n  IMPORTING\n    ev_guid_32 = gui|.
    t27 = t27 && |d.|.
    DATA(t28) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t28->has = abap_true.
    t28->value = t27.
    t24 = t28.
    DATA(t34) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t34->has = abap_true.
    t34->value = |guid = cl_system_uuid=>create_uuid_c32_static( ).|.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |function_module_recommendations| i_title = |Function Module Recommendations| i_short_description = |Suggests replacements for various function modules| i_bad_example = t24 i_good_example = t34 i_extended_information = t8 i_tags = t14 i_pragma = t36 i_pseudo_comment = t38 ).
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

  METHOD g_c_i_s_r_fn_md_rc_ts_fn_md_rc.
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_i_s_r_fn_md_rc_ts_fn_md_rc.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_fn_md_rc_ts_fn_md_rc.
    CONSTANTS range_i32_lower TYPE f VALUE '-2147483648'.
    CONSTANTS range_i32_upper TYPE f VALUE '2147483647'.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t6 = me->conf->zlnt_view_read_sr_0a6bdd5621d6( ).
    IF xsdbool( xsdbool( t6 IS BOUND ) = abap_false ) = abap_true.
      result = t2.
      RETURN.
    ENDIF.
    DATA t9 TYPE REF TO zcl_lnt_abap_release.
    t9 = me->reg->get_config( )->get_release( ).
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t16 TYPE REF TO zcl_lnt_structure_node.
    t16 = t1->structure.
    DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t16 IS INITIAL ) = abap_true.
    ELSE.
      DATA t27 TYPE REF TO zcl_lnt_structure_node.
      t27 = t16.
      DATA(t29) = zlnt_runtime_desc_78196487750d=>zlnt_member_d198_f214049174db.
      t22 = t27->find_all_expressions( i_type_9913 = t29 ).
    ENDIF.
    t14 = t22.
    DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t14 IS BOUND ) = abap_true.
      t30 = t14.
    ELSE.
      CREATE OBJECT t30.
    ENDIF.
    t13 = t30.
    DATA t36 TYPE REF TO zcl_lnt_expression_node.
    DATA t37 TYPE REF TO object.
    DATA(t38) = VALUE i( ).
    DO.
      t13->load( ).
      IF t38 >= lines( t13->items ).
        EXIT.
      ENDIF.
      CLEAR t37.
      READ TABLE t13->items INDEX t38 + 1 INTO t37.
      t38 = t38 + 1.
      DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t39.
      CLEAR t36.
      IF t37 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t39 ?= t37.
        DATA t40 TYPE REF TO object.
        t40 = t39->as_ref( ).
        t36 ?= t40.
      ELSE.
        t36 ?= t37.
      ENDIF.
      DATA t41 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t41.
      t41 = t36->get_first_token( ).
      DATA t44 TYPE REF TO zcl_lnt_closure_ba6c457f.
      CLEAR t44.
      DATA(t46) = VALUE string( ).
      DATA(t47) = VALUE string( ).
      t47 = t41->str.
      DATA(t52) = strlen( t47 ).
      t46 = t47.
      IF t46 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t46 TO UPPER CASE.
      ELSE.
        t46 = zlnt_runtime_uppe_91169605024d=>full( t46 ).
      ENDIF.
      t44 = NEW zcl_lnt_closure_ba6c457f( i_value = t46 ).
      DATA(t54) = VALUE abap_bool( ).
      DATA(t55) = VALUE string( ).
      t55 = t44->value.
      DATA(t57) = |'|.
      DATA(t58) = strlen( t55 ).
      DATA(t59) = VALUE i( ).
      DATA(t60) = VALUE i( ).
      DATA(t61) = VALUE string( ).
      t59 = strlen( t57 ).
      IF t59 = 0.
        t54 = abap_true.
      ELSEIF t59 <= t58.
        t60 = 0.
        t61 = t55+t60(t59).
        IF t61 = t57.
          t54 = abap_true.
        ENDIF.
      ENDIF.
      IF xsdbool( t54 = abap_false ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t64) = VALUE string( ).
      t64 = t44->value.
      DATA(t67) = VALUE string( ).
      DATA(t69) = 1.
      DATA(t70) = VALUE i( ).
      DATA(t71) = VALUE i( ).
      t71 = strlen( t44->value ).
      DATA(t75) = 1.
      t70 = t71 - t75.
      DATA(t76) = strlen( t64 ).
      IF t69 < 0.
        t69 = t76 + t69.
      ENDIF.
      t69 = COND i( WHEN t69 < 0 THEN 0 WHEN t69 > t76 THEN t76 ELSE t69 ).
      IF t70 < 0.
        t70 = t76 + t70.
      ENDIF.
      t70 = COND i( WHEN t70 < 0 THEN 0 WHEN t70 > t76 THEN t76 ELSE t70 ).
      IF t70 > t69.
        t76 = t70 - t69.
        t67 = t64+t69(t76).
      ELSE.
        CLEAR t67.
      ENDIF.
      t44->value = t67.
      DELETE t44->zlnt_record_delet_0597644d88b4 WHERE table_line = `value`.
      DATA(t77) = VALUE f( ).
      DATA(t79) = VALUE f( ).
      t79 = CONV f( -1 ).
      DATA(t81) = VALUE f( ).
      t81 = CONV f( -1 ).
      DATA t83 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t83.
      t83 = me->conf->zlnt_view_read_sr_0a6bdd5621d6( ).
      DATA t85 TYPE REF TO zcl_lnt_recommendations.
      CLEAR t85.
      DATA t86 TYPE REF TO object.
      CLEAR t86.
      DATA(t87) = VALUE i( ).
      DO.
        t83->load( ).
        IF t87 >= lines( t83->items ).
          EXIT.
        ENDIF.
        CLEAR t86.
        READ TABLE t83->items INDEX t87 + 1 INTO t86.
        t87 = t87 + 1.
        DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t88.
        CLEAR t85.
        IF t86 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t88 ?= t86.
          CLEAR t85.
          IF t88 IS BOUND.
            IF t88->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              TRY.
                  t85 ?= t88->oval.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
            ENDIF.
            IF t85 IS NOT BOUND.
              IF t88->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t89 TYPE REF TO zlnt_view_storage_74017ca272ac.
                CLEAR t89.
                IF t88->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
                ENDIF.
                TRY.
                    t89 ?= t88->oval.
                  CATCH cx_sy_move_cast_error.
                    RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
                ENDTRY.
                IF t89->structural( ) <> abap_true.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
                ENDIF.
              ENDIF.
              DATA(t90) = VALUE string( ).
              DATA(t91) = VALUE string( ).
              DATA t92 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t92.
              t85 = NEW zcl_lnt_recommendations( view_source = t88 i_name = t90 i_replace_2bce = t91 i_from = t92 ).
            ENDIF.
          ENDIF.
        ELSE.
          t85 ?= t86.
        ENDIF.
        DATA(t95) = CONV f( 1 ).
        t79 = t79 + t95.
        DATA t101 TYPE REF TO zcl_lnt_recommendations.
        t101 = t85.
        DATA(t103) = VALUE abap_bool( ).
        DATA(t105) = VALUE string( ).
        DATA(t106) = VALUE string( ).
        t106 = t101->zlnt_view_read_sr_76927b478f89( ).
        DATA(t108) = strlen( t106 ).
        t105 = t106.
        IF t105 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t105 TO UPPER CASE.
        ELSE.
          t105 = zlnt_runtime_uppe_91169605024d=>full( t105 ).
        ENDIF.
        IF xsdbool( t105 <> t44->value ) = abap_true.
          t103 = abap_false.
        ELSE.
          DATA(t112) = VALUE abap_bool( ).
          DATA t114 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t114 = t101->zlnt_view_read_sr_6d67e9b680e2( ).
          DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t117.
          CLEAR t117.
          DATA(t119) = VALUE abap_bool( ).
          IF t114 IS INITIAL.
            t119 = abap_true.
          ELSEIF t114->has = abap_false.
            t119 = abap_true.
          ENDIF.
          IF t119 = abap_true.
            t112 = abap_true.
          ELSE.
            DATA t123 TYPE REF TO zcl_lnt_abap_release.
            CLEAR t123.
            DATA(t125) = VALUE string( ).
            t125 = t101->zlnt_view_read_sr_6d67e9b680e2( )->value.
            t123 = zcl_lnt_fnctn_mdl_rcmmndtn_mdl=>resolve_release( i_from = t125 ).
            DATA(t128) = VALUE abap_bool( ).
            DATA(t129) = VALUE abap_bool( ).
            DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t132.
            CLEAR t132.
            t129 = xsdbool( xsdbool( t123 IS INITIAL ) = abap_false ).
            t128 = t129.
            IF t129 = abap_true.
              t128 = zcl_lnt_version_module=>release_at_least( i_running = t9 i_required = t123 ).
            ENDIF.
            t112 = t128.
          ENDIF.
          t103 = t112.
        ENDIF.
        IF t103 = abap_true.
          t81 = t79.
          EXIT.
        ENDIF.
      ENDDO.
      t77 = t81.
      IF xsdbool( t77 >= CONV f( 0 ) ) = abap_true.
        DATA t147 TYPE REF TO zcl_lnt_issue.
        CLEAR t147.
        DATA(t150) = VALUE string( ).
        DATA(t151) = VALUE f( ).
        t151 = t77.
        DATA(t154) = VALUE string( ).
        DATA(t155) = VALUE string( ).
        DATA(t156) = VALUE string( ).
        DATA(t157) = |Recommendation: Replace Function |.
        DATA(t158) = VALUE string( ).
        DATA t159 TYPE REF TO zcl_lnt_recommendations.
        CLEAR t159.
        DATA t160 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t160 = me->conf->zlnt_view_read_sr_0a6bdd5621d6( ).
        DATA(t162) = VALUE i( ).
        IF t151 > range_i32_upper.
          t162 = range_i32_upper.
        ELSEIF t151 < range_i32_lower.
          t162 = range_i32_lower.
        ELSE.
          t162 = trunc( t151 ).
        ENDIF.
        t162 = t162 + 1.
        DATA t164 TYPE REF TO object.
        CLEAR t164.
        t160->load( ).
        CLEAR t164.
        READ TABLE t160->items INDEX t162 INTO t164.
        DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t165.
        CLEAR t159.
        IF t164 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t165 ?= t164.
          CLEAR t159.
          IF t165 IS BOUND.
            IF t165->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              TRY.
                  t159 ?= t165->oval.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
            ENDIF.
            IF t159 IS NOT BOUND.
              IF t165->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t166 TYPE REF TO zlnt_view_storage_74017ca272ac.
                CLEAR t166.
                IF t165->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
                ENDIF.
                TRY.
                    t166 ?= t165->oval.
                  CATCH cx_sy_move_cast_error.
                    RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
                ENDTRY.
                IF t166->structural( ) <> abap_true.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
                ENDIF.
              ENDIF.
              DATA(t167) = VALUE string( ).
              DATA(t168) = VALUE string( ).
              DATA t169 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t169.
              t159 = NEW zcl_lnt_recommendations( view_source = t165 i_name = t167 i_replace_2bce = t168 i_from = t169 ).
            ENDIF.
          ENDIF.
        ELSE.
          t159 ?= t164.
        ENDIF.
        t158 = t159->zlnt_view_read_sr_76927b478f89( ).
        DATA(t170) = strlen( t157 ).
        t156 = |{ t157 }{ t158 }|.
        DATA(t172) = strlen( t156 ).
        t155 = |{ t156 }{ | with: | }|.
        DATA(t173) = VALUE string( ).
        DATA t174 TYPE REF TO zcl_lnt_recommendations.
        CLEAR t174.
        DATA t175 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t175 = me->conf->zlnt_view_read_sr_0a6bdd5621d6( ).
        DATA(t177) = VALUE i( ).
        IF t151 > range_i32_upper.
          t177 = range_i32_upper.
        ELSEIF t151 < range_i32_lower.
          t177 = range_i32_lower.
        ELSE.
          t177 = trunc( t151 ).
        ENDIF.
        t177 = t177 + 1.
        DATA t179 TYPE REF TO object.
        CLEAR t179.
        t175->load( ).
        CLEAR t179.
        READ TABLE t175->items INDEX t177 INTO t179.
        DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t180.
        CLEAR t174.
        IF t179 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t180 ?= t179.
          CLEAR t174.
          IF t180 IS BOUND.
            IF t180->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              TRY.
                  t174 ?= t180->oval.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
            ENDIF.
            IF t174 IS NOT BOUND.
              IF t180->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t181 TYPE REF TO zlnt_view_storage_74017ca272ac.
                CLEAR t181.
                IF t180->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
                ENDIF.
                TRY.
                    t181 ?= t180->oval.
                  CATCH cx_sy_move_cast_error.
                    RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
                ENDTRY.
                IF t181->structural( ) <> abap_true.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
                ENDIF.
              ENDIF.
              DATA(t182) = VALUE string( ).
              DATA(t183) = VALUE string( ).
              DATA t184 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t184.
              t174 = NEW zcl_lnt_recommendations( view_source = t180 i_name = t182 i_replace_2bce = t183 i_from = t184 ).
            ENDIF.
          ENDIF.
        ELSE.
          t174 ?= t179.
        ENDIF.
        t173 = t174->zlnt_view_read_sr_e143aed5d80b( ).
        DATA(t185) = strlen( t155 ).
        t154 = |{ t155 }{ t173 }|.
        DATA(t187) = strlen( t154 ).
        t150 = |{ t154 }{ || }|.
        DATA(t188) = VALUE string( ).
        DATA t189 TYPE REF TO zcl_lnt_irule_metadata.
        DATA t196 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t196.
        DATA(t200) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t200->has = abap_true.
        t200->value = |https://docs.abapopenchecks.org/checks/53/|.
        t196 = t200.
        DATA t202 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t202.
        DATA t206 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t206.
        t206->load( ).
        APPEND |SingleFile| TO t206->items.
        t206->save( ).
        t202 = t206.
        DATA t212 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t212.
        DATA(t215) = |CALL FUNCTION 'GUID_CREATE'\n  IMPORTING\n    ev_guid_32 = gui|.
        t215 = t215 && |d.|.
        DATA(t216) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t216->has = abap_true.
        t216->value = t215.
        t212 = t216.
        DATA t218 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t218.
        DATA(t222) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t222->has = abap_true.
        t222->value = |guid = cl_system_uuid=>create_uuid_c32_static( ).|.
        t218 = t222.
        DATA t224 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t224.
        CLEAR t224.
        DATA t226 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t226.
        CLEAR t226.
        t189 = NEW zcl_lnt_irule_metadata( i_key = |function_module_recommendations| i_title = |Function Module Recommendations| i_short_description = |Suggests replacements for various function modules| i_bad_example = t212 i_good_example = t218 i_extended_information = t196 i_tags = t202 i_pragma = t224 i_pseudo_comment = t226 ).
        CREATE OBJECT t189->zlnt_view_ownkeys_b0e8086400eb.
        t189->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t228 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t228.
        t189->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t228 ).
        DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t229.
        IF t189->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t189->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t229 ).
        ENDIF.
        DATA t230 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t230.
        IF t189->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t189->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t230 ).
        ENDIF.
        DATA t231 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t231.
        IF t189->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t189->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t231 ).
        ENDIF.
        DATA t232 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t232.
        IF t189->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t189->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t232 ).
        ENDIF.
        DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t233.
        IF t189->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t189->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t233 ).
        ENDIF.
        DATA t234 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t234.
        IF t189->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t189->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t234 ).
        ENDIF.
        CREATE OBJECT t189->zlnt_json_ownkeys_70e5fd461788.
        t189->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t236.
        t189->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t236 ).
        DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t238.
        IF t189->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t189->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t238 ).
        ENDIF.
        DATA t240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t240.
        IF t189->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t189->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t240 ).
        ENDIF.
        DATA t242 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t242.
        IF t189->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t189->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t242 ).
        ENDIF.
        DATA t244 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t244.
        IF t189->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t189->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t244 ).
        ENDIF.
        DATA t246 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t246.
        IF t189->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t189->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t246 ).
        ENDIF.
        DATA t248 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t248.
        IF t189->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t189->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t248 ).
        ENDIF.
        t188 = t189->key.
        DATA t249 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t249.
        t249 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t251 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t251.
        t147 = zcl_lnt_issue=>at_token( i_file = t1 i_token = t41 i_message_26cb = t150 i_key = t188 i_severity = t249 i_fix = t251 ).
        t2->load( ).
        APPEND t147 TO t2->items.
        t2->save( ).
      ENDIF.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD get_message.
    CONSTANTS range_i32_lower TYPE f VALUE '-2147483648'.
    CONSTANTS range_i32_upper TYPE f VALUE '2147483647'.
    DATA(t1) = i_index.
    DATA(t3) = VALUE string( ).
    DATA(t4) = VALUE string( ).
    DATA(t5) = VALUE string( ).
    DATA(t6) = |Recommendation: Replace Function |.
    DATA(t7) = VALUE string( ).
    DATA t8 TYPE REF TO zcl_lnt_recommendations.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t9 = me->conf->zlnt_view_read_sr_0a6bdd5621d6( ).
    DATA(t11) = VALUE i( ).
    IF t1 > range_i32_upper.
      t11 = range_i32_upper.
    ELSEIF t1 < range_i32_lower.
      t11 = range_i32_lower.
    ELSE.
      t11 = trunc( t1 ).
    ENDIF.
    t11 = t11 + 1.
    DATA t13 TYPE REF TO object.
    t9->load( ).
    READ TABLE t9->items INDEX t11 INTO t13.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t13 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t14 ?= t13.
      IF t14 IS BOUND.
        IF t14->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          TRY.
              t8 ?= t14->oval.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
        ENDIF.
        IF t8 IS NOT BOUND.
          IF t14->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t15 TYPE REF TO zlnt_view_storage_74017ca272ac.
            IF t14->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
            ENDIF.
            TRY.
                t15 ?= t14->oval.
              CATCH cx_sy_move_cast_error.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
            ENDTRY.
            IF t15->structural( ) <> abap_true.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
            ENDIF.
          ENDIF.
          DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t8 = NEW zcl_lnt_recommendations( view_source = t14 i_name = VALUE string( ) i_replace_2bce = VALUE string( ) i_from = t18 ).
        ENDIF.
      ENDIF.
    ELSE.
      t8 ?= t13.
    ENDIF.
    t7 = t8->zlnt_view_read_sr_76927b478f89( ).
    DATA(t19) = strlen( t6 ).
    t5 = |{ t6 }{ t7 }|.
    DATA(t21) = strlen( t5 ).
    t4 = |{ t5 }{ | with: | }|.
    DATA(t22) = VALUE string( ).
    DATA t23 TYPE REF TO zcl_lnt_recommendations.
    DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t24 = me->conf->zlnt_view_read_sr_0a6bdd5621d6( ).
    DATA(t26) = VALUE i( ).
    IF t1 > range_i32_upper.
      t26 = range_i32_upper.
    ELSEIF t1 < range_i32_lower.
      t26 = range_i32_lower.
    ELSE.
      t26 = trunc( t1 ).
    ENDIF.
    t26 = t26 + 1.
    DATA t28 TYPE REF TO object.
    t24->load( ).
    READ TABLE t24->items INDEX t26 INTO t28.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t28 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t29 ?= t28.
      IF t29 IS BOUND.
        IF t29->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          TRY.
              t23 ?= t29->oval.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
        ENDIF.
        IF t23 IS NOT BOUND.
          IF t29->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t30 TYPE REF TO zlnt_view_storage_74017ca272ac.
            IF t29->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
            ENDIF.
            TRY.
                t30 ?= t29->oval.
              CATCH cx_sy_move_cast_error.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
            ENDTRY.
            IF t30->structural( ) <> abap_true.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
            ENDIF.
          ENDIF.
          DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t23 = NEW zcl_lnt_recommendations( view_source = t29 i_name = VALUE string( ) i_replace_2bce = VALUE string( ) i_from = t33 ).
        ENDIF.
      ENDIF.
    ELSE.
      t23 ?= t28.
    ENDIF.
    t22 = t23->zlnt_view_read_sr_e143aed5d80b( ).
    DATA(t34) = strlen( t4 ).
    t3 = |{ t4 }{ t22 }|.
    DATA(t36) = strlen( t3 ).
    result = |{ t3 }{ || }|.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_fnctn_mdl_rcmmndtn_cnf( me->g_c_i_s_r_fn_md_rc_ts_fn_md_rc( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_fnctn_mdl_rcmmndtn_cnf( me->g_c_i_s_r_fn_md_rc_ts_fn_md_rc( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_fnctn_mdl_rcmmndtn_cnf.
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
        t1 = NEW zcl_lnt_fnctn_mdl_rcmmndtn_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_fn_md_rc_ts_fn_md_rc( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_fn_md_rc_ts_fn_md_rc( i_file = i_file ) ).

  ENDMETHOD.

  METHOD fn_callback_208245.
    DATA(t1) = i_config_release.
    DATA(t2) = i_func_name.
    DATA(t3) = i_i.
    DATA t5 TYPE string.
    DATA t6 TYPE string.
    t6 = t3->zlnt_view_read_sr_76927b478f89( ).
    DATA(t8) = strlen( t6 ).
    t5 = t6.
    IF t5 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t5 TO UPPER CASE.
    ELSE.
      t5 = zlnt_runtime_uppe_91169605024d=>full( t5 ).
    ENDIF.
    IF xsdbool( t5 <> t2->value ) = abap_true.
      result = abap_false.
      RETURN.
    ENDIF.
    DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t13 = t3->zlnt_view_read_sr_6d67e9b680e2( ).
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t18) = VALUE abap_bool( ).
    IF t13 IS INITIAL.
      t18 = abap_true.
    ELSEIF t13->has = abap_false.
      t18 = abap_true.
    ENDIF.
    IF t18 = abap_true.
      result = abap_true.
      RETURN.
    ENDIF.
    DATA t21 TYPE REF TO zcl_lnt_abap_release.
    DATA t23 TYPE string.
    t23 = t3->zlnt_view_read_sr_6d67e9b680e2( )->value.
    t21 = zcl_lnt_fnctn_mdl_rcmmndtn_mdl=>resolve_release( i_from = t23 ).
    DATA(t26) = VALUE abap_bool( ).
    DATA(t27) = VALUE abap_bool( ).
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t27 = xsdbool( xsdbool( t21 IS INITIAL ) = abap_false ).
    t26 = t27.
    IF t27 = abap_true.
      t26 = zcl_lnt_version_module=>release_at_least( i_running = t1 i_required = t21 ).
    ENDIF.
    result = t26.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1518_989ae5a8a0b8.
  ENDMETHOD.
ENDCLASS.
