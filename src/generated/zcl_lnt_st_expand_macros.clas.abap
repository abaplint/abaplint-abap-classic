* TS: src/abap/2_statements/expand_macros.ts:64:1 ExpandMacros
CLASS zcl_lnt_st_expand_macros DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA macros TYPE REF TO zcl_lnt_macros.
    DATA global_macros TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA release_3664 TYPE REF TO zcl_lnt_abap_release.
    DATA language_version TYPE string.
    DATA reg TYPE REF TO zif_lnt_registry.
    METHODS constructor IMPORTING i_global_macros_5535 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0 i_release_7928 TYPE REF TO zcl_lnt_abap_release i_reg_f149 TYPE REF TO zif_lnt_registry OPTIONAL i_language_version_0e1d TYPE REF TO
    zlnt_runtime_opti_4ba3bdccd169 OPTIONAL.
    METHODS list_macro_names RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS find_8f95 IMPORTING i_statements TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_file TYPE REF TO zif_lnt_file i_clear_b22e TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS handle_macros IMPORTING i_statements TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_file TYPE REF TO zif_lnt_file i_seen TYPE REF TO zlnt_runtime_set__1827558fd4c7 RETURNING VALUE(result) TYPE REF TO zcl_lnt_shape_df3d0820.
    METHODS expand_contents IMPORTING i_name TYPE string i_statement TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS build_input IMPORTING i_statement TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLASS-METHODS find_name IMPORTING i_tokens TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS tokens_to_nodes IMPORTING i_tokens TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS tokens_to_nodes_one IMPORTING i_x TYPE REF TO zcl_lnt_abstract_token RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_expand_macros IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_global_macros_5535.
    DATA(t2) = i_release_7928.
    DATA(t3) = i_reg_f149.
    DATA(t4) = i_language_version_0e1d.
    DATA(t5) = VALUE abap_bool( ).
    DATA(t6) = t4.
    IF t6 IS INITIAL.
      t5 = abap_true.
    ELSEIF t6->has = abap_false.
      t5 = abap_true.
    ENDIF.
    IF t5 = abap_true.
      DATA(t10) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t10->has = abap_true.
      t10->value = |Normal|.
      t4 = t10.
    ENDIF.
    me->macros = NEW zcl_lnt_macros( i_global_macros_5535 = t1 ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `macros`.
    me->release_3664 = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `release`.
    me->language_version = t4->value.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `languageVersion`.
    me->global_macros = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `globalMacros`.
    me->reg = t3.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
  ENDMETHOD.

  METHOD list_macro_names.
    result = me->macros->macros->keys( ).

  ENDMETHOD.

  METHOD find_8f95.
    DATA(t1) = i_statements.
    DATA(t2) = i_file.
    DATA(t3) = i_clear_b22e.
    DATA(t4) = VALUE abap_bool( ).
    DATA(t5) = t3.
    IF t5 IS INITIAL.
      t4 = abap_true.
    ELSEIF t5->has = abap_false.
      t4 = abap_true.
    ENDIF.
    IF t4 = abap_true.
      DATA(t9) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t9->has = abap_true.
      t9->value = abap_true.
      t3 = t9.
    ENDIF.
    DATA t11 TYPE REF TO zcl_lnt_abstract_token.
    DATA t13 TYPE REF TO zcl_lnt_position.
    DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t15.
    DATA t17 TYPE REF TO zif_lnt_macro_references.
    DATA t19 TYPE REF TO zif_lnt_registry.
    t19 = me->reg.
    DATA t21 TYPE REF TO zif_lnt_macro_references.
    IF xsdbool( t19 IS INITIAL ) = abap_true.
    ELSE.
      t21 = t19->get_macro_references( ).
    ENDIF.
    t17 = t21.
    IF t3->value = abap_true.
      DATA(t30) = VALUE abap_bool( ).
      DATA t31 TYPE REF TO zif_lnt_macro_references.
      t31 = t17.
      IF xsdbool( xsdbool( t31 IS INITIAL ) = abap_false ) = abap_true.
        t31->clear_feba( i_filename = t2->get_filename( ) ).
      ENDIF.
      t30 = abap_false.
    ENDIF.
    DATA(t42) = VALUE i( ).
    t42 = 0.
    DO.
      t1->load( ).
      IF xsdbool( t42 < lines( t1->items ) ) = abap_false.
        EXIT.
      ENDIF.
      DATA t48 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t48.
      DATA t49 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t49.
      DATA(t51) = t42.
      t51 = t51 + 1.
      DATA t52 TYPE REF TO object.
      CLEAR t52.
      t1->load( ).
      CLEAR t52.
      READ TABLE t1->items INDEX t51 INTO t52.
      DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t53.
      CLEAR t49.
      IF t52 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t53 ?= t52.
        DATA t54 TYPE REF TO object.
        t54 = t53->as_ref( ).
        t49 ?= t54.
      ELSE.
        t49 ?= t52.
      ENDIF.
      t48 = t49.
      DATA t55 TYPE REF TO zif_lnt_statement.
      t55 = t48->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      IF xsdbool( t55 IS BOUND AND t55 IS INSTANCE OF zcl_lnt_st_define ) = abap_true.
        DATA t62 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t62.
        DATA t63 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t63 = t48->get_tokens( ).
        DATA t65 TYPE REF TO object.
        CLEAR t65.
        t63->load( ).
        CLEAR t65.
        READ TABLE t63->items INDEX 2 INTO t65.
        DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t66.
        CLEAR t62.
        IF t65 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t66 ?= t65.
          DATA t67 TYPE REF TO object.
          t67 = t66->as_ref( ).
          t62 ?= t67.
        ELSE.
          t62 ?= t65.
        ENDIF.
        t11 = t62.
        t13 = t48->get_first_token( )->start.
        CREATE OBJECT t15.
      ELSE.
        IF xsdbool( t55 IS BOUND AND t55 IS INSTANCE OF zcl_lnt_include ) = abap_true.
          DATA t83 TYPE REF TO zcl_lnt_expression_node.
          DATA(t86) = zlnt_runtime_desc_78196487750d=>zlnt_member_d85_7546e7dce3c106.
          t83 = t48->find_direct_expression( i_type_9913 = t86 ).
          DATA t87 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t87.
          IF xsdbool( t83 IS INITIAL ) = abap_true.
            CLEAR t87.
          ELSE.
            DATA(t91) = VALUE string( ).
            t91 = t83->concat_tokens( ).
            DATA(t94) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t94->has = abap_true.
            t94->value = t91.
            t87 = t94.
          ENDIF.
          DATA t95 TYPE REF TO zcl_lnt_abap_object.
          CLEAR t95.
          DATA t96 TYPE REF TO zcl_lnt_abap_object.
          CLEAR t96.
          DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t97.
          DATA t98 TYPE REF TO zif_lnt_object.
          CLEAR t98.
          DATA t100 TYPE REF TO zif_lnt_registry.
          t100 = me->reg.
          DATA t102 TYPE REF TO zif_lnt_object.
          CLEAR t102.
          IF xsdbool( t100 IS INITIAL ) = abap_true.
            CLEAR t102.
          ELSE.
            DATA t107 TYPE REF TO zif_lnt_registry.
            t107 = t100.
            DATA(t112) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t112->has = abap_true.
            t112->value = |PROG|.
            t102 = t107->get_object( i_type_9913 = t112 i_name = t87 ).
          ENDIF.
          t98 = t102.
          CLEAR t97.
          IF t98 IS BOUND.
            DATA t115 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t115.
            DATA t116 TYPE REF TO object.
            CLEAR t115.
            t116 = t98.
            TRY.
                t97 ?= t116.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t97 IS NOT BOUND.
              TRY.
                  t115 ?= t98.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t115 IS BOUND.
                t97 = t115->source( ).
              ENDIF.
              IF t97 IS NOT BOUND.
                CREATE OBJECT t97.
                t97->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t97->oval = t98.
              ENDIF.
            ENDIF.
          ENDIF.
          CLEAR t96.
          IF t97 IS BOUND.
            IF t97->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              TRY.
                  t96 ?= t97->oval.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
            ENDIF.
            IF t96 IS NOT BOUND.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: behaviour-bearing class requires compatible native reference`.
            ENDIF.
          ENDIF.
          t95 = t96.
          IF xsdbool( t95 IS BOUND ) = abap_true.
            DATA t119 TYPE REF TO zcl_lnt_iparse_result.
            DATA t120 TYPE REF TO zcl_lnt_abap_object.
            t120 = t95.
            DATA t122 TYPE REF TO zcl_lnt_abap_release.
            CLEAR t122.
            t122 = me->release_3664.
            DATA t126 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t126.
            t126 = me->global_macros.
            DATA(t130) = me->reg.
            DATA(t133) = CONV string( me->language_version ).
            DATA(t134) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t134->has = abap_true.
            t134->value = t133.
            t119 = t120->parse( i_release_7928 = t122 i_global_macros_5535 = t126 i_reg_f149 = t130 i_language_version_0e1d = t134 ).
            DATA t136 TYPE REF TO zcl_lnt_abap_file.
            t136 = t95->get_main_abap_file( ).
            IF xsdbool( t136 IS BOUND ) = abap_true.
              DATA t142 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t142.
              DATA t144 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CREATE OBJECT t144.
              DATA t148 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t148.
              t148 = t136->statements.
              t142 = t144->concat( p0 = t148 ).
              DATA t155 TYPE REF TO zcl_lnt_abap_file.
              CLEAR t155.
              t155 = t136.
              DATA(t160) = NEW zlnt_runtime_opti_7f2541396f43( ).
              t160->has = abap_true.
              t160->value = abap_false.
              me->find_8f95( i_statements = t142 i_file = t155 i_clear_b22e = t160 ).
            ENDIF.
          ENDIF.
        ELSE.
          IF xsdbool( t11 IS BOUND ) = abap_true.
            IF xsdbool( t55 IS BOUND AND t55 IS INSTANCE OF zcl_lnt_end_of_definition ) = abap_true.
              DATA t166 TYPE REF TO zcl_lnt_macros.
              t166 = me->macros.
              DATA(t168) = VALUE string( ).
              t168 = t11->str.
              DATA(t178) = VALUE string( ).
              t178 = t2->get_filename( ).
              DATA(t181) = VALUE string( ).
              t181 = t168.
              DATA(t183) = VALUE abap_bool( ).
              DATA t185 TYPE REF TO zcl_lnt_shape_9d228663.
              CLEAR t185.
              DATA t186 TYPE REF TO zlnt_runtime_map__755fcb8e49f3.
              t186 = t166->macros.
              DATA(t188) = VALUE string( ).
              DATA(t190) = strlen( t181 ).
              t188 = t181.
              IF t188 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                TRANSLATE t188 TO UPPER CASE.
              ELSE.
                t188 = zlnt_runtime_uppe_91169605024d=>full( t188 ).
              ENDIF.
              t185 = t186->get( p0 = t188 ).
              IF xsdbool( t185 IS BOUND ) = abap_true.
                t183 = abap_true.
              ELSE.
                t183 = abap_false.
              ENDIF.
              IF t183 = abap_true.
              ELSE.
                DATA t193 TYPE REF TO zlnt_runtime_map__755fcb8e49f3.
                CLEAR t193.
                DATA t194 TYPE REF TO zlnt_runtime_map__755fcb8e49f3.
                t194 = t166->macros.
                DATA(t196) = VALUE string( ).
                DATA(t198) = strlen( t168 ).
                t196 = t168.
                IF t196 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                  TRANSLATE t196 TO UPPER CASE.
                ELSE.
                  t196 = zlnt_runtime_uppe_91169605024d=>full( t196 ).
                ENDIF.
                DATA t199 TYPE REF TO zcl_lnt_shape_9d228663.
                CLEAR t199.
                DATA t200 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                CLEAR t200.
                t200 = t15.
                DATA(t209) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t209->has = abap_true.
                t209->value = t178.
                t199 = NEW zcl_lnt_shape_9d228663( i_statements = t200 i_filename = t209 ).
                CREATE OBJECT t199->zlnt_view_ownkeys_b0e8086400eb.
                t199->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t211 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t211.
                t199->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `statements` p1 = t211 ).
                DATA t212 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t212.
                IF t199->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t199->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `filename` p1 = t212 ).
                ENDIF.
                CREATE OBJECT t199->zlnt_json_ownkeys_70e5fd461788.
                t199->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t214.
                t199->zlnt_json_ownkeys_70e5fd461788->put( p0 = |statements| p1 = t214 ).
                DATA t216 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t216.
                IF t199->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t199->zlnt_json_ownkeys_70e5fd461788->put( p0 = |filename| p1 = t216 ).
                ENDIF.
                t193 = t194->set( p0 = t196 p1 = t199 ).
              ENDIF.
              DATA(t217) = VALUE abap_bool( ).
              DATA t218 TYPE REF TO zif_lnt_macro_references.
              t218 = t17.
              IF xsdbool( xsdbool( t218 IS INITIAL ) = abap_false ) = abap_true.
                DATA t224 TYPE REF TO zif_lnt_macro_references.
                t224 = t218.
                DATA t226 TYPE REF TO zcl_lnt_ifilename_and_token.
                CLEAR t226.
                t226 = NEW zcl_lnt_ifilename_and_token( i_filename = t2->get_filename( ) i_token = t11 ).
                CREATE OBJECT t226->zlnt_view_ownkeys_b0e8086400eb.
                t226->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t233.
                t226->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `filename` p1 = t233 ).
                DATA t234 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t234.
                IF t226->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t226->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `token` p1 = t234 ).
                ENDIF.
                CREATE OBJECT t226->zlnt_json_ownkeys_70e5fd461788.
                t226->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t236.
                t226->zlnt_json_ownkeys_70e5fd461788->put( p0 = |filename| p1 = t236 ).
                DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t238.
                IF t226->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t226->zlnt_json_ownkeys_70e5fd461788->put( p0 = |token| p1 = t238 ).
                ENDIF.
                DATA t239 TYPE REF TO zcl_lnt_position.
                CLEAR t239.
                t239 = t13.
                DATA t242 TYPE REF TO zcl_lnt_abstract_token.
                CLEAR t242.
                t242 = t48->get_last_token( ).
                DATA(t246) = VALUE f( ).
                t246 = t242->start->row.
                DATA t253 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
                CLEAR t253.
                t253 = t242->start->col.
                DATA(t259) = VALUE f( ).
                t259 = strlen( t242->str ).
                DATA(t264) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
                t264->has = abap_true.
                t264->value = t259.
                t224->add_definition( i_ref = t226 i_start = t239 i_end = NEW zcl_lnt_position( i_row = t246 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t253 right = t264 op = `+` ) ) ).
              ENDIF.
              t217 = abap_false.
              CLEAR t11.
            ELSE.
              IF xsdbool( xsdbool( t55 IS BOUND AND t55 IS INSTANCE OF zcl_lnt_st_comment ) = abap_false ) = abap_true.
                DATA(t274) = NEW zcl_lnt_macro_content( ).
                DATA t275 TYPE REF TO zcl_lnt_abstract_token.
                CLEAR t275.
                DATA t276 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                CLEAR t276.
                t1->put( p0 = t42 p1 = NEW zcl_lnt_statement_node( i_statement = t274 i_colon = t275 i_pragmas = t276 )->s_c_in_sr_ab_nd_st_nd_ts_st_nd( i_children_9020 = me->tokens_to_nodes( i_tokens = t48->get_tokens( ) ) ) ).
                DATA t281 TYPE REF TO zcl_lnt_statement_node.
                CLEAR t281.
                DATA(t283) = t42.
                t283 = t283 + 1.
                DATA t284 TYPE REF TO object.
                CLEAR t284.
                t1->load( ).
                CLEAR t284.
                READ TABLE t1->items INDEX t283 INTO t284.
                DATA t285 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t285.
                CLEAR t281.
                IF t284 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                  t285 ?= t284.
                  DATA t286 TYPE REF TO object.
                  t286 = t285->as_ref( ).
                  t281 ?= t286.
                ELSE.
                  t281 ?= t284.
                ENDIF.
                t15->load( ).
                APPEND t281 TO t15->items.
                t15->save( ).
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA(t289) = 1.
      t42 = t42 + t289.
    ENDDO.
  ENDMETHOD.

  METHOD handle_macros.
    DATA(t1) = i_statements.
    DATA(t2) = i_file.
    DATA(t3) = i_seen.
    IF xsdbool( t3 IS INITIAL ) = abap_true.
      t3 = NEW zlnt_runtime_set__1827558fd4c7( ).
    ENDIF.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t10.
    DATA t12 TYPE abap_bool.
    t12 = abap_false.
    DATA t14 TYPE REF TO zif_lnt_macro_references.
    DATA t16 TYPE REF TO zif_lnt_registry.
    t16 = me->reg.
    DATA t18 TYPE REF TO zif_lnt_macro_references.
    IF xsdbool( t16 IS INITIAL ) = abap_true.
    ELSE.
      t18 = t16->get_macro_references( ).
    ENDIF.
    t14 = t18.
    DATA t26 TYPE REF TO zcl_lnt_statement_node.
    DATA t27 TYPE REF TO object.
    DATA(t28) = VALUE i( ).
    DO.
      t1->load( ).
      IF t28 >= lines( t1->items ).
        EXIT.
      ENDIF.
      CLEAR t27.
      READ TABLE t1->items INDEX t28 + 1 INTO t27.
      t28 = t28 + 1.
      DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t29.
      CLEAR t26.
      IF t27 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t29 ?= t27.
        DATA t30 TYPE REF TO object.
        t30 = t29->as_ref( ).
        t26 ?= t30.
      ELSE.
        t26 ?= t27.
      ENDIF.
      DATA t31 TYPE REF TO zif_lnt_statement.
      t31 = t26->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      DATA t34 TYPE abap_bool.
      DATA t35 TYPE abap_bool.
      t35 = xsdbool( t31 IS BOUND AND t31 IS INSTANCE OF zcl_lnt_unknown ).
      t34 = t35.
      IF t35 = abap_false.
        t34 = xsdbool( t31 IS BOUND AND t31 IS INSTANCE OF zcl_lnt_macro_call ).
      ENDIF.
      IF t34 = abap_true.
        DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t39 = zcl_lnt_st_expand_macros=>find_name( i_tokens = t26->get_tokens( ) ).
        DATA(t43) = VALUE abap_bool( ).
        DATA(t44) = VALUE abap_bool( ).
        IF t39 IS BOUND.
          IF t39->has = abap_true.
            t44 = xsdbool( strlen( t39->value ) > 0 ).
          ENDIF.
        ENDIF.
        t43 = t44.
        IF t44 = abap_true.
          DATA t49 TYPE string.
          t49 = t39->value.
          DATA(t52) = VALUE abap_bool( ).
          DATA t54 TYPE REF TO zcl_lnt_shape_9d228663.
          CLEAR t54.
          DATA t55 TYPE REF TO zlnt_runtime_map__755fcb8e49f3.
          t55 = me->macros->macros.
          DATA t57 TYPE string.
          DATA(t59) = strlen( t49 ).
          t57 = t49.
          IF t57 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t57 TO UPPER CASE.
          ELSE.
            t57 = zlnt_runtime_uppe_91169605024d=>full( t57 ).
          ENDIF.
          t54 = t55->get( p0 = t57 ).
          IF xsdbool( t54 IS BOUND ) = abap_true.
            t52 = abap_true.
          ELSE.
            t52 = abap_false.
          ENDIF.
          t43 = t52.
        ENDIF.
        IF t43 = abap_true.
          DATA t62 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t62.
          DATA t66 TYPE string.
          t66 = t39->value.
          DATA t72 TYPE REF TO zlnt_runtime_map__755fcb8e49f3.
          t72 = me->macros->macros.
          DATA t74 TYPE string.
          DATA(t76) = strlen( t66 ).
          t74 = t66.
          IF t74 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t74 TO UPPER CASE.
          ELSE.
            t74 = zlnt_runtime_uppe_91169605024d=>full( t74 ).
          ENDIF.
          t62 = t72->get( p0 = t74 )->filename.
          DATA(t77) = VALUE abap_bool( ).
          IF t62 IS BOUND.
            IF t62->has = abap_true.
              t77 = xsdbool( strlen( t62->value ) > 0 ).
            ENDIF.
          ENDIF.
          IF t77 = abap_true.
            DATA(t79) = VALUE abap_bool( ).
            DATA t80 TYPE REF TO zif_lnt_macro_references.
            t80 = t14.
            IF xsdbool( xsdbool( t80 IS INITIAL ) = abap_false ) = abap_true.
              DATA t86 TYPE REF TO zif_lnt_macro_references.
              t86 = t80.
              DATA t88 TYPE REF TO zcl_lnt_ifilename_and_token.
              DATA t89 TYPE string.
              t89 = t62->value.
              t88 = NEW zcl_lnt_ifilename_and_token( i_filename = t89 i_token = t26->get_first_token( ) ).
              CREATE OBJECT t88->zlnt_view_ownkeys_b0e8086400eb.
              t88->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t95.
              t88->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `filename` p1 = t95 ).
              DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t96.
              IF t88->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t88->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `token` p1 = t96 ).
              ENDIF.
              CREATE OBJECT t88->zlnt_json_ownkeys_70e5fd461788.
              t88->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t98.
              t88->zlnt_json_ownkeys_70e5fd461788->put( p0 = |filename| p1 = t98 ).
              DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t100.
              IF t88->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t88->zlnt_json_ownkeys_70e5fd461788->put( p0 = |token| p1 = t100 ).
              ENDIF.
              t86->add_reference( i_ref = t88 ).
            ENDIF.
            t79 = abap_false.
          ENDIF.
          DATA t103 TYPE REF TO zcl_lnt_statement_node.
          DATA(t105) = NEW zcl_lnt_macro_call( ).
          DATA t106 TYPE REF TO zcl_lnt_abstract_token.
          t106 = t26->colon.
          DATA t111 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t111.
          t103 = NEW zcl_lnt_statement_node( i_statement = t105 i_colon = t106 i_pragmas = t111 )->s_c_in_sr_ab_nd_st_nd_ts_st_nd( i_children_9020 = me->tokens_to_nodes( i_tokens = t26->get_tokens( ) ) ).
          t10->load( ).
          APPEND t103 TO t10->items.
          t10->save( ).
          DATA t117 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
          t117 = t3.
          DATA t119 TYPE string.
          DATA t120 TYPE string.
          t120 = t39->value.
          DATA(t122) = strlen( t120 ).
          t119 = t120.
          IF t119 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t119 TO UPPER CASE.
          ELSE.
            t119 = zlnt_runtime_uppe_91169605024d=>full( t119 ).
          ENDIF.
          IF xsdbool( t117->has( p0 = t119 ) = abap_false ) = abap_true.
            DATA t124 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA t125 TYPE string.
            t125 = t39->value.
            t124 = me->expand_contents( i_name = t125 i_statement = t26 ).
            DATA t130 TYPE REF TO zlnt_runtime_set__1827558fd4c7.
            t130 = t3->copy( p0 = t3 ).
            DATA t135 TYPE string.
            DATA t136 TYPE string.
            t136 = t39->value.
            DATA(t138) = strlen( t136 ).
            t135 = t136.
            IF t135 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t135 TO UPPER CASE.
            ELSE.
              t135 = zlnt_runtime_uppe_91169605024d=>full( t135 ).
            ENDIF.
            DATA t139 TYPE REF TO zcl_lnt_shape_df3d0820.
            t139 = me->handle_macros( i_statements = t124 i_file = t2 i_seen = t130->add( p0 = t135 ) ).
            DATA t147 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            t147 = t139->statements.
            DATA t149 TYPE REF TO zcl_lnt_statement_node.
            CLEAR t149.
            DATA t150 TYPE REF TO object.
            CLEAR t150.
            DATA(t151) = VALUE i( ).
            DO.
              t147->load( ).
              IF t151 >= lines( t147->items ).
                EXIT.
              ENDIF.
              CLEAR t150.
              READ TABLE t147->items INDEX t151 + 1 INTO t150.
              t151 = t151 + 1.
              DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t152.
              CLEAR t149.
              IF t150 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                t152 ?= t150.
                DATA t153 TYPE REF TO object.
                t153 = t152->as_ref( ).
                t149 ?= t153.
              ELSE.
                t149 ?= t150.
              ENDIF.
              t10->load( ).
              APPEND t149 TO t10->items.
              t10->save( ).
            ENDDO.
            IF xsdbool( t139->contains_unknown = abap_true ) = abap_true.
              t12 = abap_true.
            ENDIF.
          ELSE.
            DATA(t163) = NEW zcl_lnt_macro_recursion( ).
            DATA t164 TYPE REF TO zcl_lnt_abstract_token.
            t164 = t26->colon.
            DATA t169 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t169.
            DATA t171 TYPE REF TO zcl_lnt_statement_node.
            t171 = NEW zcl_lnt_statement_node( i_statement = t163 i_colon = t164 i_pragmas = t169 )->s_c_in_sr_ab_nd_st_nd_ts_st_nd( i_children_9020 = me->tokens_to_nodes( i_tokens = t26->get_tokens( ) ) ).
            t10->load( ).
            APPEND t171 TO t10->items.
            t10->save( ).
          ENDIF.
          CONTINUE.
        ELSE.
          t12 = abap_true.
        ENDIF.
      ENDIF.
      t10->load( ).
      APPEND t26 TO t10->items.
      t10->save( ).
    ENDDO.
    DATA t179 TYPE REF TO zcl_lnt_shape_df3d0820.
    t179 = NEW zcl_lnt_shape_df3d0820( i_statements = t10 i_contains_unknown = t12 ).
    CREATE OBJECT t179->zlnt_view_ownkeys_b0e8086400eb.
    t179->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t187 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t179->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `statements` p1 = t187 ).
    DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t179->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t179->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `containsUnknown` p1 = t188 ).
    ENDIF.
    CREATE OBJECT t179->zlnt_json_ownkeys_70e5fd461788.
    t179->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t190 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t179->zlnt_json_ownkeys_70e5fd461788->put( p0 = |statements| p1 = t190 ).
    DATA t192 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t179->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t179->zlnt_json_ownkeys_70e5fd461788->put( p0 = |containsUnknown| p1 = t192 ).
    ENDIF.
    result = t179.

  ENDMETHOD.

  METHOD expand_contents.
    CONSTANTS range_safe_integer TYPE f VALUE '9007199254740991'.
    DATA(t2) = i_statement.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE string.
    t7 = i_name.
    DATA t14 TYPE REF TO zlnt_runtime_map__755fcb8e49f3.
    t14 = me->macros->macros.
    DATA t16 TYPE string.
    DATA(t18) = strlen( t7 ).
    t16 = t7.
    IF t16 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t16 TO UPPER CASE.
    ELSE.
      t16 = zlnt_runtime_uppe_91169605024d=>full( t16 ).
    ENDIF.
    t3 = t14->get( p0 = t16 )->statements.
    DATA(t20) = VALUE abap_bool( ).
    DATA(t21) = VALUE abap_bool( ).
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t21 = xsdbool( t3 IS INITIAL ).
    t20 = t21.
    IF t21 = abap_false.
      DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t30 = t3.
      t30->load( ).
      t20 = xsdbool( lines( t30->items ) = 0 ).
    ENDIF.
    IF t20 = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t34 TYPE string.
    t34 = ||.
    DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t36 = t3.
    DATA t38 TYPE REF TO zcl_lnt_statement_node.
    DATA t39 TYPE REF TO object.
    DATA(t40) = VALUE i( ).
    DO.
      t36->load( ).
      IF t40 >= lines( t36->items ).
        EXIT.
      ENDIF.
      CLEAR t39.
      READ TABLE t36->items INDEX t40 + 1 INTO t39.
      t40 = t40 + 1.
      DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t41.
      CLEAR t38.
      IF t39 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t41 ?= t39.
        DATA t42 TYPE REF TO object.
        t42 = t41->as_ref( ).
        t38 ?= t42.
      ELSE.
        t38 ?= t39.
      ENDIF.
      DATA t43 TYPE string.
      t43 = t38->concat_tokens( ).
      DATA t47 TYPE string.
      t47 = t38->get_last_token( )->str.
      IF xsdbool( t47 = |,| ) = abap_true.
        DATA(t58) = t43.
        DATA t59 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        CREATE OBJECT t59 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = |,$| flags = ||.
        DATA(t63) = strlen( t58 ).
        t43 = t59->replace( p0 = t58 p1 = |.| ).
      ENDIF.
      DATA(t65) = t34.
      DATA t66 TYPE string.
      DATA(t69) = strlen( t43 ).
      t66 = |{ t43 }{ |\n| }|.
      DATA(t70) = strlen( t65 ).
      t34 = |{ t65 }{ t66 }|.
    ENDDO.
    DATA t71 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t71 = me->build_input( i_statement = t2 ).
    DATA t74 TYPE f.
    t74 = CONV f( 1 ).
    DATA(t77) = VALUE string( ).
    t71->dense( ).
    DATA(t78) = VALUE i( ).
    DO.
      t71->load( ).
      IF t78 >= lines( t71->items ).
        EXIT.
      ENDIF.
      CLEAR t77.
      READ TABLE t71->items INDEX t78 + 1 INTO t77.
      IF t71->has( t78 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t78 = t78 + 1.
      DATA(t81) = |&|.
      DATA(t82) = VALUE string( ).
      DATA(t83) = t74.
      IF t83 <> trunc( t83 ) OR t83 > range_safe_integer OR t83 < 0 - range_safe_integer.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      DATA(t84) = CONV int8( t83 ).
      t82 = |{ t84 }|.
      DATA(t85) = strlen( t81 ).
      DATA t87 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
      CREATE OBJECT t87 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = |{ t81 }{ t82 }| flags = |g| checked = abap_true.
      DATA(t91) = t34.
      DATA(t94) = strlen( t91 ).
      IF t77 CS '$'.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t34 = t87->replace( p0 = t91 p1 = t77 ).
      DATA(t97) = CONV f( 1 ).
      t74 = t74 + t97.
    ENDDO.
    DATA t99 TYPE REF TO zcl_lnt_memory_file.
    t99 = NEW zcl_lnt_memory_file( i_filename = |expand_macros.abap.prog| i_raw = t34 ).
    DATA t104 TYPE REF TO zcl_lnt_lexer.
    t104 = NEW zcl_lnt_lexer( ).
    DATA t106 TYPE REF TO zif_lnt_file.
    t106 = t99.
    t104->virtual = t2->get_first_token( )->start.
    DELETE t104->zlnt_record_delet_0597644d88b4 WHERE table_line = `virtual`.
    DATA t122 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t122.
    t104->tokens = t122.
    DELETE t104->zlnt_record_delet_0597644d88b4 WHERE table_line = `tokens`.
    DATA t124 TYPE f.
    DATA(t125) = CONV i( zcl_lnt_lexer_module=>mode_normal ).
    t124 = t125.
    t104->m = t124.
    DELETE t104->zlnt_record_delet_0597644d88b4 WHERE table_line = `m`.
    t104->process( i_raw = t106->get_raw( ) ).
    DATA t129 TYPE REF TO zcl_lnt_iabaplexer_result.
    DATA t130 TYPE REF TO zif_lnt_file.
    t130 = t106.
    DATA t133 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t133 = t104->tokens.
    t129 = NEW zcl_lnt_iabaplexer_result( i_file = t130 i_tokens = t133 ).
    CREATE OBJECT t129->zlnt_view_ownkeys_b0e8086400eb.
    t129->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t129->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `file` p1 = t135 ).
    DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t129->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t129->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tokens` p1 = t136 ).
    ENDIF.
    CREATE OBJECT t129->zlnt_json_ownkeys_70e5fd461788.
    t129->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t138 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t129->zlnt_json_ownkeys_70e5fd461788->put( p0 = |file| p1 = t138 ).
    DATA t140 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t129->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t129->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tokens| p1 = t140 ).
    ENDIF.
    DATA t141 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t143 TYPE REF TO zcl_lnt_statement_parser.
    DATA(t144) = me->release_3664.
    DATA(t145) = me->reg.
    DATA(t148) = CONV string( me->language_version ).
    DATA(t149) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t149->has = abap_true.
    t149->value = t148.
    t143 = NEW zcl_lnt_statement_parser( i_release_7928 = t144 i_reg_f149 = t145 i_language_version_0e1d = t149 ).
    DATA t151 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t152 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t152.
    t152->load( ).
    APPEND t129 TO t152->items.
    t152->save( ).
    t151 = t152.
    DATA t161 TYPE REF TO zlnt_runtime_map__755fcb8e49f3.
    t161 = me->macros->macros.
    t141 = t143->run( i_input_967e = t151 i_global_macros_5535 = t161->keys( ) ).
    DATA t164 TYPE REF TO zcl_lnt_istatement_result.
    DATA t166 TYPE REF TO object.
    t141->load( ).
    READ TABLE t141->items INDEX 1 INTO t166.
    DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t166 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t167 ?= t166.
      DATA t168 TYPE REF TO object.
      t168 = t167->as_ref( ).
      t164 ?= t168.
    ELSE.
      t164 ?= t166.
    ENDIF.
    result = t164->statements.

  ENDMETHOD.

  METHOD build_input.
    DATA(t1) = i_statement.
    DATA t2 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t2.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t4 = t1->get_tokens( ).
    DATA t7 TYPE string.
    t7 = ||.
    DATA t9 TYPE i.
    t9 = 1.
    DO.
      DATA t13 TYPE i.
      DATA t14 TYPE i.
      t4->load( ).
      t14 = lines( t4->items ).
      DATA(t16) = 1.
      t13 = t14 - t16.
      IF xsdbool( t9 < t13 ) = abap_false.
        EXIT.
      ENDIF.
      DATA t17 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t17.
      DATA t18 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t18.
      DATA(t20) = t9.
      t20 = t20 + 1.
      DATA t21 TYPE REF TO object.
      CLEAR t21.
      t4->load( ).
      CLEAR t21.
      READ TABLE t4->items INDEX t20 INTO t21.
      DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t22.
      CLEAR t18.
      IF t21 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t22 ?= t21.
        DATA t23 TYPE REF TO object.
        t23 = t22->as_ref( ).
        t18 ?= t23.
      ELSE.
        t18 ?= t21.
      ENDIF.
      t17 = t18.
      DATA t24 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t24.
      DATA t27 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t27.
      DATA t29 TYPE i.
      DATA(t31) = 1.
      t29 = t9 + t31.
      t29 = t29 + 1.
      DATA t32 TYPE REF TO object.
      CLEAR t32.
      t4->load( ).
      CLEAR t32.
      READ TABLE t4->items INDEX t29 INTO t32.
      DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t33.
      CLEAR t27.
      IF t32 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t33 ?= t32.
        DATA t34 TYPE REF TO object.
        t34 = t33->as_ref( ).
        t27 ?= t34.
      ELSE.
        t27 ?= t32.
      ENDIF.
      t24 = t27.
      DATA t37 TYPE i.
      DATA(t39) = 2.
      t37 = t9 + t39.
      t4->load( ).
      IF xsdbool( t37 = lines( t4->items ) ) = abap_true.
        CLEAR t24.
      ENDIF.
      DATA t43 TYPE REF TO zcl_lnt_position.
      t43 = t17->start.
      DATA(t50) = t43.
      IF xsdbool( t50 IS BOUND AND t50 IS INSTANCE OF zcl_lnt_virtual_position ) = abap_true.
        DATA t52 TYPE REF TO zcl_lnt_virtual_position.
        t52 ?= t43.
        DATA t54 TYPE f.
        DATA t55 TYPE REF TO zcl_lnt_virtual_position.
        t55 ?= t43.
        t54 = t55->vrow.
        DATA t58 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t59 TYPE REF TO zcl_lnt_virtual_position.
        t59 ?= t43.
        t58 = t59->vcol.
        DATA t61 TYPE f.
        t61 = strlen( t17->str ).
        DATA(t69) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t69->has = abap_true.
        t69->value = t61.
        t43 = NEW zcl_lnt_virtual_position( i_virtual = t52 i_row = t54 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t58 right = t69 op = `+` ) ).
      ELSE.
        DATA t71 TYPE REF TO zcl_lnt_abstract_token.
        t71 = t17.
        DATA t74 TYPE f.
        t74 = t71->start->row.
        DATA t81 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t81 = t71->start->col.
        DATA t87 TYPE f.
        t87 = strlen( t71->str ).
        DATA(t92) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t92->has = abap_true.
        t92->value = t87.
        t43 = NEW zcl_lnt_position( i_row = t74 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t81 right = t92 op = `+` ) ).
      ENDIF.
      DATA t93 TYPE abap_bool.
      DATA t94 TYPE abap_bool.
      t94 = xsdbool( t24 IS BOUND ).
      t93 = t94.
      IF t94 = abap_true.
        t93 = t24->start->equals( i_p = t43 ).
      ENDIF.
      IF t93 = abap_true.
        DATA(t105) = t7.
        DATA t106 TYPE string.
        t106 = t17->str.
        DATA(t111) = strlen( t105 ).
        t7 = |{ t105 }{ t106 }|.
      ELSE.
        DATA(t113) = t7.
        DATA t114 TYPE string.
        t114 = t17->str.
        DATA(t119) = strlen( t113 ).
        t7 = |{ t113 }{ t114 }|.
        t2->load( ).
        APPEND t7 TO t2->items.
        t2->save( ).
        t7 = ||.
      ENDIF.
      DATA(t125) = 1.
      t9 = t9 + t125.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD find_name.
    DATA(t1) = i_tokens.
    DATA t2 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t4 TYPE REF TO zcl_lnt_abstract_token.
    DATA t7 TYPE REF TO zcl_lnt_abstract_token.
    DATA t8 TYPE REF TO object.
    DATA(t9) = VALUE i( ).
    DO.
      t1->load( ).
      IF t9 >= lines( t1->items ).
        EXIT.
      ENDIF.
      CLEAR t8.
      READ TABLE t1->items INDEX t9 + 1 INTO t8.
      t9 = t9 + 1.
      DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t10.
      CLEAR t7.
      IF t8 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t10 ?= t8.
        DATA t11 TYPE REF TO object.
        t11 = t10->as_ref( ).
        t7 ?= t11.
      ELSE.
        t7 ?= t8.
      ENDIF.
      DATA t12 TYPE abap_bool.
      DATA t13 TYPE abap_bool.
      t13 = xsdbool( t4 IS BOUND ).
      t12 = t13.
      IF t13 = abap_true.
        DATA(t15) = VALUE abap_bool( ).
        DATA t16 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t16.
        DATA t17 TYPE REF TO zcl_lnt_position.
        CLEAR t17.
        DATA t19 TYPE REF TO zcl_lnt_abstract_token.
        t19 = t4.
        DATA t22 TYPE REF TO zcl_lnt_position.
        CLEAR t22.
        IF xsdbool( t19 IS INITIAL ) = abap_true.
          CLEAR t22.
        ELSE.
          DATA t27 TYPE REF TO zcl_lnt_abstract_token.
          t27 = t19.
          DATA t30 TYPE f.
          t30 = t27->start->row.
          DATA t37 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t37 = t27->start->col.
          DATA t43 TYPE f.
          t43 = strlen( t27->str ).
          DATA(t48) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t48->has = abap_true.
          t48->value = t43.
          t22 = NEW zcl_lnt_position( i_row = t30 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t37 right = t48 op = `+` ) ).
        ENDIF.
        t17 = t22.
        DATA t49 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t49.
        IF xsdbool( t17 IS INITIAL ) = abap_true.
          CLEAR t49.
        ELSE.
          t49 = t17->col.
        ENDIF.
        t16 = t49.
        DATA t59 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t59 = t7->start->col.
        DATA(t71) = VALUE abap_bool( ).
        DATA(t72) = VALUE abap_bool( ).
        IF t16 IS BOUND.
          t71 = t16->has.
        ENDIF.
        IF t59 IS BOUND.
          t72 = t59->has.
        ENDIF.
        IF t71 = t72.
          IF t71 = abap_false.
            t15 = abap_true.
          ELSE.
            IF t16->number_special <> 0 OR t59->number_special <> 0.
              t15 = xsdbool( t16->number_special = t59->number_special AND t16->number_special <> 1 ).
            ELSE.
              t15 = xsdbool( t16->value = t59->value ).
            ENDIF.
          ENDIF.
        ENDIF.
        IF t15 = abap_true.
          t15 = abap_false.
        ELSE.
          t15 = abap_true.
        ENDIF.
        t12 = t15.
      ENDIF.
      IF t12 = abap_true.
        EXIT.
      ENDIF.
      DATA t73 TYPE abap_bool.
      DATA t74 TYPE abap_bool.
      t74 = xsdbool( t7 IS BOUND AND t7 IS INSTANCE OF zcl_lnt_lx_identifier ).
      t73 = t74.
      IF t74 = abap_false.
        t73 = xsdbool( t7->str = |-| ).
      ENDIF.
      IF t73 = abap_true.
        DATA t84 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t84 = t2.
        DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t86.
        DATA(t88) = VALUE abap_bool( ).
        IF t84 IS INITIAL.
          t88 = abap_true.
        ELSEIF t84->has = abap_false.
          t88 = abap_true.
        ENDIF.
        IF t88 = abap_true.
          DATA t95 TYPE string.
          t95 = t7->str.
          DATA(t97) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t97->has = abap_true.
          t97->value = t95.
          t2 = t97.
        ELSE.
          DATA t99 TYPE string.
          DATA t100 TYPE string.
          t100 = t2->value.
          DATA t102 TYPE string.
          t102 = t7->str.
          DATA(t107) = strlen( t100 ).
          t99 = |{ t100 }{ t102 }|.
          DATA(t108) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t108->has = abap_true.
          t108->value = t99.
          t2 = t108.
        ENDIF.
      ELSE.
        IF xsdbool( t7 IS BOUND AND t7 IS INSTANCE OF zcl_lnt_pragma ) = abap_true.
          CONTINUE.
        ELSE.
          EXIT.
        ENDIF.
      ENDIF.

      t4 = t7.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD tokens_to_nodes.
    DATA(t1) = i_tokens.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t5 TYPE REF TO zcl_lnt_abstract_token.
    DATA t6 TYPE REF TO object.
    DATA(t7) = VALUE i( ).
    DO.
      t1->load( ).
      IF t7 >= lines( t1->items ).
        EXIT.
      ENDIF.
      CLEAR t6.
      READ TABLE t1->items INDEX t7 + 1 INTO t6.
      t7 = t7 + 1.
      DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t8.
      CLEAR t5.
      IF t6 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t8 ?= t6.
        DATA t9 TYPE REF TO object.
        t9 = t8->as_ref( ).
        t5 ?= t9.
      ELSE.
        t5 ?= t6.
      ENDIF.
      DATA t11 TYPE REF TO zcl_lnt_token_node.
      t11 = NEW zcl_lnt_token_node( i_token = t5 ).
      t2->load( ).
      APPEND t11 TO t2->items.
      t2->save( ).
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD tokens_to_nodes_one.
    DATA(t1) = i_x.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t7 TYPE REF TO zcl_lnt_token_node.
    t7 = NEW zcl_lnt_token_node( i_token = t1 ).
    t2->load( ).
    APPEND t7 TO t2->items.
    t2->save( ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d86_5c0b7073356207.
  ENDMETHOD.
ENDCLASS.
