* TS: src/rules/unused_types.ts:55:1 UnusedTypes
CLASS zcl_lnt_unused_types DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_rule.
    DATA conf TYPE REF TO zcl_lnt_unused_types_conf.
    DATA reg TYPE REF TO zif_lnt_registry.
    DATA workarea TYPE REF TO zcl_lnt_rl_unused_types_wrk_ar.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS g_c_i_s_rl_un_ty_ts_un_ty_fb96 RETURNING VALUE(result) TYPE REF TO zcl_lnt_unused_types_conf.
    METHODS s_c_i_s_rl_un_ty_ts_un_ty_63cc IMPORTING i_conf TYPE REF TO zcl_lnt_unused_types_conf.
    METHODS in_in_sr_rl_uns_typ_ts_uns_typ IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zcl_lnt_unused_types.
    METHODS run IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS suppressedby_pseudo IMPORTING i_statement TYPE REF TO zcl_lnt_statement_node i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE abap_bool.
    METHODS traverse IMPORTING i_node TYPE REF TO zif_lnt_spaghetti_scope_node i_obj_1ed0 TYPE REF TO zcl_lnt_abap_object i_add_81da TYPE abap_bool.
    METHODS check_node IMPORTING i_node TYPE REF TO zif_lnt_spaghetti_scope_node i_obj_1ed0 TYPE REF TO zcl_lnt_abap_object i_add_81da TYPE abap_bool RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS build_fix IMPORTING i_file TYPE REF TO zcl_lnt_abap_file i_statement TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
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
CLASS zcl_lnt_unused_types IMPLEMENTATION.
  METHOD constructor.
    me->conf = NEW zcl_lnt_unused_types_conf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |Unused types are not reported if the object contains parser |.
    t11 = t11 && |or syntax errors.|.
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
    DATA(t34) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t34->has = abap_true.
    t34->value = |EC NEEDED|.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |unused_types| i_title = |Unused types| i_short_description = |Checks for unused TYPE definitions| i_bad_example = t36 i_good_example = t38 i_extended_information = t8 i_tags = t14 i_pragma = t24 i_pseudo_comment = t34 ).
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
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `pragma` p1 = t45 ).
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `pseudoComment` p1 = t46 ).
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
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |pragma| p1 = t58 ).
    ENDIF.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = |pseudoComment| p1 = t60 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_rl_un_ty_ts_un_ty_fb96.
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_i_s_rl_un_ty_ts_un_ty_63cc.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
    DATA t5 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    t5 = me->conf->zlnt_view_read_sr_2667dd143927( ).
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t5 IS INITIAL ) = abap_true.
      DATA(t11) = me->conf.
      DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t12.
      t11->zlnt_view_write_s_b18bb92e9271( p0 = t12 ).
    ENDIF.
  ENDMETHOD.

  METHOD in_in_sr_rl_uns_typ_ts_uns_typ.
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
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t8 TYPE REF TO zcl_lnt_abap_object.
    DATA t10 TYPE REF TO object.
    t10 = t1.
    t8 ?= t10.
    t6 = t8->parsed.
    DATA t13 TYPE REF TO zcl_lnt_abap_file.
    DATA t14 TYPE REF TO object.
    DATA(t15) = VALUE i( ).
    DO.
      t6->load( ).
      IF t15 >= lines( t6->items ).
        EXIT.
      ENDIF.
      CLEAR t14.
      READ TABLE t6->items INDEX t15 + 1 INTO t14.
      t15 = t15 + 1.
      DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t16.
      CLEAR t13.
      IF t14 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t16 ?= t14.
        DATA t17 TYPE REF TO object.
        t17 = t16->as_ref( ).
        t13 ?= t17.
      ELSE.
        t13 ?= t14.
      ENDIF.
      DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t18.
      t18 = t13->statements.
      DATA t23 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t23.
      DATA t24 TYPE REF TO object.
      CLEAR t24.
      DATA(t25) = VALUE i( ).
      DO.
        t18->load( ).
        IF t25 >= lines( t18->items ).
          EXIT.
        ENDIF.
        CLEAR t24.
        READ TABLE t18->items INDEX t25 + 1 INTO t24.
        t25 = t25 + 1.
        DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t26.
        CLEAR t23.
        IF t24 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t26 ?= t24.
          DATA t27 TYPE REF TO object.
          t27 = t26->as_ref( ).
          t23 ?= t27.
        ELSE.
          t23 ?= t24.
        ENDIF.
        DATA t29 TYPE REF TO zif_lnt_statement.
        t29 = t23->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        IF xsdbool( t29 IS BOUND AND t29 IS INSTANCE OF zcl_lnt_unknown ) = abap_true.
          CREATE OBJECT result.
          RETURN.
        ENDIF.
      ENDDO.
    ENDDO.
    DATA t32 TYPE REF TO zcl_lnt_isyntax_result.
    DATA(t35) = me->reg.
    DATA t36 TYPE REF TO zcl_lnt_abap_object.
    DATA t38 TYPE REF TO object.
    t38 = t1.
    t36 ?= t38.
    t32 = NEW zcl_lnt_syntax_logic( i_reg_f149 = t35 i_object_19cd = t36 )->run( ).
    DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t41 = t32->zlnt_view_read_sr_bd188c319c03( ).
    t41->load( ).
    IF xsdbool( lines( t41->items ) > 0 ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    me->workarea = NEW zcl_lnt_rl_unused_types_wrk_ar( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `workarea`.
    DATA t46 TYPE REF TO zif_lnt_spaghetti_scope_node.
    t46 = t32->zlnt_view_read_sr_b6b1d9e0c93e( )->get_top( ).
    DATA t49 TYPE REF TO zcl_lnt_abap_object.
    DATA t51 TYPE REF TO object.
    t51 = t1.
    t49 ?= t51.
    me->traverse( i_node = t46 i_obj_1ed0 = t49 i_add_81da = abap_true ).
    DATA t53 TYPE REF TO zif_lnt_spaghetti_scope_node.
    t53 = t32->zlnt_view_read_sr_b6b1d9e0c93e( )->get_top( ).
    DATA t56 TYPE REF TO zcl_lnt_abap_object.
    DATA t58 TYPE REF TO object.
    t58 = t1.
    t56 ?= t58.
    me->traverse( i_node = t53 i_obj_1ed0 = t56 i_add_81da = abap_false ).
    DATA(t61) = VALUE i( ).
    DATA(t65) = VALUE f( ).
    DATA t67 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t67 = me->workarea->workarea.
    t67->load( ).
    t65 = lines( t67->items ).
    t61 = t65.
    IF xsdbool( t61 = 0 ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t71 TYPE REF TO zif_lnt_generator_8f73cd1c.
    t71 = me->reg->get_objects( )->iterate( ).
    DO.
      DATA t76 TYPE REF TO zcl_lnt_generator_17955b8b.
      t76 = t71->next( ).
      IF t76->done = abap_true.
        EXIT.
      ENDIF.
      DATA t81 TYPE REF TO zif_lnt_object.
      t81 = t76->value.
      DATA(t86) = VALUE abap_bool( ).
      DATA(t87) = VALUE abap_bool( ).
      t87 = abap_false.
      DATA t89 TYPE REF TO cx_root.
      CLEAR t89.
      TRY.
          DATA(t90) = VALUE abap_bool( ).
          DATA t92 TYPE REF TO zif_lnt_object.
          CLEAR t92.
          DATA t93 TYPE REF TO zcl_lnt_abap_object.
          CLEAR t93.
          DATA t95 TYPE REF TO object.
          CLEAR t95.
          t95 = t1.
          t93 ?= t95.
          t92 ?= t93.
          DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t96.
          DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t97.
          CLEAR t96.
          IF t81 IS BOUND.
            DATA t98 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t98.
            DATA t99 TYPE REF TO object.
            CLEAR t99.
            CLEAR t98.
            t99 = t81.
            TRY.
                t96 ?= t99.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t96 IS NOT BOUND.
              TRY.
                  t98 ?= t81.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t98 IS BOUND.
                t96 = t98->source( ).
              ENDIF.
              IF t96 IS NOT BOUND.
                CREATE OBJECT t96.
                t96->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t96->oval = t81.
              ENDIF.
            ENDIF.
          ENDIF.
          CLEAR t97.
          IF t92 IS BOUND.
            DATA t100 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t100.
            DATA t101 TYPE REF TO object.
            CLEAR t101.
            CLEAR t100.
            t101 = t92.
            TRY.
                t97 ?= t101.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t97 IS NOT BOUND.
              TRY.
                  t100 ?= t92.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t100 IS BOUND.
                t97 = t100->source( ).
              ENDIF.
              IF t97 IS NOT BOUND.
                CREATE OBJECT t97.
                t97->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t97->oval = t92.
              ENDIF.
            ENDIF.
          ENDIF.
          IF t96 IS BOUND.
            t90 = t96->strict_equals( t97 ).
          ELSE.
            t90 = xsdbool( t97 IS NOT BOUND ).
          ENDIF.
          t86 = t90.
          t87 = abap_true.
        CATCH cx_root INTO t89.
          IF xsdbool( t87 = abap_false ) = abap_true.
            t71->close( ).
          ENDIF.
          RAISE EXCEPTION t89.
      ENDTRY.
      IF xsdbool( t87 = abap_false ) = abap_true.
        t71->close( ).
      ENDIF.
      IF t86 = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t111) = VALUE abap_bool( ).
      DATA(t112) = VALUE abap_bool( ).
      t112 = abap_false.
      DATA t114 TYPE REF TO cx_root.
      CLEAR t114.
      TRY.
          t111 = xsdbool( t81 IS BOUND AND t81 IS INSTANCE OF zcl_lnt_abap_object ).
          t112 = abap_true.
        CATCH cx_root INTO t114.
          IF xsdbool( t112 = abap_false ) = abap_true.
            t71->close( ).
          ENDIF.
          RAISE EXCEPTION t114.
      ENDTRY.
      IF xsdbool( t112 = abap_false ) = abap_true.
        t71->close( ).
      ENDIF.
      IF t111 = abap_true.
        DATA(t126) = VALUE abap_bool( ).
        DATA(t127) = VALUE abap_bool( ).
        t127 = abap_false.
        DATA t129 TYPE REF TO cx_root.
        CLEAR t129.
        TRY.
            DATA t132 TYPE REF TO zcl_lnt_abap_object.
            CLEAR t132.
            DATA t134 TYPE REF TO object.
            CLEAR t134.
            t134 = t81.
            t132 ?= t134.
            t126 = me->reg->is_dependency( i_obj_1ed0 = t132 ).
            t127 = abap_true.
          CATCH cx_root INTO t129.
            IF xsdbool( t127 = abap_false ) = abap_true.
              t71->close( ).
            ENDIF.
            RAISE EXCEPTION t129.
        ENDTRY.
        IF xsdbool( t127 = abap_false ) = abap_true.
          t71->close( ).
        ENDIF.
        IF t126 = abap_true.
          CONTINUE.
        ENDIF.
        DATA t145 TYPE REF TO zcl_lnt_isyntax_result.
        CLEAR t145.
        DATA(t146) = VALUE abap_bool( ).
        t146 = abap_false.
        DATA t148 TYPE REF TO cx_root.
        CLEAR t148.
        TRY.
            DATA(t151) = me->reg.
            DATA t152 TYPE REF TO zcl_lnt_abap_object.
            CLEAR t152.
            DATA t154 TYPE REF TO object.
            CLEAR t154.
            t154 = t81.
            t152 ?= t154.
            t145 = NEW zcl_lnt_syntax_logic( i_reg_f149 = t151 i_object_19cd = t152 )->run( ).
            t146 = abap_true.
          CATCH cx_root INTO t148.
            IF xsdbool( t146 = abap_false ) = abap_true.
              t71->close( ).
            ENDIF.
            RAISE EXCEPTION t148.
        ENDTRY.
        IF xsdbool( t146 = abap_false ) = abap_true.
          t71->close( ).
        ENDIF.
        DATA(t163) = VALUE abap_bool( ).
        t163 = abap_false.
        DATA t165 TYPE REF TO cx_root.
        CLEAR t165.
        TRY.
            DATA t166 TYPE REF TO zif_lnt_spaghetti_scope_node.
            CLEAR t166.
            t166 = t145->zlnt_view_read_sr_b6b1d9e0c93e( )->get_top( ).
            DATA t169 TYPE REF TO zcl_lnt_abap_object.
            CLEAR t169.
            DATA t171 TYPE REF TO object.
            CLEAR t171.
            t171 = t81.
            t169 ?= t171.
            me->traverse( i_node = t166 i_obj_1ed0 = t169 i_add_81da = abap_false ).
            t163 = abap_true.
          CATCH cx_root INTO t165.
            IF xsdbool( t163 = abap_false ) = abap_true.
              t71->close( ).
            ENDIF.
            RAISE EXCEPTION t165.
        ENDTRY.
        IF xsdbool( t163 = abap_false ) = abap_true.
          t71->close( ).
        ENDIF.
      ENDIF.

      DATA(t181) = VALUE abap_bool( ).
      DATA(t182) = VALUE abap_bool( ).
      t182 = abap_false.
      DATA t184 TYPE REF TO cx_root.
      CLEAR t184.
      TRY.
          DATA(t189) = VALUE f( ).
          DATA t191 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t191.
          t191 = me->workarea->workarea.
          t191->load( ).
          t189 = lines( t191->items ).
          t181 = xsdbool( t189 = CONV f( 0 ) ).
          t182 = abap_true.
        CATCH cx_root INTO t184.
          IF xsdbool( t182 = abap_false ) = abap_true.
            t71->close( ).
          ENDIF.
          RAISE EXCEPTION t184.
      ENDTRY.
      IF xsdbool( t182 = abap_false ) = abap_true.
        t71->close( ).
      ENDIF.
      IF t181 = abap_true.
        DATA t204 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t204.
        DATA(t205) = VALUE abap_bool( ).
        t205 = abap_false.
        DATA t207 TYPE REF TO cx_root.
        CLEAR t207.
        TRY.
            DATA t208 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t208.
            CREATE OBJECT t208.
            t204 = t208.
            t205 = abap_true.
          CATCH cx_root INTO t207.
            IF xsdbool( t205 = abap_false ) = abap_true.
              t71->close( ).
            ENDIF.
            RAISE EXCEPTION t207.
        ENDTRY.
        IF xsdbool( t205 = abap_false ) = abap_true.
          t71->close( ).
        ENDIF.
        t71->close( ).
        result = t204.
        RETURN.
      ENDIF.
    ENDDO.
    DATA t219 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t219.
    DATA t221 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t221 = me->workarea->workarea.
    DATA t226 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t227 TYPE REF TO object.
    DATA(t228) = VALUE i( ).
    DO.
      t221->load( ).
      IF t228 >= lines( t221->items ).
        EXIT.
      ENDIF.
      CLEAR t227.
      READ TABLE t221->items INDEX t228 + 1 INTO t227.
      t228 = t228 + 1.
      DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t229.
      CLEAR t226.
      IF t227 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t229 ?= t227.
        DATA t230 TYPE REF TO object.
        t230 = t229->as_ref( ).
        t226 ?= t230.
      ELSE.
        t226 ?= t227.
      ENDIF.
      DATA(t231) = VALUE string( ).
      DATA(t233) = VALUE string( ).
      DATA(t234) = |Type "|.
      DATA(t235) = VALUE string( ).
      DATA t236 TYPE REF TO zcl_lnt_fi_identifier.
      t236 = t226.
      DATA(t239) = VALUE string( ).
      t239 = t236->token->str.
      DATA(t247) = VALUE string( ).
      DATA(t248) = t239.
      DATA(t249) = 0.
      DATA(t250) = 1.
      DATA(t251) = strlen( t248 ).
      IF t249 < 0.
        t249 = t249 + t251.
        IF t249 < 0.
          t249 = 0.
        ENDIF.
      ENDIF.
      IF t249 > t251 OR t250 <= 0.
      ELSE.
        IF t250 > t251 - t249.
          t250 = t251 - t249.
        ENDIF.
        t247 = t248+t249(t250).
      ENDIF.
      IF xsdbool( t247 = |!| ) = abap_true.
        DATA(t254) = VALUE string( ).
        t254 = t239.
        DATA(t256) = VALUE string( ).
        DATA(t258) = 1.
        DATA(t259) = VALUE i( ).
        t259 = strlen( t254 ).
        DATA(t262) = strlen( t254 ).
        IF t258 < 0.
          t258 = t258 + t262.
          IF t258 < 0.
            t258 = 0.
          ENDIF.
        ENDIF.
        IF t258 > t262 OR t259 <= 0.
        ELSE.
          IF t259 > t262 - t258.
            t259 = t262 - t258.
          ENDIF.
          t256 = t254+t258(t259).
        ENDIF.
        t239 = t256.
      ENDIF.
      t235 = t239.
      DATA(t264) = strlen( t234 ).
      t233 = |{ t234 }{ t235 }|.
      DATA(t266) = strlen( t233 ).
      t231 = |{ t233 }{ |" not used| }|.
      DATA t267 TYPE REF TO zcl_lnt_abap_file.
      CLEAR t267.
      DATA t269 TYPE REF TO zcl_lnt_abap_object.
      CLEAR t269.
      DATA t271 TYPE REF TO object.
      t271 = t1.
      t269 ?= t271.
      DATA(t272) = VALUE string( ).
      DATA t273 TYPE REF TO zcl_lnt_fi_identifier.
      t273 = t226.
      t272 = t273->filename.
      t267 = t269->get_abap_file_by_name( i_filename = t272 ).
      DATA t280 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t280.
      CLEAR t280.
      IF xsdbool( t267 IS INITIAL ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA t284 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t284.
      DATA t286 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t286.
      DATA t287 TYPE REF TO zcl_lnt_fi_identifier.
      t287 = t226.
      t286 = t287->token.
      t284 = zcl_lnt_edit_helper=>find_statement( i_token = t286 i_file = t267 ).
      DATA t299 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t299.
      CLEAR t299.
      IF xsdbool( t284 IS INITIAL ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t304) = VALUE abap_bool( ).
      t304 = abap_false.
      DATA t306 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t306.
      t306 = t284->pragmas.
      DATA t312 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t312.
      DATA t313 TYPE REF TO object.
      CLEAR t313.
      DATA(t314) = VALUE i( ).
      DO.
        t306->load( ).
        IF t314 >= lines( t306->items ).
          EXIT.
        ENDIF.
        CLEAR t313.
        READ TABLE t306->items INDEX t314 + 1 INTO t313.
        t314 = t314 + 1.
        DATA t315 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t315.
        CLEAR t312.
        IF t313 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t315 ?= t313.
          DATA t316 TYPE REF TO object.
          t316 = t315->as_ref( ).
          t312 ?= t316.
        ELSE.
          t312 ?= t313.
        ENDIF.
        DATA(t317) = VALUE abap_bool( ).
        DATA t318 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t323) = VALUE string( ).
        t323 = t312->str.
        DATA(t325) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t325->has = abap_true.
        t325->value = t323.
        t318 = t325.
        DATA t327 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t327.
        DATA t328 TYPE REF TO zcl_lnt_irule_metadata.
        DATA t335 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t335.
        DATA(t338) = |Unused types are not reported if the object contains parser |.
        t338 = t338 && |or syntax errors.|.
        DATA(t339) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t339->has = abap_true.
        t339->value = t338.
        t335 = t339.
        DATA t341 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t341.
        DATA t345 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t345.
        t345->load( ).
        APPEND |Quickfix| TO t345->items.
        t345->save( ).
        t341 = t345.
        DATA t351 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t351.
        DATA(t355) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t355->has = abap_true.
        t355->value = |##NEEDED|.
        t351 = t355.
        DATA t357 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t357.
        DATA(t361) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t361->has = abap_true.
        t361->value = |EC NEEDED|.
        t357 = t361.
        DATA t363 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t363.
        CLEAR t363.
        DATA t365 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t365.
        CLEAR t365.
        t328 = NEW zcl_lnt_irule_metadata( i_key = |unused_types| i_title = |Unused types| i_short_description = |Checks for unused TYPE definitions| i_bad_example = t363 i_good_example = t365 i_extended_information = t335 i_tags = t341 i_pragma = t351 i_pseudo_comment = t357 ).
        CREATE OBJECT t328->zlnt_view_ownkeys_b0e8086400eb.
        t328->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t367 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t367.
        t328->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t367 ).
        DATA t368 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t368.
        IF t328->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t328->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t368 ).
        ENDIF.
        DATA t369 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t369.
        IF t328->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t328->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t369 ).
        ENDIF.
        DATA t370 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t370.
        IF t328->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t328->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t370 ).
        ENDIF.
        DATA t371 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t371.
        IF t328->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t328->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t371 ).
        ENDIF.
        DATA t372 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t372.
        IF t328->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t328->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `pragma` p1 = t372 ).
        ENDIF.
        DATA t373 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t373.
        IF t328->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t328->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `pseudoComment` p1 = t373 ).
        ENDIF.
        CREATE OBJECT t328->zlnt_json_ownkeys_70e5fd461788.
        t328->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t375 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t375.
        t328->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t375 ).
        DATA t377 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t377.
        IF t328->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t328->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t377 ).
        ENDIF.
        DATA t379 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t379.
        IF t328->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t328->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t379 ).
        ENDIF.
        DATA t381 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t381.
        IF t328->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t328->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t381 ).
        ENDIF.
        DATA t383 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t383.
        IF t328->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t328->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t383 ).
        ENDIF.
        DATA t385 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t385.
        IF t328->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t328->zlnt_json_ownkeys_70e5fd461788->put( p0 = |pragma| p1 = t385 ).
        ENDIF.
        DATA t387 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t387.
        IF t328->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t328->zlnt_json_ownkeys_70e5fd461788->put( p0 = |pseudoComment| p1 = t387 ).
        ENDIF.
        t327 = t328->pragma.
        DATA(t388) = VALUE abap_bool( ).
        DATA(t389) = VALUE abap_bool( ).
        IF t318 IS BOUND.
          t388 = t318->has.
        ENDIF.
        IF t327 IS BOUND.
          t389 = t327->has.
        ENDIF.
        IF t388 = t389.
          IF t388 = abap_false.
            t317 = abap_true.
          ELSEIF t318->value = t327->value.
            t317 = abap_true.
          ENDIF.
        ENDIF.
        IF t317 = abap_true.
          t304 = abap_true.
          EXIT.
        ENDIF.
      ENDDO.
      IF t304 = abap_true.
        CONTINUE.
      ENDIF.
      IF me->suppressedby_pseudo( i_statement = t284 i_file = t267 ) = abap_true.
        CONTINUE.
      ENDIF.

      DATA t405 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t405.
      t405 = t284.
      DATA t408 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t408.
      DATA(t410) = VALUE i( ).
      DATA(t411) = VALUE string( ).
      DATA(t412) = VALUE string( ).
      t412 = t405->concat_tokens( ).
      DATA(t414) = strlen( t412 ).
      t411 = t412.
      IF t411 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t411 TO UPPER CASE.
      ELSE.
        t411 = zlnt_runtime_uppe_91169605024d=>full( t411 ).
      ENDIF.
      DATA(t415) = |BEGIN OF|.
      DATA(t416) = strlen( t411 ).
      IF t415 IS INITIAL.
        t410 = 0.
      ELSE.
        FIND t415 IN t411 MATCH OFFSET t410.
        IF sy-subrc <> 0.
          t410 = -1.
        ENDIF.
      ENDIF.
      IF xsdbool( t410 >= 0 ) = abap_true.
        CLEAR t408.
      ELSE.
        t408 = zcl_lnt_edit_helper=>delete_statement( i_file = t267 i_statement = t405 ).
      ENDIF.
      DATA t426 TYPE REF TO zcl_lnt_issue.
      CLEAR t426.
      DATA(t429) = VALUE string( ).
      DATA t430 TYPE REF TO zcl_lnt_irule_metadata.
      DATA t437 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t437.
      DATA(t440) = |Unused types are not reported if the object contains parser |.
      t440 = t440 && |or syntax errors.|.
      DATA(t441) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t441->has = abap_true.
      t441->value = t440.
      t437 = t441.
      DATA t443 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t443.
      DATA t447 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t447.
      t447->load( ).
      APPEND |Quickfix| TO t447->items.
      t447->save( ).
      t443 = t447.
      DATA t453 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t453.
      DATA(t457) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t457->has = abap_true.
      t457->value = |##NEEDED|.
      t453 = t457.
      DATA t459 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t459.
      DATA(t463) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t463->has = abap_true.
      t463->value = |EC NEEDED|.
      t459 = t463.
      DATA t465 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t465.
      CLEAR t465.
      DATA t467 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t467.
      CLEAR t467.
      t430 = NEW zcl_lnt_irule_metadata( i_key = |unused_types| i_title = |Unused types| i_short_description = |Checks for unused TYPE definitions| i_bad_example = t465 i_good_example = t467 i_extended_information = t437 i_tags = t443 i_pragma = t453 i_pseudo_comment = t459 ).
      CREATE OBJECT t430->zlnt_view_ownkeys_b0e8086400eb.
      t430->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t469 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t469.
      t430->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t469 ).
      DATA t470 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t470.
      IF t430->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t430->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t470 ).
      ENDIF.
      DATA t471 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t471.
      IF t430->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t430->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t471 ).
      ENDIF.
      DATA t472 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t472.
      IF t430->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t430->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t472 ).
      ENDIF.
      DATA t473 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t473.
      IF t430->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t430->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t473 ).
      ENDIF.
      DATA t474 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t474.
      IF t430->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t430->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `pragma` p1 = t474 ).
      ENDIF.
      DATA t475 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t475.
      IF t430->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t430->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `pseudoComment` p1 = t475 ).
      ENDIF.
      CREATE OBJECT t430->zlnt_json_ownkeys_70e5fd461788.
      t430->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t477 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t477.
      t430->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t477 ).
      DATA t479 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t479.
      IF t430->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t430->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t479 ).
      ENDIF.
      DATA t481 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t481.
      IF t430->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t430->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t481 ).
      ENDIF.
      DATA t483 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t483.
      IF t430->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t430->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t483 ).
      ENDIF.
      DATA t485 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t485.
      IF t430->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t430->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t485 ).
      ENDIF.
      DATA t487 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t487.
      IF t430->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t430->zlnt_json_ownkeys_70e5fd461788->put( p0 = |pragma| p1 = t487 ).
      ENDIF.
      DATA t489 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t489.
      IF t430->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t430->zlnt_json_ownkeys_70e5fd461788->put( p0 = |pseudoComment| p1 = t489 ).
      ENDIF.
      t429 = t430->key.
      t426 = zcl_lnt_issue=>at_identifier( i_identifier = t226 i_message_26cb = t231 i_key = t429 i_severity = me->conf->zlnt_view_read_sr_15c06369f827( ) i_fix = t408 ).
      t219->load( ).
      APPEND t426 TO t219->items.
      t219->save( ).
    ENDDO.
    result = t219.

  ENDMETHOD.

  METHOD suppressedby_pseudo.
    DATA(t1) = i_statement.
    DATA(t2) = i_file.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t1 IS INITIAL ) = abap_true.
      result = abap_false.
      RETURN.
    ENDIF.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t2 IS INITIAL ) = abap_true.
      result = abap_false.
      RETURN.
    ENDIF.
    DATA(t19) = VALUE abap_bool( ).
    t19 = abap_false.
    DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t21 = t2->statements.
    DATA t26 TYPE REF TO zcl_lnt_statement_node.
    DATA t27 TYPE REF TO object.
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
      DATA(t31) = VALUE abap_bool( ).
      DATA(t32) = VALUE abap_bool( ).
      t32 = xsdbool( t19 = abap_true ).
      t31 = t32.
      IF t32 = abap_true.
        DATA t36 TYPE REF TO zif_lnt_statement.
        t36 = t26->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t31 = xsdbool( t36 IS BOUND AND t36 IS INSTANCE OF zcl_lnt_st_comment ).
      ENDIF.
      IF t31 = abap_true.
        DATA(t39) = VALUE i( ).
        DATA(t40) = VALUE string( ).
        t40 = t26->concat_tokens( ).
        DATA(t42) = VALUE string( ).
        DATA(t43) = VALUE string( ).
        DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t44.
        DATA t46 TYPE REF TO zcl_lnt_irule_metadata.
        DATA t53 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t53.
        DATA(t56) = |Unused types are not reported if the object contains parser |.
        t56 = t56 && |or syntax errors.|.
        DATA(t57) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t57->has = abap_true.
        t57->value = t56.
        t53 = t57.
        DATA t59 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t59.
        DATA t63 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t63.
        t63->load( ).
        APPEND |Quickfix| TO t63->items.
        t63->save( ).
        t59 = t63.
        DATA t69 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t69.
        DATA(t73) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t73->has = abap_true.
        t73->value = |##NEEDED|.
        t69 = t73.
        DATA t75 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t75.
        DATA(t79) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t79->has = abap_true.
        t79->value = |EC NEEDED|.
        t75 = t79.
        DATA t81 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t81.
        CLEAR t81.
        DATA t83 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t83.
        CLEAR t83.
        t46 = NEW zcl_lnt_irule_metadata( i_key = |unused_types| i_title = |Unused types| i_short_description = |Checks for unused TYPE definitions| i_bad_example = t81 i_good_example = t83 i_extended_information = t53 i_tags = t59 i_pragma = t69 i_pseudo_comment = t75 ).
        CREATE OBJECT t46->zlnt_view_ownkeys_b0e8086400eb.
        t46->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t85.
        t46->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t85 ).
        DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t86.
        IF t46->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t46->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t86 ).
        ENDIF.
        DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t87.
        IF t46->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t46->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t87 ).
        ENDIF.
        DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t88.
        IF t46->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t46->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t88 ).
        ENDIF.
        DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t89.
        IF t46->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t46->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t89 ).
        ENDIF.
        DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t90.
        IF t46->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t46->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `pragma` p1 = t90 ).
        ENDIF.
        DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t91.
        IF t46->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t46->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `pseudoComment` p1 = t91 ).
        ENDIF.
        CREATE OBJECT t46->zlnt_json_ownkeys_70e5fd461788.
        t46->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t93.
        t46->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t93 ).
        DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t95.
        IF t46->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t46->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t95 ).
        ENDIF.
        DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t97.
        IF t46->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t46->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t97 ).
        ENDIF.
        DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t99.
        IF t46->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t46->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t99 ).
        ENDIF.
        DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t101.
        IF t46->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t46->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t101 ).
        ENDIF.
        DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t103.
        IF t46->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t46->zlnt_json_ownkeys_70e5fd461788->put( p0 = |pragma| p1 = t103 ).
        ENDIF.
        DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t105.
        IF t46->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t46->zlnt_json_ownkeys_70e5fd461788->put( p0 = |pseudoComment| p1 = t105 ).
        ENDIF.
        t44 = t46->pseudo_comment.
        DATA(t106) = VALUE string( ).
        DATA(t107) = VALUE abap_bool( ).
        IF t44 IS INITIAL.
          t107 = abap_true.
        ELSEIF t44->has = abap_false.
          t107 = abap_true.
        ENDIF.
        IF t107 = abap_true.
          t106 = |undefined|.
        ELSE.
          t106 = t44->value.
        ENDIF.
        t43 = t106.
        DATA(t113) = strlen( t43 ).
        t42 = |{ t43 }{ || }|.
        DATA(t114) = strlen( t40 ).
        IF t42 IS INITIAL.
          t39 = 0.
        ELSE.
          FIND t42 IN t40 MATCH OFFSET t39.
          IF sy-subrc <> 0.
            t39 = -1.
          ENDIF.
        ENDIF.
        result = xsdbool( t39 >= 0 ).
        RETURN.
      ENDIF.
      DATA(t116) = VALUE abap_bool( ).
      DATA t118 TYPE REF TO zcl_lnt_statement_node.
      t118 = t1.
      DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t120.
      DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t121.
      CLEAR t120.
      IF t26 IS BOUND.
        DATA t122 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t122.
        DATA t123 TYPE REF TO object.
        CLEAR t122.
        t123 = t26.
        TRY.
            t120 ?= t123.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t120 IS NOT BOUND.
          TRY.
              t122 ?= t26.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t122 IS BOUND.
            t120 = t122->source( ).
          ENDIF.
          IF t120 IS NOT BOUND.
            CREATE OBJECT t120.
            t120->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t120->oval = t26.
          ENDIF.
        ENDIF.
      ENDIF.
      CLEAR t121.
      IF t118 IS BOUND.
        DATA t124 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t124.
        DATA t125 TYPE REF TO object.
        CLEAR t124.
        t125 = t118.
        TRY.
            t121 ?= t125.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t121 IS NOT BOUND.
          TRY.
              t124 ?= t118.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t124 IS BOUND.
            t121 = t124->source( ).
          ENDIF.
          IF t121 IS NOT BOUND.
            CREATE OBJECT t121.
            t121->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t121->oval = t118.
          ENDIF.
        ENDIF.
      ENDIF.
      IF t120 IS BOUND.
        t116 = t120->strict_equals( t121 ).
      ELSE.
        t116 = xsdbool( t121 IS NOT BOUND ).
      ENDIF.
      IF t116 = abap_true.
        t19 = abap_true.
      ENDIF.
    ENDDO.
    result = abap_false.

  ENDMETHOD.

  METHOD traverse.
    DATA(t1) = i_node.
    DATA(t2) = i_obj_1ed0.
    DATA(t3) = i_add_81da.
    DATA t5 TYPE string.
    t5 = t1->get_identifier( )->stype.
    IF xsdbool( t5 <> |_builtin| ) = abap_true.
      DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t9 = me->check_node( i_node = t1 i_obj_1ed0 = t2 i_add_81da = t3 ).
    ENDIF.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t13 = t1->get_children( ).
    DATA t15 TYPE REF TO zif_lnt_spaghetti_scope_node.
    DATA t16 TYPE REF TO object.
    DATA(t17) = VALUE i( ).
    DO.
      t13->load( ).
      IF t17 >= lines( t13->items ).
        EXIT.
      ENDIF.
      CLEAR t16.
      READ TABLE t13->items INDEX t17 + 1 INTO t16.
      t17 = t17 + 1.
      DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t18.
      CLEAR t15.
      IF t16 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t18 ?= t16.
        DATA t19 TYPE REF TO object.
        t19 = t18->as_ref( ).
        t15 ?= t19.
      ELSE.
        t15 ?= t16.
      ENDIF.
      me->traverse( i_node = t15 i_obj_1ed0 = t2 i_add_81da = t3 ).
    ENDDO.
  ENDMETHOD.

  METHOD check_node.
    DATA(t1) = i_node.
    DATA(t2) = i_obj_1ed0.
    DATA(t3) = i_add_81da.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t5.
    IF xsdbool( t3 = abap_true ) = abap_true.
      DATA t9 TYPE REF TO zlnt_runtime_map__126b79e3f8a9.
      t9 = t1->get_data( )->types.
      DATA t13 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      t13 = t9->keys( ).
      DATA(t15) = VALUE string( ).
      t13->dense( ).
      DATA(t16) = VALUE i( ).
      DO.
        t13->load( ).
        IF t16 >= lines( t13->items ).
          EXIT.
        ENDIF.
        CLEAR t15.
        READ TABLE t13->items INDEX t16 + 1 INTO t15.
        IF t13->has( t16 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t16 = t16 + 1.
        DATA t17 TYPE REF TO zcl_lnt_typed_identifier.
        t17 = t9->get( p0 = t15 ).
        DATA t25 TYPE REF TO zcl_lnt_fi_identifier.
        t25 = t17.
        DATA t28 TYPE string.
        t28 = t25->filename.
        IF xsdbool( t2->contains_file( i_filename = t28 ) = abap_false ) = abap_true.
          CONTINUE.
        ELSE.
          DATA(t31) = VALUE abap_bool( ).
          DATA t32 TYPE abap_bool.
          DATA t33 TYPE abap_bool.
          DATA t34 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          t34 = me->conf->zlnt_view_read_sr_2667dd143927( ).
          t33 = xsdbool( t34 IS BOUND ).
          t32 = t33.
          IF t33 = abap_true.
            DATA t38 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            t38 = me->conf->zlnt_view_read_sr_2667dd143927( ).
            t38->load( ).
            t32 = xsdbool( lines( t38->items ) > 0 ).
          ENDIF.
          t31 = t32.
          IF t32 = abap_true.
            DATA t43 TYPE abap_bool.
            t43 = abap_false.
            DATA t45 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            t45 = me->conf->zlnt_view_read_sr_2667dd143927( ).
            DATA(t48) = VALUE string( ).
            t45->dense( ).
            DATA(t49) = VALUE i( ).
            DO.
              t45->load( ).
              IF t49 >= lines( t45->items ).
                EXIT.
              ENDIF.
              CLEAR t48.
              READ TABLE t45->items INDEX t49 + 1 INTO t48.
              IF t45->has( t49 ) = abap_false.
                RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
              ENDIF.
              t49 = t49 + 1.
              DATA t51 TYPE string.
              DATA(t53) = strlen( t48 ).
              t51 = t48.
              IF t51 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                TRANSLATE t51 TO UPPER CASE.
              ELSE.
                t51 = zlnt_runtime_uppe_91169605024d=>full( t51 ).
              ENDIF.
              IF xsdbool( t51 = t15 ) = abap_true.
                t43 = abap_true.
                EXIT.
              ENDIF.
            ENDDO.
            t31 = t43.
          ENDIF.
          IF t31 = abap_true.
            CONTINUE.
          ELSE.
            DATA(t59) = VALUE string( ).
            DATA(t60) = VALUE string( ).
            DATA t61 TYPE REF TO zcl_lnt_fi_identifier.
            t61 = t17.
            DATA t65 TYPE string.
            t65 = t61->token->str.
            DATA(t73) = VALUE string( ).
            DATA(t74) = t65.
            DATA(t75) = 0.
            DATA(t76) = 1.
            DATA(t77) = strlen( t74 ).
            IF t75 < 0.
              t75 = t75 + t77.
              IF t75 < 0.
                t75 = 0.
              ENDIF.
            ENDIF.
            IF t75 > t77 OR t76 <= 0.
            ELSE.
              IF t76 > t77 - t75.
                t76 = t77 - t75.
              ENDIF.
              t73 = t74+t75(t76).
            ENDIF.
            IF xsdbool( t73 = |!| ) = abap_true.
              DATA t80 TYPE string.
              t80 = t65.
              DATA(t82) = VALUE string( ).
              DATA(t84) = 1.
              DATA t85 TYPE i.
              t85 = strlen( t80 ).
              DATA(t88) = strlen( t80 ).
              IF t84 < 0.
                t84 = t84 + t88.
                IF t84 < 0.
                  t84 = 0.
                ENDIF.
              ENDIF.
              IF t84 > t88 OR t85 <= 0.
              ELSE.
                IF t85 > t88 - t84.
                  t85 = t88 - t84.
                ENDIF.
                t82 = t80+t84(t85).
              ENDIF.
              t65 = t82.
            ENDIF.
            t60 = t65.
            DATA(t90) = strlen( t60 ).
            t59 = t60.
            IF t59 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t59 TO UPPER CASE.
            ELSE.
              t59 = zlnt_runtime_uppe_91169605024d=>full( t59 ).
            ENDIF.
            IF xsdbool( t15 <> t59 ) = abap_true.
              CONTINUE.
            ENDIF.
          ENDIF.
        ENDIF.
        me->workarea->push( i_id = t17 ).
      ENDDO.
    ENDIF.
    DATA t94 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t94 = t1->get_data( )->references.
    DATA t97 TYPE REF TO zcl_lnt_ireference.
    DATA t98 TYPE REF TO object.
    DATA(t99) = VALUE i( ).
    DO.
      t94->load( ).
      IF t99 >= lines( t94->items ).
        EXIT.
      ENDIF.
      CLEAR t98.
      READ TABLE t94->items INDEX t99 + 1 INTO t98.
      t99 = t99 + 1.
      DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t100.
      CLEAR t97.
      IF t98 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t100 ?= t98.
        DATA t101 TYPE REF TO object.
        t101 = t100->as_ref( ).
        t97 ?= t101.
      ELSE.
        t97 ?= t98.
      ENDIF.
      DATA t102 TYPE abap_bool.
      DATA t103 TYPE abap_bool.
      t103 = xsdbool( t97->reference_type = |Type| ).
      t102 = t103.
      IF t103 = abap_true.
        DATA t108 TYPE REF TO zcl_lnt_fi_identifier.
        t108 = t97->resolved.
        t102 = xsdbool( t108 IS BOUND ).
      ENDIF.
      IF t102 = abap_true.
        DATA t112 TYPE REF TO zcl_lnt_fi_identifier.
        t112 = t97->resolved.
        me->workarea->remove_if_exists( i_id = t112 ).
      ENDIF.
    ENDDO.
    result = t5.

  ENDMETHOD.

  METHOD build_fix.
    DATA(t1) = i_file.
    DATA(t2) = i_statement.
    DATA(t4) = VALUE i( ).
    DATA t5 TYPE string.
    DATA t6 TYPE string.
    t6 = t2->concat_tokens( ).
    DATA(t8) = strlen( t6 ).
    t5 = t6.
    IF t5 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t5 TO UPPER CASE.
    ELSE.
      t5 = zlnt_runtime_uppe_91169605024d=>full( t5 ).
    ENDIF.
    DATA(t9) = |BEGIN OF|.
    DATA(t10) = strlen( t5 ).
    IF t9 IS INITIAL.
      t4 = 0.
    ELSE.
      FIND t9 IN t5 MATCH OFFSET t4.
      IF sy-subrc <> 0.
        t4 = -1.
      ENDIF.
    ENDIF.
    IF xsdbool( t4 >= 0 ) = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    result = zcl_lnt_edit_helper=>delete_statement( i_file = t1 i_statement = t2 ).

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_unused_types_conf( me->g_c_i_s_rl_un_ty_ts_un_ty_fb96( ) ).

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_unused_types_conf( me->g_c_i_s_rl_un_ty_ts_un_ty_fb96( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_unused_types_conf.
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
        t2 = NEW zcl_lnt_unused_types_conf( view_source = t1 ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_rl_un_ty_ts_un_ty_63cc( i_conf = t2 ).
  ENDMETHOD.

  METHOD initialize.
    DATA(t3) = i_reg_f149.
    result = me->in_in_sr_rl_uns_typ_ts_uns_typ( i_reg_f149 = t3 ).

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1760_9ea46fbb9129.
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
