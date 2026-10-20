* TS: src/rules/prefer_raise_exception_new.ts:14:1 PreferRaiseExceptionNew
CLASS zcl_lnt_prfr_rs_excptn_nw DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_prfr_rs_excptn_nw_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_i_s_r_p_r_e_n_t_p_rs_ex_nw RETURNING VALUE(result) TYPE REF TO zcl_lnt_prfr_rs_excptn_nw_cnf.
    METHODS s_c_i_s_r_p_r_e_n_t_p_rs_ex_nw IMPORTING i_conf TYPE REF TO zcl_lnt_prfr_rs_excptn_nw_cnf.
    METHODS r_p_i_s_r_p_r_e_n_t_p_rs_ex_nw IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_fix IMPORTING i_file TYPE REF TO zcl_lnt_abap_file i_statement TYPE REF TO zcl_lnt_statement_node i_with_exporting TYPE abap_bool RETURNING VALUE(result) TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_prfr_rs_excptn_nw IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_prfr_rs_excptn_nw_cnf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |\nhttps://github.com/SAP/styleguides/blob/main/clean-abap/Cle|.
    t11 = t11 && |anABAP.md#prefer-raise-exception-new-to-raise-exception-type|.
    t11 = t11 && |\n\nFrom 752 and up|.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = t11.
    t8 = t12.
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t18.
    t18->load( ).
    APPEND |Styleguide| TO t18->items.
    t18->save( ).
    t18->load( ).
    APPEND |SingleFile| TO t18->items.
    t18->save( ).
    t18->load( ).
    APPEND |Quickfix| TO t18->items.
    t18->save( ).
    t18->load( ).
    APPEND |Upport| TO t18->items.
    t18->save( ).
    t14 = t18.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t33) = |RAISE EXCEPTION NEW cx_generation_error( previous = exceptio|.
    t33 = t33 && |n ).|.
    DATA(t34) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t34->has = abap_true.
    t34->value = t33.
    t30 = t34.
    DATA(t39) = |RAISE EXCEPTION TYPE cx_generation_error\n  EXPORTING\n    pre|.
    t39 = t39 && |vious = exception.|.
    DATA(t40) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t40->has = abap_true.
    t40->value = t39.
    DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |prefer_raise_exception_new| i_title = |Prefer RAISE EXCEPTION NEW to RAISE EXCEPTION TYPE| i_short_description = |Prefer RAISE EXCEPTION NEW to RAISE EXCEPTION TYPE| i_bad_example = t40 i_good_example = t30 i_extended_information = t8 i_tags = t14 i_pragma = t42 i_pseudo_comment = t44 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t46 ).
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t47 ).
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t48 ).
    ENDIF.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t49 ).
    ENDIF.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t50 ).
    ENDIF.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t51 ).
    ENDIF.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t52 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t54 ).
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t56 ).
    ENDIF.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t58 ).
    ENDIF.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t60 ).
    ENDIF.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t62 ).
    ENDIF.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t64 ).
    ENDIF.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t66 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_p_r_e_n_t_p_rs_ex_nw.
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_i_s_r_p_r_e_n_t_p_rs_ex_nw.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_p_r_e_n_t_p_rs_ex_nw.
    DATA(t1) = i_file.
    DATA t4 TYPE REF TO zcl_lnt_abap_release.
    t4 = me->reg->get_config( )->get_release( ).
    IF zcl_lnt_version_module=>zlnt_builtin_init_e6a1a7a56c5d = abap_false.
      zcl_lnt_version_module=>zlnt_builtin_init_839fc4c13920( ).
    ENDIF.
    IF xsdbool( zcl_lnt_version_module=>release_at_least( i_running = t4 i_required = zcl_lnt_version_module=>release_b8cd->get( p0 = |v752| ) ) = abap_false ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t12.
    DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t14 = t1->statements.
    DATA t19 TYPE REF TO zcl_lnt_statement_node.
    DATA t20 TYPE REF TO object.
    DATA(t21) = VALUE i( ).
    DO.
      t14->load( ).
      IF t21 >= lines( t14->items ).
        EXIT.
      ENDIF.
      CLEAR t20.
      READ TABLE t14->items INDEX t21 + 1 INTO t20.
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
      DATA t25 TYPE REF TO zif_lnt_statement.
      t25 = t19->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      IF xsdbool( t25 IS BOUND AND t25 IS INSTANCE OF zcl_lnt_st_raise ) = abap_true.
        DATA(t27) = VALUE string( ).
        DATA(t28) = VALUE string( ).
        DATA(t29) = VALUE string( ).
        t29 = t19->concat_tokens( ).
        DATA(t31) = strlen( t29 ).
        t28 = t29.
        IF t28 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t28 TO UPPER CASE.
        ELSE.
          t28 = zlnt_runtime_uppe_91169605024d=>full( t28 ).
        ENDIF.
        t27 = t28.
        DATA(t33) = VALUE i( ).
        DATA(t35) = | MESSAGE|.
        DATA(t36) = strlen( t27 ).
        IF t35 IS INITIAL.
          t33 = 0.
        ELSE.
          FIND t35 IN t27 MATCH OFFSET t33.
          IF sy-subrc <> 0.
            t33 = -1.
          ENDIF.
        ENDIF.
        IF xsdbool( t33 >= 0 ) = abap_true.
          CONTINUE.
        ENDIF.
        DATA(t38) = VALUE abap_bool( ).
        DATA(t40) = |RAISE EXCEPTION TYPE |.
        DATA(t41) = strlen( t27 ).
        DATA(t42) = VALUE i( ).
        DATA(t43) = VALUE i( ).
        DATA(t44) = VALUE string( ).
        t42 = strlen( t40 ).
        IF t42 = 0.
          t38 = abap_true.
        ELSEIF t42 <= t41.
          t43 = 0.
          t44 = t27+t43(t42).
          IF t44 = t40.
            t38 = abap_true.
          ENDIF.
        ENDIF.
        IF t38 = abap_true.
          DATA t49 TYPE REF TO zcl_lnt_abap_file.
          CLEAR t49.
          t49 = t1.
          DATA t51 TYPE REF TO zcl_lnt_statement_node.
          t51 = t19.
          DATA(t53) = VALUE abap_bool( ).
          DATA(t54) = VALUE abap_bool( ).
          DATA(t56) = VALUE i( ).
          DATA(t58) = | EXPORTING|.
          DATA(t59) = strlen( t27 ).
          IF t58 IS INITIAL.
            t56 = 0.
          ELSE.
            FIND t58 IN t27 MATCH OFFSET t56.
            IF sy-subrc <> 0.
              t56 = -1.
            ENDIF.
          ENDIF.
          IF xsdbool( t56 >= 0 ) = abap_true.
            t54 = abap_true.
          ELSE.
            t54 = abap_false.
          ENDIF.
          t53 = t54.
          DATA t64 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t65 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t65.
          DATA t66 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t67 TYPE REF TO zcl_lnt_abstract_node.
          t67 = t51.
          t66 = t67->children.
          t65 ?= t66.
          t64 = t65.
          DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t71.
          CLEAR t71.
          IF t53 = abap_true.
            DATA(t74) = VALUE string( ).
            DATA(t76) = VALUE string( ).
            DATA(t77) = |( |.
            DATA(t78) = VALUE string( ).
            DATA t79 TYPE REF TO zif_lnt_union_4cf1d054.
            CLEAR t79.
            DATA t81 TYPE REF TO object.
            CLEAR t81.
            t64->load( ).
            CLEAR t81.
            READ TABLE t64->items INDEX 6 INTO t81.
            DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t82.
            CLEAR t79.
            IF t81 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t82 ?= t81.
              DATA t83 TYPE REF TO object.
              t83 = t82->as_ref( ).
              t79 ?= t83.
            ELSE.
              t79 ?= t81.
            ENDIF.
            t78 = t79->concat_tokens( ).
            DATA(t84) = strlen( t77 ).
            t76 = |{ t77 }{ t78 }|.
            DATA(t86) = strlen( t76 ).
            t74 = |{ t76 }{ | ).| }|.
            DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t89.
            DATA t90 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t90.
            DATA t92 TYPE REF TO zcl_lnt_position.
            CLEAR t92.
            DATA t93 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t93.
            DATA t95 TYPE REF TO zif_lnt_union_4cf1d054.
            CLEAR t95.
            DATA t97 TYPE REF TO object.
            CLEAR t97.
            t64->load( ).
            CLEAR t97.
            READ TABLE t64->items INDEX 4 INTO t97.
            DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t98.
            CLEAR t95.
            IF t97 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t98 ?= t97.
              DATA t99 TYPE REF TO object.
              t99 = t98->as_ref( ).
              t95 ?= t99.
            ELSE.
              t95 ?= t97.
            ENDIF.
            t93 = t95->get_last_token( ).
            DATA(t101) = VALUE f( ).
            t101 = t93->start->row.
            DATA t108 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            CLEAR t108.
            t108 = t93->start->col.
            DATA(t114) = VALUE f( ).
            t114 = strlen( t93->str ).
            DATA(t119) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
            t119->has = abap_true.
            t119->value = t114.
            t92 = NEW zcl_lnt_position( i_row = t101 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t108 right = t119 op = `+` ) ).
            DATA t125 TYPE REF TO zcl_lnt_abstract_token.
            t125 = t51->get_last_token( ).
            DATA t128 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t128.
            t128 = t125.
            DATA(t131) = VALUE f( ).
            t131 = t128->start->row.
            DATA t138 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            CLEAR t138.
            t138 = t128->start->col.
            DATA(t144) = VALUE f( ).
            t144 = strlen( t128->str ).
            DATA(t149) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
            t149->has = abap_true.
            t149->value = t144.
            t90 = zcl_lnt_edit_helper=>replace_range( i_file = t49 i_start = t92 i_end = NEW zcl_lnt_position( i_row = t131 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t138 right = t149 op = `+` ) ) i_text = t74 ).
            CLEAR t89.
            IF t90 IS BOUND.
              DATA t151 TYPE REF TO zlnt_view_storage_74017ca272ac.
              CLEAR t151.
              DATA t152 TYPE REF TO object.
              CLEAR t151.
              t152 = t90.
              TRY.
                  t89 ?= t152.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t89 IS NOT BOUND.
                TRY.
                    t151 ?= t90.
                  CATCH cx_sy_move_cast_error.
                ENDTRY.
                IF t151 IS BOUND.
                  t89 = t151->source( ).
                ENDIF.
                IF t89 IS NOT BOUND.
                  CREATE OBJECT t89.
                  t89->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                  t89->oval = t90.
                ENDIF.
              ENDIF.
            ENDIF.
            t71 = t89.
          ELSE.
            DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t156.
            DATA t157 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t157.
            DATA t159 TYPE REF TO zcl_lnt_position.
            CLEAR t159.
            DATA t160 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t160.
            DATA t162 TYPE REF TO zif_lnt_union_4cf1d054.
            CLEAR t162.
            DATA t164 TYPE REF TO object.
            CLEAR t164.
            t64->load( ).
            CLEAR t164.
            READ TABLE t64->items INDEX 4 INTO t164.
            DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t165.
            CLEAR t162.
            IF t164 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t165 ?= t164.
              DATA t166 TYPE REF TO object.
              t166 = t165->as_ref( ).
              t162 ?= t166.
            ELSE.
              t162 ?= t164.
            ENDIF.
            t160 = t162->get_last_token( ).
            DATA(t168) = VALUE f( ).
            t168 = t160->start->row.
            DATA t175 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            CLEAR t175.
            t175 = t160->start->col.
            DATA(t181) = VALUE f( ).
            t181 = strlen( t160->str ).
            DATA(t186) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
            t186->has = abap_true.
            t186->value = t181.
            t159 = NEW zcl_lnt_position( i_row = t168 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t175 right = t186 op = `+` ) ).
            DATA t192 TYPE REF TO zcl_lnt_abstract_token.
            t192 = t51->get_last_token( ).
            DATA t195 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t195.
            t195 = t192.
            DATA(t198) = VALUE f( ).
            t198 = t195->start->row.
            DATA t205 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            CLEAR t205.
            t205 = t195->start->col.
            DATA(t211) = VALUE f( ).
            t211 = strlen( t195->str ).
            DATA(t216) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
            t216->has = abap_true.
            t216->value = t211.
            t157 = zcl_lnt_edit_helper=>replace_range( i_file = t49 i_start = t159 i_end = NEW zcl_lnt_position( i_row = t198 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t205 right = t216 op = `+` ) ) i_text = |( ).| ).
            CLEAR t156.
            IF t157 IS BOUND.
              DATA t218 TYPE REF TO zlnt_view_storage_74017ca272ac.
              CLEAR t218.
              DATA t219 TYPE REF TO object.
              CLEAR t218.
              t219 = t157.
              TRY.
                  t156 ?= t219.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t156 IS NOT BOUND.
                TRY.
                    t218 ?= t157.
                  CATCH cx_sy_move_cast_error.
                ENDTRY.
                IF t218 IS BOUND.
                  t156 = t218->source( ).
                ENDIF.
                IF t156 IS NOT BOUND.
                  CREATE OBJECT t156.
                  t156->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                  t156->oval = t157.
                ENDIF.
              ENDIF.
            ENDIF.
            t71 = t156.
          ENDIF.
          DATA t222 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t222.
          DATA t225 TYPE REF TO zif_lnt_union_4cf1d054.
          CLEAR t225.
          DATA t227 TYPE REF TO object.
          CLEAR t227.
          t64->load( ).
          CLEAR t227.
          READ TABLE t64->items INDEX 3 INTO t227.
          DATA t228 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t228.
          CLEAR t225.
          IF t227 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t228 ?= t227.
            DATA t229 TYPE REF TO object.
            t229 = t228->as_ref( ).
            t225 ?= t229.
          ELSE.
            t225 ?= t227.
          ENDIF.
          t222 = zcl_lnt_edit_helper=>replace_token( i_file = t49 i_token = t225->get_first_token( ) i_text = |NEW| ).
          DATA t231 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t231.
          DATA t232 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t232.
          DATA t233 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t233 = t71.
          DATA t235 TYPE REF TO object.
          CLEAR t235.
          IF t233 IS BOUND AND t233->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            CREATE OBJECT t232.
            LOOP AT t233->entries INTO DATA(t236).
              DATA(t237) = CAST zlnt_runtime_dyna_a429568d5be8( t236-v ).
              DATA t238 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t238.
              DATA t239 TYPE REF TO object.
              t239 = t237->as_ref( ).
              t238 ?= t239.
              t232->set( p0 = t236-k p1 = t238 ).
            ENDLOOP.
          ELSE.
            t235 = t233->as_ref( ).
            DATA t240 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
            CLEAR t240.
            TRY.
                t232 ?= t235.
              CATCH cx_sy_move_cast_error.
                t240 ?= t235.
                CREATE OBJECT t232.
                LOOP AT t240->entries INTO DATA(t241).
                  DATA(t242) = CAST zlnt_runtime_dyna_a429568d5be8( t241-v ).
                  DATA t243 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                  CLEAR t243.
                  DATA t244 TYPE REF TO object.
                  CLEAR t244.
                  t244 = t242->as_ref( ).
                  t243 ?= t244.
                  t232->set( p0 = t241-k p1 = t243 ).
                ENDLOOP.
            ENDTRY.
          ENDIF.
          t231 = zcl_lnt_edit_helper=>merge( i_fix1 = t232 i_fix2 = t222 ).
          DATA t247 TYPE REF TO zcl_lnt_issue.
          CLEAR t247.
          DATA(t251) = VALUE string( ).
          DATA t252 TYPE REF TO zcl_lnt_irule_metadata.
          DATA t259 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t259.
          DATA(t262) = |\nhttps://github.com/SAP/styleguides/blob/main/clean-abap/Cle|.
          t262 = t262 && |anABAP.md#prefer-raise-exception-new-to-raise-exception-type|.
          t262 = t262 && |\n\nFrom 752 and up|.
          DATA(t263) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t263->has = abap_true.
          t263->value = t262.
          t259 = t263.
          DATA t265 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t265.
          DATA t269 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t269.
          t269->load( ).
          APPEND |Styleguide| TO t269->items.
          t269->save( ).
          t269->load( ).
          APPEND |SingleFile| TO t269->items.
          t269->save( ).
          t269->load( ).
          APPEND |Quickfix| TO t269->items.
          t269->save( ).
          t269->load( ).
          APPEND |Upport| TO t269->items.
          t269->save( ).
          t265 = t269.
          DATA t281 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t281.
          DATA(t284) = |RAISE EXCEPTION NEW cx_generation_error( previous = exceptio|.
          t284 = t284 && |n ).|.
          DATA(t285) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t285->has = abap_true.
          t285->value = t284.
          t281 = t285.
          DATA t287 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t287.
          DATA(t290) = |RAISE EXCEPTION TYPE cx_generation_error\n  EXPORTING\n    pre|.
          t290 = t290 && |vious = exception.|.
          DATA(t291) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t291->has = abap_true.
          t291->value = t290.
          t287 = t291.
          DATA t293 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t293.
          CLEAR t293.
          DATA t295 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t295.
          CLEAR t295.
          t252 = NEW zcl_lnt_irule_metadata( i_key = |prefer_raise_exception_new| i_title = |Prefer RAISE EXCEPTION NEW to RAISE EXCEPTION TYPE| i_short_description = |Prefer RAISE EXCEPTION NEW to RAISE EXCEPTION TYPE| i_bad_example = t287 i_good_example = t281 i_extended_information = t259 i_tags = t265 i_pragma = t293 i_pseudo_comment = t295 ).
          CREATE OBJECT t252->zlnt_view_ownkeys_b0e8086400eb.
          t252->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t297 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t297.
          t252->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t297 ).
          DATA t298 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t298.
          IF t252->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t252->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t298 ).
          ENDIF.
          DATA t299 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t299.
          IF t252->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t252->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t299 ).
          ENDIF.
          DATA t300 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t300.
          IF t252->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t252->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t300 ).
          ENDIF.
          DATA t301 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t301.
          IF t252->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t252->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t301 ).
          ENDIF.
          DATA t302 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t302.
          IF t252->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t252->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t302 ).
          ENDIF.
          DATA t303 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t303.
          IF t252->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t252->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t303 ).
          ENDIF.
          CREATE OBJECT t252->zlnt_json_ownkeys_70e5fd461788.
          t252->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t305 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t305.
          t252->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t305 ).
          DATA t307 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t307.
          IF t252->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t252->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t307 ).
          ENDIF.
          DATA t309 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t309.
          IF t252->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t252->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t309 ).
          ENDIF.
          DATA t311 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t311.
          IF t252->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t252->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t311 ).
          ENDIF.
          DATA t313 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t313.
          IF t252->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t252->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t313 ).
          ENDIF.
          DATA t315 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t315.
          IF t252->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t252->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t315 ).
          ENDIF.
          DATA t317 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t317.
          IF t252->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t252->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t317 ).
          ENDIF.
          t251 = t252->key.
          DATA t318 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t318.
          t318 = me->conf->zlnt_view_read_sr_15c06369f827( ).
          DATA t320 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t320.
          t320 = t231.
          DATA t324 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t324.
          t247 = zcl_lnt_issue=>at_statement( i_file = t1 i_statement = t19 i_message_26cb = |Prefer RAISE EXCEPTION NEW to RAISE EXCEPTION TYPE| i_key = t251 i_severity = t318 i_fix = t320 i_alternative_fixes = t324 ).
          t12->load( ).
          APPEND t247 TO t12->items.
          t12->save( ).
        ENDIF.
      ENDIF.
    ENDDO.
    result = t12.

  ENDMETHOD.

  METHOD get_fix.
    DATA(t1) = i_file.
    DATA(t2) = i_statement.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE REF TO zcl_lnt_abstract_node.
    t7 = t2.
    t6 = t7->children.
    t5 ?= t6.
    t4 = t5.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF i_with_exporting = abap_true.
      DATA(t14) = VALUE string( ).
      DATA(t16) = VALUE string( ).
      DATA(t17) = |( |.
      DATA(t18) = VALUE string( ).
      DATA t19 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA t21 TYPE REF TO object.
      t4->load( ).
      READ TABLE t4->items INDEX 6 INTO t21.
      DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t21 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t22 ?= t21.
        DATA t23 TYPE REF TO object.
        t23 = t22->as_ref( ).
        t19 ?= t23.
      ELSE.
        t19 ?= t21.
      ENDIF.
      t18 = t19->concat_tokens( ).
      DATA(t24) = strlen( t17 ).
      t16 = |{ t17 }{ t18 }|.
      DATA(t26) = strlen( t16 ).
      t14 = |{ t16 }{ | ).| }|.
      DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t30 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      DATA t32 TYPE REF TO zcl_lnt_position.
      DATA t33 TYPE REF TO zcl_lnt_abstract_token.
      DATA t35 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA t37 TYPE REF TO object.
      t4->load( ).
      READ TABLE t4->items INDEX 4 INTO t37.
      DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t37 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t38 ?= t37.
        DATA t39 TYPE REF TO object.
        t39 = t38->as_ref( ).
        t35 ?= t39.
      ELSE.
        t35 ?= t37.
      ENDIF.
      t33 = t35->get_last_token( ).
      DATA(t41) = VALUE f( ).
      t41 = t33->start->row.
      DATA t48 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t48 = t33->start->col.
      DATA(t54) = VALUE f( ).
      t54 = strlen( t33->str ).
      DATA(t59) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t59->has = abap_true.
      t59->value = t54.
      t32 = NEW zcl_lnt_position( i_row = t41 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t48 right = t59 op = `+` ) ).
      DATA t68 TYPE REF TO zcl_lnt_abstract_token.
      t68 = t2->get_last_token( ).
      DATA(t71) = VALUE f( ).
      t71 = t68->start->row.
      DATA t78 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t78 = t68->start->col.
      DATA(t84) = VALUE f( ).
      t84 = strlen( t68->str ).
      DATA(t89) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t89->has = abap_true.
      t89->value = t84.
      t30 = zcl_lnt_edit_helper=>replace_range( i_file = t1 i_start = t32 i_end = NEW zcl_lnt_position( i_row = t71 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t78 right = t89 op = `+` ) ) i_text = t14 ).
      IF t30 IS BOUND.
        DATA t91 TYPE REF TO zlnt_view_storage_74017ca272ac.
        DATA t92 TYPE REF TO object.
        t92 = t30.
        TRY.
            t29 ?= t92.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t29 IS NOT BOUND.
          TRY.
              t91 ?= t30.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t91 IS BOUND.
            t29 = t91->source( ).
          ENDIF.
          IF t29 IS NOT BOUND.
            CREATE OBJECT t29.
            t29->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t29->oval = t30.
          ENDIF.
        ENDIF.
      ENDIF.
      t11 = t29.
    ELSE.
      DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t97 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      DATA t99 TYPE REF TO zcl_lnt_position.
      DATA t100 TYPE REF TO zcl_lnt_abstract_token.
      DATA t102 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA t104 TYPE REF TO object.
      t4->load( ).
      READ TABLE t4->items INDEX 4 INTO t104.
      DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t104 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t105 ?= t104.
        DATA t106 TYPE REF TO object.
        t106 = t105->as_ref( ).
        t102 ?= t106.
      ELSE.
        t102 ?= t104.
      ENDIF.
      t100 = t102->get_last_token( ).
      DATA(t108) = VALUE f( ).
      t108 = t100->start->row.
      DATA t115 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t115 = t100->start->col.
      DATA(t121) = VALUE f( ).
      t121 = strlen( t100->str ).
      DATA(t126) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t126->has = abap_true.
      t126->value = t121.
      t99 = NEW zcl_lnt_position( i_row = t108 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t115 right = t126 op = `+` ) ).
      DATA t135 TYPE REF TO zcl_lnt_abstract_token.
      t135 = t2->get_last_token( ).
      DATA(t138) = VALUE f( ).
      t138 = t135->start->row.
      DATA t145 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t145 = t135->start->col.
      DATA(t151) = VALUE f( ).
      t151 = strlen( t135->str ).
      DATA(t156) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t156->has = abap_true.
      t156->value = t151.
      t97 = zcl_lnt_edit_helper=>replace_range( i_file = t1 i_start = t99 i_end = NEW zcl_lnt_position( i_row = t138 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t145 right = t156 op = `+` ) ) i_text = |( ).| ).
      IF t97 IS BOUND.
        DATA t158 TYPE REF TO zlnt_view_storage_74017ca272ac.
        DATA t159 TYPE REF TO object.
        t159 = t97.
        TRY.
            t96 ?= t159.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t96 IS NOT BOUND.
          TRY.
              t158 ?= t97.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t158 IS BOUND.
            t96 = t158->source( ).
          ENDIF.
          IF t96 IS NOT BOUND.
            CREATE OBJECT t96.
            t96->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t96->oval = t97.
          ENDIF.
        ENDIF.
      ENDIF.
      t11 = t96.
    ENDIF.
    DATA t162 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    DATA t165 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA t167 TYPE REF TO object.
    t4->load( ).
    READ TABLE t4->items INDEX 3 INTO t167.
    DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t167 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t168 ?= t167.
      DATA t169 TYPE REF TO object.
      t169 = t168->as_ref( ).
      t165 ?= t169.
    ELSE.
      t165 ?= t167.
    ENDIF.
    t162 = zcl_lnt_edit_helper=>replace_token( i_file = t1 i_token = t165->get_first_token( ) i_text = |NEW| ).
    DATA t172 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    DATA t173 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t173 = t11.
    DATA t175 TYPE REF TO object.
    IF t173 IS BOUND AND t173->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      CREATE OBJECT t172.
      LOOP AT t173->entries INTO DATA(t176).
        DATA(t177) = CAST zlnt_runtime_dyna_a429568d5be8( t176-v ).
        DATA t178 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t178.
        DATA t179 TYPE REF TO object.
        t179 = t177->as_ref( ).
        t178 ?= t179.
        t172->set( p0 = t176-k p1 = t178 ).
      ENDLOOP.
    ELSE.
      t175 = t173->as_ref( ).
      DATA t180 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
      TRY.
          t172 ?= t175.
        CATCH cx_sy_move_cast_error.
          t180 ?= t175.
          CREATE OBJECT t172.
          LOOP AT t180->entries INTO DATA(t181).
            DATA(t182) = CAST zlnt_runtime_dyna_a429568d5be8( t181-v ).
            DATA t183 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t183.
            DATA t184 TYPE REF TO object.
            CLEAR t184.
            t184 = t182->as_ref( ).
            t183 ?= t184.
            t172->set( p0 = t181-k p1 = t183 ).
          ENDLOOP.
      ENDTRY.
    ENDIF.
    result = zcl_lnt_edit_helper=>merge( i_fix1 = t172 i_fix2 = t162 ).

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_prfr_rs_excptn_nw_cnf( me->g_c_i_s_r_p_r_e_n_t_p_rs_ex_nw( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_prfr_rs_excptn_nw_cnf( me->g_c_i_s_r_p_r_e_n_t_p_rs_ex_nw( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_prfr_rs_excptn_nw_cnf.
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
        t1 = NEW zcl_lnt_prfr_rs_excptn_nw_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_p_r_e_n_t_p_rs_ex_nw( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_p_r_e_n_t_p_rs_ex_nw( i_file = i_file ) ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1664_68592b218da9.
  ENDMETHOD.
ENDCLASS.
