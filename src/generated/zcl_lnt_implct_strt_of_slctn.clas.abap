* TS: src/rules/implicit_start_of_selection.ts:15:1 ImplicitStartOfSelection
CLASS zcl_lnt_implct_strt_of_slctn DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_impl_strt_of_slctn_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_i_s_r_i_s_o_s_t_i_st_of_sl RETURNING VALUE(result) TYPE REF TO zcl_lnt_impl_strt_of_slctn_cnf.
    METHODS s_c_i_s_r_i_s_o_s_t_i_st_of_sl IMPORTING i_conf TYPE REF TO zcl_lnt_impl_strt_of_slctn_cnf.
    METHODS run_parsed REDEFINITION.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_implct_strt_of_slctn IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_impl_strt_of_slctn_cnf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |Only runs for executable programs\n\nhttps://help.sap.com/doc/|.
    t11 = t11 && |abapdocu_latest_index_htm/latest/en-us/abapstart-of-selectio|.
    t11 = t11 && |n.html|.
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
    DATA(t28) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t28->has = abap_true.
    t28->value = |REPORT zfoo.\nWRITE 'hello'.|.
    t24 = t28.
    DATA(t34) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t34->has = abap_true.
    t34->value = |START-OF-SELECTION.\n  WRITE 'hello'.|.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |implicit_start_of_selection| i_title = |Implicit START-OF-SELECTION| i_short_description = |Add explicit selection screen event handling| i_bad_example = t24 i_good_example = t34 i_extended_information = t8 i_tags = t14 i_pragma = t36 i_pseudo_comment = t38 ).
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

  METHOD g_c_i_s_r_i_s_o_s_t_i_st_of_sl.
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_i_s_r_i_s_o_s_t_i_st_of_sl.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = i_file.
    DATA(t2) = i_obj_1ed0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    DATA t5 TYPE abap_bool.
    DATA t6 TYPE abap_bool.
    t6 = xsdbool( xsdbool( t2 IS BOUND AND t2 IS INSTANCE OF zcl_lnt_ob_program ) = abap_false ).
    t5 = t6.
    IF t6 = abap_false.
      DATA t10 TYPE REF TO zcl_lnt_ob_program.
      DATA t11 TYPE REF TO zcl_lnt_ob_program.
      t11 ?= t2.
      t10 = t11.
      t10->parse_xml( ).
      t5 = t10->parsed_xml->is_include.
    ENDIF.
    IF t5 = abap_true.
      result = t3.
      RETURN.
    ENDIF.
    DATA t20 TYPE REF TO zcl_lnt_structure_node.
    t20 = t1->structure.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t20 IS INITIAL ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    DATA t34 TYPE abap_bool.
    t34 = abap_false.
    DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t36.
    DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t41 TYPE REF TO zcl_lnt_abstract_node.
    t41 = t20.
    t39 = t41->children.
    DATA t46 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t47 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t39 IS BOUND ) = abap_true.
      t47 = t39.
    ELSE.
      CREATE OBJECT t47.
    ENDIF.
    t46 ?= t47.
    t38 = t46.
    DATA t52 TYPE REF TO zif_lnt_union_8249fcb1.
    DATA t53 TYPE REF TO object.
    DATA(t54) = VALUE i( ).
    DO.
      t38->load( ).
      IF t54 >= lines( t38->items ).
        EXIT.
      ENDIF.
      CLEAR t53.
      READ TABLE t38->items INDEX t54 + 1 INTO t53.
      t54 = t54 + 1.
      DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t55.
      CLEAR t52.
      IF t53 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t55 ?= t53.
        DATA t56 TYPE REF TO object.
        t56 = t55->as_ref( ).
        t52 ?= t56.
      ELSE.
        t52 ?= t53.
      ENDIF.
      DATA t58 TYPE abap_bool.
      t58 = abap_false.
      DATA t60 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t60.
      IF zcl_lnt_stuff_module=>zlnt_builtin_init_e342877270d6 = abap_false.
        zcl_lnt_stuff_module=>zlnt_builtin_init_bdd646de0219( ).
      ENDIF.
      t60 = zcl_lnt_stuff_module=>selection_events.
      DATA t61 TYPE REF TO zlnt_runtime_clas_a39833db3295.
      CLEAR t61.
      DATA t62 TYPE REF TO object.
      CLEAR t62.
      DATA(t63) = VALUE i( ).
      DO.
        t60->load( ).
        IF t63 >= lines( t60->items ).
          EXIT.
        ENDIF.
        CLEAR t62.
        READ TABLE t60->items INDEX t63 + 1 INTO t62.
        t63 = t63 + 1.
        DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t64.
        CLEAR t61.
        IF t62 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t64 ?= t62.
          t61 = t64->as_classvalue( ).
        ELSE.
          t61 ?= t62.
        ENDIF.
        DATA(t65) = VALUE abap_bool( ).
        DATA t66 TYPE REF TO object.
        t66 = t52->get_db65( ).
        DATA(t68) = t61.
        DATA t69 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        CLEAR t69.
        IF t66 IS BOUND.
          DATA t70 TYPE REF TO zlnt_runtime_desc_e5fe811e0f42.
          t70 ?= t66.
          t69 = t70->zlnt_builtin_clas_3f891b097658( ).
          WHILE t69 IS BOUND.
            IF t69 = t68.
              t65 = abap_true.
              EXIT.
            ENDIF.
            t69 = t69->parent.
          ENDWHILE.
        ENDIF.
        IF t65 = abap_true.
          t58 = abap_true.
          EXIT.
        ENDIF.
      ENDDO.
      IF t58 = abap_true.
        DATA t73 TYPE abap_bool.
        DATA t74 TYPE abap_bool.
        t74 = xsdbool( t34 = abap_false ).
        t73 = t74.
        IF t74 = abap_true.
          DATA(t79) = t36.
          t79->load( ).
          t73 = xsdbool( lines( t79->items ) > 0 ).
        ENDIF.
        IF t73 = abap_true.
          DATA t81 TYPE REF TO zif_lnt_union_8249fcb1.
          CLEAR t81.
          DATA t82 TYPE REF TO zif_lnt_union_8249fcb1.
          CLEAR t82.
          DATA(t83) = t36.
          DATA t84 TYPE REF TO object.
          CLEAR t84.
          t83->load( ).
          CLEAR t84.
          READ TABLE t83->items INDEX 1 INTO t84.
          DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t85.
          CLEAR t82.
          IF t84 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t85 ?= t84.
            DATA t86 TYPE REF TO object.
            t86 = t85->as_ref( ).
            t82 ?= t86.
          ELSE.
            t82 ?= t84.
          ENDIF.
          t81 = t82.
          DATA(t88) = t81.
          IF xsdbool( t88 IS BOUND AND t88 IS INSTANCE OF zcl_lnt_structure_node ) = abap_true.
            DATA t91 TYPE REF TO zcl_lnt_structure_node.
            DATA t93 TYPE REF TO object.
            t93 = t81.
            t91 ?= t93.
            t81 = t91->get_first_statement( ).
          ENDIF.
          DATA t95 TYPE REF TO zcl_lnt_issue.
          CLEAR t95.
          DATA t97 TYPE REF TO zcl_lnt_statement_node.
          DATA t99 TYPE REF TO object.
          t99 = t81.
          t97 ?= t99.
          DATA(t101) = VALUE string( ).
          DATA t102 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t102.
          DATA t109 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t109.
          DATA(t112) = |Only runs for executable programs\n\nhttps://help.sap.com/doc/|.
          t112 = t112 && |abapdocu_latest_index_htm/latest/en-us/abapstart-of-selectio|.
          t112 = t112 && |n.html|.
          DATA(t113) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t113->has = abap_true.
          t113->value = t112.
          t109 = t113.
          DATA t115 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t115.
          DATA t119 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t119.
          t119->load( ).
          APPEND |SingleFile| TO t119->items.
          t119->save( ).
          t115 = t119.
          DATA t125 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t125.
          DATA(t129) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t129->has = abap_true.
          t129->value = |REPORT zfoo.\nWRITE 'hello'.|.
          t125 = t129.
          DATA t131 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t131.
          DATA(t135) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t135->has = abap_true.
          t135->value = |START-OF-SELECTION.\n  WRITE 'hello'.|.
          t131 = t135.
          DATA t137 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t137.
          DATA t139 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t139.
          t102 = NEW zcl_lnt_irule_metadata( i_key = |implicit_start_of_selection| i_title = |Implicit START-OF-SELECTION| i_short_description = |Add explicit selection screen event handling| i_bad_example = t125 i_good_example = t131 i_extended_information = t109 i_tags = t115 i_pragma = t137 i_pseudo_comment = t139 ).
          CREATE OBJECT t102->zlnt_view_ownkeys_b0e8086400eb.
          t102->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t141 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t141.
          t102->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t141 ).
          DATA t142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t142.
          IF t102->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t102->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t142 ).
          ENDIF.
          DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t143.
          IF t102->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t102->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t143 ).
          ENDIF.
          DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t144.
          IF t102->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t102->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t144 ).
          ENDIF.
          DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t145.
          IF t102->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t102->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t145 ).
          ENDIF.
          DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t146.
          IF t102->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t102->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t146 ).
          ENDIF.
          DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t147.
          IF t102->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t102->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t147 ).
          ENDIF.
          CREATE OBJECT t102->zlnt_json_ownkeys_70e5fd461788.
          t102->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t149.
          t102->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t149 ).
          DATA t151 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t151.
          IF t102->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t102->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t151 ).
          ENDIF.
          DATA t153 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t153.
          IF t102->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t102->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t153 ).
          ENDIF.
          DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t155.
          IF t102->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t102->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t155 ).
          ENDIF.
          DATA t157 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t157.
          IF t102->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t102->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t157 ).
          ENDIF.
          DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t159.
          IF t102->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t102->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t159 ).
          ENDIF.
          DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t161.
          IF t102->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t102->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t161 ).
          ENDIF.
          t101 = t102->key.
          DATA t162 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t162 = CAST zcl_lnt_impl_strt_of_slctn_cnf( me->g_c_i_s_r_i_s_o_s_t_i_st_of_sl( ) )->zlnt_view_read_sr_15c06369f827( ).
          DATA t164 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t164.
          DATA t165 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t165.
          t95 = zcl_lnt_issue=>at_statement( i_file = t1 i_statement = t97 i_message_26cb = |Implicit START-OF-SELECTION| i_key = t101 i_severity = t162 i_fix = t164 i_alternative_fixes = t165 ).
          t3->load( ).
          APPEND t95 TO t3->items.
          t3->save( ).
        ENDIF.
        CREATE OBJECT t36.
        t34 = abap_true.
      ELSE.
        DATA t169 TYPE REF TO object.
        t169 = t52->get_db65( ).
        IF xsdbool( t169 IS BOUND AND t169 IS INSTANCE OF zcl_lnt_normal ) = abap_true.
          DATA t171 TYPE REF TO zcl_lnt_structure_node.
          DATA t172 TYPE REF TO zcl_lnt_structure_node.
          t172 ?= t52.
          t171 = t172.
          DATA t175 TYPE abap_bool.
          t175 = abap_false.
          DATA t177 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t177.
          IF zcl_lnt_stuff_module=>zlnt_builtin_init_e342877270d6 = abap_false.
            zcl_lnt_stuff_module=>zlnt_builtin_init_bdd646de0219( ).
          ENDIF.
          t177 = zcl_lnt_stuff_module=>declaration_stuff.
          DATA t178 TYPE REF TO zlnt_runtime_clas_a39833db3295.
          CLEAR t178.
          DATA t179 TYPE REF TO object.
          CLEAR t179.
          DATA(t180) = VALUE i( ).
          DO.
            t177->load( ).
            IF t180 >= lines( t177->items ).
              EXIT.
            ENDIF.
            CLEAR t179.
            READ TABLE t177->items INDEX t180 + 1 INTO t179.
            t180 = t180 + 1.
            DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t181.
            CLEAR t178.
            IF t179 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t181 ?= t179.
              t178 = t181->as_classvalue( ).
            ELSE.
              t178 ?= t179.
            ENDIF.
            DATA(t182) = VALUE abap_bool( ).
            DATA t183 TYPE REF TO zif_lnt_statement.
            CLEAR t183.
            DATA t184 TYPE REF TO zcl_lnt_statement_node.
            t184 = t171->get_first_statement( ).
            DATA t187 TYPE REF TO zif_lnt_statement.
            CLEAR t187.
            IF xsdbool( t184 IS INITIAL ) = abap_true.
              CLEAR t187.
            ELSE.
              t187 = t184->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
            ENDIF.
            t183 = t187.
            DATA(t194) = t178.
            DATA t195 TYPE REF TO zlnt_runtime_clas_a39833db3295.
            CLEAR t195.
            IF t183 IS BOUND.
              t195 = t183->zlnt_builtin_clas_3f891b097658( ).
              WHILE t195 IS BOUND.
                IF t195 = t194.
                  t182 = abap_true.
                  EXIT.
                ENDIF.
                t195 = t195->parent.
              ENDWHILE.
            ENDIF.
            IF t182 = abap_true.
              t175 = abap_true.
              EXIT.
            ENDIF.
          ENDDO.
          IF t175 = abap_true.
            CONTINUE.
          ENDIF.
          DATA(t198) = t36.
          t198->load( ).
          APPEND t52 TO t198->items.
          t198->save( ).
        ELSE.
          IF xsdbool( t34 = abap_true ) = abap_true.
            t34 = abap_false.
          ENDIF.
          CREATE OBJECT t36.
        ENDIF.
      ENDIF.
    ENDDO.
    DATA t205 TYPE abap_bool.
    DATA t206 TYPE abap_bool.
    t206 = xsdbool( t34 = abap_false ).
    t205 = t206.
    IF t206 = abap_true.
      t36->load( ).
      t205 = xsdbool( lines( t36->items ) > 0 ).
    ENDIF.
    IF t205 = abap_true.
      DATA t213 TYPE REF TO zif_lnt_union_8249fcb1.
      DATA t214 TYPE REF TO zif_lnt_union_8249fcb1.
      DATA t216 TYPE REF TO object.
      t36->load( ).
      READ TABLE t36->items INDEX 1 INTO t216.
      DATA t217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t216 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t217 ?= t216.
        DATA t218 TYPE REF TO object.
        t218 = t217->as_ref( ).
        t214 ?= t218.
      ELSE.
        t214 ?= t216.
      ENDIF.
      t213 = t214.
      DATA(t220) = t213.
      IF xsdbool( t220 IS BOUND AND t220 IS INSTANCE OF zcl_lnt_structure_node ) = abap_true.
        DATA t223 TYPE REF TO zcl_lnt_structure_node.
        DATA t225 TYPE REF TO object.
        t225 = t213.
        t223 ?= t225.
        t213 = t223->get_first_statement( ).
      ENDIF.
      DATA t227 TYPE REF TO zcl_lnt_issue.
      DATA t229 TYPE REF TO zcl_lnt_statement_node.
      DATA t231 TYPE REF TO object.
      t231 = t213.
      t229 ?= t231.
      DATA(t233) = VALUE string( ).
      DATA t234 TYPE REF TO zcl_lnt_irule_metadata.
      DATA t241 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t244) = |Only runs for executable programs\n\nhttps://help.sap.com/doc/|.
      t244 = t244 && |abapdocu_latest_index_htm/latest/en-us/abapstart-of-selectio|.
      t244 = t244 && |n.html|.
      DATA(t245) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t245->has = abap_true.
      t245->value = t244.
      t241 = t245.
      DATA t247 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t251 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t251.
      t251->load( ).
      APPEND |SingleFile| TO t251->items.
      t251->save( ).
      t247 = t251.
      DATA t257 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t261) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t261->has = abap_true.
      t261->value = |REPORT zfoo.\nWRITE 'hello'.|.
      t257 = t261.
      DATA(t267) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t267->has = abap_true.
      t267->value = |START-OF-SELECTION.\n  WRITE 'hello'.|.
      DATA t269 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t271 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t234 = NEW zcl_lnt_irule_metadata( i_key = |implicit_start_of_selection| i_title = |Implicit START-OF-SELECTION| i_short_description = |Add explicit selection screen event handling| i_bad_example = t257 i_good_example = t267 i_extended_information = t241 i_tags = t247 i_pragma = t269 i_pseudo_comment = t271 ).
      CREATE OBJECT t234->zlnt_view_ownkeys_b0e8086400eb.
      t234->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t234->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t273 ).
      DATA t274 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t234->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t234->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t274 ).
      ENDIF.
      DATA t275 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t234->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t234->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t275 ).
      ENDIF.
      DATA t276 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t234->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t234->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t276 ).
      ENDIF.
      DATA t277 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t234->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t234->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t277 ).
      ENDIF.
      DATA t278 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t234->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t234->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t278 ).
      ENDIF.
      DATA t279 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t234->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t234->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t279 ).
      ENDIF.
      CREATE OBJECT t234->zlnt_json_ownkeys_70e5fd461788.
      t234->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t281 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t234->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t281 ).
      DATA t283 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t234->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t234->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t283 ).
      ENDIF.
      DATA t285 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t234->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t234->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t285 ).
      ENDIF.
      DATA t287 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t234->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t234->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t287 ).
      ENDIF.
      DATA t289 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t234->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t234->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t289 ).
      ENDIF.
      DATA t291 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t234->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t234->zlnt_json_ownkeys_70e5fd461788->put( p0 = |badExample| p1 = t291 ).
      ENDIF.
      DATA t293 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t234->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t234->zlnt_json_ownkeys_70e5fd461788->put( p0 = |goodExample| p1 = t293 ).
      ENDIF.
      t233 = t234->key.
      DATA t296 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      DATA t297 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t227 = zcl_lnt_issue=>at_statement( i_file = t1 i_statement = t229 i_message_26cb = |Implicit START-OF-SELECTION| i_key = t233 i_severity = CAST zcl_lnt_impl_strt_of_slctn_cnf( me->g_c_i_s_r_i_s_o_s_t_i_st_of_sl( ) )->zlnt_view_read_sr_15c06369f827( ) i_fix = t296 i_alternative_fixes = t297 ).
      t3->load( ).
      APPEND t227 TO t3->items.
      t3->save( ).
    ENDIF.
    result = t3.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_impl_strt_of_slctn_cnf( me->g_c_i_s_r_i_s_o_s_t_i_st_of_sl( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_impl_strt_of_slctn_cnf( me->g_c_i_s_r_i_s_o_s_t_i_st_of_sl( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_impl_strt_of_slctn_cnf.
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
        t1 = NEW zcl_lnt_impl_strt_of_slctn_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_i_s_o_s_t_i_st_of_sl( i_conf = t1 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1540_65b33af71542.
  ENDMETHOD.
ENDCLASS.
