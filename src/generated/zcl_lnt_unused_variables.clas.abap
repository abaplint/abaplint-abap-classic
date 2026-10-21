* TS: src/rules/unused_variables.ts:70:1 UnusedVariables
CLASS zcl_lnt_unused_variables DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_rule.
    DATA conf TYPE REF TO zcl_lnt_unused_variables_conf.
    DATA reg TYPE REF TO zif_lnt_registry.
    DATA workarea TYPE REF TO zcl_lnt_rl_unused_variabl_w_ar.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS gt_cn_in_sr_rl_un_vr_ts_un_vrb RETURNING VALUE(result) TYPE REF TO zcl_lnt_unused_variables_conf.
    METHODS st_cn_in_sr_rl_un_vr_ts_un_vrb IMPORTING i_conf TYPE REF TO zcl_lnt_unused_variables_conf.
    METHODS in_in_sr_rl_uns_vrb_ts_uns_vrb IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zcl_lnt_unused_variables.
    METHODS run IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS find_uses IMPORTING i_node TYPE REF TO zif_lnt_spaghetti_scope_node i_obj_1ed0 TYPE REF TO zcl_lnt_abap_object.
    METHODS build_workarea IMPORTING i_node TYPE REF TO zif_lnt_spaghetti_scope_node i_obj_1ed0 TYPE REF TO zcl_lnt_abap_object.
    METHODS build_issues IMPORTING i_obj_1ed0 TYPE REF TO zcl_lnt_abap_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS suppressedby_pseudo IMPORTING i_file TYPE REF TO zcl_lnt_abap_file i_statement_index TYPE i i_v TYPE REF TO zcl_lnt_typed_identifier i_obj_1ed0 TYPE REF TO zcl_lnt_abap_object RETURNING VALUE(result) TYPE abap_bool.
    METHODS find_file IMPORTING i_filename TYPE string RETURNING VALUE(result) TYPE REF TO zcl_lnt_abap_file.
    METHODS build_fix IMPORTING i_v TYPE REF TO zcl_lnt_typed_identifier i_obj_1ed0 TYPE REF TO zcl_lnt_abap_object i_statement TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
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
CLASS zcl_lnt_unused_variables IMPLEMENTATION.
  METHOD constructor.
    me->conf = NEW zcl_lnt_unused_variables_conf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |Skips event parameters.\n\nNote that this currently does not w|.
    t11 = t11 && |ork if the source code uses macros.\n\nUnused variables are no|.
    t11 = t11 && |t reported if the object contains parser or syntax errors.\n\n|.
    t11 = t11 && |Errors found in INCLUDES are reported for the main program.|.
    DATA(t12) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t12->has = abap_true.
    t12->value = t11.
    t8 = t12.
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t18.
    t18->load( ).
    APPEND |Quickfix| TO t18->items.
    t18->save( ).
    t14 = t18.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t28) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t28->has = abap_true.
    t28->value = |##NEEDED|.
    t24 = t28.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t34) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t34->has = abap_true.
    t34->value = |EC NEEDED|.
    t30 = t34.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t39) = |DATA: BEGIN OF blah1,\n      test  TYPE string,\n      test2 T|.
    t39 = t39 && |YPE string,\n    END OF blah1.|.
    DATA(t40) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t40->has = abap_true.
    t40->value = t39.
    t36 = t40.
    DATA(t45) = |DATA: BEGIN OF blah2 ##NEEDED,\n      test  TYPE string,\n    |.
    t45 = t45 && |  test2 TYPE string,\n    END OF blah2.|.
    DATA(t46) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t46->has = abap_true.
    t46->value = t45.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |unused_variables| i_title = |Unused variables| i_short_description = |Checks for unused variables and constants| i_bad_example = t36 i_good_example = t46 i_extended_information = t8 i_tags = t14 i_pragma = t24 i_pseudo_comment = t30 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t48 ).
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t49 ).
    ENDIF.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t50 ).
    ENDIF.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t51 ).
    ENDIF.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t52 ).
    ENDIF.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `pragma` p1 = t53 ).
    ENDIF.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `pseudoComment` p1 = t54 ).
    ENDIF.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t55 ).
    ENDIF.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t56 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t58 ).
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t60 ).
    ENDIF.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t62 ).
    ENDIF.
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t64 ).
    ENDIF.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t66 ).
    ENDIF.
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |pragma| p1 = t68 ).
    ENDIF.
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |pseudoComment| p1 = t70 ).
    ENDIF.
    DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t72 ).
    ENDIF.
    DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t74 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_un_vr_ts_un_vrb.
    result = me->conf.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_un_vr_ts_un_vrb.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
    DATA t5 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t5 = me->conf->zlnt_view_read_sr_e492ba7f19da( ).
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t5 IS INITIAL ) = abap_true.
      DATA(t11) = me->conf.
      DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t12.
      t11->zlnt_view_write_s_f3e8c7b51ce1( p0 = t12 ).
    ENDIF.
  ENDMETHOD.

  METHOD in_in_sr_rl_uns_vrb_ts_uns_vrb.
    me->reg = i_reg_f149.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
    result = me.

  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_obj_1ed0.
    IF xsdbool( xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_abap_object ) = abap_false ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    IF xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_ob_interface ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.

    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t11 TYPE REF TO zcl_lnt_abap_object.
    t11 ?= t1.
    t9 = t11->parsed.
    DATA t16 TYPE REF TO zcl_lnt_abap_file.
    DATA t17 TYPE REF TO object.
    DATA(t18) = VALUE i( ).
    DO.
      t9->load( ).
      IF t18 >= lines( t9->items ).
        EXIT.
      ENDIF.
      CLEAR t17.
      READ TABLE t9->items INDEX t18 + 1 INTO t17.
      t18 = t18 + 1.
      DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t19.
      CLEAR t16.
      IF t17 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t19 ?= t17.
        DATA t20 TYPE REF TO object.
        t20 = t19->as_ref( ).
        t16 ?= t20.
      ELSE.
        t16 ?= t17.
      ENDIF.
      DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t21.
      t21 = t16->statements.
      DATA t26 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t26.
      DATA t27 TYPE REF TO object.
      CLEAR t27.
      DATA(t28) = VALUE i( ).
      DO.
        t21->load( ).
        IF t28 >= lines( t21->items ).
          EXIT.
        ENDIF.
        CLEAR t27.
        READ TABLE t21->items INDEX t28 + 1 INTO t27.
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
        DATA t32 TYPE REF TO zif_lnt_statement.
        t32 = t26->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        IF xsdbool( t32 IS BOUND AND t32 IS INSTANCE OF zcl_lnt_unknown ) = abap_true.
          CREATE OBJECT result.
          RETURN.
        ENDIF.
      ENDDO.
    ENDDO.
    DATA t35 TYPE REF TO zcl_lnt_isyntax_result.
    DATA(t38) = me->reg.
    DATA t39 TYPE REF TO zcl_lnt_abap_object.
    t39 ?= t1.
    t35 = NEW zcl_lnt_syntax_logic( i_reg_f149 = t38 i_object_19cd = t39 )->run( ).
    DATA t44 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t44 = t35->zlnt_view_read_sr_bd188c319c03( ).
    t44->load( ).
    IF xsdbool( lines( t44->items ) > 0 ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    me->workarea = NEW zcl_lnt_rl_unused_variabl_w_ar( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `workarea`.
    DATA t49 TYPE REF TO zif_lnt_spaghetti_scope_node.
    t49 = t35->zlnt_view_read_sr_b6b1d9e0c93e( )->get_top( ).
    DATA t54 TYPE REF TO zcl_lnt_abap_object.
    t54 ?= t1.
    me->build_workarea( i_node = t49 i_obj_1ed0 = t54 ).
    DATA(t58) = VALUE i( ).
    DATA(t62) = VALUE f( ).
    t62 = me->workarea->workarea->size( ).
    t58 = t62.
    IF xsdbool( t58 = 0 ) = abap_true.
      DATA t68 TYPE REF TO zcl_lnt_abap_object.
      t68 ?= t1.
      result = me->build_issues( i_obj_1ed0 = t68 ).
      RETURN.
    ENDIF.
    DATA t72 TYPE REF TO zcl_lnt_abap_object.
    t72 ?= t1.
    me->find_uses( i_node = t49 i_obj_1ed0 = t72 ).
    DATA t75 TYPE REF TO zif_lnt_generator_8f73cd1c.
    t75 = me->reg->get_objects( )->iterate( ).
    DO.
      DATA t80 TYPE REF TO zcl_lnt_generator_17955b8b.
      t80 = t75->next( ).
      IF t80->done = abap_true.
        EXIT.
      ENDIF.
      DATA t85 TYPE REF TO zif_lnt_object.
      t85 = t80->value.
      DATA(t90) = VALUE abap_bool( ).
      DATA(t91) = VALUE abap_bool( ).
      t91 = abap_false.
      DATA t93 TYPE REF TO cx_root.
      CLEAR t93.
      TRY.
          DATA(t94) = VALUE abap_bool( ).
          DATA t96 TYPE REF TO zif_lnt_object.
          CLEAR t96.
          DATA t97 TYPE REF TO zcl_lnt_abap_object.
          CLEAR t97.
          DATA t99 TYPE REF TO object.
          CLEAR t99.
          t99 = t1.
          t97 ?= t99.
          t96 ?= t97.
          DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t100.
          DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t101.
          CLEAR t100.
          IF t85 IS BOUND.
            DATA t102 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t102.
            DATA t103 TYPE REF TO object.
            CLEAR t103.
            CLEAR t102.
            t103 = t85.
            TRY.
                t100 ?= t103.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t100 IS NOT BOUND.
              TRY.
                  t102 ?= t85.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t102 IS BOUND.
                t100 = t102->source( ).
              ENDIF.
              IF t100 IS NOT BOUND.
                CREATE OBJECT t100.
                t100->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t100->oval = t85.
              ENDIF.
            ENDIF.
          ENDIF.
          CLEAR t101.
          IF t96 IS BOUND.
            DATA t104 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t104.
            DATA t105 TYPE REF TO object.
            CLEAR t105.
            CLEAR t104.
            t105 = t96.
            TRY.
                t101 ?= t105.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t101 IS NOT BOUND.
              TRY.
                  t104 ?= t96.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t104 IS BOUND.
                t101 = t104->source( ).
              ENDIF.
              IF t101 IS NOT BOUND.
                CREATE OBJECT t101.
                t101->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t101->oval = t96.
              ENDIF.
            ENDIF.
          ENDIF.
          IF t100 IS BOUND.
            t94 = t100->strict_equals( t101 ).
          ELSE.
            t94 = xsdbool( t101 IS NOT BOUND ).
          ENDIF.
          t90 = t94.
          t91 = abap_true.
        CATCH cx_root INTO t93.
          IF xsdbool( t91 = abap_false ) = abap_true.
            t75->close( ).
          ENDIF.
          RAISE EXCEPTION t93.
      ENDTRY.
      IF xsdbool( t91 = abap_false ) = abap_true.
        t75->close( ).
      ENDIF.
      IF t90 = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t115) = VALUE abap_bool( ).
      DATA(t116) = VALUE abap_bool( ).
      t116 = abap_false.
      DATA t118 TYPE REF TO cx_root.
      CLEAR t118.
      TRY.
          t115 = xsdbool( t85 IS BOUND AND t85 IS INSTANCE OF zcl_lnt_abap_object ).
          t116 = abap_true.
        CATCH cx_root INTO t118.
          IF xsdbool( t116 = abap_false ) = abap_true.
            t75->close( ).
          ENDIF.
          RAISE EXCEPTION t118.
      ENDTRY.
      IF xsdbool( t116 = abap_false ) = abap_true.
        t75->close( ).
      ENDIF.
      IF t115 = abap_true.
        DATA(t130) = VALUE abap_bool( ).
        DATA(t131) = VALUE abap_bool( ).
        t131 = abap_false.
        DATA t133 TYPE REF TO cx_root.
        CLEAR t133.
        TRY.
            DATA t136 TYPE REF TO zcl_lnt_abap_object.
            CLEAR t136.
            DATA t138 TYPE REF TO object.
            CLEAR t138.
            t138 = t85.
            t136 ?= t138.
            t130 = me->reg->is_dependency( i_obj_1ed0 = t136 ).
            t131 = abap_true.
          CATCH cx_root INTO t133.
            IF xsdbool( t131 = abap_false ) = abap_true.
              t75->close( ).
            ENDIF.
            RAISE EXCEPTION t133.
        ENDTRY.
        IF xsdbool( t131 = abap_false ) = abap_true.
          t75->close( ).
        ENDIF.
        IF t130 = abap_true.
          CONTINUE.
        ENDIF.
        DATA t149 TYPE REF TO zcl_lnt_isyntax_result.
        CLEAR t149.
        DATA(t150) = VALUE abap_bool( ).
        t150 = abap_false.
        DATA t152 TYPE REF TO cx_root.
        CLEAR t152.
        TRY.
            DATA(t155) = me->reg.
            DATA t156 TYPE REF TO zcl_lnt_abap_object.
            CLEAR t156.
            DATA t158 TYPE REF TO object.
            CLEAR t158.
            t158 = t85.
            t156 ?= t158.
            t149 = NEW zcl_lnt_syntax_logic( i_reg_f149 = t155 i_object_19cd = t156 )->run( ).
            t150 = abap_true.
          CATCH cx_root INTO t152.
            IF xsdbool( t150 = abap_false ) = abap_true.
              t75->close( ).
            ENDIF.
            RAISE EXCEPTION t152.
        ENDTRY.
        IF xsdbool( t150 = abap_false ) = abap_true.
          t75->close( ).
        ENDIF.
        DATA(t167) = VALUE abap_bool( ).
        t167 = abap_false.
        DATA t169 TYPE REF TO cx_root.
        CLEAR t169.
        TRY.
            DATA t170 TYPE REF TO zif_lnt_spaghetti_scope_node.
            CLEAR t170.
            t170 = t149->zlnt_view_read_sr_b6b1d9e0c93e( )->get_top( ).
            DATA t173 TYPE REF TO zcl_lnt_abap_object.
            CLEAR t173.
            DATA t175 TYPE REF TO object.
            CLEAR t175.
            t175 = t85.
            t173 ?= t175.
            me->find_uses( i_node = t170 i_obj_1ed0 = t173 ).
            t167 = abap_true.
          CATCH cx_root INTO t169.
            IF xsdbool( t167 = abap_false ) = abap_true.
              t75->close( ).
            ENDIF.
            RAISE EXCEPTION t169.
        ENDTRY.
        IF xsdbool( t167 = abap_false ) = abap_true.
          t75->close( ).
        ENDIF.
        DATA(t184) = VALUE abap_bool( ).
        DATA(t185) = VALUE abap_bool( ).
        t185 = abap_false.
        DATA t187 TYPE REF TO cx_root.
        CLEAR t187.
        TRY.
            DATA(t192) = VALUE f( ).
            t192 = me->workarea->workarea->size( ).
            t184 = xsdbool( t192 = CONV f( 0 ) ).
            t185 = abap_true.
          CATCH cx_root INTO t187.
            IF xsdbool( t185 = abap_false ) = abap_true.
              t75->close( ).
            ENDIF.
            RAISE EXCEPTION t187.
        ENDTRY.
        IF xsdbool( t185 = abap_false ) = abap_true.
          t75->close( ).
        ENDIF.
        IF t184 = abap_true.
          DATA t207 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t207.
          DATA(t208) = VALUE abap_bool( ).
          t208 = abap_false.
          DATA t210 TYPE REF TO cx_root.
          CLEAR t210.
          TRY.
              DATA t212 TYPE REF TO zcl_lnt_abap_object.
              CLEAR t212.
              DATA t214 TYPE REF TO object.
              CLEAR t214.
              t214 = t1.
              t212 ?= t214.
              t207 = me->build_issues( i_obj_1ed0 = t212 ).
              t208 = abap_true.
            CATCH cx_root INTO t210.
              IF xsdbool( t208 = abap_false ) = abap_true.
                t75->close( ).
              ENDIF.
              RAISE EXCEPTION t210.
          ENDTRY.
          IF xsdbool( t208 = abap_false ) = abap_true.
            t75->close( ).
          ENDIF.
          t75->close( ).
          result = t207.
          RETURN.
        ENDIF.
      ENDIF.

    ENDDO.
    DATA t226 TYPE REF TO zcl_lnt_abap_object.
    t226 ?= t1.
    result = me->build_issues( i_obj_1ed0 = t226 ).

  ENDMETHOD.

  METHOD find_uses.
    CONSTANTS range_safe_integer TYPE f VALUE '9007199254740991'.
    DATA(t1) = i_node.
    DATA(t2) = i_obj_1ed0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t3 = t1->get_data( )->references.
    DATA t6 TYPE REF TO zcl_lnt_ireference.
    DATA t7 TYPE REF TO object.
    DATA(t8) = VALUE i( ).
    DO.
      t3->load( ).
      IF t8 >= lines( t3->items ).
        EXIT.
      ENDIF.
      CLEAR t7.
      READ TABLE t3->items INDEX t8 + 1 INTO t7.
      t8 = t8 + 1.
      DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t9.
      CLEAR t6.
      IF t7 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t9 ?= t7.
        DATA t10 TYPE REF TO object.
        t10 = t9->as_ref( ).
        t6 ?= t10.
      ELSE.
        t6 ?= t7.
      ENDIF.
      DATA(t11) = VALUE abap_bool( ).
      DATA t12 TYPE abap_bool.
      DATA t13 TYPE abap_bool.
      t13 = xsdbool( t6->reference_type = |Read From| ).
      t12 = t13.
      IF t13 = abap_false.
        t12 = xsdbool( t6->reference_type = |Write To| ).
      ENDIF.
      t11 = t12.
      IF t12 = abap_false.
        t11 = xsdbool( t6->reference_type = |Type| ).
      ENDIF.
      IF t11 = abap_true.
        DATA t25 TYPE REF TO zcl_lnt_rl_unused_variabl_w_ar.
        t25 = me->workarea.
        DATA t27 TYPE REF TO zcl_lnt_fi_identifier.
        t27 = t6->resolved.
        DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t33.
        IF xsdbool( t27 IS INITIAL ) = abap_true.
        ELSE.
          DATA(t37) = VALUE string( ).
          DATA t39 TYPE REF TO zcl_lnt_fi_identifier.
          t39 = t27.
          DATA t43 TYPE REF TO zcl_lnt_position.
          t43 = t39->token->start.
          DATA(t54) = VALUE string( ).
          DATA(t55) = VALUE string( ).
          DATA t56 TYPE string.
          DATA t57 TYPE string.
          t57 = t39->filename.
          DATA(t63) = strlen( t57 ).
          t56 = |{ t57 }{ |,| }|.
          DATA(t64) = VALUE string( ).
          DATA t65 TYPE f.
          t65 = t43->row.
          IF t65 <> trunc( t65 ) OR t65 > range_safe_integer OR t65 < 0 - range_safe_integer.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          DATA(t70) = CONV int8( t65 ).
          t64 = |{ t70 }|.
          DATA(t71) = strlen( t56 ).
          t55 = |{ t56 }{ t64 }|.
          DATA(t73) = strlen( t55 ).
          t54 = |{ t55 }{ |,| }|.
          DATA t74 TYPE string.
          DATA t78 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t78 = t43->col.
          t74 = zlnt_runtime_numb_290eb04a9758=>text( t78 ).
          DATA(t80) = strlen( t54 ).
          t37 = |{ t54 }{ t74 }|.
          DATA t81 TYPE REF TO zcl_lnt_shape_3488a94d.
          t81 = t25->workarea->get( p0 = t37 ).
          DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t89.
          IF xsdbool( xsdbool( t81 IS INITIAL ) = abap_false ) = abap_true.
            DATA t94 TYPE REF TO zcl_lnt_shape_3488a94d.
            t94 = t81.
            DATA t97 TYPE f.
            t97 = t81->count.
            DATA(t100) = CONV f( 1 ).
            t94->count = t97 - t100.
            DELETE t94->zlnt_record_delet_0597644d88b4 WHERE table_line = `count`.
            DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t101.
            IF t94->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t94->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `count` p1 = t101 ).
            ENDIF.
            DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t103.
            IF t94->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t94->zlnt_json_ownkeys_70e5fd461788->put( p0 = |count| p1 = t103 ).
            ENDIF.
            IF xsdbool( t81->count = CONV f( 0 ) ) = abap_true.
              DATA t109 TYPE abap_bool.
              DATA t110 TYPE REF TO zlnt_runtime_map__eb808f96a04f.
              t110 = t25->workarea.
              DELETE t110->entries WHERE k = t37.
              t109 = xsdbool( sy-subrc = 0 ).
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA t113 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t113 = t1->get_children( ).
    DATA t115 TYPE REF TO zif_lnt_spaghetti_scope_node.
    DATA t116 TYPE REF TO object.
    DATA(t117) = VALUE i( ).
    DO.
      t113->load( ).
      IF t117 >= lines( t113->items ).
        EXIT.
      ENDIF.
      CLEAR t116.
      READ TABLE t113->items INDEX t117 + 1 INTO t116.
      t117 = t117 + 1.
      DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t118.
      CLEAR t115.
      IF t116 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t118 ?= t116.
        DATA t119 TYPE REF TO object.
        t119 = t118->as_ref( ).
        t115 ?= t119.
      ELSE.
        t115 ?= t116.
      ENDIF.
      me->find_uses( i_node = t115 i_obj_1ed0 = t2 ).
    ENDDO.
  ENDMETHOD.

  METHOD build_workarea.
    CONSTANTS range_safe_integer TYPE f VALUE '9007199254740991'.
    DATA(t1) = i_node.
    DATA(t2) = i_obj_1ed0.
    DATA t3 TYPE string.
    t3 = t1->get_identifier( )->stype.
    IF xsdbool( t3 = |open_sql| ) = abap_true.
      RETURN.
    ENDIF.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t10 = t1->get_children( ).
    DATA t12 TYPE REF TO zif_lnt_spaghetti_scope_node.
    DATA t13 TYPE REF TO object.
    DATA(t14) = VALUE i( ).
    DO.
      t10->load( ).
      IF t14 >= lines( t10->items ).
        EXIT.
      ENDIF.
      CLEAR t13.
      READ TABLE t10->items INDEX t14 + 1 INTO t13.
      t14 = t14 + 1.
      DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t15.
      CLEAR t12.
      IF t13 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t15 ?= t13.
        DATA t16 TYPE REF TO object.
        t16 = t15->as_ref( ).
        t12 ?= t16.
      ELSE.
        t12 ?= t13.
      ENDIF.
      me->build_workarea( i_node = t12 i_obj_1ed0 = t2 ).
    ENDDO.
    IF xsdbool( t3 <> |_builtin| ) = abap_true.
      DATA t22 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
      t22 = t1->get_data( )->vars.
      DATA t26 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      t26 = t22->keys( ).
      DATA(t28) = VALUE string( ).
      t26->dense( ).
      DATA(t29) = VALUE i( ).
      DO.
        t26->load( ).
        IF t29 >= lines( t26->items ).
          EXIT.
        ENDIF.
        CLEAR t28.
        READ TABLE t26->items INDEX t29 + 1 INTO t28.
        IF t26->has( t29 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t29 = t29 + 1.
        DATA t30 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        t30 = t22->get( p0 = t28 )->meta.
        DATA(t39) = VALUE abap_bool( ).
        DATA t40 TYPE abap_bool.
        DATA t41 TYPE abap_bool.
        DATA t42 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        t42 = me->conf->zlnt_view_read_sr_e492ba7f19da( ).
        t41 = xsdbool( t42 IS BOUND ).
        t40 = t41.
        IF t41 = abap_true.
          DATA t46 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          t46 = me->conf->zlnt_view_read_sr_e492ba7f19da( ).
          t46->load( ).
          t40 = xsdbool( lines( t46->items ) > 0 ).
        ENDIF.
        t39 = t40.
        IF t40 = abap_true.
          DATA t51 TYPE abap_bool.
          t51 = abap_false.
          DATA t53 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          t53 = me->conf->zlnt_view_read_sr_e492ba7f19da( ).
          DATA(t56) = VALUE string( ).
          t53->dense( ).
          DATA(t57) = VALUE i( ).
          DO.
            t53->load( ).
            IF t57 >= lines( t53->items ).
              EXIT.
            ENDIF.
            CLEAR t56.
            READ TABLE t53->items INDEX t57 + 1 INTO t56.
            IF t53->has( t57 ) = abap_false.
              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
            ENDIF.
            t57 = t57 + 1.
            DATA t59 TYPE string.
            DATA(t61) = strlen( t56 ).
            t59 = t56.
            IF t59 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t59 TO UPPER CASE.
            ELSE.
              t59 = zlnt_runtime_uppe_91169605024d=>full( t59 ).
            ENDIF.
            IF xsdbool( t59 = t28 ) = abap_true.
              t51 = abap_true.
              EXIT.
            ENDIF.
          ENDDO.
          t39 = t51.
        ENDIF.
        IF t39 = abap_true.
          CONTINUE.
        ELSE.
          DATA t65 TYPE abap_bool.
          DATA t66 TYPE abap_bool.
          DATA t67 TYPE abap_bool.
          t67 = me->conf->zlnt_view_read_sr_68c11a06ca38( ).
          t66 = xsdbool( t67 = abap_true ).
          t65 = t66.
          IF t66 = abap_true.
            t65 = t30->includes( p0 = |abstract| ).
          ENDIF.
          IF t65 = abap_true.
            CONTINUE.
          ELSE.
            DATA(t73) = VALUE abap_bool( ).
            DATA(t74) = VALUE abap_bool( ).
            DATA t75 TYPE abap_bool.
            DATA t76 TYPE abap_bool.
            t76 = xsdbool( t28 = |ME| ).
            t75 = t76.
            IF t76 = abap_false.
              t75 = xsdbool( t28 = |SUPER| ).
            ENDIF.
            t74 = t75.
            IF t75 = abap_false.
              t74 = t30->includes( p0 = |selection_screen_tab| ).
            ENDIF.
            t73 = t74.
            IF t74 = abap_false.
              t73 = t30->includes( p0 = |event_parameter| ).
            ENDIF.
            IF t73 = abap_true.
              CONTINUE.
            ENDIF.
          ENDIF.
        ENDIF.
        DATA t89 TYPE abap_bool.
        t89 = t30->includes( p0 = |inline| ).
        DATA t92 TYPE REF TO zcl_lnt_rl_unused_variabl_w_ar.
        t92 = me->workarea.
        DATA t94 TYPE REF TO zcl_lnt_typed_identifier.
        t94 = t22->get( p0 = t28 ).
        DATA t99 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t99.
        DATA(t102) = VALUE f( ).
        DATA(t103) = VALUE i( ).
        IF t89 = abap_true.
          t103 = 2.
        ELSE.
          t103 = 1.
        ENDIF.
        t102 = t103.
        DATA(t107) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t107->has = abap_true.
        t107->value = t102.
        t99 = t107.
        DATA(t109) = VALUE abap_bool( ).
        DATA(t110) = t99.
        IF t110 IS INITIAL.
          t109 = abap_true.
        ELSEIF t110->has = abap_false.
          t109 = abap_true.
        ENDIF.
        IF t109 = abap_true.
          DATA(t114) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t114->has = abap_true.
          t114->value = CONV f( 1 ).
          t99 = t114.
        ENDIF.
        DATA(t116) = VALUE string( ).
        DATA t118 TYPE REF TO zcl_lnt_fi_identifier.
        t118 = t94.
        DATA t121 TYPE REF TO zcl_lnt_position.
        t121 = t118->token->start.
        DATA(t132) = VALUE string( ).
        DATA(t133) = VALUE string( ).
        DATA t134 TYPE string.
        DATA t135 TYPE string.
        t135 = t118->filename.
        DATA(t141) = strlen( t135 ).
        t134 = |{ t135 }{ |,| }|.
        DATA(t142) = VALUE string( ).
        DATA t143 TYPE f.
        t143 = t121->row.
        IF t143 <> trunc( t143 ) OR t143 > range_safe_integer OR t143 < 0 - range_safe_integer.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        DATA(t148) = CONV int8( t143 ).
        t142 = |{ t148 }|.
        DATA(t149) = strlen( t134 ).
        t133 = |{ t134 }{ t142 }|.
        DATA(t151) = strlen( t133 ).
        t132 = |{ t133 }{ |,| }|.
        DATA t152 TYPE string.
        DATA t156 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t156 = t121->col.
        t152 = zlnt_runtime_numb_290eb04a9758=>text( t156 ).
        DATA(t158) = strlen( t132 ).
        t116 = |{ t132 }{ t152 }|.
        DATA t160 TYPE REF TO zlnt_runtime_map__eb808f96a04f.
        t160 = t92->workarea.
        IF t160->has( p0 = t116 ) = abap_true.
        ELSE.
          DATA t163 TYPE REF TO zlnt_runtime_map__eb808f96a04f.
          CLEAR t163.
          DATA t164 TYPE REF TO zlnt_runtime_map__eb808f96a04f.
          t164 = t92->workarea.
          DATA t167 TYPE REF TO zcl_lnt_shape_3488a94d.
          CLEAR t167.
          DATA t168 TYPE REF TO zcl_lnt_typed_identifier.
          CLEAR t168.
          t168 = t94.
          DATA(t174) = VALUE f( ).
          IF t99->number_special <> 0.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t174 = t99->value.
          t167 = NEW zcl_lnt_shape_3488a94d( i_id = t168 i_count = t174 ).
          CREATE OBJECT t167->zlnt_view_ownkeys_b0e8086400eb.
          t167->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t176.
          t167->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `id` p1 = t176 ).
          DATA t177 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t177.
          IF t167->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t167->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `count` p1 = t177 ).
          ENDIF.
          CREATE OBJECT t167->zlnt_json_ownkeys_70e5fd461788.
          t167->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t179.
          t167->zlnt_json_ownkeys_70e5fd461788->put( p0 = |id| p1 = t179 ).
          DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t181.
          IF t167->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t167->zlnt_json_ownkeys_70e5fd461788->put( p0 = |count| p1 = t181 ).
          ENDIF.
          t163 = t164->set( p0 = t116 p1 = t167 ).
        ENDIF.
      ENDDO.
    ENDIF.
  ENDMETHOD.

  METHOD build_issues.
    CONSTANTS range_i32_lower TYPE f VALUE '-2147483648'.
    CONSTANTS range_i32_upper TYPE f VALUE '2147483647'.
    DATA(t1) = i_obj_1ed0.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    DATA t4 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t5 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t15) = |Skips event parameters.\n\nNote that this currently does not w|.
    t15 = t15 && |ork if the source code uses macros.\n\nUnused variables are no|.
    t15 = t15 && |t reported if the object contains parser or syntax errors.\n\n|.
    t15 = t15 && |Errors found in INCLUDES are reported for the main program.|.
    DATA(t16) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t16->has = abap_true.
    t16->value = t15.
    t12 = t16.
    DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t22 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t22.
    t22->load( ).
    APPEND |Quickfix| TO t22->items.
    t22->save( ).
    t18 = t22.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t32) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t32->has = abap_true.
    t32->value = |##NEEDED|.
    t28 = t32.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t38) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t38->has = abap_true.
    t38->value = |EC NEEDED|.
    t34 = t38.
    DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t43) = |DATA: BEGIN OF blah1,\n      test  TYPE string,\n      test2 T|.
    t43 = t43 && |YPE string,\n    END OF blah1.|.
    DATA(t44) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t44->has = abap_true.
    t44->value = t43.
    t40 = t44.
    DATA(t49) = |DATA: BEGIN OF blah2 ##NEEDED,\n      test  TYPE string,\n    |.
    t49 = t49 && |  test2 TYPE string,\n    END OF blah2.|.
    DATA(t50) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t50->has = abap_true.
    t50->value = t49.
    t5 = NEW zcl_lnt_irule_metadata( i_key = |unused_variables| i_title = |Unused variables| i_short_description = |Checks for unused variables and constants| i_bad_example = t40 i_good_example = t50 i_extended_information = t12 i_tags = t18 i_pragma = t28 i_pseudo_comment = t34 ).
    CREATE OBJECT t5->zlnt_view_ownkeys_b0e8086400eb.
    t5->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t5->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t52 ).
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t5->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t5->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t53 ).
    ENDIF.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t5->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t5->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t54 ).
    ENDIF.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t5->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t5->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t55 ).
    ENDIF.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t5->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t5->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t56 ).
    ENDIF.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t5->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t5->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `pragma` p1 = t57 ).
    ENDIF.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t5->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t5->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `pseudoComment` p1 = t58 ).
    ENDIF.
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t5->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t5->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t59 ).
    ENDIF.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t5->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t5->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t60 ).
    ENDIF.
    CREATE OBJECT t5->zlnt_json_ownkeys_70e5fd461788.
    t5->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t5->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t62 ).
    DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t5->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t5->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t64 ).
    ENDIF.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t5->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t5->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t66 ).
    ENDIF.
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t5->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t5->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t68 ).
    ENDIF.
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t5->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t5->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t70 ).
    ENDIF.
    DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t5->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t5->zlnt_json_ownkeys_70e5fd461788->put( p0 = |pragma| p1 = t72 ).
    ENDIF.
    DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t5->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t5->zlnt_json_ownkeys_70e5fd461788->put( p0 = |pseudoComment| p1 = t74 ).
    ENDIF.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t5->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t5->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t76 ).
    ENDIF.
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t5->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t5->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t78 ).
    ENDIF.
    t4 = t5.
    DATA(t79) = VALUE string( ).
    DATA(t81) = VALUE string( ).
    DATA t82 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t82 = t4->pragma.
    DATA(t85) = VALUE string( ).
    DATA(t86) = VALUE abap_bool( ).
    IF t82 IS INITIAL.
      t86 = abap_true.
    ELSEIF t82->has = abap_false.
      t86 = abap_true.
    ENDIF.
    IF t86 = abap_true.
      t85 = |undefined|.
    ELSE.
      t85 = t82->value.
    ENDIF.
    t81 = t85.
    DATA(t92) = strlen( t81 ).
    t79 = |{ t81 }{ || }|.
    DATA t93 TYPE REF TO zlnt_runtime_map__36824941f28a.
    t93 = NEW zlnt_runtime_map__36824941f28a( ).
    DATA t95 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t97) = me->workarea.
    DATA t100 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t100.
    t95 = t100->concat( p0 = t97->workarea->values( ) ).
    DATA t108 TYPE REF TO zcl_lnt_shape_3488a94d.
    DATA t109 TYPE REF TO object.
    DATA(t110) = VALUE i( ).
    DO.
      t95->load( ).
      IF t110 >= lines( t95->items ).
        EXIT.
      ENDIF.
      CLEAR t109.
      READ TABLE t95->items INDEX t110 + 1 INTO t109.
      t110 = t110 + 1.
      DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t111.
      CLEAR t108.
      IF t109 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t111 ?= t109.
        DATA t112 TYPE REF TO object.
        t112 = t111->as_ref( ).
        t108 ?= t112.
      ELSE.
        t108 ?= t109.
      ENDIF.
      DATA t113 TYPE string.
      DATA t115 TYPE REF TO zcl_lnt_fi_identifier.
      t115 = t108->id.
      t113 = t115->filename.
      DATA t121 TYPE abap_bool.
      t121 = me->reg->is_file_dependency( i_filename = t113 ).
      IF xsdbool( t121 = abap_true ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA t125 TYPE abap_bool.
      DATA t126 TYPE abap_bool.
      t126 = xsdbool( xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_ob_program ) = abap_false ).
      t125 = t126.
      IF t126 = abap_true.
        t125 = xsdbool( t1->contains_file( i_filename = t113 ) = abap_false ).
      ENDIF.
      IF t125 = abap_true.
        CONTINUE.
      ENDIF.

      IF xsdbool( t93->has( p0 = t113 ) = abap_false ) = abap_true.
        DATA t140 TYPE REF TO zlnt_runtime_map__36824941f28a.
        CLEAR t140.
        DATA t144 TYPE string.
        t144 = t113.
        DATA t147 TYPE REF TO zif_lnt_file.
        t147 = me->reg->get_file_by_name( i_filename = t144 ).
        DATA t151 TYPE REF TO zcl_lnt_abap_file.
        CLEAR t151.
        DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t155.
        IF xsdbool( t147 IS INITIAL ) = abap_true.
          CLEAR t151.
        ELSE.
          DATA t161 TYPE REF TO zif_lnt_object.
          t161 = me->reg->find_object_for_file( i_file = t147 ).
          DATA t166 TYPE REF TO zcl_lnt_abap_file.
          CLEAR t166.
          IF xsdbool( xsdbool( t161 IS BOUND AND t161 IS INSTANCE OF zcl_lnt_abap_object ) = abap_false ) = abap_true.
            CLEAR t166.
          ELSE.
            DATA t172 TYPE REF TO zcl_lnt_abap_object.
            t172 ?= t161.
            t166 = t172->get_abap_file_by_name( i_filename = t144 ).
          ENDIF.
          t151 = t166.
        ENDIF.
        t140 = t93->set( p0 = t113 p1 = t151 ).
      ENDIF.
      DATA t176 TYPE REF TO zcl_lnt_abap_file.
      CLEAR t176.
      DATA t177 TYPE REF TO zcl_lnt_abap_file.
      CLEAR t177.
      DATA(t180) = CAST zlnt_runtime_opti_6ea62210990f( t93->get( p0 = t113 ) ).
      IF t180 IS BOUND.
        t177 = t180->value.
      ENDIF.
      t176 = t177.
      DATA t181 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t181.
      DATA t183 TYPE i.
      t183 = -1.
      DATA t188 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t188.
      IF xsdbool( xsdbool( t176 IS INITIAL ) = abap_false ) = abap_true.
        DATA t193 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t193 = t176->statements.
        DATA t200 TYPE REF TO zcl_lnt_abstract_token.
        DATA t202 TYPE REF TO zcl_lnt_fi_identifier.
        t202 = t108->id.
        t200 = t202->token.
        DATA t207 TYPE i.
        t207 = 0.
        DO.
          t193->load( ).
          IF xsdbool( t207 < lines( t193->items ) ) = abap_false.
            EXIT.
          ENDIF.
          DATA t214 TYPE REF TO zcl_lnt_statement_node.
          CLEAR t214.
          DATA(t216) = t207.
          t216 = t216 + 1.
          DATA t217 TYPE REF TO object.
          CLEAR t217.
          t193->load( ).
          CLEAR t217.
          READ TABLE t193->items INDEX t216 INTO t217.
          DATA t218 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t218.
          CLEAR t214.
          IF t217 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t218 ?= t217.
            DATA t219 TYPE REF TO object.
            t219 = t218->as_ref( ).
            t214 ?= t219.
          ELSE.
            t214 ?= t217.
          ENDIF.
          IF t214->includes_token( i_search_b3ca = t200 ) = abap_true.
            DATA t223 TYPE REF TO zcl_lnt_statement_node.
            CLEAR t223.
            DATA(t225) = t207.
            t225 = t225 + 1.
            DATA t226 TYPE REF TO object.
            CLEAR t226.
            t193->load( ).
            CLEAR t226.
            READ TABLE t193->items INDEX t225 INTO t226.
            DATA t227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t227.
            CLEAR t223.
            IF t226 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t227 ?= t226.
              DATA t228 TYPE REF TO object.
              t228 = t227->as_ref( ).
              t223 ?= t228.
            ELSE.
              t223 ?= t226.
            ENDIF.
            t181 = t223.
            t183 = t207.
            EXIT.
          ENDIF.
          DATA(t233) = 1.
          t207 = t207 + t233.
        ENDDO.
      ENDIF.
      DATA(t234) = VALUE abap_bool( ).
      DATA(t235) = VALUE abap_bool( ).
      DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t238.
      t235 = xsdbool( xsdbool( t181 IS INITIAL ) = abap_false ).
      t234 = t235.
      IF t235 = abap_true.
        DATA t246 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t246.
        t234 = xsdbool( xsdbool( t176 IS INITIAL ) = abap_false ).
      ENDIF.
      IF t234 = abap_true.
        DATA t252 TYPE abap_bool.
        t252 = abap_false.
        DATA t254 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t254 = t181->pragmas.
        DATA t260 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t260.
        DATA t261 TYPE REF TO object.
        CLEAR t261.
        DATA(t262) = VALUE i( ).
        DO.
          t254->load( ).
          IF t262 >= lines( t254->items ).
            EXIT.
          ENDIF.
          CLEAR t261.
          READ TABLE t254->items INDEX t262 + 1 INTO t261.
          t262 = t262 + 1.
          DATA t263 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t263.
          CLEAR t260.
          IF t261 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t263 ?= t261.
            DATA t264 TYPE REF TO object.
            t264 = t263->as_ref( ).
            t260 ?= t264.
          ELSE.
            t260 ?= t261.
          ENDIF.
          IF xsdbool( t260->str = t79 ) = abap_true.
            t252 = abap_true.
            EXIT.
          ENDIF.
        ENDDO.
        IF t252 = abap_true.
          CONTINUE.
        ELSE.
          DATA t281 TYPE REF TO zcl_lnt_typed_identifier.
          t281 = t108->id.
          DATA(t285) = VALUE abap_bool( ).
          DATA t288 TYPE REF TO zcl_lnt_abap_file.
          DATA t291 TYPE REF TO zcl_lnt_fi_identifier.
          t291 = t281.
          DATA t293 TYPE string.
          t293 = t291->filename.
          t288 = t1->get_abap_file_by_name( i_filename = t293 ).
          DATA t295 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t295.
          IF xsdbool( t288 IS INITIAL ) = abap_true.
            t285 = abap_false.
          ELSE.
            DATA t301 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            t301 = t176->statements.
            DATA t307 TYPE REF TO zcl_lnt_statement_node.
            CLEAR t307.
            DATA t308 TYPE REF TO zcl_lnt_statement_node.
            CLEAR t308.
            DATA(t310) = VALUE i( ).
            DATA t311 TYPE f.
            DATA t312 TYPE int8.
            DATA t313 TYPE int8.
            t313 = t183.
            DATA(t315) = CONV int8( 1 ).
            t312 = t313 + t315.
            t311 = t312.
            IF t311 > range_i32_upper.
              t310 = range_i32_upper.
            ELSEIF t311 < range_i32_lower.
              t310 = range_i32_lower.
            ELSE.
              t310 = trunc( t311 ).
            ENDIF.
            t310 = t310 + 1.
            DATA t316 TYPE REF TO object.
            CLEAR t316.
            t301->load( ).
            CLEAR t316.
            READ TABLE t301->items INDEX t310 INTO t316.
            DATA t317 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t317.
            CLEAR t308.
            IF t316 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t317 ?= t316.
              DATA t318 TYPE REF TO object.
              t318 = t317->as_ref( ).
              t308 ?= t318.
            ELSE.
              t308 ?= t316.
            ENDIF.
            t307 = t308.
            DATA(t319) = VALUE abap_bool( ).
            DATA(t320) = VALUE abap_bool( ).
            DATA t321 TYPE REF TO zif_lnt_statement.
            CLEAR t321.
            DATA t322 TYPE REF TO zcl_lnt_statement_node.
            t322 = t307.
            DATA t324 TYPE REF TO zif_lnt_statement.
            CLEAR t324.
            IF xsdbool( t322 IS INITIAL ) = abap_true.
              CLEAR t324.
            ELSE.
              t324 = t322->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
            ENDIF.
            t321 = t324.
            t320 = xsdbool( t321 IS BOUND AND t321 IS INSTANCE OF zcl_lnt_st_comment ).
            t319 = t320.
            IF t320 = abap_true.
              DATA(t331) = VALUE i( ).
              DATA t332 TYPE string.
              t332 = t307->concat_tokens( ).
              DATA(t334) = VALUE string( ).
              DATA(t335) = VALUE string( ).
              DATA t336 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t336.
              DATA t338 TYPE REF TO zcl_lnt_irule_metadata.
              DATA t345 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t345.
              DATA(t348) = |Skips event parameters.\n\nNote that this currently does not w|.
              t348 = t348 && |ork if the source code uses macros.\n\nUnused variables are no|.
              t348 = t348 && |t reported if the object contains parser or syntax errors.\n\n|.
              t348 = t348 && |Errors found in INCLUDES are reported for the main program.|.
              DATA(t349) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t349->has = abap_true.
              t349->value = t348.
              t345 = t349.
              DATA t351 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t351.
              DATA t355 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CREATE OBJECT t355.
              t355->load( ).
              APPEND |Quickfix| TO t355->items.
              t355->save( ).
              t351 = t355.
              DATA t361 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t361.
              DATA(t365) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t365->has = abap_true.
              t365->value = |##NEEDED|.
              t361 = t365.
              DATA t367 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t367.
              DATA(t371) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t371->has = abap_true.
              t371->value = |EC NEEDED|.
              t367 = t371.
              DATA t373 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t373.
              DATA(t376) = |DATA: BEGIN OF blah1,\n      test  TYPE string,\n      test2 T|.
              t376 = t376 && |YPE string,\n    END OF blah1.|.
              DATA(t377) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t377->has = abap_true.
              t377->value = t376.
              t373 = t377.
              DATA(t382) = |DATA: BEGIN OF blah2 ##NEEDED,\n      test  TYPE string,\n    |.
              t382 = t382 && |  test2 TYPE string,\n    END OF blah2.|.
              DATA(t383) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t383->has = abap_true.
              t383->value = t382.
              t338 = NEW zcl_lnt_irule_metadata( i_key = |unused_variables| i_title = |Unused variables| i_short_description = |Checks for unused variables and constants| i_bad_example = t373 i_good_example = t383 i_extended_information = t345 i_tags = t351 i_pragma = t361 i_pseudo_comment = t367 ).
              CREATE OBJECT t338->zlnt_view_ownkeys_b0e8086400eb.
              t338->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t385 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t385.
              t338->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t385 ).
              DATA t386 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t386.
              IF t338->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t338->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t386 ).
              ENDIF.
              DATA t387 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t387.
              IF t338->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t338->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t387 ).
              ENDIF.
              DATA t388 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t388.
              IF t338->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t338->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t388 ).
              ENDIF.
              DATA t389 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t389.
              IF t338->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t338->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t389 ).
              ENDIF.
              DATA t390 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t390.
              IF t338->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t338->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `pragma` p1 = t390 ).
              ENDIF.
              DATA t391 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t391.
              IF t338->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t338->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `pseudoComment` p1 = t391 ).
              ENDIF.
              DATA t392 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t392.
              IF t338->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t338->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t392 ).
              ENDIF.
              DATA t393 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t393.
              IF t338->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t338->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t393 ).
              ENDIF.
              CREATE OBJECT t338->zlnt_json_ownkeys_70e5fd461788.
              t338->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t395 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t395.
              t338->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t395 ).
              DATA t397 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t397.
              IF t338->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t338->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t397 ).
              ENDIF.
              DATA t399 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t399.
              IF t338->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t338->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t399 ).
              ENDIF.
              DATA t401 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t401.
              IF t338->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t338->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t401 ).
              ENDIF.
              DATA t403 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t403.
              IF t338->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t338->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t403 ).
              ENDIF.
              DATA t405 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t405.
              IF t338->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t338->zlnt_json_ownkeys_70e5fd461788->put( p0 = |pragma| p1 = t405 ).
              ENDIF.
              DATA t407 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t407.
              IF t338->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t338->zlnt_json_ownkeys_70e5fd461788->put( p0 = |pseudoComment| p1 = t407 ).
              ENDIF.
              DATA t409 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t409.
              IF t338->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t338->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t409 ).
              ENDIF.
              DATA t411 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t411.
              IF t338->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t338->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t411 ).
              ENDIF.
              t336 = t338->pseudo_comment.
              DATA(t412) = VALUE string( ).
              DATA(t413) = VALUE abap_bool( ).
              IF t336 IS INITIAL.
                t413 = abap_true.
              ELSEIF t336->has = abap_false.
                t413 = abap_true.
              ENDIF.
              IF t413 = abap_true.
                t412 = |undefined|.
              ELSE.
                t412 = t336->value.
              ENDIF.
              t335 = t412.
              DATA(t419) = strlen( t335 ).
              t334 = |{ t335 }{ || }|.
              DATA(t420) = strlen( t332 ).
              IF t334 IS INITIAL.
                t331 = 0.
              ELSE.
                FIND t334 IN t332 MATCH OFFSET t331.
                IF sy-subrc <> 0.
                  t331 = -1.
                ENDIF.
              ENDIF.
              t319 = xsdbool( t331 >= 0 ).
            ENDIF.
            t285 = t319.
          ENDIF.
          IF t285 = abap_true.
            CONTINUE.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA(t422) = VALUE string( ).
      DATA t424 TYPE REF TO zcl_lnt_fi_identifier.
      t424 = t108->id.
      DATA t428 TYPE string.
      t428 = t424->token->str.
      DATA(t436) = VALUE string( ).
      DATA(t437) = t428.
      DATA(t438) = 0.
      DATA(t439) = 1.
      DATA(t440) = strlen( t437 ).
      IF t438 < 0.
        t438 = t438 + t440.
        IF t438 < 0.
          t438 = 0.
        ENDIF.
      ENDIF.
      IF t438 > t440 OR t439 <= 0.
      ELSE.
        IF t439 > t440 - t438.
          t439 = t440 - t438.
        ENDIF.
        t436 = t437+t438(t439).
      ENDIF.
      IF xsdbool( t436 = |!| ) = abap_true.
        DATA t443 TYPE string.
        t443 = t428.
        DATA(t445) = VALUE string( ).
        DATA(t447) = 1.
        DATA t448 TYPE i.
        t448 = strlen( t443 ).
        DATA(t451) = strlen( t443 ).
        IF t447 < 0.
          t447 = t447 + t451.
          IF t447 < 0.
            t447 = 0.
          ENDIF.
        ENDIF.
        IF t447 > t451 OR t448 <= 0.
        ELSE.
          IF t448 > t451 - t447.
            t448 = t451 - t447.
          ENDIF.
          t445 = t443+t447(t448).
        ENDIF.
        t428 = t445.
      ENDIF.
      t422 = t428.
      DATA t454 TYPE string.
      DATA t455 TYPE string.
      DATA(t456) = |Variable "|.
      DATA t457 TYPE string.
      DATA(t459) = strlen( t422 ).
      t457 = t422.
      TRANSLATE t457 TO LOWER CASE.
      DATA(t460) = strlen( t456 ).
      t455 = |{ t456 }{ t457 }|.
      DATA(t462) = strlen( t455 ).
      t454 = |{ t455 }{ |" not used| }|.
      DATA t466 TYPE REF TO zcl_lnt_typed_identifier.
      t466 = t108->id.
      DATA t470 TYPE REF TO zcl_lnt_statement_node.
      t470 = t181.
      DATA t472 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t472.
      DATA(t473) = VALUE abap_bool( ).
      DATA(t474) = VALUE abap_bool( ).
      DATA t477 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t477.
      t474 = xsdbool( t470 IS INITIAL ).
      t473 = t474.
      IF t474 = abap_false.
        DATA t483 TYPE REF TO zif_lnt_statement.
        t483 = t470->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t473 = xsdbool( xsdbool( t483 IS BOUND AND t483 IS INSTANCE OF zcl_lnt_st_data ) = abap_false ).
      ENDIF.
      IF t473 = abap_true.
        CLEAR t472.
      ELSE.
        DATA t488 TYPE REF TO zcl_lnt_abap_file.
        DATA t491 TYPE string.
        DATA t492 TYPE REF TO zcl_lnt_fi_identifier.
        t492 = t466.
        t491 = t492->filename.
        t488 = t1->get_abap_file_by_name( i_filename = t491 ).
        DATA t496 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t496.
        DATA t500 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t500.
        IF xsdbool( t488 IS INITIAL ) = abap_true.
          CLEAR t496.
        ELSE.
          t496 = zcl_lnt_edit_helper=>delete_statement( i_file = t488 i_statement = t470 ).
        ENDIF.
        t472 = t496.
      ENDIF.
      DATA t514 TYPE REF TO zcl_lnt_issue.
      DATA t515 TYPE REF TO zcl_lnt_typed_identifier.
      t515 = t108->id.
      DATA t518 TYPE string.
      t518 = t4->key.
      t514 = zcl_lnt_issue=>at_identifier( i_identifier = t515 i_message_26cb = t454 i_key = t518 i_severity = me->conf->zlnt_view_read_sr_15c06369f827( ) i_fix = t472 ).
      t2->load( ).
      APPEND t514 TO t2->items.
      t2->save( ).
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD suppressedby_pseudo.
    CONSTANTS range_i32_lower TYPE f VALUE '-2147483648'.
    CONSTANTS range_i32_upper TYPE f VALUE '2147483647'.
    DATA(t1) = i_file.
    DATA(t2) = i_statement_index.
    DATA t7 TYPE REF TO zcl_lnt_abap_file.
    DATA t10 TYPE REF TO zcl_lnt_fi_identifier.
    t10 = i_v.
    DATA t12 TYPE string.
    t12 = t10->filename.
    t7 = i_obj_1ed0->get_abap_file_by_name( i_filename = t12 ).
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t7 IS INITIAL ) = abap_true.
      result = abap_false.
      RETURN.
    ENDIF.
    DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t19 = t1->statements.
    DATA t25 TYPE REF TO zcl_lnt_statement_node.
    DATA t26 TYPE REF TO zcl_lnt_statement_node.
    DATA(t28) = VALUE i( ).
    DATA t29 TYPE f.
    DATA t30 TYPE int8.
    DATA t31 TYPE int8.
    t31 = t2.
    DATA(t33) = CONV int8( 1 ).
    t30 = t31 + t33.
    t29 = t30.
    IF t29 > range_i32_upper.
      t28 = range_i32_upper.
    ELSEIF t29 < range_i32_lower.
      t28 = range_i32_lower.
    ELSE.
      t28 = trunc( t29 ).
    ENDIF.
    t28 = t28 + 1.
    DATA t34 TYPE REF TO object.
    t19->load( ).
    READ TABLE t19->items INDEX t28 INTO t34.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t34 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t35 ?= t34.
      DATA t36 TYPE REF TO object.
      t36 = t35->as_ref( ).
      t26 ?= t36.
    ELSE.
      t26 ?= t34.
    ENDIF.
    t25 = t26.
    DATA(t37) = VALUE abap_bool( ).
    DATA(t38) = VALUE abap_bool( ).
    DATA t39 TYPE REF TO zif_lnt_statement.
    DATA t40 TYPE REF TO zcl_lnt_statement_node.
    t40 = t25.
    DATA t42 TYPE REF TO zif_lnt_statement.
    IF xsdbool( t40 IS INITIAL ) = abap_true.
    ELSE.
      t42 = t40->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
    ENDIF.
    t39 = t42.
    t38 = xsdbool( t39 IS BOUND AND t39 IS INSTANCE OF zcl_lnt_st_comment ).
    t37 = t38.
    IF t38 = abap_true.
      DATA(t49) = VALUE i( ).
      DATA t50 TYPE string.
      t50 = t25->concat_tokens( ).
      DATA(t52) = VALUE string( ).
      DATA(t53) = VALUE string( ).
      DATA t54 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t56 TYPE REF TO zcl_lnt_irule_metadata.
      DATA t63 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t66) = |Skips event parameters.\n\nNote that this currently does not w|.
      t66 = t66 && |ork if the source code uses macros.\n\nUnused variables are no|.
      t66 = t66 && |t reported if the object contains parser or syntax errors.\n\n|.
      t66 = t66 && |Errors found in INCLUDES are reported for the main program.|.
      DATA(t67) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t67->has = abap_true.
      t67->value = t66.
      t63 = t67.
      DATA t69 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t73 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t73.
      t73->load( ).
      APPEND |Quickfix| TO t73->items.
      t73->save( ).
      t69 = t73.
      DATA t79 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t83) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t83->has = abap_true.
      t83->value = |##NEEDED|.
      t79 = t83.
      DATA t85 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t89) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t89->has = abap_true.
      t89->value = |EC NEEDED|.
      t85 = t89.
      DATA t91 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t94) = |DATA: BEGIN OF blah1,\n      test  TYPE string,\n      test2 T|.
      t94 = t94 && |YPE string,\n    END OF blah1.|.
      DATA(t95) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t95->has = abap_true.
      t95->value = t94.
      t91 = t95.
      DATA(t100) = |DATA: BEGIN OF blah2 ##NEEDED,\n      test  TYPE string,\n    |.
      t100 = t100 && |  test2 TYPE string,\n    END OF blah2.|.
      DATA(t101) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t101->has = abap_true.
      t101->value = t100.
      t56 = NEW zcl_lnt_irule_metadata( i_key = |unused_variables| i_title = |Unused variables| i_short_description = |Checks for unused variables and constants| i_bad_example = t91 i_good_example = t101 i_extended_information = t63 i_tags = t69 i_pragma = t79 i_pseudo_comment = t85 ).
      CREATE OBJECT t56->zlnt_view_ownkeys_b0e8086400eb.
      t56->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t56->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t103 ).
      DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t56->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t56->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t104 ).
      ENDIF.
      DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t56->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t56->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t105 ).
      ENDIF.
      DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t56->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t56->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t106 ).
      ENDIF.
      DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t56->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t56->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t107 ).
      ENDIF.
      DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t56->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t56->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `pragma` p1 = t108 ).
      ENDIF.
      DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t56->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t56->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `pseudoComment` p1 = t109 ).
      ENDIF.
      DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t56->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t56->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t110 ).
      ENDIF.
      DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t56->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t56->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t111 ).
      ENDIF.
      CREATE OBJECT t56->zlnt_json_ownkeys_70e5fd461788.
      t56->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t56->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t113 ).
      DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t56->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t56->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t115 ).
      ENDIF.
      DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t56->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t56->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t117 ).
      ENDIF.
      DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t56->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t56->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t119 ).
      ENDIF.
      DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t56->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t56->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t121 ).
      ENDIF.
      DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t56->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t56->zlnt_json_ownkeys_70e5fd461788->put( p0 = |pragma| p1 = t123 ).
      ENDIF.
      DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t56->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t56->zlnt_json_ownkeys_70e5fd461788->put( p0 = |pseudoComment| p1 = t125 ).
      ENDIF.
      DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t56->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t56->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t127 ).
      ENDIF.
      DATA t129 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t56->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t56->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t129 ).
      ENDIF.
      t54 = t56->pseudo_comment.
      DATA(t130) = VALUE string( ).
      DATA(t131) = VALUE abap_bool( ).
      IF t54 IS INITIAL.
        t131 = abap_true.
      ELSEIF t54->has = abap_false.
        t131 = abap_true.
      ENDIF.
      IF t131 = abap_true.
        t130 = |undefined|.
      ELSE.
        t130 = t54->value.
      ENDIF.
      t53 = t130.
      DATA(t137) = strlen( t53 ).
      t52 = |{ t53 }{ || }|.
      DATA(t138) = strlen( t50 ).
      IF t52 IS INITIAL.
        t49 = 0.
      ELSE.
        FIND t52 IN t50 MATCH OFFSET t49.
        IF sy-subrc <> 0.
          t49 = -1.
        ENDIF.
      ENDIF.
      t37 = xsdbool( t49 >= 0 ).
    ENDIF.
    result = t37.
    RETURN.
    result = abap_false.

  ENDMETHOD.

  METHOD find_file.
    DATA(t1) = i_filename.
    DATA t2 TYPE REF TO zif_lnt_file.
    t2 = me->reg->get_file_by_name( i_filename = t1 ).
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t2 IS INITIAL ) = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t14 TYPE REF TO zif_lnt_object.
    t14 = me->reg->find_object_for_file( i_file = t2 ).
    IF xsdbool( xsdbool( t14 IS BOUND AND t14 IS INSTANCE OF zcl_lnt_abap_object ) = abap_false ) = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t24 TYPE REF TO zcl_lnt_abap_object.
    t24 ?= t14.
    result = t24->get_abap_file_by_name( i_filename = t1 ).

  ENDMETHOD.

  METHOD build_fix.
    DATA(t1) = i_v.
    DATA(t2) = i_obj_1ed0.
    DATA(t3) = i_statement.
    DATA(t4) = VALUE abap_bool( ).
    DATA(t5) = VALUE abap_bool( ).
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t5 = xsdbool( t3 IS INITIAL ).
    t4 = t5.
    IF t5 = abap_false.
      DATA t14 TYPE REF TO zif_lnt_statement.
      t14 = t3->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
      t4 = xsdbool( xsdbool( t14 IS BOUND AND t14 IS INSTANCE OF zcl_lnt_st_data ) = abap_false ).
    ENDIF.
    IF t4 = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t18 TYPE REF TO zcl_lnt_abap_file.
    DATA t21 TYPE string.
    DATA t22 TYPE REF TO zcl_lnt_fi_identifier.
    t22 = t1.
    t21 = t22->filename.
    t18 = t2->get_abap_file_by_name( i_filename = t21 ).
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t18 IS INITIAL ) = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    result = zcl_lnt_edit_helper=>delete_statement( i_file = t18 i_statement = t3 ).

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_unused_variables_conf( me->gt_cn_in_sr_rl_un_vr_ts_un_vrb( ) ).

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_unused_variables_conf( me->gt_cn_in_sr_rl_un_vr_ts_un_vrb( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_unused_variables_conf.
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
        t2 = NEW zcl_lnt_unused_variables_conf( view_source = t1 ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_un_vr_ts_un_vrb( i_conf = t2 ).
  ENDMETHOD.

  METHOD initialize.
    DATA(t3) = i_reg_f149.
    result = me->in_in_sr_rl_uns_vrb_ts_uns_vrb( i_reg_f149 = t3 ).

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1763_92963a7b9a59.
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
