* TS: src/rules/unused_methods.ts:67:1 UnusedMethods
CLASS zcl_lnt_unused_methods DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_rule.
    DATA conf TYPE REF TO zcl_lnt_unused_methods_conf.
    DATA reg TYPE REF TO zif_lnt_registry.
    DATA wa TYPE REF TO zcl_lnt_rl_unused_methods_w_ar.
    METHODS constructor.
    METHODS get_metadata RETURNING VALUE(result) TYPE REF TO zcl_lnt_irule_metadata.
    METHODS gt_cn_in_sr_rl_un_mt_ts_un_mth RETURNING VALUE(result) TYPE REF TO zcl_lnt_unused_methods_conf.
    METHODS st_cn_in_sr_rl_un_mt_ts_un_mth IMPORTING i_conf TYPE REF TO zcl_lnt_unused_methods_conf.
    METHODS in_in_sr_rl_uns_mth_ts_uns_mth IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zcl_lnt_unused_methods.
    METHODS run IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_object RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS has_sub_class IMPORTING i_obj_1ed0 TYPE REF TO zcl_lnt_abap_object RETURNING VALUE(result) TYPE abap_bool.
    METHODS find_method_implementation IMPORTING i_method TYPE REF TO zcl_lnt_info_method_definition i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zcl_lnt_structure_node.
    METHODS suppressedby_pseudo IMPORTING i_statement TYPE REF TO zcl_lnt_statement_node i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE abap_bool.
    METHODS search_global_subclasses IMPORTING i_obj_1ed0 TYPE REF TO zcl_lnt_abap_object.
    METHODS traverse IMPORTING i_node TYPE REF TO zif_lnt_spaghetti_scope_node.
    METHODS check_node IMPORTING i_node TYPE REF TO zif_lnt_spaghetti_scope_node.
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
CLASS zcl_lnt_unused_methods IMPLEMENTATION.
  METHOD constructor.
    me->conf = NEW zcl_lnt_unused_methods_conf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t11) = |Checks private and protected methods.\n\nUnused methods are no|.
    t11 = t11 && |t reported if the object contains parser or syntax errors.\nQ|.
    t11 = t11 && |uick fixes only appears for private methods or projected met|.
    t11 = t11 && |hods where the class doesnt have any subclasses.\n\nSkips:\n* m|.
    t11 = t11 && |ethods FOR TESTING\n* methods SETUP + TEARDOWN + CLASS_SETUP |.
    t11 = t11 && |+ CLASS_TEARDOWN in testclasses\n* class_constructor + constr|.
    t11 = t11 && |uctor methods\n* event handlers\n* methods that are redefined\n|.
    t11 = t11 && |* INCLUDEs\n|.
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
    t28->value = |##CALLED|.
    t24 = t28.
    DATA(t34) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t34->has = abap_true.
    t34->value = |EC CALLED|.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = |unused_methods| i_title = |Unused methods| i_short_description = |Checks for unused methods| i_bad_example = t36 i_good_example = t38 i_extended_information = t8 i_tags = t14 i_pragma = t24 i_pseudo_comment = t34 ).
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

  METHOD gt_cn_in_sr_rl_un_mt_ts_un_mth.
    result = me->conf.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_un_mt_ts_un_mth.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD in_in_sr_rl_uns_mth_ts_uns_mth.
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
    DATA t9 TYPE abap_bool.
    DATA t10 TYPE abap_bool.
    t10 = xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_ob_program ).
    t9 = t10.
    IF t10 = abap_true.
      DATA t14 TYPE REF TO zcl_lnt_ob_program.
      DATA t15 TYPE REF TO zcl_lnt_ob_program.
      t15 ?= t1.
      t14 = t15.
      t14->parse_xml( ).
      t9 = xsdbool( t14->parsed_xml->is_include = abap_true ).
    ENDIF.
    IF t9 = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.


    DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t28 TYPE REF TO zcl_lnt_abap_object.
    t28 ?= t1.
    t26 = t28->parsed.
    DATA t33 TYPE REF TO zcl_lnt_abap_file.
    DATA t34 TYPE REF TO object.
    DATA(t35) = VALUE i( ).
    DO.
      t26->load( ).
      IF t35 >= lines( t26->items ).
        EXIT.
      ENDIF.
      CLEAR t34.
      READ TABLE t26->items INDEX t35 + 1 INTO t34.
      t35 = t35 + 1.
      DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t36.
      CLEAR t33.
      IF t34 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t36 ?= t34.
        DATA t37 TYPE REF TO object.
        t37 = t36->as_ref( ).
        t33 ?= t37.
      ELSE.
        t33 ?= t34.
      ENDIF.
      DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t38 = t33->statements.
      DATA t43 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t43.
      DATA t44 TYPE REF TO object.
      CLEAR t44.
      DATA(t45) = VALUE i( ).
      DO.
        t38->load( ).
        IF t45 >= lines( t38->items ).
          EXIT.
        ENDIF.
        CLEAR t44.
        READ TABLE t38->items INDEX t45 + 1 INTO t44.
        t45 = t45 + 1.
        DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t46.
        CLEAR t43.
        IF t44 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t46 ?= t44.
          DATA t47 TYPE REF TO object.
          t47 = t46->as_ref( ).
          t43 ?= t47.
        ELSE.
          t43 ?= t44.
        ENDIF.
        DATA t49 TYPE REF TO zif_lnt_statement.
        t49 = t43->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        IF xsdbool( t49 IS BOUND AND t49 IS INSTANCE OF zcl_lnt_unknown ) = abap_true.
          CREATE OBJECT result.
          RETURN.
        ENDIF.
      ENDDO.
    ENDDO.
    DATA t52 TYPE REF TO zcl_lnt_isyntax_result.
    DATA(t55) = me->reg.
    DATA t56 TYPE REF TO zcl_lnt_abap_object.
    t56 ?= t1.
    t52 = NEW zcl_lnt_syntax_logic( i_reg_f149 = t55 i_object_19cd = t56 )->run( ).
    DATA t61 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t61 = t52->zlnt_view_read_sr_bd188c319c03( ).
    t61->load( ).
    IF xsdbool( lines( t61->items ) > 0 ) = abap_true.
      CREATE OBJECT result.
      RETURN.
    ENDIF.
    me->wa = NEW zcl_lnt_rl_unused_methods_w_ar( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `wa`.
    DATA t66 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t68 TYPE REF TO zcl_lnt_abap_object.
    t68 ?= t1.
    t66 = t68->parsed.
    DATA t73 TYPE REF TO zcl_lnt_abap_file.
    DATA t74 TYPE REF TO object.
    DATA(t75) = VALUE i( ).
    DO.
      t66->load( ).
      IF t75 >= lines( t66->items ).
        EXIT.
      ENDIF.
      CLEAR t74.
      READ TABLE t66->items INDEX t75 + 1 INTO t74.
      t75 = t75 + 1.
      DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t76.
      CLEAR t73.
      IF t74 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t76 ?= t74.
        DATA t77 TYPE REF TO object.
        t77 = t76->as_ref( ).
        t73 ?= t77.
      ELSE.
        t73 ?= t74.
      ENDIF.
      DATA t78 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t78 = t73->info->list_class_definitions( ).
      DATA t84 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t84.
      DATA t85 TYPE REF TO object.
      CLEAR t85.
      DATA(t86) = VALUE i( ).
      DO.
        t78->load( ).
        IF t86 >= lines( t78->items ).
          EXIT.
        ENDIF.
        CLEAR t85.
        READ TABLE t78->items INDEX t86 + 1 INTO t85.
        t86 = t86 + 1.
        DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t87.
        CLEAR t84.
        IF t85 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t87 ?= t85.
          DATA t88 TYPE REF TO object.
          t88 = t87->as_ref( ).
          t84 ?= t88.
        ELSE.
          t84 ?= t85.
        ENDIF.
        DATA t89 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t89 = t84->methods.
        DATA t91 TYPE REF TO zcl_lnt_info_method_definition.
        CLEAR t91.
        DATA t92 TYPE REF TO object.
        CLEAR t92.
        DATA(t93) = VALUE i( ).
        DO.
          t89->load( ).
          IF t93 >= lines( t89->items ).
            EXIT.
          ENDIF.
          CLEAR t92.
          READ TABLE t89->items INDEX t93 + 1 INTO t92.
          t93 = t93 + 1.
          DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t94.
          CLEAR t91.
          IF t92 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t94 ?= t92.
            DATA t95 TYPE REF TO object.
            t95 = t94->as_ref( ).
            t91 ?= t95.
          ELSE.
            t91 ?= t92.
          ENDIF.
          DATA(t96) = VALUE abap_bool( ).
          DATA t97 TYPE abap_bool.
          DATA t98 TYPE abap_bool.
          t98 = xsdbool( t91->is_for_testing = abap_true ).
          t97 = t98.
          IF t98 = abap_false.
            t97 = xsdbool( t91->is_redefinition = abap_true ).
          ENDIF.
          t96 = t97.
          IF t97 = abap_false.
            DATA(t106) = VALUE abap_bool( ).
            DATA t107 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            t107 = t91->is_event_handler.
            DATA t109 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            DATA(t112) = NEW zlnt_runtime_opti_7f2541396f43( ).
            t112->has = abap_true.
            t112->value = abap_true.
            t109 = t112.
            DATA(t114) = VALUE abap_bool( ).
            DATA(t115) = VALUE abap_bool( ).
            IF t107 IS BOUND.
              t114 = t107->has.
            ENDIF.
            IF t109 IS BOUND.
              t115 = t109->has.
            ENDIF.
            IF t114 = t115.
              IF t114 = abap_false.
                t106 = abap_true.
              ELSEIF t107->value = t109->value.
                t106 = abap_true.
              ENDIF.
            ENDIF.
            t96 = t106.
          ENDIF.
          IF t96 = abap_true.
            CONTINUE.
          ENDIF.
          DATA(t116) = VALUE abap_bool( ).
          DATA(t117) = VALUE abap_bool( ).
          DATA t118 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          t118 = t84->is_for_testing.
          DATA t120 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          DATA(t123) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t123->has = abap_true.
          t123->value = abap_true.
          t120 = t123.
          DATA(t125) = VALUE abap_bool( ).
          DATA(t126) = VALUE abap_bool( ).
          IF t118 IS BOUND.
            t125 = t118->has.
          ENDIF.
          IF t120 IS BOUND.
            t126 = t120->has.
          ENDIF.
          IF t125 = t126.
            IF t125 = abap_false.
              t117 = abap_true.
            ELSEIF t118->value = t120->value.
              t117 = abap_true.
            ENDIF.
          ENDIF.
          t116 = t117.
          IF t117 = abap_true.
            DATA(t127) = VALUE abap_bool( ).
            DATA(t128) = VALUE abap_bool( ).
            DATA(t129) = VALUE abap_bool( ).
            DATA(t130) = VALUE abap_bool( ).
            DATA t131 TYPE string.
            DATA t132 TYPE string.
            t132 = t91->name.
            DATA(t134) = strlen( t132 ).
            t131 = t132.
            IF t131 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t131 TO UPPER CASE.
            ELSE.
              t131 = zlnt_runtime_uppe_91169605024d=>full( t131 ).
            ENDIF.
            t130 = xsdbool( t131 = |SETUP| ).
            t129 = t130.
            IF t130 = abap_false.
              DATA t137 TYPE string.
              DATA t138 TYPE string.
              t138 = t91->name.
              DATA(t140) = strlen( t138 ).
              t137 = t138.
              IF t137 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                TRANSLATE t137 TO UPPER CASE.
              ELSE.
                t137 = zlnt_runtime_uppe_91169605024d=>full( t137 ).
              ENDIF.
              t129 = xsdbool( t137 = |CLASS_SETUP| ).
            ENDIF.
            t128 = t129.
            IF t129 = abap_false.
              DATA t143 TYPE string.
              DATA t144 TYPE string.
              t144 = t91->name.
              DATA(t146) = strlen( t144 ).
              t143 = t144.
              IF t143 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                TRANSLATE t143 TO UPPER CASE.
              ELSE.
                t143 = zlnt_runtime_uppe_91169605024d=>full( t143 ).
              ENDIF.
              t128 = xsdbool( t143 = |TEARDOWN| ).
            ENDIF.
            t127 = t128.
            IF t128 = abap_false.
              DATA t149 TYPE string.
              DATA t150 TYPE string.
              t150 = t91->name.
              DATA(t152) = strlen( t150 ).
              t149 = t150.
              IF t149 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                TRANSLATE t149 TO UPPER CASE.
              ELSE.
                t149 = zlnt_runtime_uppe_91169605024d=>full( t149 ).
              ENDIF.
              t127 = xsdbool( t149 = |CLASS_TEARDOWN| ).
            ENDIF.
            t116 = t127.
          ENDIF.
          IF t116 = abap_true.
            CONTINUE.
          ENDIF.
          DATA(t154) = VALUE abap_bool( ).
          DATA(t155) = VALUE abap_bool( ).
          DATA t156 TYPE string.
          DATA t157 TYPE string.
          t157 = t91->name.
          DATA(t159) = strlen( t157 ).
          t156 = t157.
          IF t156 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t156 TO UPPER CASE.
          ELSE.
            t156 = zlnt_runtime_uppe_91169605024d=>full( t156 ).
          ENDIF.
          t155 = xsdbool( t156 = |CONSTRUCTOR| ).
          t154 = t155.
          IF t155 = abap_false.
            DATA t162 TYPE string.
            DATA t163 TYPE string.
            t163 = t91->name.
            DATA(t165) = strlen( t163 ).
            t162 = t163.
            IF t162 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t162 TO UPPER CASE.
            ELSE.
              t162 = zlnt_runtime_uppe_91169605024d=>full( t162 ).
            ENDIF.
            t154 = xsdbool( t162 = |CLASS_CONSTRUCTOR| ).
          ENDIF.
          IF t154 = abap_true.
            CONTINUE.
          ENDIF.


          DATA t167 TYPE abap_bool.
          DATA t168 TYPE abap_bool.
          t168 = xsdbool( t91->visibility = CONV f( 1 ) ).
          t167 = t168.
          IF t168 = abap_false.
            t167 = xsdbool( t91->visibility = CONV f( 2 ) ).
          ENDIF.
          IF t167 = abap_true.
            DATA t180 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            t180 = me->wa->list.
            t180->load( ).
            APPEND t91 TO t180->items.
            t180->save( ).
          ENDIF.
        ENDDO.
      ENDDO.
    ENDDO.
    me->traverse( i_node = t52->zlnt_view_read_sr_b6b1d9e0c93e( )->get_top( ) ).
    DATA t186 TYPE REF TO zcl_lnt_abap_object.
    t186 ?= t1.
    me->search_global_subclasses( i_obj_1ed0 = t186 ).
    DATA t189 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t189.
    DATA t191 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t191 = me->wa->list.
    DATA t196 TYPE REF TO zcl_lnt_info_method_definition.
    DATA t197 TYPE REF TO object.
    DATA(t198) = VALUE i( ).
    DO.
      t191->load( ).
      IF t198 >= lines( t191->items ).
        EXIT.
      ENDIF.
      CLEAR t197.
      READ TABLE t191->items INDEX t198 + 1 INTO t197.
      t198 = t198 + 1.
      DATA t199 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t199.
      CLEAR t196.
      IF t197 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t199 ?= t197.
        DATA t200 TYPE REF TO object.
        t200 = t199->as_ref( ).
        t196 ?= t200.
      ELSE.
        t196 ?= t197.
      ENDIF.
      DATA t201 TYPE REF TO zcl_lnt_abap_file.
      DATA t203 TYPE REF TO zcl_lnt_abap_object.
      t203 ?= t1.
      DATA t210 TYPE string.
      t210 = t196->identifier->filename.
      t201 = t203->get_abap_file_by_name( i_filename = t210 ).
      DATA t215 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t215.
      IF xsdbool( t201 IS INITIAL ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA t219 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t219.
      DATA t221 TYPE REF TO zcl_lnt_abstract_token.
      t221 = t196->identifier->token.
      t219 = zcl_lnt_edit_helper=>find_statement( i_token = t221 i_file = t201 ).
      DATA t235 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t235.
      IF xsdbool( t219 IS INITIAL ) = abap_true.
        CONTINUE.
      ENDIF.
      DATA t240 TYPE abap_bool.
      t240 = abap_false.
      DATA t242 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t242 = t219->pragmas.
      DATA t248 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t248.
      DATA t249 TYPE REF TO object.
      CLEAR t249.
      DATA(t250) = VALUE i( ).
      DO.
        t242->load( ).
        IF t250 >= lines( t242->items ).
          EXIT.
        ENDIF.
        CLEAR t249.
        READ TABLE t242->items INDEX t250 + 1 INTO t249.
        t250 = t250 + 1.
        DATA t251 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t251.
        CLEAR t248.
        IF t249 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t251 ?= t249.
          DATA t252 TYPE REF TO object.
          t252 = t251->as_ref( ).
          t248 ?= t252.
        ELSE.
          t248 ?= t249.
        ENDIF.
        DATA(t253) = VALUE abap_bool( ).
        DATA t254 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t259 TYPE string.
        t259 = t248->str.
        DATA(t261) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t261->has = abap_true.
        t261->value = t259.
        t254 = t261.
        DATA t263 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t263.
        DATA t264 TYPE REF TO zcl_lnt_irule_metadata.
        DATA t271 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t271.
        DATA(t274) = |Checks private and protected methods.\n\nUnused methods are no|.
        t274 = t274 && |t reported if the object contains parser or syntax errors.\nQ|.
        t274 = t274 && |uick fixes only appears for private methods or projected met|.
        t274 = t274 && |hods where the class doesnt have any subclasses.\n\nSkips:\n* m|.
        t274 = t274 && |ethods FOR TESTING\n* methods SETUP + TEARDOWN + CLASS_SETUP |.
        t274 = t274 && |+ CLASS_TEARDOWN in testclasses\n* class_constructor + constr|.
        t274 = t274 && |uctor methods\n* event handlers\n* methods that are redefined\n|.
        t274 = t274 && |* INCLUDEs\n|.
        DATA(t275) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t275->has = abap_true.
        t275->value = t274.
        t271 = t275.
        DATA t277 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t277.
        DATA t281 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t281.
        t281->load( ).
        APPEND |Quickfix| TO t281->items.
        t281->save( ).
        t277 = t281.
        DATA t287 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t287.
        DATA(t291) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t291->has = abap_true.
        t291->value = |##CALLED|.
        t287 = t291.
        DATA t293 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t293.
        DATA(t297) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t297->has = abap_true.
        t297->value = |EC CALLED|.
        t293 = t297.
        DATA t299 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t299.
        DATA t301 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t301.
        t264 = NEW zcl_lnt_irule_metadata( i_key = |unused_methods| i_title = |Unused methods| i_short_description = |Checks for unused methods| i_bad_example = t299 i_good_example = t301 i_extended_information = t271 i_tags = t277 i_pragma = t287 i_pseudo_comment = t293 ).
        CREATE OBJECT t264->zlnt_view_ownkeys_b0e8086400eb.
        t264->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t303 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t303.
        t264->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t303 ).
        DATA t304 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t304.
        IF t264->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t264->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t304 ).
        ENDIF.
        DATA t305 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t305.
        IF t264->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t264->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t305 ).
        ENDIF.
        DATA t306 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t306.
        IF t264->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t264->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t306 ).
        ENDIF.
        DATA t307 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t307.
        IF t264->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t264->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t307 ).
        ENDIF.
        DATA t308 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t308.
        IF t264->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t264->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `pragma` p1 = t308 ).
        ENDIF.
        DATA t309 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t309.
        IF t264->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t264->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `pseudoComment` p1 = t309 ).
        ENDIF.
        CREATE OBJECT t264->zlnt_json_ownkeys_70e5fd461788.
        t264->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t311 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t311.
        t264->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t311 ).
        DATA t313 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t313.
        IF t264->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t264->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t313 ).
        ENDIF.
        DATA t315 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t315.
        IF t264->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t264->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t315 ).
        ENDIF.
        DATA t317 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t317.
        IF t264->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t264->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t317 ).
        ENDIF.
        DATA t319 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t319.
        IF t264->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t264->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t319 ).
        ENDIF.
        DATA t321 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t321.
        IF t264->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t264->zlnt_json_ownkeys_70e5fd461788->put( p0 = |pragma| p1 = t321 ).
        ENDIF.
        DATA t323 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t323.
        IF t264->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t264->zlnt_json_ownkeys_70e5fd461788->put( p0 = |pseudoComment| p1 = t323 ).
        ENDIF.
        t263 = t264->pragma.
        DATA(t324) = VALUE abap_bool( ).
        DATA(t325) = VALUE abap_bool( ).
        IF t254 IS BOUND.
          t324 = t254->has.
        ENDIF.
        IF t263 IS BOUND.
          t325 = t263->has.
        ENDIF.
        IF t324 = t325.
          IF t324 = abap_false.
            t253 = abap_true.
          ELSEIF t254->value = t263->value.
            t253 = abap_true.
          ENDIF.
        ENDIF.
        IF t253 = abap_true.
          t240 = abap_true.
          EXIT.
        ENDIF.
      ENDDO.
      IF t240 = abap_true.
        CONTINUE.
      ENDIF.
      IF me->suppressedby_pseudo( i_statement = t219 i_file = t201 ) = abap_true.
        CONTINUE.
      ENDIF.

      DATA t336 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t336.
      DATA(t338) = VALUE abap_bool( ).
      DATA t339 TYPE abap_bool.
      DATA t340 TYPE abap_bool.
      t340 = xsdbool( t196->visibility = CONV f( 1 ) ).
      t339 = t340.
      IF t340 = abap_false.
        t339 = xsdbool( t196->is_final = abap_true ).
      ENDIF.
      t338 = t339.
      IF t339 = abap_false.
        DATA t348 TYPE abap_bool.
        DATA t349 TYPE abap_bool.
        t349 = xsdbool( t196->visibility = CONV f( 2 ) ).
        t348 = t349.
        IF t349 = abap_true.
          DATA t354 TYPE abap_bool.
          DATA t355 TYPE REF TO zcl_lnt_abap_object.
          t355 ?= t1.
          t354 = me->has_sub_class( i_obj_1ed0 = t355 ).
          t348 = xsdbool( t354 = abap_false ).
        ENDIF.
        t338 = t348.
      ENDIF.
      IF t338 = abap_true.
        DATA t359 TYPE REF TO zcl_lnt_structure_node.
        t359 = me->find_method_implementation( i_method = t196 i_file = t201 ).
        DATA t367 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t367.
        IF xsdbool( xsdbool( t359 IS INITIAL ) = abap_false ) = abap_true.
          DATA t373 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          t373 = zcl_lnt_edit_helper=>delete_statement( i_file = t201 i_statement = t219 ).
          DATA t380 TYPE REF TO zcl_lnt_abap_file.
          t380 = t201.
          DATA t382 TYPE REF TO zcl_lnt_position.
          t382 = t359->get_first_token( )->start.
          DATA t390 TYPE REF TO zcl_lnt_abstract_token.
          t390 = t359->get_last_token( ).
          DATA t395 TYPE f.
          t395 = t390->start->row.
          DATA t402 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t402 = t390->start->col.
          DATA t408 TYPE f.
          t408 = strlen( t390->str ).
          DATA(t413) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t413->has = abap_true.
          t413->value = t408.
          t336 = zcl_lnt_edit_helper=>merge( i_fix1 = t373 i_fix2 = zcl_lnt_edit_helper=>delete_range( i_file = t380 i_start = t382 i_end = NEW zcl_lnt_position( i_row = t395 i_col = zlnt_runtime_numb_290eb04a9758=>calculate( left = t402 right = t413 op = `+` ) ) ) ).
        ENDIF.
      ENDIF.
      DATA(t420) = VALUE string( ).
      DATA(t422) = VALUE string( ).
      DATA(t423) = |Method "|.
      DATA(t424) = VALUE string( ).
      DATA t429 TYPE string.
      t429 = t196->identifier->token->str.
      DATA(t437) = VALUE string( ).
      DATA(t438) = t429.
      DATA(t439) = 0.
      DATA(t440) = 1.
      DATA(t441) = strlen( t438 ).
      IF t439 < 0.
        t439 = t439 + t441.
        IF t439 < 0.
          t439 = 0.
        ENDIF.
      ENDIF.
      IF t439 > t441 OR t440 <= 0.
      ELSE.
        IF t440 > t441 - t439.
          t440 = t441 - t439.
        ENDIF.
        t437 = t438+t439(t440).
      ENDIF.
      IF xsdbool( t437 = |!| ) = abap_true.
        DATA t444 TYPE string.
        t444 = t429.
        DATA(t446) = VALUE string( ).
        DATA(t448) = 1.
        DATA t449 TYPE i.
        t449 = strlen( t444 ).
        DATA(t452) = strlen( t444 ).
        IF t448 < 0.
          t448 = t448 + t452.
          IF t448 < 0.
            t448 = 0.
          ENDIF.
        ENDIF.
        IF t448 > t452 OR t449 <= 0.
        ELSE.
          IF t449 > t452 - t448.
            t449 = t452 - t448.
          ENDIF.
          t446 = t444+t448(t449).
        ENDIF.
        t429 = t446.
      ENDIF.
      t424 = t429.
      DATA(t454) = strlen( t423 ).
      t422 = |{ t423 }{ t424 }|.
      DATA(t456) = strlen( t422 ).
      t420 = |{ t422 }{ |" not used| }|.
      DATA t458 TYPE REF TO zcl_lnt_issue.
      CLEAR t458.
      DATA t459 TYPE REF TO zcl_lnt_fi_identifier.
      t459 = t196->identifier.
      DATA(t462) = VALUE string( ).
      DATA t463 TYPE REF TO zcl_lnt_irule_metadata.
      DATA t470 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t470.
      DATA(t473) = |Checks private and protected methods.\n\nUnused methods are no|.
      t473 = t473 && |t reported if the object contains parser or syntax errors.\nQ|.
      t473 = t473 && |uick fixes only appears for private methods or projected met|.
      t473 = t473 && |hods where the class doesnt have any subclasses.\n\nSkips:\n* m|.
      t473 = t473 && |ethods FOR TESTING\n* methods SETUP + TEARDOWN + CLASS_SETUP |.
      t473 = t473 && |+ CLASS_TEARDOWN in testclasses\n* class_constructor + constr|.
      t473 = t473 && |uctor methods\n* event handlers\n* methods that are redefined\n|.
      t473 = t473 && |* INCLUDEs\n|.
      DATA(t474) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t474->has = abap_true.
      t474->value = t473.
      t470 = t474.
      DATA t476 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t476.
      DATA t480 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t480.
      t480->load( ).
      APPEND |Quickfix| TO t480->items.
      t480->save( ).
      t476 = t480.
      DATA t486 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t486.
      DATA(t490) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t490->has = abap_true.
      t490->value = |##CALLED|.
      t486 = t490.
      DATA t492 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t492.
      DATA(t496) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t496->has = abap_true.
      t496->value = |EC CALLED|.
      t492 = t496.
      DATA t498 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t498.
      DATA t500 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t500.
      t463 = NEW zcl_lnt_irule_metadata( i_key = |unused_methods| i_title = |Unused methods| i_short_description = |Checks for unused methods| i_bad_example = t498 i_good_example = t500 i_extended_information = t470 i_tags = t476 i_pragma = t486 i_pseudo_comment = t492 ).
      CREATE OBJECT t463->zlnt_view_ownkeys_b0e8086400eb.
      t463->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t502 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t502.
      t463->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t502 ).
      DATA t503 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t503.
      IF t463->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t463->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t503 ).
      ENDIF.
      DATA t504 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t504.
      IF t463->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t463->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t504 ).
      ENDIF.
      DATA t505 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t505.
      IF t463->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t463->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t505 ).
      ENDIF.
      DATA t506 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t506.
      IF t463->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t463->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t506 ).
      ENDIF.
      DATA t507 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t507.
      IF t463->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t463->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `pragma` p1 = t507 ).
      ENDIF.
      DATA t508 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t508.
      IF t463->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t463->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `pseudoComment` p1 = t508 ).
      ENDIF.
      CREATE OBJECT t463->zlnt_json_ownkeys_70e5fd461788.
      t463->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t510 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t510.
      t463->zlnt_json_ownkeys_70e5fd461788->put( p0 = |key| p1 = t510 ).
      DATA t512 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t512.
      IF t463->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t463->zlnt_json_ownkeys_70e5fd461788->put( p0 = |title| p1 = t512 ).
      ENDIF.
      DATA t514 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t514.
      IF t463->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t463->zlnt_json_ownkeys_70e5fd461788->put( p0 = |shortDescription| p1 = t514 ).
      ENDIF.
      DATA t516 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t516.
      IF t463->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t463->zlnt_json_ownkeys_70e5fd461788->put( p0 = |extendedInformation| p1 = t516 ).
      ENDIF.
      DATA t518 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t518.
      IF t463->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t463->zlnt_json_ownkeys_70e5fd461788->put( p0 = |tags| p1 = t518 ).
      ENDIF.
      DATA t520 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t520.
      IF t463->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t463->zlnt_json_ownkeys_70e5fd461788->put( p0 = |pragma| p1 = t520 ).
      ENDIF.
      DATA t522 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t522.
      IF t463->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t463->zlnt_json_ownkeys_70e5fd461788->put( p0 = |pseudoComment| p1 = t522 ).
      ENDIF.
      t462 = t463->key.
      t458 = zcl_lnt_issue=>at_identifier( i_identifier = t459 i_message_26cb = t420 i_key = t462 i_severity = me->conf->zlnt_view_read_sr_15c06369f827( ) i_fix = t336 ).
      t189->load( ).
      APPEND t458 TO t189->items.
      t189->save( ).
    ENDDO.
    result = t189.

  ENDMETHOD.

  METHOD has_sub_class.
    DATA(t1) = i_obj_1ed0.
    IF xsdbool( xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_class ) = abap_false ) = abap_true.
      result = abap_false.
      RETURN.
    ENDIF.
    DATA(t6) = VALUE abap_bool( ).
    DATA t7 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t8 TYPE REF TO zif_lnt_class_definition.
    DATA t10 TYPE REF TO zcl_lnt_class.
    t10 ?= t1.
    t8 = t10->gt_dfn_ins_src_obj_cls_ts_clss( ).
    DATA t12 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    IF xsdbool( t8 IS INITIAL ) = abap_true.
    ELSE.
      DATA(t16) = VALUE abap_bool( ).
      t16 = t8->is_final( ).
      DATA(t19) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t19->has = abap_true.
      t19->value = t16.
      t12 = t19.
    ENDIF.
    t7 = t12.
    DATA t20 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t23) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t23->has = abap_true.
    t23->value = abap_true.
    t20 = t23.
    DATA(t25) = VALUE abap_bool( ).
    DATA(t26) = VALUE abap_bool( ).
    IF t7 IS BOUND.
      t25 = t7->has.
    ENDIF.
    IF t20 IS BOUND.
      t26 = t20->has.
    ENDIF.
    IF t25 = t26.
      IF t25 = abap_false.
        t6 = abap_true.
      ELSEIF t7->value = t20->value.
        t6 = abap_true.
      ENDIF.
    ENDIF.
    IF t6 = abap_true.
      result = abap_false.
      RETURN.
    ENDIF.
    DATA t28 TYPE REF TO zif_lnt_generator_8f73cd1c.
    t28 = me->reg->get_objects( )->iterate( ).
    DO.
      DATA t33 TYPE REF TO zcl_lnt_generator_17955b8b.
      t33 = t28->next( ).
      IF t33->done = abap_true.
        EXIT.
      ENDIF.
      DATA t38 TYPE REF TO zif_lnt_object.
      t38 = t33->value.
      DATA(t43) = VALUE abap_bool( ).
      DATA(t44) = VALUE abap_bool( ).
      t44 = abap_false.
      DATA t46 TYPE REF TO cx_root.
      CLEAR t46.
      TRY.
          DATA(t47) = VALUE abap_bool( ).
          DATA(t48) = VALUE abap_bool( ).
          t48 = xsdbool( t38 IS BOUND AND t38 IS INSTANCE OF zcl_lnt_class ).
          t47 = t48.
          IF t48 = abap_true.
            DATA(t50) = VALUE abap_bool( ).
            DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t51.
            DATA t52 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t52.
            DATA t54 TYPE REF TO zif_lnt_class_definition.
            CLEAR t54.
            DATA t56 TYPE REF TO zcl_lnt_class.
            CLEAR t56.
            DATA t58 TYPE REF TO object.
            CLEAR t58.
            t58 = t38.
            t56 ?= t58.
            t54 = t56->gt_dfn_ins_src_obj_cls_ts_clss( ).
            DATA t59 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t59.
            IF xsdbool( t54 IS INITIAL ) = abap_true.
              CLEAR t59.
            ELSE.
              t59 = t54->get_super_class( ).
            ENDIF.
            t52 = t59.
            DATA t66 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t66.
            DATA(t67) = VALUE abap_bool( ).
            IF t52 IS INITIAL.
              t67 = abap_true.
            ELSEIF t52->has = abap_false.
              t67 = abap_true.
            ENDIF.
            IF t67 = abap_true.
              CLEAR t66.
            ELSE.
              DATA(t70) = VALUE string( ).
              DATA(t71) = VALUE string( ).
              t71 = t52->value.
              DATA(t73) = strlen( t71 ).
              t70 = t71.
              IF t70 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                TRANSLATE t70 TO UPPER CASE.
              ELSE.
                t70 = zlnt_runtime_uppe_91169605024d=>full( t70 ).
              ENDIF.
              DATA(t74) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t74->has = abap_true.
              t74->value = t70.
              t66 = t74.
            ENDIF.
            t51 = t66.
            DATA t75 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t75.
            DATA(t77) = VALUE string( ).
            DATA(t78) = VALUE string( ).
            DATA t79 TYPE REF TO zcl_lnt_abstract_object.
            CLEAR t79.
            DATA t80 TYPE REF TO zcl_lnt_class.
            CLEAR t80.
            t80 ?= t1.
            t79 = t80.
            t78 = t79->name.
            DATA(t84) = strlen( t78 ).
            t77 = t78.
            IF t77 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t77 TO UPPER CASE.
            ELSE.
              t77 = zlnt_runtime_uppe_91169605024d=>full( t77 ).
            ENDIF.
            DATA(t85) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t85->has = abap_true.
            t85->value = t77.
            t75 = t85.
            DATA(t87) = VALUE abap_bool( ).
            DATA(t88) = VALUE abap_bool( ).
            IF t51 IS BOUND.
              t87 = t51->has.
            ENDIF.
            IF t75 IS BOUND.
              t88 = t75->has.
            ENDIF.
            IF t87 = t88.
              IF t87 = abap_false.
                t50 = abap_true.
              ELSEIF t51->value = t75->value.
                t50 = abap_true.
              ENDIF.
            ENDIF.
            t47 = t50.
          ENDIF.
          t43 = t47.
          t44 = abap_true.
        CATCH cx_root INTO t46.
          IF xsdbool( t44 = abap_false ) = abap_true.
            t28->close( ).
          ENDIF.
          RAISE EXCEPTION t46.
      ENDTRY.
      IF xsdbool( t44 = abap_false ) = abap_true.
        t28->close( ).
      ENDIF.
      IF t43 = abap_true.
        t28->close( ).
        result = abap_true.
        RETURN.
      ENDIF.
    ENDDO.
    result = abap_false.

  ENDMETHOD.

  METHOD find_method_implementation.
    DATA(t1) = i_method.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zcl_lnt_structure_node.
    t6 = i_file->structure.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t6 IS INITIAL ) = abap_true.
    ELSE.
      DATA t17 TYPE REF TO zcl_lnt_structure_node.
      t17 = t6.
      DATA(t19) = zlnt_runtime_desc_78196487750d=>zlnt_member_d702_c1c9b120591c.
      t12 = t17->find_all_structures( i_type_9913 = t19 ).
    ENDIF.
    t4 = t12.
    DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    IF xsdbool( t4 IS BOUND ) = abap_true.
      t20 = t4.
    ELSE.
      CREATE OBJECT t20.
    ENDIF.
    t3 = t20.
    DATA t26 TYPE REF TO zcl_lnt_structure_node.
    DATA t27 TYPE REF TO object.
    DATA(t28) = VALUE i( ).
    DO.
      t3->load( ).
      IF t28 >= lines( t3->items ).
        EXIT.
      ENDIF.
      CLEAR t27.
      READ TABLE t3->items INDEX t28 + 1 INTO t27.
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
      DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t33) = zlnt_runtime_desc_78196487750d=>zlnt_member_d721_06b6159f9afc.
      t31 = t26->find_all_structures( i_type_9913 = t33 ).
      DATA t34 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t34.
      DATA t35 TYPE REF TO object.
      CLEAR t35.
      DATA(t36) = VALUE i( ).
      DO.
        t31->load( ).
        IF t36 >= lines( t31->items ).
          EXIT.
        ENDIF.
        CLEAR t35.
        READ TABLE t31->items INDEX t36 + 1 INTO t35.
        t36 = t36 + 1.
        DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t37.
        CLEAR t34.
        IF t35 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t37 ?= t35.
          DATA t38 TYPE REF TO object.
          t38 = t37->as_ref( ).
          t34 ?= t38.
        ELSE.
          t34 ?= t35.
        ENDIF.
        DATA(t39) = VALUE string( ).
        DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t41.
        DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t43.
        DATA t45 TYPE REF TO zcl_lnt_expression_node.
        DATA(t48) = zlnt_runtime_desc_78196487750d=>zlnt_member_d88_73c97f542216fb.
        t45 = t34->find_first_expression( i_type_9913 = t48 ).
        DATA t49 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t49.
        IF xsdbool( t45 IS INITIAL ) = abap_true.
          CLEAR t49.
        ELSE.
          DATA t53 TYPE string.
          t53 = t45->concat_tokens( ).
          DATA(t56) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t56->has = abap_true.
          t56->value = t53.
          t49 = t56.
        ENDIF.
        t43 = t49.
        DATA t57 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t57.
        DATA(t58) = VALUE abap_bool( ).
        IF t43 IS INITIAL.
          t58 = abap_true.
        ELSEIF t43->has = abap_false.
          t58 = abap_true.
        ENDIF.
        IF t58 = abap_true.
          CLEAR t57.
        ELSE.
          DATA t61 TYPE string.
          DATA t62 TYPE string.
          t62 = t43->value.
          DATA(t64) = strlen( t62 ).
          t61 = t62.
          IF t61 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t61 TO UPPER CASE.
          ELSE.
            t61 = zlnt_runtime_uppe_91169605024d=>full( t61 ).
          ENDIF.
          DATA(t65) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t65->has = abap_true.
          t65->value = t61.
          t57 = t65.
        ENDIF.
        t41 = t57.
        DATA(t66) = VALUE string( ).
        DATA(t67) = VALUE abap_bool( ).
        IF t41 IS BOUND.
          IF t41->has = abap_true.
            t67 = xsdbool( strlen( t41->value ) > 0 ).
          ENDIF.
        ENDIF.
        IF t67 = abap_true.
          t66 = t41->value.
        ELSE.
          t66 = ||.
        ENDIF.
        t39 = t66.
        DATA t74 TYPE string.
        DATA t75 TYPE string.
        t75 = t1->name.
        DATA(t77) = strlen( t75 ).
        t74 = t75.
        IF t74 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t74 TO UPPER CASE.
        ELSE.
          t74 = zlnt_runtime_uppe_91169605024d=>full( t74 ).
        ENDIF.
        IF xsdbool( t39 <> t74 ) = abap_true.
          CONTINUE.
        ENDIF.
        result = t34.
        RETURN.
      ENDDO.
    ENDDO.
    CLEAR result.

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
        DATA(t56) = |Checks private and protected methods.\n\nUnused methods are no|.
        t56 = t56 && |t reported if the object contains parser or syntax errors.\nQ|.
        t56 = t56 && |uick fixes only appears for private methods or projected met|.
        t56 = t56 && |hods where the class doesnt have any subclasses.\n\nSkips:\n* m|.
        t56 = t56 && |ethods FOR TESTING\n* methods SETUP + TEARDOWN + CLASS_SETUP |.
        t56 = t56 && |+ CLASS_TEARDOWN in testclasses\n* class_constructor + constr|.
        t56 = t56 && |uctor methods\n* event handlers\n* methods that are redefined\n|.
        t56 = t56 && |* INCLUDEs\n|.
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
        t73->value = |##CALLED|.
        t69 = t73.
        DATA t75 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t75.
        DATA(t79) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t79->has = abap_true.
        t79->value = |EC CALLED|.
        t75 = t79.
        DATA t81 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t81.
        CLEAR t81.
        DATA t83 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t83.
        CLEAR t83.
        t46 = NEW zcl_lnt_irule_metadata( i_key = |unused_methods| i_title = |Unused methods| i_short_description = |Checks for unused methods| i_bad_example = t81 i_good_example = t83 i_extended_information = t53 i_tags = t59 i_pragma = t69 i_pseudo_comment = t75 ).
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

  METHOD search_global_subclasses.
    DATA(t1) = i_obj_1ed0.
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = VALUE abap_bool( ).
    DATA(t4) = VALUE abap_bool( ).
    DATA(t5) = VALUE i( ).
    DATA(t9) = VALUE f( ).
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t11 = me->wa->list.
    t11->load( ).
    t9 = lines( t11->items ).
    t5 = t9.
    t4 = xsdbool( t5 = 0 ).
    t3 = t4.
    IF t4 = abap_false.
      t3 = xsdbool( xsdbool( t1 IS BOUND AND t1 IS INSTANCE OF zcl_lnt_class ) = abap_false ).
    ENDIF.
    t2 = t3.
    IF t3 = abap_false.
      DATA(t18) = VALUE abap_bool( ).
      t18 = me->wa->contains_proteted( ).
      t2 = xsdbool( t18 = abap_false ).
    ENDIF.
    IF t2 = abap_true.
      RETURN.
    ENDIF.
    DATA t21 TYPE REF TO zif_lnt_class_definition.
    DATA t23 TYPE REF TO zcl_lnt_class.
    t23 ?= t1.
    t21 = t23->gt_dfn_ins_src_obj_cls_ts_clss( ).
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t21 IS INITIAL ) = abap_true.
      RETURN.
    ENDIF.
    DATA t32 TYPE REF TO zif_lnt_generator_8f73cd1c.
    t32 = me->reg->get_objects( )->iterate( ).
    DO.
      DATA t37 TYPE REF TO zcl_lnt_generator_17955b8b.
      t37 = t32->next( ).
      IF t37->done = abap_true.
        EXIT.
      ENDIF.
      DATA t42 TYPE REF TO zif_lnt_object.
      t42 = t37->value.
      DATA(t47) = VALUE abap_bool( ).
      DATA(t48) = VALUE abap_bool( ).
      t48 = abap_false.
      DATA t50 TYPE REF TO cx_root.
      CLEAR t50.
      TRY.
          DATA(t51) = VALUE abap_bool( ).
          DATA(t52) = VALUE abap_bool( ).
          t52 = xsdbool( t42 IS BOUND AND t42 IS INSTANCE OF zcl_lnt_class ).
          t51 = t52.
          IF t52 = abap_true.
            DATA(t54) = VALUE abap_bool( ).
            DATA t55 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t55.
            DATA t56 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t56.
            DATA t58 TYPE REF TO zif_lnt_class_definition.
            CLEAR t58.
            DATA t60 TYPE REF TO zcl_lnt_class.
            CLEAR t60.
            DATA t62 TYPE REF TO object.
            CLEAR t62.
            t62 = t42.
            t60 ?= t62.
            t58 = t60->gt_dfn_ins_src_obj_cls_ts_clss( ).
            DATA t63 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t63.
            IF xsdbool( t58 IS INITIAL ) = abap_true.
              CLEAR t63.
            ELSE.
              t63 = t58->get_super_class( ).
            ENDIF.
            t56 = t63.
            DATA t70 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t70.
            DATA(t71) = VALUE abap_bool( ).
            IF t56 IS INITIAL.
              t71 = abap_true.
            ELSEIF t56->has = abap_false.
              t71 = abap_true.
            ENDIF.
            IF t71 = abap_true.
              CLEAR t70.
            ELSE.
              DATA(t74) = VALUE string( ).
              DATA(t75) = VALUE string( ).
              t75 = t56->value.
              DATA(t77) = strlen( t75 ).
              t74 = t75.
              IF t74 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                TRANSLATE t74 TO UPPER CASE.
              ELSE.
                t74 = zlnt_runtime_uppe_91169605024d=>full( t74 ).
              ENDIF.
              DATA(t78) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t78->has = abap_true.
              t78->value = t74.
              t70 = t78.
            ENDIF.
            t55 = t70.
            DATA t79 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t79.
            DATA(t81) = VALUE string( ).
            DATA(t82) = VALUE string( ).
            t82 = t21->get_name( ).
            DATA(t85) = strlen( t82 ).
            t81 = t82.
            IF t81 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t81 TO UPPER CASE.
            ELSE.
              t81 = zlnt_runtime_uppe_91169605024d=>full( t81 ).
            ENDIF.
            DATA(t86) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t86->has = abap_true.
            t86->value = t81.
            t79 = t86.
            DATA(t88) = VALUE abap_bool( ).
            DATA(t89) = VALUE abap_bool( ).
            IF t55 IS BOUND.
              t88 = t55->has.
            ENDIF.
            IF t79 IS BOUND.
              t89 = t79->has.
            ENDIF.
            IF t88 = t89.
              IF t88 = abap_false.
                t54 = abap_true.
              ELSEIF t55->value = t79->value.
                t54 = abap_true.
              ENDIF.
            ENDIF.
            t51 = t54.
          ENDIF.
          t47 = t51.
          t48 = abap_true.
        CATCH cx_root INTO t50.
          IF xsdbool( t48 = abap_false ) = abap_true.
            t32->close( ).
          ENDIF.
          RAISE EXCEPTION t50.
      ENDTRY.
      IF xsdbool( t48 = abap_false ) = abap_true.
        t32->close( ).
      ENDIF.
      IF t47 = abap_true.
        DATA t100 TYPE REF TO zcl_lnt_isyntax_result.
        CLEAR t100.
        DATA(t101) = VALUE abap_bool( ).
        t101 = abap_false.
        DATA t103 TYPE REF TO cx_root.
        CLEAR t103.
        TRY.
            DATA(t106) = me->reg.
            DATA t107 TYPE REF TO zcl_lnt_class.
            CLEAR t107.
            DATA t109 TYPE REF TO object.
            CLEAR t109.
            t109 = t42.
            t107 ?= t109.
            t100 = NEW zcl_lnt_syntax_logic( i_reg_f149 = t106 i_object_19cd = t107 )->run( ).
            t101 = abap_true.
          CATCH cx_root INTO t103.
            IF xsdbool( t101 = abap_false ) = abap_true.
              t32->close( ).
            ENDIF.
            RAISE EXCEPTION t103.
        ENDTRY.
        IF xsdbool( t101 = abap_false ) = abap_true.
          t32->close( ).
        ENDIF.
        DATA(t118) = VALUE abap_bool( ).
        t118 = abap_false.
        DATA t120 TYPE REF TO cx_root.
        CLEAR t120.
        TRY.
            me->traverse( i_node = t100->zlnt_view_read_sr_b6b1d9e0c93e( )->get_top( ) ).
            t118 = abap_true.
          CATCH cx_root INTO t120.
            IF xsdbool( t118 = abap_false ) = abap_true.
              t32->close( ).
            ENDIF.
            RAISE EXCEPTION t120.
        ENDTRY.
        IF xsdbool( t118 = abap_false ) = abap_true.
          t32->close( ).
        ENDIF.
        DATA(t131) = VALUE abap_bool( ).
        t131 = abap_false.
        DATA t133 TYPE REF TO cx_root.
        CLEAR t133.
        TRY.
            DATA t134 TYPE REF TO zcl_lnt_class.
            CLEAR t134.
            DATA t136 TYPE REF TO object.
            CLEAR t136.
            t136 = t42.
            t134 ?= t136.
            me->search_global_subclasses( i_obj_1ed0 = t134 ).
            t131 = abap_true.
          CATCH cx_root INTO t133.
            IF xsdbool( t131 = abap_false ) = abap_true.
              t32->close( ).
            ENDIF.
            RAISE EXCEPTION t133.
        ENDTRY.
        IF xsdbool( t131 = abap_false ) = abap_true.
          t32->close( ).
        ENDIF.
      ENDIF.
    ENDDO.
  ENDMETHOD.

  METHOD traverse.
    DATA(t1) = i_node.
    DATA t3 TYPE string.
    t3 = t1->get_identifier( )->stype.
    IF xsdbool( t3 <> |_builtin| ) = abap_true.
      me->check_node( i_node = t1 ).
    ENDIF.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t8 = t1->get_children( ).
    DATA t10 TYPE REF TO zif_lnt_spaghetti_scope_node.
    DATA t11 TYPE REF TO object.
    DATA(t12) = VALUE i( ).
    DO.
      t8->load( ).
      IF t12 >= lines( t8->items ).
        EXIT.
      ENDIF.
      CLEAR t11.
      READ TABLE t8->items INDEX t12 + 1 INTO t11.
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
      me->traverse( i_node = t10 ).
    ENDDO.
  ENDMETHOD.

  METHOD check_node.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t2 = i_node->get_data( )->references.
    DATA t5 TYPE REF TO zcl_lnt_ireference.
    DATA t6 TYPE REF TO object.
    DATA(t7) = VALUE i( ).
    DO.
      t2->load( ).
      IF t7 >= lines( t2->items ).
        EXIT.
      ENDIF.
      CLEAR t6.
      READ TABLE t2->items INDEX t7 + 1 INTO t6.
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
      DATA t10 TYPE abap_bool.
      DATA t11 TYPE abap_bool.
      t11 = xsdbool( t5->reference_type = |Method| ).
      t10 = t11.
      IF t11 = abap_true.
        DATA t16 TYPE REF TO zcl_lnt_fi_identifier.
        t16 = t5->resolved.
        t10 = xsdbool( t16 IS BOUND ).
      ENDIF.
      IF t10 = abap_true.
        DATA t20 TYPE REF TO zcl_lnt_fi_identifier.
        t20 = t5->resolved.
        me->wa->remove_if_exists( i_id = t20 ).
      ENDIF.
    ENDDO.
  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_unused_methods_conf( me->gt_cn_in_sr_rl_un_mt_ts_un_mth( ) ).

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_unused_methods_conf( me->gt_cn_in_sr_rl_un_mt_ts_un_mth( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_unused_methods_conf.
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
        t2 = NEW zcl_lnt_unused_methods_conf( view_source = t1 ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_un_mt_ts_un_mth( i_conf = t2 ).
  ENDMETHOD.

  METHOD initialize.
    DATA(t3) = i_reg_f149.
    result = me->in_in_sr_rl_uns_mth_ts_uns_mth( i_reg_f149 = t3 ).

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1757_3c6dff8656e0.
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
