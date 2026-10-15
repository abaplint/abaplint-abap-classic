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
    DATA(t1) = NEW zcl_lnt_unused_methods_conf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |unused_methods|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Unused methods|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Checks for unused methods|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
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
      t9 = t12.
    ELSE.
      DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t13.
      t9 = t13.
    ENDIF.
    t8 = t9.
    DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t14.
    DATA t15 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t15.
    DATA(t16) = abap_true.
    IF t16 = abap_true.
      DATA t17 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t19 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t19.
      t18 = t19.
      DATA(t20) = t18.
      DATA(t21) = |Quickfix|.
      t20->load( ).
      APPEND t21 TO t20->items.
      t20->save( ).
      DATA(t22) = t18.
      t17 = t22.
      t15 = t17.
    ELSE.
      DATA t23 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t23.
      t15 = t23.
    ENDIF.
    t14 = t15.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t24.
    DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t25.
    DATA(t26) = abap_true.
    IF t26 = abap_true.
      DATA(t27) = |##CALLED|.
      DATA(t28) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t28->has = abap_true.
      t28->value = t27.
      t25 = t28.
    ELSE.
      DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t29.
      t25 = t29.
    ENDIF.
    t24 = t25.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t30.
    DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t31.
    DATA(t32) = abap_true.
    IF t32 = abap_true.
      DATA(t33) = |EC CALLED|.
      DATA(t34) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t34->has = abap_true.
      t34->value = t33.
      t31 = t34.
    ELSE.
      DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t35.
      t31 = t35.
    ENDIF.
    t30 = t31.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t37.
    t36 = t37.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t39.
    t38 = t39.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t36 i_good_example = t38 i_extended_information = t8 i_tags = t14 i_pragma = t24 i_pseudo_comment = t30 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t40 ).
    ENDIF.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t41 ).
    ENDIF.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t42 ).
    ENDIF.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t43 ).
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t44 ).
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `pragma` p1 = t45 ).
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `pseudoComment` p1 = t46 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t47) = |key|.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t48.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t47 p1 = t48 ).
    ENDIF.
    DATA(t49) = |title|.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t49 p1 = t50 ).
    ENDIF.
    DATA(t51) = |shortDescription|.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t52.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t51 p1 = t52 ).
    ENDIF.
    DATA(t53) = |extendedInformation|.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t54.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t53 p1 = t54 ).
    ENDIF.
    DATA(t55) = |tags|.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t56.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t55 p1 = t56 ).
    ENDIF.
    DATA(t57) = |pragma|.
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t58.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t57 p1 = t58 ).
    ENDIF.
    DATA(t59) = |pseudoComment|.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t59 p1 = t60 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_un_mt_ts_un_mth.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_un_mt_ts_un_mth.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD in_in_sr_rl_uns_mth_ts_uns_mth.
    DATA(t1) = i_reg_f149.
    DATA(t2) = t1.
    me->reg = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `reg`.
    DATA(t3) = me.
    result = t3.

  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_obj_1ed0.
    DATA t2 TYPE abap_bool.
    DATA t3 TYPE abap_bool.
    DATA(t4) = t1.
    t3 = xsdbool( t4 IS BOUND AND t4 IS INSTANCE OF zcl_lnt_abap_object ).
    t2 = xsdbool( t3 = abap_false ).
    IF t2 = abap_true.
      DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t5.
      result = t5.
      RETURN.
    ELSE.
      DATA t6 TYPE abap_bool.
      DATA(t7) = t1.
      t6 = xsdbool( t7 IS BOUND AND t7 IS INSTANCE OF zcl_lnt_ob_interface ).
      IF t6 = abap_true.
        DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t8.
        result = t8.
        RETURN.
      ELSE.
        DATA t9 TYPE abap_bool.
        DATA t10 TYPE abap_bool.
        DATA(t11) = t1.
        t10 = xsdbool( t11 IS BOUND AND t11 IS INSTANCE OF zcl_lnt_ob_program ).
        t9 = t10.
        IF t10 = abap_true.
          DATA t12 TYPE abap_bool.
          DATA t13 TYPE abap_bool.
          DATA t14 TYPE REF TO zcl_lnt_ob_program.
          DATA t15 TYPE REF TO zcl_lnt_ob_program.
          DATA(t16) = t1.
          DATA t17 TYPE REF TO object.
          t17 = t16.
          t15 ?= t17.
          t14 = t15.
          DATA t18 TYPE abap_bool.
          DATA(t19) = t14.
          t19->parse_xml( ).
          DATA t20 TYPE abap_bool.
          DATA t21 TYPE REF TO zcl_lnt_shape_d77da4ed.
          DATA t22 TYPE REF TO zcl_lnt_shape_d77da4ed.
          DATA(t23) = t14.
          t22 = t23->parsed_xml.
          t21 = t22.
          t20 = t21->is_include.
          t18 = t20.
          t13 = t18.
          DATA(t24) = abap_true.
          t12 = xsdbool( t13 = t24 ).
          t9 = t12.
        ENDIF.
        IF t9 = abap_true.
          DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CREATE OBJECT t25.
          result = t25.
          RETURN.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t27 TYPE REF TO zcl_lnt_abap_object.
    DATA t28 TYPE REF TO zcl_lnt_abap_object.
    DATA(t29) = t1.
    DATA t30 TYPE REF TO object.
    t30 = t29.
    t28 ?= t30.
    t27 = t28.
    DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t32) = t27.
    t31 = t32->parsed.
    t26 = t31.
    DATA t33 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t33.
    DATA t34 TYPE REF TO object.
    CLEAR t34.
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
      DATA t39 TYPE REF TO zcl_lnt_abap_file.
      DATA(t40) = t33.
      t39 = t40.
      DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t42) = t39.
      t41 = t42->statements.
      t38 = t41.
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
        DATA t48 TYPE abap_bool.
        DATA t49 TYPE REF TO zif_lnt_statement.
        DATA(t50) = t43.
        t49 = t50->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t48 = xsdbool( t49 IS BOUND AND t49 IS INSTANCE OF zcl_lnt_unknown ).
        IF t48 = abap_true.
          DATA t51 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CREATE OBJECT t51.
          result = t51.
          RETURN.
        ENDIF.
      ENDDO.
    ENDDO.
    DATA t52 TYPE REF TO zcl_lnt_isyntax_result.
    DATA t53 TYPE REF TO zcl_lnt_isyntax_result.
    DATA t54 TYPE REF TO zcl_lnt_syntax_logic.
    DATA(t55) = me->reg.
    DATA t56 TYPE REF TO zcl_lnt_abap_object.
    DATA(t57) = t1.
    DATA t58 TYPE REF TO object.
    t58 = t57.
    t56 ?= t58.
    t54 = NEW zcl_lnt_syntax_logic( i_reg_f149 = t55 i_object_19cd = t56 ).
    t53 = t54->run( ).
    t52 = t53.
    DATA t59 TYPE abap_bool.
    DATA t60 TYPE i.
    DATA t61 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t62) = t52.
    t61 = t62->zlnt_view_read_sr_bd188c319c03( ).
    t61->load( ).
    t60 = lines( t61->items ).
    DATA(t63) = 0.
    t59 = xsdbool( t60 > t63 ).
    IF t59 = abap_true.
      DATA t64 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t64.
      result = t64.
      RETURN.
    ENDIF.
    DATA(t65) = NEW zcl_lnt_rl_unused_methods_w_ar( ).
    me->wa = t65.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `wa`.
    DATA t66 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t67 TYPE REF TO zcl_lnt_abap_object.
    DATA t68 TYPE REF TO zcl_lnt_abap_object.
    DATA(t69) = t1.
    DATA t70 TYPE REF TO object.
    t70 = t69.
    t68 ?= t70.
    t67 = t68.
    DATA t71 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t72) = t67.
    t71 = t72->parsed.
    t66 = t71.
    DATA t73 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t73.
    DATA t74 TYPE REF TO object.
    CLEAR t74.
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
      DATA t79 TYPE REF TO zif_lnt_abap_file_information.
      DATA t80 TYPE REF TO zcl_lnt_abap_file.
      DATA(t81) = t73.
      t80 = t81.
      DATA t82 TYPE REF TO zif_lnt_abap_file_information.
      DATA(t83) = t80.
      t82 = t83->info.
      t79 = t82.
      t78 = t79->list_class_definitions( ).
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
        DATA(t90) = t84.
        t89 = t90->methods.
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
          DATA t99 TYPE abap_bool.
          DATA(t100) = t91.
          t99 = t100->is_for_testing.
          DATA(t101) = abap_true.
          t98 = xsdbool( t99 = t101 ).
          t97 = t98.
          IF t98 = abap_false.
            DATA t102 TYPE abap_bool.
            DATA t103 TYPE abap_bool.
            DATA(t104) = t91.
            t103 = t104->is_redefinition.
            DATA(t105) = abap_true.
            t102 = xsdbool( t103 = t105 ).
            t97 = t102.
          ENDIF.
          t96 = t97.
          IF t97 = abap_false.
            DATA(t106) = VALUE abap_bool( ).
            DATA t107 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            DATA(t108) = t91.
            t107 = t108->is_event_handler.
            DATA t109 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t109.
            DATA(t110) = abap_true.
            IF t110 = abap_true.
              DATA(t111) = abap_true.
              DATA(t112) = NEW zlnt_runtime_opti_7f2541396f43( ).
              t112->has = abap_true.
              t112->value = t111.
              t109 = t112.
            ELSE.
              DATA t113 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t113.
              t109 = t113.
            ENDIF.
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
          ELSE.
            DATA(t116) = VALUE abap_bool( ).
            DATA(t117) = VALUE abap_bool( ).
            DATA t118 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            DATA(t119) = t84.
            t118 = t119->is_for_testing.
            DATA t120 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t120.
            DATA(t121) = abap_true.
            IF t121 = abap_true.
              DATA(t122) = abap_true.
              DATA(t123) = NEW zlnt_runtime_opti_7f2541396f43( ).
              t123->has = abap_true.
              t123->value = t122.
              t120 = t123.
            ELSE.
              DATA t124 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              CLEAR t124.
              t120 = t124.
            ENDIF.
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
              DATA(t133) = t91.
              t132 = t133->name.
              DATA(t134) = strlen( t132 ).
              t131 = t132.
              IF t131 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                TRANSLATE t131 TO UPPER CASE.
              ELSE.
                t131 = zlnt_runtime_uppe_91169605024d=>full( t131 ).
              ENDIF.
              DATA(t135) = |SETUP|.
              t130 = xsdbool( t131 = t135 ).
              t129 = t130.
              IF t130 = abap_false.
                DATA(t136) = VALUE abap_bool( ).
                DATA t137 TYPE string.
                DATA t138 TYPE string.
                DATA(t139) = t91.
                t138 = t139->name.
                DATA(t140) = strlen( t138 ).
                t137 = t138.
                IF t137 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                  TRANSLATE t137 TO UPPER CASE.
                ELSE.
                  t137 = zlnt_runtime_uppe_91169605024d=>full( t137 ).
                ENDIF.
                DATA(t141) = |CLASS_SETUP|.
                t136 = xsdbool( t137 = t141 ).
                t129 = t136.
              ENDIF.
              t128 = t129.
              IF t129 = abap_false.
                DATA(t142) = VALUE abap_bool( ).
                DATA t143 TYPE string.
                DATA t144 TYPE string.
                DATA(t145) = t91.
                t144 = t145->name.
                DATA(t146) = strlen( t144 ).
                t143 = t144.
                IF t143 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                  TRANSLATE t143 TO UPPER CASE.
                ELSE.
                  t143 = zlnt_runtime_uppe_91169605024d=>full( t143 ).
                ENDIF.
                DATA(t147) = |TEARDOWN|.
                t142 = xsdbool( t143 = t147 ).
                t128 = t142.
              ENDIF.
              t127 = t128.
              IF t128 = abap_false.
                DATA(t148) = VALUE abap_bool( ).
                DATA t149 TYPE string.
                DATA t150 TYPE string.
                DATA(t151) = t91.
                t150 = t151->name.
                DATA(t152) = strlen( t150 ).
                t149 = t150.
                IF t149 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                  TRANSLATE t149 TO UPPER CASE.
                ELSE.
                  t149 = zlnt_runtime_uppe_91169605024d=>full( t149 ).
                ENDIF.
                DATA(t153) = |CLASS_TEARDOWN|.
                t148 = xsdbool( t149 = t153 ).
                t127 = t148.
              ENDIF.
              t116 = t127.
            ENDIF.
            IF t116 = abap_true.
              CONTINUE.
            ELSE.
              DATA(t154) = VALUE abap_bool( ).
              DATA(t155) = VALUE abap_bool( ).
              DATA t156 TYPE string.
              DATA t157 TYPE string.
              DATA(t158) = t91.
              t157 = t158->name.
              DATA(t159) = strlen( t157 ).
              t156 = t157.
              IF t156 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                TRANSLATE t156 TO UPPER CASE.
              ELSE.
                t156 = zlnt_runtime_uppe_91169605024d=>full( t156 ).
              ENDIF.
              DATA(t160) = |CONSTRUCTOR|.
              t155 = xsdbool( t156 = t160 ).
              t154 = t155.
              IF t155 = abap_false.
                DATA(t161) = VALUE abap_bool( ).
                DATA t162 TYPE string.
                DATA t163 TYPE string.
                DATA(t164) = t91.
                t163 = t164->name.
                DATA(t165) = strlen( t163 ).
                t162 = t163.
                IF t162 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                  TRANSLATE t162 TO UPPER CASE.
                ELSE.
                  t162 = zlnt_runtime_uppe_91169605024d=>full( t162 ).
                ENDIF.
                DATA(t166) = |CLASS_CONSTRUCTOR|.
                t161 = xsdbool( t162 = t166 ).
                t154 = t161.
              ENDIF.
              IF t154 = abap_true.
                CONTINUE.
              ENDIF.
            ENDIF.
          ENDIF.
          DATA t167 TYPE abap_bool.
          DATA t168 TYPE abap_bool.
          DATA t169 TYPE f.
          DATA(t170) = t91.
          t169 = t170->visibility.
          DATA(t171) = CONV f( 1 ).
          t168 = xsdbool( t169 = t171 ).
          t167 = t168.
          IF t168 = abap_false.
            DATA t172 TYPE abap_bool.
            DATA t173 TYPE f.
            DATA(t174) = t91.
            t173 = t174->visibility.
            DATA(t175) = CONV f( 2 ).
            t172 = xsdbool( t173 = t175 ).
            t167 = t172.
          ENDIF.
          IF t167 = abap_true.
            DATA t176 TYPE REF TO zcl_lnt_rl_unused_methods_w_ar.
            DATA(t177) = me->wa.
            t176 = t177.
            DATA t178 TYPE REF TO zcl_lnt_info_method_definition.
            DATA(t179) = t91.
            t178 = t179.
            DATA t180 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t181) = t176.
            t180 = t181->list.
            DATA(t182) = t178.
            t180->load( ).
            APPEND t182 TO t180->items.
            t180->save( ).
          ENDIF.
        ENDDO.
      ENDDO.
    ENDDO.
    DATA t183 TYPE REF TO zif_lnt_spaghetti_scope_node.
    DATA t184 TYPE REF TO zif_lnt_spaghetti_scope.
    DATA(t185) = t52.
    t184 = t185->zlnt_view_read_sr_b6b1d9e0c93e( ).
    t183 = t184->get_top( ).
    me->traverse( i_node = t183 ).
    DATA t186 TYPE REF TO zcl_lnt_abap_object.
    DATA(t187) = t1.
    DATA t188 TYPE REF TO object.
    t188 = t187.
    t186 ?= t188.
    me->search_global_subclasses( i_obj_1ed0 = t186 ).
    DATA t189 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t190 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t190.
    t189 = t190.
    DATA t191 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t192 TYPE REF TO zcl_lnt_rl_unused_methods_w_ar.
    DATA(t193) = me->wa.
    t192 = t193.
    DATA t194 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t195) = t192.
    t194 = t195->list.
    t191 = t194.
    DATA t196 TYPE REF TO zcl_lnt_info_method_definition.
    CLEAR t196.
    DATA t197 TYPE REF TO object.
    CLEAR t197.
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
      DATA t202 TYPE REF TO zcl_lnt_abap_file.
      DATA t203 TYPE REF TO zcl_lnt_abap_object.
      DATA(t204) = t1.
      DATA t205 TYPE REF TO object.
      t205 = t204.
      t203 ?= t205.
      DATA t206 TYPE string.
      DATA t207 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t208 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t209) = t196.
      t208 = t209->identifier.
      t207 = t208.
      DATA t210 TYPE string.
      DATA(t211) = t207.
      t210 = t211->filename.
      t206 = t210.
      t202 = t203->get_abap_file_by_name( i_filename = t206 ).
      t201 = t202.
      DATA(t212) = VALUE abap_bool( ).
      DATA t213 TYPE REF TO zcl_lnt_abap_file.
      DATA(t214) = t201.
      t213 = t214.
      DATA t215 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t216 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t216.
      t215 = t216.
      DATA(t217) = VALUE abap_bool( ).
      DATA(t218) = t213.
      IF t218 IS INITIAL.
        t217 = abap_true.
      ENDIF.
      t212 = t217.
      IF t212 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t219 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t219.
      DATA t220 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t220.
      DATA t221 TYPE REF TO zcl_lnt_abstract_token.
      DATA t222 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t223 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t224) = t196.
      t223 = t224->identifier.
      t222 = t223.
      DATA t225 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t226) = t222.
      t225 = t226->token.
      t221 = t225.
      DATA t227 TYPE REF TO zcl_lnt_abap_file.
      CLEAR t227.
      DATA(t228) = abap_true.
      IF t228 = abap_true.
        DATA t229 TYPE REF TO zcl_lnt_abap_file.
        DATA(t230) = t201.
        t229 = t230.
        t227 = t229.
      ELSE.
        DATA t231 TYPE REF TO zcl_lnt_abap_file.
        CLEAR t231.
        t227 = t231.
      ENDIF.
      t220 = zcl_lnt_edit_helper=>find_statement( i_token = t221 i_file = t227 ).
      t219 = t220.
      DATA(t232) = VALUE abap_bool( ).
      DATA t233 TYPE REF TO zcl_lnt_statement_node.
      DATA(t234) = t219.
      t233 = t234.
      DATA t235 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t236.
      t235 = t236.
      DATA(t237) = VALUE abap_bool( ).
      DATA(t238) = t233.
      IF t238 IS INITIAL.
        t237 = abap_true.
      ENDIF.
      t232 = t237.
      IF t232 = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t239) = VALUE abap_bool( ).
      DATA t240 TYPE abap_bool.
      DATA(t241) = abap_false.
      t240 = t241.
      DATA t242 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t243 TYPE REF TO zcl_lnt_statement_node.
      DATA t244 TYPE REF TO zcl_lnt_statement_node.
      DATA(t245) = t219.
      t244 = t245.
      t243 = t244.
      DATA t246 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t247) = t243.
      t246 = t247->pragmas.
      t242 = t246.
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
        CLEAR t254.
        DATA(t255) = abap_true.
        IF t255 = abap_true.
          DATA t256 TYPE string.
          DATA t257 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t258) = t248.
          t257 = t258.
          DATA t259 TYPE string.
          DATA(t260) = t257.
          t259 = t260->str.
          t256 = t259.
          DATA(t261) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t261->has = abap_true.
          t261->value = t256.
          t254 = t261.
        ELSE.
          DATA t262 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t262.
          t254 = t262.
        ENDIF.
        DATA t263 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t263.
        DATA t264 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t264.
        DATA t265 TYPE string.
        DATA(t266) = |unused_methods|.
        t265 = t266.
        DATA t267 TYPE string.
        DATA(t268) = |Unused methods|.
        t267 = t268.
        DATA t269 TYPE string.
        DATA(t270) = |Checks for unused methods|.
        t269 = t270.
        DATA t271 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t271.
        DATA t272 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t272.
        DATA(t273) = abap_true.
        IF t273 = abap_true.
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
          t272 = t275.
        ELSE.
          DATA t276 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t276.
          t272 = t276.
        ENDIF.
        t271 = t272.
        DATA t277 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t277.
        DATA t278 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t278.
        DATA(t279) = abap_true.
        IF t279 = abap_true.
          DATA t280 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t281 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t282 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CREATE OBJECT t282.
          t281 = t282.
          DATA(t283) = t281.
          DATA(t284) = |Quickfix|.
          t283->load( ).
          APPEND t284 TO t283->items.
          t283->save( ).
          DATA(t285) = t281.
          t280 = t285.
          t278 = t280.
        ELSE.
          DATA t286 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t286.
          t278 = t286.
        ENDIF.
        t277 = t278.
        DATA t287 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t287.
        DATA t288 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t288.
        DATA(t289) = abap_true.
        IF t289 = abap_true.
          DATA(t290) = |##CALLED|.
          DATA(t291) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t291->has = abap_true.
          t291->value = t290.
          t288 = t291.
        ELSE.
          DATA t292 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t292.
          t288 = t292.
        ENDIF.
        t287 = t288.
        DATA t293 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t293.
        DATA t294 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t294.
        DATA(t295) = abap_true.
        IF t295 = abap_true.
          DATA(t296) = |EC CALLED|.
          DATA(t297) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t297->has = abap_true.
          t297->value = t296.
          t294 = t297.
        ELSE.
          DATA t298 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t298.
          t294 = t298.
        ENDIF.
        t293 = t294.
        DATA t299 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t300 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t300.
        t299 = t300.
        DATA t301 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t302 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t302.
        t301 = t302.
        t264 = NEW zcl_lnt_irule_metadata( i_key = t265 i_title = t267 i_short_description = t269 i_bad_example = t299 i_good_example = t301 i_extended_information = t271 i_tags = t277 i_pragma = t287 i_pseudo_comment = t293 ).
        CREATE OBJECT t264->zlnt_view_ownkeys_b0e8086400eb.
        t264->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t303 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t303.
        IF t264->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t264->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t303 ).
        ENDIF.
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
        DATA(t310) = |key|.
        DATA t311 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t311.
        IF t264->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t264->zlnt_json_ownkeys_70e5fd461788->put( p0 = t310 p1 = t311 ).
        ENDIF.
        DATA(t312) = |title|.
        DATA t313 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t313.
        IF t264->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t264->zlnt_json_ownkeys_70e5fd461788->put( p0 = t312 p1 = t313 ).
        ENDIF.
        DATA(t314) = |shortDescription|.
        DATA t315 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t315.
        IF t264->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t264->zlnt_json_ownkeys_70e5fd461788->put( p0 = t314 p1 = t315 ).
        ENDIF.
        DATA(t316) = |extendedInformation|.
        DATA t317 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t317.
        IF t264->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t264->zlnt_json_ownkeys_70e5fd461788->put( p0 = t316 p1 = t317 ).
        ENDIF.
        DATA(t318) = |tags|.
        DATA t319 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t319.
        IF t264->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t264->zlnt_json_ownkeys_70e5fd461788->put( p0 = t318 p1 = t319 ).
        ENDIF.
        DATA(t320) = |pragma|.
        DATA t321 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t321.
        IF t264->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t264->zlnt_json_ownkeys_70e5fd461788->put( p0 = t320 p1 = t321 ).
        ENDIF.
        DATA(t322) = |pseudoComment|.
        DATA t323 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t323.
        IF t264->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t264->zlnt_json_ownkeys_70e5fd461788->put( p0 = t322 p1 = t323 ).
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
          DATA(t326) = abap_true.
          t240 = t326.
          EXIT.
        ENDIF.
      ENDDO.
      DATA(t327) = t240.
      t239 = t327.
      IF t239 = abap_true.
        CONTINUE.
      ELSE.
        DATA(t328) = VALUE abap_bool( ).
        DATA t329 TYPE REF TO zcl_lnt_statement_node.
        CLEAR t329.
        DATA(t330) = abap_true.
        IF t330 = abap_true.
          DATA t331 TYPE REF TO zcl_lnt_statement_node.
          DATA(t332) = t219.
          t331 = t332.
          t329 = t331.
        ELSE.
          DATA t333 TYPE REF TO zcl_lnt_statement_node.
          CLEAR t333.
          t329 = t333.
        ENDIF.
        DATA t334 TYPE REF TO zcl_lnt_abap_file.
        DATA(t335) = t201.
        t334 = t335.
        t328 = me->suppressedby_pseudo( i_statement = t329 i_file = t334 ).
        IF t328 = abap_true.
          CONTINUE.
        ENDIF.
      ENDIF.
      DATA t336 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      DATA t337 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t337.
      t336 = t337.
      DATA(t338) = VALUE abap_bool( ).
      DATA t339 TYPE abap_bool.
      DATA t340 TYPE abap_bool.
      DATA t341 TYPE f.
      DATA(t342) = t196.
      t341 = t342->visibility.
      DATA(t343) = CONV f( 1 ).
      t340 = xsdbool( t341 = t343 ).
      t339 = t340.
      IF t340 = abap_false.
        DATA t344 TYPE abap_bool.
        DATA t345 TYPE abap_bool.
        DATA(t346) = t196.
        t345 = t346->is_final.
        DATA(t347) = abap_true.
        t344 = xsdbool( t345 = t347 ).
        t339 = t344.
      ENDIF.
      t338 = t339.
      IF t339 = abap_false.
        DATA t348 TYPE abap_bool.
        DATA t349 TYPE abap_bool.
        DATA t350 TYPE f.
        DATA(t351) = t196.
        t350 = t351->visibility.
        DATA(t352) = CONV f( 2 ).
        t349 = xsdbool( t350 = t352 ).
        t348 = t349.
        IF t349 = abap_true.
          DATA t353 TYPE abap_bool.
          DATA t354 TYPE abap_bool.
          DATA t355 TYPE REF TO zcl_lnt_abap_object.
          DATA(t356) = t1.
          DATA t357 TYPE REF TO object.
          t357 = t356.
          t355 ?= t357.
          t354 = me->has_sub_class( i_obj_1ed0 = t355 ).
          DATA(t358) = abap_false.
          t353 = xsdbool( t354 = t358 ).
          t348 = t353.
        ENDIF.
        t338 = t348.
      ENDIF.
      IF t338 = abap_true.
        DATA t359 TYPE REF TO zcl_lnt_structure_node.
        DATA t360 TYPE REF TO zcl_lnt_structure_node.
        DATA(t361) = t196.
        DATA t362 TYPE REF TO zcl_lnt_abap_file.
        DATA(t363) = t201.
        t362 = t363.
        t360 = me->find_method_implementation( i_method = t361 i_file = t362 ).
        t359 = t360.
        DATA(t364) = VALUE abap_bool( ).
        DATA t365 TYPE REF TO zcl_lnt_structure_node.
        DATA(t366) = t359.
        t365 = t366.
        DATA t367 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t368 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t368.
        t367 = t368.
        DATA(t369) = VALUE abap_bool( ).
        DATA(t370) = VALUE abap_bool( ).
        DATA(t371) = t365.
        IF t371 IS INITIAL.
          t370 = abap_true.
        ENDIF.
        t369 = xsdbool( t370 = abap_false ).
        t364 = t369.
        IF t364 = abap_true.
          DATA t372 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          DATA t373 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          DATA t374 TYPE REF TO zcl_lnt_abap_file.
          DATA(t375) = t201.
          t374 = t375.
          DATA t376 TYPE REF TO zcl_lnt_statement_node.
          DATA(t377) = t219.
          t376 = t377.
          t373 = zcl_lnt_edit_helper=>delete_statement( i_file = t374 i_statement = t376 ).
          t372 = t373.
          DATA t378 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          DATA t379 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          DATA t380 TYPE REF TO zcl_lnt_abap_file.
          DATA(t381) = t201.
          t380 = t381.
          DATA t382 TYPE REF TO zcl_lnt_position.
          DATA t383 TYPE REF TO zcl_lnt_abstract_token.
          DATA t384 TYPE REF TO zcl_lnt_abstract_token.
          DATA t385 TYPE REF TO zcl_lnt_structure_node.
          DATA(t386) = t359.
          t385 = t386.
          t384 = t385->get_first_token( ).
          t383 = t384.
          DATA t387 TYPE REF TO zcl_lnt_position.
          DATA(t388) = t383.
          t387 = t388->start.
          t382 = t387.
          DATA t389 TYPE REF TO zcl_lnt_position.
          DATA t390 TYPE REF TO zcl_lnt_abstract_token.
          DATA t391 TYPE REF TO zcl_lnt_abstract_token.
          DATA t392 TYPE REF TO zcl_lnt_structure_node.
          DATA(t393) = t359.
          t392 = t393.
          t391 = t392->get_last_token( ).
          t390 = t391.
          DATA t394 TYPE REF TO zcl_lnt_position.
          DATA t395 TYPE f.
          DATA t396 TYPE REF TO zcl_lnt_position.
          DATA t397 TYPE REF TO zcl_lnt_position.
          DATA(t398) = t390.
          t397 = t398->start.
          t396 = t397.
          DATA t399 TYPE f.
          DATA(t400) = t396.
          t399 = t400->row.
          t395 = t399.
          DATA t401 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t402 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t403 TYPE REF TO zcl_lnt_position.
          DATA t404 TYPE REF TO zcl_lnt_position.
          DATA(t405) = t390.
          t404 = t405->start.
          t403 = t404.
          DATA t406 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA(t407) = t403.
          t406 = t407->col.
          t402 = t406.
          DATA t408 TYPE f.
          DATA t409 TYPE i.
          DATA t410 TYPE string.
          DATA(t411) = t390.
          t410 = t411->str.
          DATA(t412) = strlen( t410 ).
          t409 = t412.
          t408 = t409.
          DATA(t413) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t413->has = abap_true.
          t413->value = t408.
          t401 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t402 right = t413 op = `+` ).
          t394 = NEW zcl_lnt_position( i_row = t395 i_col = t401 ).
          t389 = t394.
          t379 = zcl_lnt_edit_helper=>delete_range( i_file = t380 i_start = t382 i_end = t389 ).
          t378 = t379.
          DATA t414 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t414.
          DATA(t415) = abap_true.
          IF t415 = abap_true.
            DATA t416 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            DATA(t417) = t372.
            DATA(t418) = t378.
            t416 = zcl_lnt_edit_helper=>merge( i_fix1 = t417 i_fix2 = t418 ).
            t414 = t416.
          ELSE.
            DATA t419 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t419.
            t414 = t419.
          ENDIF.
          t336 = t414.
        ENDIF.
      ENDIF.
      DATA(t420) = VALUE string( ).
      DATA(t421) = VALUE string( ).
      DATA(t422) = VALUE string( ).
      DATA(t423) = |Method "|.
      DATA(t424) = VALUE string( ).
      DATA t425 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t426 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t427) = t196.
      t426 = t427->identifier.
      t425 = t426.
      DATA(t428) = VALUE string( ).
      DATA t429 TYPE string.
      DATA t430 TYPE string.
      DATA t431 TYPE REF TO zcl_lnt_abstract_token.
      DATA t432 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t433) = t425.
      t432 = t433->token.
      t431 = t432.
      DATA t434 TYPE string.
      DATA(t435) = t431.
      t434 = t435->str.
      t430 = t434.
      t429 = t430.
      DATA(t436) = VALUE abap_bool( ).
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
        CLEAR t437.
      ELSE.
        IF t440 > t441 - t439.
          t440 = t441 - t439.
        ENDIF.
        t437 = t438+t439(t440).
      ENDIF.
      DATA(t442) = |!|.
      t436 = xsdbool( t437 = t442 ).
      IF t436 = abap_true.
        DATA(t443) = VALUE string( ).
        DATA t444 TYPE string.
        DATA(t445) = t429.
        t444 = t445.
        DATA(t446) = VALUE string( ).
        DATA(t447) = t444.
        DATA(t448) = 1.
        DATA t449 TYPE i.
        DATA(t450) = t444.
        DATA(t451) = strlen( t450 ).
        t449 = t451.
        DATA(t452) = strlen( t447 ).
        IF t448 < 0.
          t448 = t448 + t452.
          IF t448 < 0.
            t448 = 0.
          ENDIF.
        ENDIF.
        IF t448 > t452 OR t449 <= 0.
          CLEAR t446.
        ELSE.
          IF t449 > t452 - t448.
            t449 = t452 - t448.
          ENDIF.
          t446 = t447+t448(t449).
        ENDIF.
        t443 = t446.
        t429 = t443.
      ENDIF.
      DATA(t453) = t429.
      t428 = t453.
      t424 = t428.
      DATA(t454) = strlen( t423 ).
      t422 = |{ t423 }{ t424 }|.
      DATA(t455) = |" not used|.
      DATA(t456) = strlen( t422 ).
      t421 = |{ t422 }{ t455 }|.
      t420 = t421.
      DATA(t457) = t189.
      DATA t458 TYPE REF TO zcl_lnt_issue.
      CLEAR t458.
      DATA t459 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t460) = t196.
      t459 = t460->identifier.
      DATA(t461) = t420.
      DATA(t462) = VALUE string( ).
      DATA t463 TYPE REF TO zcl_lnt_irule_metadata.
      CLEAR t463.
      DATA t464 TYPE string.
      DATA(t465) = |unused_methods|.
      t464 = t465.
      DATA t466 TYPE string.
      DATA(t467) = |Unused methods|.
      t466 = t467.
      DATA t468 TYPE string.
      DATA(t469) = |Checks for unused methods|.
      t468 = t469.
      DATA t470 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t470.
      DATA t471 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t471.
      DATA(t472) = abap_true.
      IF t472 = abap_true.
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
        t471 = t474.
      ELSE.
        DATA t475 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t475.
        t471 = t475.
      ENDIF.
      t470 = t471.
      DATA t476 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t476.
      DATA t477 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t477.
      DATA(t478) = abap_true.
      IF t478 = abap_true.
        DATA t479 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t480 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t481 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t481.
        t480 = t481.
        DATA(t482) = t480.
        DATA(t483) = |Quickfix|.
        t482->load( ).
        APPEND t483 TO t482->items.
        t482->save( ).
        DATA(t484) = t480.
        t479 = t484.
        t477 = t479.
      ELSE.
        DATA t485 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t485.
        t477 = t485.
      ENDIF.
      t476 = t477.
      DATA t486 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t486.
      DATA t487 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t487.
      DATA(t488) = abap_true.
      IF t488 = abap_true.
        DATA(t489) = |##CALLED|.
        DATA(t490) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t490->has = abap_true.
        t490->value = t489.
        t487 = t490.
      ELSE.
        DATA t491 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t491.
        t487 = t491.
      ENDIF.
      t486 = t487.
      DATA t492 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t492.
      DATA t493 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t493.
      DATA(t494) = abap_true.
      IF t494 = abap_true.
        DATA(t495) = |EC CALLED|.
        DATA(t496) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t496->has = abap_true.
        t496->value = t495.
        t493 = t496.
      ELSE.
        DATA t497 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t497.
        t493 = t497.
      ENDIF.
      t492 = t493.
      DATA t498 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t499 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t499.
      t498 = t499.
      DATA t500 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t501 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t501.
      t500 = t501.
      t463 = NEW zcl_lnt_irule_metadata( i_key = t464 i_title = t466 i_short_description = t468 i_bad_example = t498 i_good_example = t500 i_extended_information = t470 i_tags = t476 i_pragma = t486 i_pseudo_comment = t492 ).
      CREATE OBJECT t463->zlnt_view_ownkeys_b0e8086400eb.
      t463->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t502 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t502.
      IF t463->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t463->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t502 ).
      ENDIF.
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
      DATA(t509) = |key|.
      DATA t510 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t510.
      IF t463->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t463->zlnt_json_ownkeys_70e5fd461788->put( p0 = t509 p1 = t510 ).
      ENDIF.
      DATA(t511) = |title|.
      DATA t512 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t512.
      IF t463->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t463->zlnt_json_ownkeys_70e5fd461788->put( p0 = t511 p1 = t512 ).
      ENDIF.
      DATA(t513) = |shortDescription|.
      DATA t514 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t514.
      IF t463->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t463->zlnt_json_ownkeys_70e5fd461788->put( p0 = t513 p1 = t514 ).
      ENDIF.
      DATA(t515) = |extendedInformation|.
      DATA t516 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t516.
      IF t463->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t463->zlnt_json_ownkeys_70e5fd461788->put( p0 = t515 p1 = t516 ).
      ENDIF.
      DATA(t517) = |tags|.
      DATA t518 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t518.
      IF t463->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t463->zlnt_json_ownkeys_70e5fd461788->put( p0 = t517 p1 = t518 ).
      ENDIF.
      DATA(t519) = |pragma|.
      DATA t520 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t520.
      IF t463->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t463->zlnt_json_ownkeys_70e5fd461788->put( p0 = t519 p1 = t520 ).
      ENDIF.
      DATA(t521) = |pseudoComment|.
      DATA t522 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t522.
      IF t463->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t463->zlnt_json_ownkeys_70e5fd461788->put( p0 = t521 p1 = t522 ).
      ENDIF.
      t462 = t463->key.
      DATA t523 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t524) = me->conf.
      t523 = t524->zlnt_view_read_sr_15c06369f827( ).
      DATA(t525) = t336.
      t458 = zcl_lnt_issue=>at_identifier( i_identifier = t459 i_message_26cb = t461 i_key = t462 i_severity = t523 i_fix = t525 ).
      t457->load( ).
      APPEND t458 TO t457->items.
      t457->save( ).
    ENDDO.
    DATA(t526) = t189.
    result = t526.

  ENDMETHOD.

  METHOD has_sub_class.
    DATA(t1) = i_obj_1ed0.
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = VALUE abap_bool( ).
    DATA(t4) = t1.
    t3 = xsdbool( t4 IS BOUND AND t4 IS INSTANCE OF zcl_lnt_class ).
    t2 = xsdbool( t3 = abap_false ).
    IF t2 = abap_true.
      DATA(t5) = abap_false.
      result = t5.
      RETURN.
    ENDIF.
    DATA(t6) = VALUE abap_bool( ).
    DATA t7 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t7.
    DATA t8 TYPE REF TO zif_lnt_class_definition.
    CLEAR t8.
    DATA t9 TYPE REF TO zif_lnt_class_definition.
    CLEAR t9.
    DATA t10 TYPE REF TO zcl_lnt_class.
    CLEAR t10.
    DATA(t11) = t1.
    t10 ?= t11.
    t9 = t10->gt_dfn_ins_src_obj_cls_ts_clss( ).
    t8 = t9.
    DATA t12 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t12.
    DATA(t13) = VALUE abap_bool( ).
    DATA(t14) = t8.
    IF t14 IS INITIAL.
      t13 = abap_true.
    ENDIF.
    IF t13 = abap_true.
      DATA t15 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t15.
      t12 = t15.
    ELSE.
      DATA(t16) = VALUE abap_bool( ).
      DATA t17 TYPE REF TO zif_lnt_class_definition.
      CLEAR t17.
      DATA(t18) = t8.
      t17 = t18.
      t16 = t17->is_final( ).
      DATA(t19) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t19->has = abap_true.
      t19->value = t16.
      t12 = t19.
    ENDIF.
    t7 = t12.
    DATA t20 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t20.
    DATA(t21) = abap_true.
    IF t21 = abap_true.
      DATA(t22) = abap_true.
      DATA(t23) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t23->has = abap_true.
      t23->value = t22.
      t20 = t23.
    ELSE.
      DATA t24 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t24.
      t20 = t24.
    ENDIF.
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
      DATA(t27) = abap_false.
      result = t27.
      RETURN.
    ENDIF.
    DATA t28 TYPE REF TO zif_lnt_generator_8f73cd1c.
    CLEAR t28.
    DATA t29 TYPE REF TO zif_lnt_generator_8f73cd1c.
    CLEAR t29.
    DATA t30 TYPE REF TO zif_lnt_generator_8f73cd1c.
    CLEAR t30.
    DATA(t31) = me->reg.
    t30 = t31->get_objects( ).
    t29 = t30->iterate( ).
    t28 = t29.
    DO.
      DATA(t32) = abap_true.
      IF t32 = abap_false.
        EXIT.
      ENDIF.
      DATA t33 TYPE REF TO zcl_lnt_generator_17955b8b.
      CLEAR t33.
      DATA t34 TYPE REF TO zcl_lnt_generator_17955b8b.
      CLEAR t34.
      DATA(t35) = t28.
      t34 = t35->next( ).
      t33 = t34.
      DATA(t36) = VALUE abap_bool( ).
      DATA(t37) = t33.
      t36 = t37->done.
      IF t36 = abap_true.
        EXIT.
      ENDIF.
      DATA t38 TYPE REF TO zif_lnt_object.
      CLEAR t38.
      DATA t39 TYPE REF TO zif_lnt_object.
      CLEAR t39.
      DATA t40 TYPE REF TO zif_lnt_object.
      CLEAR t40.
      DATA(t41) = t33.
      t40 = t41->value.
      t39 = t40.
      t38 = t39.
      DATA(t42) = VALUE abap_bool( ).
      DATA(t43) = VALUE abap_bool( ).
      DATA(t44) = VALUE abap_bool( ).
      DATA(t45) = abap_false.
      t44 = t45.
      DATA t46 TYPE REF TO cx_root.
      CLEAR t46.
      TRY.
          DATA(t47) = VALUE abap_bool( ).
          DATA(t48) = VALUE abap_bool( ).
          DATA(t49) = t38.
          t48 = xsdbool( t49 IS BOUND AND t49 IS INSTANCE OF zcl_lnt_class ).
          t47 = t48.
          IF t48 = abap_true.
            DATA(t50) = VALUE abap_bool( ).
            DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t51.
            DATA t52 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t52.
            DATA t53 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t53.
            DATA t54 TYPE REF TO zif_lnt_class_definition.
            CLEAR t54.
            DATA t55 TYPE REF TO zif_lnt_class_definition.
            CLEAR t55.
            DATA t56 TYPE REF TO zcl_lnt_class.
            CLEAR t56.
            DATA(t57) = t38.
            DATA t58 TYPE REF TO object.
            CLEAR t58.
            t58 = t57.
            t56 ?= t58.
            t55 = t56->gt_dfn_ins_src_obj_cls_ts_clss( ).
            t54 = t55.
            DATA t59 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t59.
            DATA(t60) = VALUE abap_bool( ).
            DATA(t61) = t54.
            IF t61 IS INITIAL.
              t60 = abap_true.
            ENDIF.
            IF t60 = abap_true.
              DATA t62 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t62.
              t59 = t62.
            ELSE.
              DATA t63 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t63.
              DATA t64 TYPE REF TO zif_lnt_class_definition.
              CLEAR t64.
              DATA(t65) = t54.
              t64 = t65.
              t63 = t64->get_super_class( ).
              t59 = t63.
            ENDIF.
            t53 = t59.
            t52 = t53.
            DATA t66 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t66.
            DATA(t67) = VALUE abap_bool( ).
            DATA(t68) = t52.
            IF t68 IS INITIAL.
              t67 = abap_true.
            ELSEIF t68->has = abap_false.
              t67 = abap_true.
            ENDIF.
            IF t67 = abap_true.
              DATA t69 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t69.
              t66 = t69.
            ELSE.
              DATA(t70) = VALUE string( ).
              DATA(t71) = VALUE string( ).
              DATA(t72) = t52.
              t71 = t72->value.
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
            DATA(t76) = abap_true.
            IF t76 = abap_true.
              DATA(t77) = VALUE string( ).
              DATA(t78) = VALUE string( ).
              DATA t79 TYPE REF TO zcl_lnt_abstract_object.
              CLEAR t79.
              DATA t80 TYPE REF TO zcl_lnt_class.
              CLEAR t80.
              DATA(t81) = t1.
              t80 ?= t81.
              t79 = t80.
              DATA(t82) = VALUE string( ).
              DATA(t83) = t79.
              t82 = t83->name.
              t78 = t82.
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
            ELSE.
              DATA t86 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t86.
              t75 = t86.
            ENDIF.
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
          DATA(t89) = abap_true.
          t44 = t89.
        CATCH cx_root INTO t46.
          DATA(t90) = VALUE abap_bool( ).
          DATA(t91) = t44.
          t90 = xsdbool( t91 = abap_false ).
          IF t90 = abap_true.
            DATA(t92) = t28.
            t92->close( ).
          ENDIF.
          RAISE EXCEPTION t46.
      ENDTRY.
      DATA(t93) = VALUE abap_bool( ).
      DATA(t94) = t44.
      t93 = xsdbool( t94 = abap_false ).
      IF t93 = abap_true.
        DATA(t95) = t28.
        t95->close( ).
      ENDIF.
      DATA(t96) = t43.
      t42 = t96.
      IF t42 = abap_true.
        DATA(t97) = VALUE abap_bool( ).
        DATA(t98) = abap_true.
        t97 = t98.
        DATA(t99) = t28.
        t99->close( ).
        DATA(t100) = t97.
        result = t100.
        RETURN.
      ENDIF.
    ENDDO.
    DATA(t101) = abap_false.
    result = t101.

  ENDMETHOD.

  METHOD find_method_implementation.
    DATA(t1) = i_method.
    DATA(t2) = i_file.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t5.
    DATA t6 TYPE REF TO zcl_lnt_structure_node.
    DATA t7 TYPE REF TO zcl_lnt_structure_node.
    DATA t8 TYPE REF TO zcl_lnt_abap_file.
    DATA(t9) = t2.
    t8 = t9.
    DATA t10 TYPE REF TO zcl_lnt_structure_node.
    DATA(t11) = t8.
    t10 = t11->structure.
    t7 = t10.
    t6 = t7.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t12.
    DATA(t13) = VALUE abap_bool( ).
    DATA(t14) = t6.
    IF t14 IS INITIAL.
      t13 = abap_true.
    ENDIF.
    IF t13 = abap_true.
      DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t15.
      t12 = t15.
    ELSE.
      DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t17 TYPE REF TO zcl_lnt_structure_node.
      DATA(t18) = t6.
      t17 = t18.
      DATA(t19) = zlnt_runtime_desc_78196487750d=>zlnt_member_d702_c1c9b120591c.
      t16 = t17->find_all_structures( i_type_9913 = t19 ).
      t12 = t16.
    ENDIF.
    t5 = t12.
    t4 = t5.
    DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t20.
    DATA t21 TYPE abap_bool.
    DATA(t22) = t4.
    t21 = xsdbool( t22 IS BOUND ).
    IF t21 = abap_true.
      DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t24) = t4.
      t23 = t24.
      t20 = t23.
    ELSE.
      DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t25.
      t20 = t25.
    ENDIF.
    t3 = t20.
    DATA t26 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t26.
    DATA t27 TYPE REF TO object.
    CLEAR t27.
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
      DATA(t32) = t26.
      DATA(t33) = zlnt_runtime_desc_78196487750d=>zlnt_member_d721_06b6159f9afc.
      t31 = t32->find_all_structures( i_type_9913 = t33 ).
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
        DATA(t40) = VALUE string( ).
        DATA t41 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t41.
        DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t42.
        DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t43.
        DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t44.
        DATA t45 TYPE REF TO zcl_lnt_expression_node.
        DATA t46 TYPE REF TO zcl_lnt_expression_node.
        DATA(t47) = t34.
        DATA(t48) = zlnt_runtime_desc_78196487750d=>zlnt_member_d88_73c97f542216fb.
        t46 = t47->find_first_expression( i_type_9913 = t48 ).
        t45 = t46.
        DATA t49 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t49.
        DATA(t50) = VALUE abap_bool( ).
        DATA(t51) = t45.
        IF t51 IS INITIAL.
          t50 = abap_true.
        ENDIF.
        IF t50 = abap_true.
          DATA t52 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t52.
          t49 = t52.
        ELSE.
          DATA t53 TYPE string.
          DATA t54 TYPE REF TO zcl_lnt_expression_node.
          DATA(t55) = t45.
          t54 = t55.
          t53 = t54->concat_tokens( ).
          DATA(t56) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t56->has = abap_true.
          t56->value = t53.
          t49 = t56.
        ENDIF.
        t44 = t49.
        t43 = t44.
        DATA t57 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t57.
        DATA(t58) = VALUE abap_bool( ).
        DATA(t59) = t43.
        IF t59 IS INITIAL.
          t58 = abap_true.
        ELSEIF t59->has = abap_false.
          t58 = abap_true.
        ENDIF.
        IF t58 = abap_true.
          DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t60.
          t57 = t60.
        ELSE.
          DATA t61 TYPE string.
          DATA t62 TYPE string.
          DATA(t63) = t43.
          t62 = t63->value.
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
        t42 = t57.
        t41 = t42.
        DATA(t66) = VALUE string( ).
        DATA(t67) = VALUE abap_bool( ).
        DATA(t68) = t41.
        IF t68 IS BOUND.
          IF t68->has = abap_true.
            t67 = xsdbool( strlen( t68->value ) > 0 ).
          ENDIF.
        ENDIF.
        IF t67 = abap_true.
          DATA t69 TYPE string.
          DATA(t70) = t41.
          t69 = t70->value.
          t66 = t69.
        ELSE.
          DATA(t71) = ||.
          t66 = t71.
        ENDIF.
        t40 = t66.
        t39 = t40.
        DATA(t72) = VALUE abap_bool( ).
        DATA(t73) = t39.
        DATA t74 TYPE string.
        DATA t75 TYPE string.
        DATA(t76) = t1.
        t75 = t76->name.
        DATA(t77) = strlen( t75 ).
        t74 = t75.
        IF t74 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t74 TO UPPER CASE.
        ELSE.
          t74 = zlnt_runtime_uppe_91169605024d=>full( t74 ).
        ENDIF.
        t72 = xsdbool( t73 <> t74 ).
        IF t72 = abap_true.
          CONTINUE.
        ENDIF.
        DATA t78 TYPE REF TO zcl_lnt_structure_node.
        CLEAR t78.
        DATA(t79) = abap_true.
        IF t79 = abap_true.
          DATA(t80) = t34.
          t78 = t80.
        ELSE.
          DATA t81 TYPE REF TO zcl_lnt_structure_node.
          CLEAR t81.
          t78 = t81.
        ENDIF.
        result = t78.
        RETURN.
      ENDDO.
    ENDDO.
    DATA t82 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t82.
    result = t82.

  ENDMETHOD.

  METHOD suppressedby_pseudo.
    DATA(t1) = i_statement.
    DATA(t2) = i_file.
    DATA(t3) = VALUE abap_bool( ).
    DATA t4 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t4.
    DATA(t5) = t1.
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    t6 = t7.
    DATA(t8) = VALUE abap_bool( ).
    DATA(t9) = t4.
    IF t9 IS INITIAL.
      t8 = abap_true.
    ENDIF.
    t3 = t8.
    IF t3 = abap_true.
      DATA(t10) = abap_false.
      result = t10.
      RETURN.
    ENDIF.
    DATA(t11) = VALUE abap_bool( ).
    DATA t12 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t12.
    DATA(t13) = t2.
    t12 = t13.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t15.
    t14 = t15.
    DATA(t16) = VALUE abap_bool( ).
    DATA(t17) = t12.
    IF t17 IS INITIAL.
      t16 = abap_true.
    ENDIF.
    t11 = t16.
    IF t11 = abap_true.
      DATA(t18) = abap_false.
      result = t18.
      RETURN.
    ENDIF.
    DATA(t19) = VALUE abap_bool( ).
    DATA(t20) = abap_false.
    t19 = t20.
    DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t21.
    DATA t22 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t22.
    DATA(t23) = t2.
    t22 = t23.
    DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t24.
    DATA(t25) = t22.
    t24 = t25->statements.
    t21 = t24.
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
        CLEAR t30.
        t30 = t29->as_ref( ).
        t26 ?= t30.
      ELSE.
        t26 ?= t27.
      ENDIF.
      DATA(t31) = VALUE abap_bool( ).
      DATA(t32) = VALUE abap_bool( ).
      DATA(t33) = t19.
      DATA(t34) = abap_true.
      t32 = xsdbool( t33 = t34 ).
      t31 = t32.
      IF t32 = abap_true.
        DATA(t35) = VALUE abap_bool( ).
        DATA t36 TYPE REF TO zif_lnt_statement.
        CLEAR t36.
        DATA(t37) = t26.
        t36 = t37->gt_in_sr_ab_nd_st_nd_ts_stt_nd( ).
        t35 = xsdbool( t36 IS BOUND AND t36 IS INSTANCE OF zcl_lnt_st_comment ).
        t31 = t35.
      ENDIF.
      IF t31 = abap_true.
        DATA(t38) = VALUE abap_bool( ).
        DATA(t39) = VALUE i( ).
        DATA(t40) = VALUE string( ).
        DATA(t41) = t26.
        t40 = t41->concat_tokens( ).
        DATA(t42) = VALUE string( ).
        DATA(t43) = VALUE string( ).
        DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t44.
        DATA t45 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t45.
        DATA t46 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t46.
        DATA(t47) = VALUE string( ).
        DATA(t48) = |unused_methods|.
        t47 = t48.
        DATA(t49) = VALUE string( ).
        DATA(t50) = |Unused methods|.
        t49 = t50.
        DATA(t51) = VALUE string( ).
        DATA(t52) = |Checks for unused methods|.
        t51 = t52.
        DATA t53 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t53.
        DATA t54 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t54.
        DATA(t55) = abap_true.
        IF t55 = abap_true.
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
          t54 = t57.
        ELSE.
          DATA t58 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t58.
          t54 = t58.
        ENDIF.
        t53 = t54.
        DATA t59 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t59.
        DATA t60 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t60.
        DATA(t61) = abap_true.
        IF t61 = abap_true.
          DATA t62 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t62.
          DATA t63 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t63.
          DATA t64 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t64.
          CREATE OBJECT t64.
          t63 = t64.
          DATA(t65) = t63.
          DATA(t66) = |Quickfix|.
          t65->load( ).
          APPEND t66 TO t65->items.
          t65->save( ).
          DATA(t67) = t63.
          t62 = t67.
          t60 = t62.
        ELSE.
          DATA t68 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t68.
          t60 = t68.
        ENDIF.
        t59 = t60.
        DATA t69 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t69.
        DATA t70 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t70.
        DATA(t71) = abap_true.
        IF t71 = abap_true.
          DATA(t72) = |##CALLED|.
          DATA(t73) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t73->has = abap_true.
          t73->value = t72.
          t70 = t73.
        ELSE.
          DATA t74 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t74.
          t70 = t74.
        ENDIF.
        t69 = t70.
        DATA t75 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t75.
        DATA t76 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t76.
        DATA(t77) = abap_true.
        IF t77 = abap_true.
          DATA(t78) = |EC CALLED|.
          DATA(t79) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t79->has = abap_true.
          t79->value = t78.
          t76 = t79.
        ELSE.
          DATA t80 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t80.
          t76 = t80.
        ENDIF.
        t75 = t76.
        DATA t81 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t81.
        DATA t82 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t82.
        t81 = t82.
        DATA t83 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t83.
        DATA t84 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t84.
        t83 = t84.
        t46 = NEW zcl_lnt_irule_metadata( i_key = t47 i_title = t49 i_short_description = t51 i_bad_example = t81 i_good_example = t83 i_extended_information = t53 i_tags = t59 i_pragma = t69 i_pseudo_comment = t75 ).
        CREATE OBJECT t46->zlnt_view_ownkeys_b0e8086400eb.
        t46->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t85.
        IF t46->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t46->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t85 ).
        ENDIF.
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
        DATA(t92) = |key|.
        DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t93.
        IF t46->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t46->zlnt_json_ownkeys_70e5fd461788->put( p0 = t92 p1 = t93 ).
        ENDIF.
        DATA(t94) = |title|.
        DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t95.
        IF t46->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t46->zlnt_json_ownkeys_70e5fd461788->put( p0 = t94 p1 = t95 ).
        ENDIF.
        DATA(t96) = |shortDescription|.
        DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t97.
        IF t46->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t46->zlnt_json_ownkeys_70e5fd461788->put( p0 = t96 p1 = t97 ).
        ENDIF.
        DATA(t98) = |extendedInformation|.
        DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t99.
        IF t46->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t46->zlnt_json_ownkeys_70e5fd461788->put( p0 = t98 p1 = t99 ).
        ENDIF.
        DATA(t100) = |tags|.
        DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t101.
        IF t46->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t46->zlnt_json_ownkeys_70e5fd461788->put( p0 = t100 p1 = t101 ).
        ENDIF.
        DATA(t102) = |pragma|.
        DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t103.
        IF t46->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t46->zlnt_json_ownkeys_70e5fd461788->put( p0 = t102 p1 = t103 ).
        ENDIF.
        DATA(t104) = |pseudoComment|.
        DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t105.
        IF t46->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t46->zlnt_json_ownkeys_70e5fd461788->put( p0 = t104 p1 = t105 ).
        ENDIF.
        t45 = t46->pseudo_comment.
        t44 = t45.
        DATA(t106) = VALUE string( ).
        DATA(t107) = VALUE abap_bool( ).
        DATA(t108) = t44.
        IF t108 IS INITIAL.
          t107 = abap_true.
        ELSEIF t108->has = abap_false.
          t107 = abap_true.
        ENDIF.
        IF t107 = abap_true.
          DATA(t109) = |undefined|.
          t106 = t109.
        ELSE.
          DATA(t110) = VALUE string( ).
          DATA(t111) = t44.
          t110 = t111->value.
          t106 = t110.
        ENDIF.
        t43 = t106.
        DATA(t112) = ||.
        DATA(t113) = strlen( t43 ).
        t42 = |{ t43 }{ t112 }|.
        DATA(t114) = strlen( t40 ).
        IF t42 IS INITIAL.
          t39 = 0.
        ELSE.
          FIND t42 IN t40 MATCH OFFSET t39.
          IF sy-subrc <> 0.
            t39 = -1.
          ENDIF.
        ENDIF.
        DATA(t115) = 0.
        t38 = xsdbool( t39 >= t115 ).
        result = t38.
        RETURN.
      ENDIF.
      DATA(t116) = VALUE abap_bool( ).
      DATA(t117) = t26.
      DATA t118 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t118.
      DATA(t119) = t1.
      t118 = t119.
      DATA t120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t120.
      DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t121.
      CLEAR t120.
      IF t117 IS BOUND.
        DATA t122 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t122.
        DATA t123 TYPE REF TO object.
        CLEAR t123.
        CLEAR t122.
        t123 = t117.
        TRY.
            t120 ?= t123.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t120 IS NOT BOUND.
          TRY.
              t122 ?= t117.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t122 IS BOUND.
            t120 = t122->source( ).
          ENDIF.
          IF t120 IS NOT BOUND.
            CREATE OBJECT t120.
            t120->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t120->oval = t117.
          ENDIF.
        ENDIF.
      ENDIF.
      CLEAR t121.
      IF t118 IS BOUND.
        DATA t124 TYPE REF TO zlnt_view_storage_74017ca272ac.
        CLEAR t124.
        DATA t125 TYPE REF TO object.
        CLEAR t125.
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
        DATA(t126) = abap_true.
        t19 = t126.
      ENDIF.
    ENDDO.
    DATA(t127) = abap_false.
    result = t127.

  ENDMETHOD.

  METHOD search_global_subclasses.
    DATA(t1) = i_obj_1ed0.
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = VALUE abap_bool( ).
    DATA(t4) = VALUE abap_bool( ).
    DATA(t5) = VALUE i( ).
    DATA(t6) = VALUE f( ).
    DATA t7 TYPE REF TO zcl_lnt_rl_unused_methods_w_ar.
    CLEAR t7.
    DATA(t8) = me->wa.
    t7 = t8.
    DATA(t9) = VALUE f( ).
    DATA(t10) = VALUE i( ).
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t11.
    DATA(t12) = t7.
    t11 = t12->list.
    t11->load( ).
    t10 = lines( t11->items ).
    t9 = t10.
    t6 = t9.
    t5 = t6.
    DATA(t13) = 0.
    t4 = xsdbool( t5 = t13 ).
    t3 = t4.
    IF t4 = abap_false.
      DATA(t14) = VALUE abap_bool( ).
      DATA(t15) = VALUE abap_bool( ).
      DATA(t16) = t1.
      t15 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_class ).
      t14 = xsdbool( t15 = abap_false ).
      t3 = t14.
    ENDIF.
    t2 = t3.
    IF t3 = abap_false.
      DATA(t17) = VALUE abap_bool( ).
      DATA(t18) = VALUE abap_bool( ).
      DATA(t19) = me->wa.
      t18 = t19->contains_proteted( ).
      DATA(t20) = abap_false.
      t17 = xsdbool( t18 = t20 ).
      t2 = t17.
    ENDIF.
    IF t2 = abap_true.
      RETURN.
    ENDIF.
    DATA t21 TYPE REF TO zif_lnt_class_definition.
    CLEAR t21.
    DATA t22 TYPE REF TO zif_lnt_class_definition.
    CLEAR t22.
    DATA t23 TYPE REF TO zcl_lnt_class.
    CLEAR t23.
    DATA(t24) = t1.
    t23 ?= t24.
    t22 = t23->gt_dfn_ins_src_obj_cls_ts_clss( ).
    t21 = t22.
    DATA(t25) = VALUE abap_bool( ).
    DATA t26 TYPE REF TO zif_lnt_class_definition.
    CLEAR t26.
    DATA(t27) = t21.
    t26 = t27.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t28.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t29.
    t28 = t29.
    DATA(t30) = VALUE abap_bool( ).
    DATA(t31) = t26.
    IF t31 IS INITIAL.
      t30 = abap_true.
    ENDIF.
    t25 = t30.
    IF t25 = abap_true.
      RETURN.
    ENDIF.
    DATA t32 TYPE REF TO zif_lnt_generator_8f73cd1c.
    CLEAR t32.
    DATA t33 TYPE REF TO zif_lnt_generator_8f73cd1c.
    CLEAR t33.
    DATA t34 TYPE REF TO zif_lnt_generator_8f73cd1c.
    CLEAR t34.
    DATA(t35) = me->reg.
    t34 = t35->get_objects( ).
    t33 = t34->iterate( ).
    t32 = t33.
    DO.
      DATA(t36) = abap_true.
      IF t36 = abap_false.
        EXIT.
      ENDIF.
      DATA t37 TYPE REF TO zcl_lnt_generator_17955b8b.
      CLEAR t37.
      DATA t38 TYPE REF TO zcl_lnt_generator_17955b8b.
      CLEAR t38.
      DATA(t39) = t32.
      t38 = t39->next( ).
      t37 = t38.
      DATA(t40) = VALUE abap_bool( ).
      DATA(t41) = t37.
      t40 = t41->done.
      IF t40 = abap_true.
        EXIT.
      ENDIF.
      DATA t42 TYPE REF TO zif_lnt_object.
      CLEAR t42.
      DATA t43 TYPE REF TO zif_lnt_object.
      CLEAR t43.
      DATA t44 TYPE REF TO zif_lnt_object.
      CLEAR t44.
      DATA(t45) = t37.
      t44 = t45->value.
      t43 = t44.
      t42 = t43.
      DATA(t46) = VALUE abap_bool( ).
      DATA(t47) = VALUE abap_bool( ).
      DATA(t48) = VALUE abap_bool( ).
      DATA(t49) = abap_false.
      t48 = t49.
      DATA t50 TYPE REF TO cx_root.
      CLEAR t50.
      TRY.
          DATA(t51) = VALUE abap_bool( ).
          DATA(t52) = VALUE abap_bool( ).
          DATA(t53) = t42.
          t52 = xsdbool( t53 IS BOUND AND t53 IS INSTANCE OF zcl_lnt_class ).
          t51 = t52.
          IF t52 = abap_true.
            DATA(t54) = VALUE abap_bool( ).
            DATA t55 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t55.
            DATA t56 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t56.
            DATA t57 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t57.
            DATA t58 TYPE REF TO zif_lnt_class_definition.
            CLEAR t58.
            DATA t59 TYPE REF TO zif_lnt_class_definition.
            CLEAR t59.
            DATA t60 TYPE REF TO zcl_lnt_class.
            CLEAR t60.
            DATA(t61) = t42.
            DATA t62 TYPE REF TO object.
            CLEAR t62.
            t62 = t61.
            t60 ?= t62.
            t59 = t60->gt_dfn_ins_src_obj_cls_ts_clss( ).
            t58 = t59.
            DATA t63 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t63.
            DATA(t64) = VALUE abap_bool( ).
            DATA(t65) = t58.
            IF t65 IS INITIAL.
              t64 = abap_true.
            ENDIF.
            IF t64 = abap_true.
              DATA t66 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t66.
              t63 = t66.
            ELSE.
              DATA t67 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t67.
              DATA t68 TYPE REF TO zif_lnt_class_definition.
              CLEAR t68.
              DATA(t69) = t58.
              t68 = t69.
              t67 = t68->get_super_class( ).
              t63 = t67.
            ENDIF.
            t57 = t63.
            t56 = t57.
            DATA t70 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t70.
            DATA(t71) = VALUE abap_bool( ).
            DATA(t72) = t56.
            IF t72 IS INITIAL.
              t71 = abap_true.
            ELSEIF t72->has = abap_false.
              t71 = abap_true.
            ENDIF.
            IF t71 = abap_true.
              DATA t73 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t73.
              t70 = t73.
            ELSE.
              DATA(t74) = VALUE string( ).
              DATA(t75) = VALUE string( ).
              DATA(t76) = t56.
              t75 = t76->value.
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
            DATA(t80) = abap_true.
            IF t80 = abap_true.
              DATA(t81) = VALUE string( ).
              DATA(t82) = VALUE string( ).
              DATA t83 TYPE REF TO zif_lnt_class_definition.
              CLEAR t83.
              DATA(t84) = t21.
              t83 = t84.
              t82 = t83->get_name( ).
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
            ELSE.
              DATA t87 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t87.
              t79 = t87.
            ENDIF.
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
          DATA(t90) = abap_true.
          t48 = t90.
        CATCH cx_root INTO t50.
          DATA(t91) = VALUE abap_bool( ).
          DATA(t92) = t48.
          t91 = xsdbool( t92 = abap_false ).
          IF t91 = abap_true.
            DATA(t93) = t32.
            t93->close( ).
          ENDIF.
          RAISE EXCEPTION t50.
      ENDTRY.
      DATA(t94) = VALUE abap_bool( ).
      DATA(t95) = t48.
      t94 = xsdbool( t95 = abap_false ).
      IF t94 = abap_true.
        DATA(t96) = t32.
        t96->close( ).
      ENDIF.
      DATA(t97) = t47.
      t46 = t97.
      IF t46 = abap_true.
        DATA t98 TYPE REF TO zcl_lnt_isyntax_result.
        CLEAR t98.
        DATA t99 TYPE REF TO zcl_lnt_isyntax_result.
        CLEAR t99.
        DATA t100 TYPE REF TO zcl_lnt_isyntax_result.
        CLEAR t100.
        DATA(t101) = VALUE abap_bool( ).
        DATA(t102) = abap_false.
        t101 = t102.
        DATA t103 TYPE REF TO cx_root.
        CLEAR t103.
        TRY.
            DATA t104 TYPE REF TO zcl_lnt_isyntax_result.
            CLEAR t104.
            DATA t105 TYPE REF TO zcl_lnt_syntax_logic.
            CLEAR t105.
            DATA(t106) = me->reg.
            DATA t107 TYPE REF TO zcl_lnt_class.
            CLEAR t107.
            DATA(t108) = t42.
            DATA t109 TYPE REF TO object.
            CLEAR t109.
            t109 = t108.
            t107 ?= t109.
            t105 = NEW zcl_lnt_syntax_logic( i_reg_f149 = t106 i_object_19cd = t107 ).
            t104 = t105->run( ).
            t100 = t104.
            DATA(t110) = abap_true.
            t101 = t110.
          CATCH cx_root INTO t103.
            DATA(t111) = VALUE abap_bool( ).
            DATA(t112) = t101.
            t111 = xsdbool( t112 = abap_false ).
            IF t111 = abap_true.
              DATA(t113) = t32.
              t113->close( ).
            ENDIF.
            RAISE EXCEPTION t103.
        ENDTRY.
        DATA(t114) = VALUE abap_bool( ).
        DATA(t115) = t101.
        t114 = xsdbool( t115 = abap_false ).
        IF t114 = abap_true.
          DATA(t116) = t32.
          t116->close( ).
        ENDIF.
        DATA(t117) = t100.
        t99 = t117.
        t98 = t99.
        DATA(t118) = VALUE abap_bool( ).
        DATA(t119) = abap_false.
        t118 = t119.
        DATA t120 TYPE REF TO cx_root.
        CLEAR t120.
        TRY.
            DATA t121 TYPE REF TO zif_lnt_spaghetti_scope_node.
            CLEAR t121.
            DATA t122 TYPE REF TO zif_lnt_spaghetti_scope.
            CLEAR t122.
            DATA(t123) = t98.
            t122 = t123->zlnt_view_read_sr_b6b1d9e0c93e( ).
            t121 = t122->get_top( ).
            me->traverse( i_node = t121 ).
            DATA(t124) = abap_true.
            t118 = t124.
          CATCH cx_root INTO t120.
            DATA(t125) = VALUE abap_bool( ).
            DATA(t126) = t118.
            t125 = xsdbool( t126 = abap_false ).
            IF t125 = abap_true.
              DATA(t127) = t32.
              t127->close( ).
            ENDIF.
            RAISE EXCEPTION t120.
        ENDTRY.
        DATA(t128) = VALUE abap_bool( ).
        DATA(t129) = t118.
        t128 = xsdbool( t129 = abap_false ).
        IF t128 = abap_true.
          DATA(t130) = t32.
          t130->close( ).
        ENDIF.
        DATA(t131) = VALUE abap_bool( ).
        DATA(t132) = abap_false.
        t131 = t132.
        DATA t133 TYPE REF TO cx_root.
        CLEAR t133.
        TRY.
            DATA t134 TYPE REF TO zcl_lnt_class.
            CLEAR t134.
            DATA(t135) = t42.
            DATA t136 TYPE REF TO object.
            CLEAR t136.
            t136 = t135.
            t134 ?= t136.
            me->search_global_subclasses( i_obj_1ed0 = t134 ).
            DATA(t137) = abap_true.
            t131 = t137.
          CATCH cx_root INTO t133.
            DATA(t138) = VALUE abap_bool( ).
            DATA(t139) = t131.
            t138 = xsdbool( t139 = abap_false ).
            IF t138 = abap_true.
              DATA(t140) = t32.
              t140->close( ).
            ENDIF.
            RAISE EXCEPTION t133.
        ENDTRY.
        DATA(t141) = VALUE abap_bool( ).
        DATA(t142) = t131.
        t141 = xsdbool( t142 = abap_false ).
        IF t141 = abap_true.
          DATA(t143) = t32.
          t143->close( ).
        ENDIF.
      ENDIF.
    ENDDO.
  ENDMETHOD.

  METHOD traverse.
    DATA(t1) = i_node.
    DATA t2 TYPE abap_bool.
    DATA t3 TYPE string.
    DATA t4 TYPE REF TO zcl_lnt_iscope_identifier.
    DATA(t5) = t1.
    t4 = t5->get_identifier( ).
    t3 = t4->stype.
    DATA(t6) = |_builtin|.
    t2 = xsdbool( t3 <> t6 ).
    IF t2 = abap_true.
      DATA(t7) = t1.
      me->check_node( i_node = t7 ).
    ENDIF.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t9) = t1.
    t8 = t9->get_children( ).
    DATA t10 TYPE REF TO zif_lnt_spaghetti_scope_node.
    CLEAR t10.
    DATA t11 TYPE REF TO object.
    CLEAR t11.
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
      DATA(t15) = t10.
      me->traverse( i_node = t15 ).
    ENDDO.
  ENDMETHOD.

  METHOD check_node.
    DATA(t1) = i_node.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zcl_lnt_iscope_data.
    DATA(t4) = t1.
    t3 = t4->get_data( ).
    t2 = t3->references.
    DATA t5 TYPE REF TO zcl_lnt_ireference.
    CLEAR t5.
    DATA t6 TYPE REF TO object.
    CLEAR t6.
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
      DATA t12 TYPE string.
      DATA(t13) = t5.
      t12 = t13->reference_type.
      DATA(t14) = |Method|.
      t11 = xsdbool( t12 = t14 ).
      t10 = t11.
      IF t11 = abap_true.
        DATA t15 TYPE abap_bool.
        DATA t16 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t17) = t5.
        t16 = t17->resolved.
        t15 = xsdbool( t16 IS BOUND ).
        t10 = t15.
      ENDIF.
      IF t10 = abap_true.
        DATA(t18) = me->wa.
        DATA t19 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t20 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t21) = t5.
        t20 = t21->resolved.
        t19 = t20.
        t18->remove_if_exists( i_id = t19 ).
      ENDIF.
    ENDDO.
  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_unused_methods_conf( me->gt_cn_in_sr_rl_un_mt_ts_un_mth( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_unused_methods_conf( me->gt_cn_in_sr_rl_un_mt_ts_un_mth( ) ).
  ENDMETHOD.

  METHOD set_config.
    DATA(t1) = i_conf.
    DATA t2 TYPE REF TO zcl_lnt_unused_methods_conf.
    CLEAR t2.
    DATA(t3) = t1.
    CLEAR t2.
    IF t3 IS BOUND.
      IF t3->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        TRY.
            t2 ?= t3->oval.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
      ENDIF.
      IF t2 IS NOT BOUND.
        IF t3->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t4 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t4.
          IF t3->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
          ENDIF.
          TRY.
              t4 ?= t3->oval.
            CATCH cx_sy_move_cast_error.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
          ENDTRY.
          IF t4->structural( ) <> abap_true.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
          ENDIF.
        ENDIF.
        t2 = NEW zcl_lnt_unused_methods_conf( view_source = t3 ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_un_mt_ts_un_mth( i_conf = t2 ).
  ENDMETHOD.

  METHOD initialize.
    DATA(t1) = i_reg_f149.
    DATA t2 TYPE REF TO zcl_lnt_unused_methods.
    DATA(t3) = t1.
    t2 = me->in_in_sr_rl_uns_mth_ts_uns_mth( i_reg_f149 = t3 ).
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
