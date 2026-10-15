* TS: src/rules/uncaught_exception.ts:25:1 UncaughtException
CLASS zcl_lnt_uncaught_exception DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_uncght_excptn_cnf.
    DATA global_exceptions TYPE REF TO zlnt_runtime_map__70f58d75267f.
    DATA local_exceptions TYPE REF TO zlnt_runtime_map__70f58d75267f.
    DATA issues TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA sinked TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA syntax TYPE REF TO zcl_lnt_isyntax_result.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS gt_cn_in_sr_rl_un_ex_ts_un_exc RETURNING VALUE(result) TYPE REF TO zcl_lnt_uncght_excptn_cnf.
    METHODS in_in_sr_rl_unc_exc_ts_unc_exc IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO zcl_lnt_uncaught_exception.
    METHODS st_cn_in_sr_rl_un_ex_ts_un_exc IMPORTING i_conf TYPE REF TO zcl_lnt_uncght_excptn_cnf.
    METHODS run_parsed REDEFINITION.
    METHODS traverse IMPORTING i_n_0c97 TYPE REF TO zif_lnt_union_8249fcb1 i_file TYPE REF TO zcl_lnt_abap_file.
    METHODS check_bf6e IMPORTING i_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 i_n_0c97 TYPE REF TO zcl_lnt_statement_node i_file TYPE REF TO zcl_lnt_abap_file.
    METHODS check_for_method_calls IMPORTING i_n_0c97 TYPE REF TO zcl_lnt_statement_node i_file TYPE REF TO zcl_lnt_abap_file.
    METHODS find_constructor IMPORTING i_def TYPE REF TO zif_lnt_class_definition i_scope TYPE REF TO zif_lnt_spaghetti_scope_node RETURNING VALUE(result) TYPE REF TO zcl_lnt_method_definition.
    METHODS add_from_try_structure IMPORTING i_s TYPE REF TO zcl_lnt_structure_node.
    METHODS set_sinked_from_method IMPORTING i_s TYPE REF TO zcl_lnt_statement_node i_file TYPE REF TO zcl_lnt_abap_file.
    METHODS is_sinked IMPORTING i_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE abap_bool.
    METHODS find_global_exceptions.
    METHODS find_local_exceptions IMPORTING i_obj_1ed0 TYPE REF TO zcl_lnt_abap_object.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS initialize REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_uncaught_exception IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_uncght_excptn_cnf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t2.
    me->issues = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `issues`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |uncaught_exception|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Uncaught Exception|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |Checks for uncaught static exception|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = |Does not report any issues if the code contains syntax error|.
      t11 = t11 && |s|.
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
      DATA(t21) = |Syntax|.
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
    DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t25.
    t24 = t25.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t27.
    t26 = t27.
    DATA t28 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t29.
    t28 = t29.
    DATA t30 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t31.
    t30 = t31.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t24 i_good_example = t26 i_extended_information = t8 i_tags = t14 i_pragma = t28 i_pseudo_comment = t30 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t32.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t32 ).
    ENDIF.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t33.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t33 ).
    ENDIF.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t34.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t34 ).
    ENDIF.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t35 ).
    ENDIF.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t36.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t36 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t37) = |key|.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t37 p1 = t38 ).
    ENDIF.
    DATA(t39) = |title|.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t39 p1 = t40 ).
    ENDIF.
    DATA(t41) = |shortDescription|.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t41 p1 = t42 ).
    ENDIF.
    DATA(t43) = |extendedInformation|.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t44.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t43 p1 = t44 ).
    ENDIF.
    DATA(t45) = |tags|.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t46.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t45 p1 = t46 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD gt_cn_in_sr_rl_un_ex_ts_un_exc.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD in_in_sr_rl_unc_exc_ts_unc_exc.
    DATA(t1) = i_reg_f149.
    DATA(t2) = t1.
    DATA(t3) = CAST zif_lnt_rule( me->initialize( i_reg_f149 = t2 ) ).
    result ?= t3.

  ENDMETHOD.

  METHOD st_cn_in_sr_rl_un_ex_ts_un_exc.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = i_file.
    DATA(t2) = i_obj_1ed0.
    DATA t3 TYPE abap_bool.
    DATA t4 TYPE string.
    DATA(t5) = t2.
    t4 = t5->get_type( ).
    DATA(t6) = |INTF|.
    t3 = xsdbool( t4 = t6 ).
    IF t3 = abap_true.
      DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t7.
      result = t7.
      RETURN.
    ENDIF.
    DATA t8 TYPE abap_bool.
    DATA t9 TYPE abap_bool.
    DATA(t10) = t2.
    t9 = xsdbool( t10 IS BOUND AND t10 IS INSTANCE OF zcl_lnt_ob_program ).
    t8 = t9.
    IF t9 = abap_true.
      DATA t11 TYPE abap_bool.
      DATA t12 TYPE abap_bool.
      DATA t13 TYPE REF TO zcl_lnt_ob_program.
      DATA t14 TYPE REF TO zcl_lnt_ob_program.
      DATA(t15) = t2.
      t14 ?= t15.
      t13 = t14.
      DATA t16 TYPE abap_bool.
      DATA(t17) = t13.
      t17->parse_xml( ).
      DATA t18 TYPE abap_bool.
      DATA t19 TYPE REF TO zcl_lnt_shape_d77da4ed.
      DATA t20 TYPE REF TO zcl_lnt_shape_d77da4ed.
      DATA(t21) = t13.
      t20 = t21->parsed_xml.
      t19 = t20.
      t18 = t19->is_include.
      t16 = t18.
      t12 = t16.
      DATA(t22) = abap_true.
      t11 = xsdbool( t12 = t22 ).
      t8 = t11.
    ENDIF.
    IF t8 = abap_true.
      DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t23.
      result = t23.
      RETURN.
    ENDIF.
    DATA t24 TYPE REF TO zcl_lnt_structure_node.
    DATA t25 TYPE REF TO zcl_lnt_structure_node.
    DATA t26 TYPE REF TO zcl_lnt_abap_file.
    DATA(t27) = t1.
    t26 = t27.
    DATA t28 TYPE REF TO zcl_lnt_structure_node.
    DATA(t29) = t26.
    t28 = t29->structure.
    t25 = t28.
    t24 = t25.
    DATA(t30) = VALUE abap_bool( ).
    DATA t31 TYPE REF TO zcl_lnt_structure_node.
    DATA(t32) = t24.
    t31 = t32.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t34.
    t33 = t34.
    DATA(t35) = VALUE abap_bool( ).
    DATA(t36) = t31.
    IF t36 IS INITIAL.
      t35 = abap_true.
    ENDIF.
    t30 = t35.
    IF t30 = abap_true.
      DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t37.
      result = t37.
      RETURN.
    ENDIF.
    DATA(t38) = t2.
    me->find_local_exceptions( i_obj_1ed0 = t38 ).
    DATA t39 TYPE REF TO zcl_lnt_isyntax_result.
    DATA t40 TYPE REF TO zcl_lnt_syntax_logic.
    DATA(t41) = me->reg.
    DATA(t42) = t2.
    t40 = NEW zcl_lnt_syntax_logic( i_reg_f149 = t41 i_object_19cd = t42 ).
    t39 = t40->run( ).
    me->syntax = t39.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `syntax`.
    DATA t43 TYPE abap_bool.
    DATA t44 TYPE i.
    DATA t45 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t46) = me->syntax.
    t45 = t46->zlnt_view_read_sr_bd188c319c03( ).
    t45->load( ).
    t44 = lines( t45->items ).
    DATA(t47) = 0.
    t43 = xsdbool( t44 > t47 ).
    IF t43 = abap_true.
      DATA t48 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t48.
      result = t48.
      RETURN.
    ENDIF.
    DATA t49 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t49.
    me->issues = t49.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `issues`.
    DATA t50 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t50.
    me->sinked = t50.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `sinked`.
    DATA t51 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t52 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t53 TYPE REF TO zcl_lnt_abstract_node.
    DATA t54 TYPE REF TO zcl_lnt_structure_node.
    DATA(t55) = t24.
    t54 = t55.
    t53 = t54.
    DATA t56 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t57) = t53.
    t56 = t57->children.
    t52 = t56.
    t51 ?= t52.
    DATA t58 TYPE REF TO zif_lnt_union_8249fcb1.
    CLEAR t58.
    DATA t59 TYPE REF TO object.
    CLEAR t59.
    DATA(t60) = VALUE i( ).
    DO.
      t51->load( ).
      IF t60 >= lines( t51->items ).
        EXIT.
      ENDIF.
      CLEAR t59.
      READ TABLE t51->items INDEX t60 + 1 INTO t59.
      t60 = t60 + 1.
      DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t61.
      CLEAR t58.
      IF t59 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t61 ?= t59.
        DATA t62 TYPE REF TO object.
        t62 = t61->as_ref( ).
        t58 ?= t62.
      ELSE.
        t58 ?= t59.
      ENDIF.
      DATA(t63) = t58.
      DATA(t64) = t1.
      me->traverse( i_n_0c97 = t63 i_file = t64 ).
    ENDDO.
    DATA(t65) = me->issues.
    result = t65.

  ENDMETHOD.

  METHOD traverse.
    DATA(t1) = i_n_0c97.
    DATA(t2) = i_file.
    DATA t3 TYPE REF TO zif_lnt_union_dc0fb493.
    DATA t4 TYPE REF TO zif_lnt_union_dc0fb493.
    DATA t5 TYPE REF TO object.
    DATA(t6) = t1.
    t5 = t6->get_db65( ).
    DATA t7 TYPE REF TO object.
    t7 = t5.
    t4 ?= t7.
    t3 = t4.
    DATA t8 TYPE abap_bool.
    DATA t9 TYPE abap_bool.
    DATA(t10) = t3.
    t9 = xsdbool( t10 IS BOUND AND t10 IS INSTANCE OF zcl_lnt_sr_class_definition ).
    t8 = t9.
    IF t9 = abap_false.
      DATA t11 TYPE abap_bool.
      DATA(t12) = t3.
      t11 = xsdbool( t12 IS BOUND AND t12 IS INSTANCE OF zcl_lnt_sr_interface ).
      t8 = t11.
    ENDIF.
    IF t8 = abap_true.
      RETURN.
    ENDIF.
    DATA t13 TYPE abap_bool.
    DATA(t14) = t1.
    t13 = xsdbool( t14 IS BOUND AND t14 IS INSTANCE OF zcl_lnt_structure_node ).
    IF t13 = abap_true.
      DATA t15 TYPE abap_bool.
      DATA(t16) = t3.
      t15 = xsdbool( t16 IS BOUND AND t16 IS INSTANCE OF zcl_lnt_sr_try ).
      IF t15 = abap_true.
        DATA t17 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t17.
        DATA t18 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t18.
        DATA t19 TYPE abap_bool.
        DATA(t20) = me->sinked.
        t19 = xsdbool( t20 IS BOUND ).
        IF t19 = abap_true.
          DATA t21 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t21.
          DATA(t22) = abap_true.
          IF t22 = abap_true.
            DATA t23 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t24 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA(t25) = me->sinked.
            t24 = t25.
            t23 = t24->slice0( ).
            t21 = t23.
          ELSE.
            DATA t26 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t26.
            t21 = t26.
          ENDIF.
          t18 = t21.
        ELSE.
          DATA t27 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t27.
          t18 = t27.
        ENDIF.
        t17 = t18.
        DATA t28 TYPE REF TO zcl_lnt_structure_node.
        DATA(t29) = t1.
        DATA t30 TYPE REF TO object.
        t30 = t29.
        t28 ?= t30.
        me->add_from_try_structure( i_s = t28 ).
        DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t31.
        DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t32.
        DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t33.
        DATA t34 TYPE REF TO zcl_lnt_structure_node.
        DATA t35 TYPE REF TO zcl_lnt_structure_node.
        DATA t36 TYPE REF TO zcl_lnt_structure_node.
        DATA(t37) = t1.
        DATA t38 TYPE REF TO object.
        t38 = t37.
        t36 ?= t38.
        DATA(t39) = zlnt_runtime_desc_78196487750d=>zlnt_member_d704_640ee0c36424.
        t35 = t36->find_direct_structure( i_type_9913 = t39 ).
        t34 = t35.
        DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t40.
        DATA(t41) = VALUE abap_bool( ).
        DATA(t42) = t34.
        IF t42 IS INITIAL.
          t41 = abap_true.
        ENDIF.
        IF t41 = abap_true.
          DATA t43 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t43.
          t40 = t43.
        ELSE.
          DATA t44 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t45 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t46 TYPE REF TO zcl_lnt_abstract_node.
          DATA t47 TYPE REF TO zcl_lnt_structure_node.
          DATA(t48) = t34.
          t47 = t48.
          t46 = t47.
          DATA t49 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t50) = t46.
          t49 = t50->children.
          t45 = t49.
          t44 ?= t45.
          t40 = t44.
        ENDIF.
        t33 = t40.
        t32 = t33.
        DATA t51 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t51.
        DATA t52 TYPE abap_bool.
        DATA(t53) = t32.
        t52 = xsdbool( t53 IS BOUND ).
        IF t52 = abap_true.
          DATA t54 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t55) = t32.
          t54 = t55.
          t51 = t54.
        ELSE.
          DATA t56 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CREATE OBJECT t56.
          t51 = t56.
        ENDIF.
        t31 = t51.
        DATA t57 TYPE REF TO zif_lnt_union_8249fcb1.
        CLEAR t57.
        DATA t58 TYPE REF TO object.
        CLEAR t58.
        DATA(t59) = VALUE i( ).
        DO.
          t31->load( ).
          IF t59 >= lines( t31->items ).
            EXIT.
          ENDIF.
          CLEAR t58.
          READ TABLE t31->items INDEX t59 + 1 INTO t58.
          t59 = t59 + 1.
          DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t60.
          CLEAR t57.
          IF t58 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t60 ?= t58.
            DATA t61 TYPE REF TO object.
            t61 = t60->as_ref( ).
            t57 ?= t61.
          ELSE.
            t57 ?= t58.
          ENDIF.
          DATA(t62) = t57.
          DATA(t63) = t2.
          me->traverse( i_n_0c97 = t62 i_file = t63 ).
        ENDDO.
        DATA(t64) = t17.
        me->sinked = t64.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `sinked`.
        DATA t65 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t66 TYPE REF TO zcl_lnt_structure_node.
        DATA(t67) = t1.
        DATA t68 TYPE REF TO object.
        t68 = t67.
        t66 ?= t68.
        DATA(t69) = zlnt_runtime_desc_78196487750d=>zlnt_member_d712_8689fb760a6c.
        t65 = t66->find_direct_structures( i_type_9913 = t69 ).
        DATA t70 TYPE REF TO zcl_lnt_structure_node.
        CLEAR t70.
        DATA t71 TYPE REF TO object.
        CLEAR t71.
        DATA(t72) = VALUE i( ).
        DO.
          t65->load( ).
          IF t72 >= lines( t65->items ).
            EXIT.
          ENDIF.
          CLEAR t71.
          READ TABLE t65->items INDEX t72 + 1 INTO t71.
          t72 = t72 + 1.
          DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t73.
          CLEAR t70.
          IF t71 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t73 ?= t71.
            DATA t74 TYPE REF TO object.
            t74 = t73->as_ref( ).
            t70 ?= t74.
          ELSE.
            t70 ?= t71.
          ENDIF.
          DATA t75 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t76 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t77 TYPE REF TO zcl_lnt_abstract_node.
          DATA(t78) = t70.
          t77 = t78.
          DATA t79 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t80) = t77.
          t79 = t80->children.
          t76 = t79.
          t75 ?= t76.
          DATA t81 TYPE REF TO zif_lnt_union_8249fcb1.
          CLEAR t81.
          DATA t82 TYPE REF TO object.
          CLEAR t82.
          DATA(t83) = VALUE i( ).
          DO.
            t75->load( ).
            IF t83 >= lines( t75->items ).
              EXIT.
            ENDIF.
            CLEAR t82.
            READ TABLE t75->items INDEX t83 + 1 INTO t82.
            t83 = t83 + 1.
            DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t84.
            CLEAR t81.
            IF t82 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t84 ?= t82.
              DATA t85 TYPE REF TO object.
              t85 = t84->as_ref( ).
              t81 ?= t85.
            ELSE.
              t81 ?= t82.
            ENDIF.
            DATA(t86) = t81.
            DATA(t87) = t2.
            me->traverse( i_n_0c97 = t86 i_file = t87 ).
          ENDDO.
        ENDDO.
        DATA t88 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t88.
        DATA t89 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t89.
        DATA t90 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t90.
        DATA t91 TYPE REF TO zcl_lnt_structure_node.
        DATA t92 TYPE REF TO zcl_lnt_structure_node.
        DATA t93 TYPE REF TO zcl_lnt_structure_node.
        DATA(t94) = t1.
        DATA t95 TYPE REF TO object.
        t95 = t94.
        t93 ?= t95.
        DATA(t96) = zlnt_runtime_desc_78196487750d=>zlnt_member_d722_b01ebc20127f.
        t92 = t93->find_direct_structure( i_type_9913 = t96 ).
        t91 = t92.
        DATA t97 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t97.
        DATA(t98) = VALUE abap_bool( ).
        DATA(t99) = t91.
        IF t99 IS INITIAL.
          t98 = abap_true.
        ENDIF.
        IF t98 = abap_true.
          DATA t100 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t100.
          t97 = t100.
        ELSE.
          DATA t101 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t102 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t103 TYPE REF TO zcl_lnt_abstract_node.
          DATA t104 TYPE REF TO zcl_lnt_structure_node.
          DATA(t105) = t91.
          t104 = t105.
          t103 = t104.
          DATA t106 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t107) = t103.
          t106 = t107->children.
          t102 = t106.
          t101 ?= t102.
          t97 = t101.
        ENDIF.
        t90 = t97.
        t89 = t90.
        DATA t108 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t108.
        DATA t109 TYPE abap_bool.
        DATA(t110) = t89.
        t109 = xsdbool( t110 IS BOUND ).
        IF t109 = abap_true.
          DATA t111 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t112) = t89.
          t111 = t112.
          t108 = t111.
        ELSE.
          DATA t113 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CREATE OBJECT t113.
          t108 = t113.
        ENDIF.
        t88 = t108.
        DATA t114 TYPE REF TO zif_lnt_union_8249fcb1.
        CLEAR t114.
        DATA t115 TYPE REF TO object.
        CLEAR t115.
        DATA(t116) = VALUE i( ).
        DO.
          t88->load( ).
          IF t116 >= lines( t88->items ).
            EXIT.
          ENDIF.
          CLEAR t115.
          READ TABLE t88->items INDEX t116 + 1 INTO t115.
          t116 = t116 + 1.
          DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t117.
          CLEAR t114.
          IF t115 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t117 ?= t115.
            DATA t118 TYPE REF TO object.
            t118 = t117->as_ref( ).
            t114 ?= t118.
          ELSE.
            t114 ?= t115.
          ENDIF.
          DATA(t119) = t114.
          DATA(t120) = t2.
          me->traverse( i_n_0c97 = t119 i_file = t120 ).
        ENDDO.
      ELSE.
        DATA t121 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t122 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t123 TYPE REF TO zcl_lnt_abstract_node.
        DATA t124 TYPE REF TO zcl_lnt_structure_node.
        DATA(t125) = t1.
        DATA t126 TYPE REF TO object.
        t126 = t125.
        t124 ?= t126.
        t123 = t124.
        DATA t127 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t128) = t123.
        t127 = t128->children.
        t122 = t127.
        t121 ?= t122.
        DATA t129 TYPE REF TO zif_lnt_union_8249fcb1.
        CLEAR t129.
        DATA t130 TYPE REF TO object.
        CLEAR t130.
        DATA(t131) = VALUE i( ).
        DO.
          t121->load( ).
          IF t131 >= lines( t121->items ).
            EXIT.
          ENDIF.
          CLEAR t130.
          READ TABLE t121->items INDEX t131 + 1 INTO t130.
          t131 = t131 + 1.
          DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t132.
          CLEAR t129.
          IF t130 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t132 ?= t130.
            DATA t133 TYPE REF TO object.
            t133 = t132->as_ref( ).
            t129 ?= t133.
          ELSE.
            t129 ?= t130.
          ENDIF.
          DATA(t134) = t129.
          DATA(t135) = t2.
          me->traverse( i_n_0c97 = t134 i_file = t135 ).
        ENDDO.
      ENDIF.
    ELSE.
      DATA t136 TYPE abap_bool.
      DATA(t137) = t1.
      t136 = xsdbool( t137 IS BOUND AND t137 IS INSTANCE OF zcl_lnt_statement_node ).
      IF t136 = abap_true.
        DATA t138 TYPE abap_bool.
        DATA(t139) = t3.
        t138 = xsdbool( t139 IS BOUND AND t139 IS INSTANCE OF zcl_lnt_st_mthd_implmnttn ).
        IF t138 = abap_true.
          DATA t140 TYPE REF TO zcl_lnt_statement_node.
          DATA(t141) = t1.
          DATA t142 TYPE REF TO object.
          t142 = t141.
          t140 ?= t142.
          DATA(t143) = t2.
          me->set_sinked_from_method( i_s = t140 i_file = t143 ).
        ELSE.
          DATA t144 TYPE abap_bool.
          DATA(t145) = t3.
          t144 = xsdbool( t145 IS BOUND AND t145 IS INSTANCE OF zcl_lnt_end_method ).
          IF t144 = abap_true.
            DATA t146 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t146.
            me->sinked = t146.
            DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `sinked`.
          ELSE.
            DATA t147 TYPE abap_bool.
            DATA(t148) = t3.
            t147 = xsdbool( t148 IS BOUND AND t148 IS INSTANCE OF zcl_lnt_st_form ).
            IF t147 = abap_true.
              DATA t149 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t149.
              DATA(t150) = abap_true.
              IF t150 = abap_true.
                DATA t151 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CREATE OBJECT t151.
                t149 = t151.
              ELSE.
                DATA t152 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CLEAR t152.
                t149 = t152.
              ENDIF.
              me->sinked = t149.
              DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `sinked`.
              DATA t153 TYPE REF TO zcl_lnt_expression_node.
              DATA t154 TYPE REF TO zcl_lnt_expression_node.
              DATA t155 TYPE REF TO zcl_lnt_statement_node.
              DATA(t156) = t1.
              DATA t157 TYPE REF TO object.
              t157 = t156.
              t155 ?= t157.
              DATA(t158) = zlnt_runtime_desc_78196487750d=>zlnt_member_d190_8da19a9c3edb.
              t154 = t155->find_direct_expression( i_type_9913 = t158 ).
              t153 = t154.
              DATA t159 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t159.
              DATA t160 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t160.
              DATA t161 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t161.
              DATA t162 TYPE REF TO zcl_lnt_expression_node.
              DATA(t163) = t153.
              t162 = t163.
              DATA t164 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t164.
              DATA(t165) = VALUE abap_bool( ).
              DATA(t166) = t162.
              IF t166 IS INITIAL.
                t165 = abap_true.
              ENDIF.
              IF t165 = abap_true.
                DATA t167 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                CLEAR t167.
                t164 = t167.
              ELSE.
                DATA t168 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                DATA t169 TYPE REF TO zcl_lnt_expression_node.
                DATA(t170) = t162.
                t169 = t170.
                DATA(t171) = zlnt_runtime_desc_78196487750d=>zlnt_member_d116_84f27914b88c.
                t168 = t169->find_all_expressions( i_type_9913 = t171 ).
                t164 = t168.
              ENDIF.
              t161 = t164.
              t160 = t161.
              DATA t172 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t172.
              DATA t173 TYPE abap_bool.
              DATA(t174) = t160.
              t173 = xsdbool( t174 IS BOUND ).
              IF t173 = abap_true.
                DATA t175 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                DATA(t176) = t160.
                t175 = t176.
                t172 = t175.
              ELSE.
                DATA t177 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                CREATE OBJECT t177.
                t172 = t177.
              ENDIF.
              t159 = t172.
              DATA t178 TYPE REF TO zcl_lnt_expression_node.
              CLEAR t178.
              DATA t179 TYPE REF TO object.
              CLEAR t179.
              DATA(t180) = VALUE i( ).
              DO.
                t159->load( ).
                IF t180 >= lines( t159->items ).
                  EXIT.
                ENDIF.
                CLEAR t179.
                READ TABLE t159->items INDEX t180 + 1 INTO t179.
                t180 = t180 + 1.
                DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t181.
                CLEAR t178.
                IF t179 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
                  t181 ?= t179.
                  DATA t182 TYPE REF TO object.
                  t182 = t181->as_ref( ).
                  t178 ?= t182.
                ELSE.
                  t178 ?= t179.
                ENDIF.
                DATA t183 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                DATA(t184) = me->sinked.
                t183 = t184.
                DATA t185 TYPE string.
                DATA t186 TYPE string.
                DATA(t187) = t178.
                t186 = t187->concat_tokens( ).
                DATA(t188) = strlen( t186 ).
                t185 = t186.
                IF t185 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                  TRANSLATE t185 TO UPPER CASE.
                ELSE.
                  t185 = zlnt_runtime_uppe_91169605024d=>full( t185 ).
                ENDIF.
                t183->load( ).
                APPEND t185 TO t183->items.
                t183->save( ).
              ENDDO.
            ELSE.
              DATA t189 TYPE abap_bool.
              DATA(t190) = t3.
              t189 = xsdbool( t190 IS BOUND AND t190 IS INSTANCE OF zcl_lnt_end_form ).
              IF t189 = abap_true.
                DATA t191 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CLEAR t191.
                me->sinked = t191.
                DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `sinked`.
              ELSE.
                DATA t192 TYPE abap_bool.
                DATA(t193) = t3.
                t192 = xsdbool( t193 IS BOUND AND t193 IS INSTANCE OF zcl_lnt_st_raise ).
                IF t192 = abap_true.
                  DATA t194 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  DATA t195 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t195.
                  t194 = t195.
                  DATA(t196) = VALUE string( ).
                  DATA t197 TYPE string.
                  DATA t198 TYPE string.
                  DATA t199 TYPE REF TO zcl_lnt_statement_node.
                  DATA(t200) = t1.
                  DATA t201 TYPE REF TO object.
                  t201 = t200.
                  t199 ?= t201.
                  t198 = t199->concat_tokens( ).
                  DATA(t202) = strlen( t198 ).
                  t197 = t198.
                  IF t197 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                    TRANSLATE t197 TO UPPER CASE.
                  ELSE.
                    t197 = zlnt_runtime_uppe_91169605024d=>full( t197 ).
                  ENDIF.
                  t196 = t197.
                  DATA(t203) = VALUE abap_bool( ).
                  DATA(t204) = t196.
                  DATA(t205) = |RAISE EXCEPTION TYPE |.
                  DATA(t206) = strlen( t204 ).
                  DATA t207 TYPE i.
                  DATA(t208) = VALUE i( ).
                  DATA(t209) = VALUE string( ).
                  t207 = strlen( t205 ).
                  IF t207 = 0.
                    t203 = abap_true.
                  ELSEIF t207 <= t206.
                    t208 = 0.
                    t209 = t204+t208(t207).
                    IF t209 = t205.
                      t203 = abap_true.
                    ENDIF.
                  ENDIF.
                  IF t203 = abap_true.
                    DATA t210 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t210.
                    DATA t211 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t211.
                    DATA t212 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t212.
                    DATA t213 TYPE REF TO zcl_lnt_abstract_token.
                    CLEAR t213.
                    DATA t214 TYPE REF TO zcl_lnt_abstract_token.
                    CLEAR t214.
                    DATA t215 TYPE REF TO zcl_lnt_expression_node.
                    DATA t216 TYPE REF TO zcl_lnt_expression_node.
                    DATA t217 TYPE REF TO zcl_lnt_statement_node.
                    DATA(t218) = t1.
                    DATA t219 TYPE REF TO object.
                    t219 = t218.
                    t217 ?= t219.
                    DATA(t220) = zlnt_runtime_desc_78196487750d=>zlnt_member_d116_84f27914b88c.
                    t216 = t217->find_first_expression( i_type_9913 = t220 ).
                    t215 = t216.
                    DATA t221 TYPE REF TO zcl_lnt_abstract_token.
                    CLEAR t221.
                    DATA(t222) = VALUE abap_bool( ).
                    DATA(t223) = t215.
                    IF t223 IS INITIAL.
                      t222 = abap_true.
                    ENDIF.
                    IF t222 = abap_true.
                      DATA t224 TYPE REF TO zcl_lnt_abstract_token.
                      CLEAR t224.
                      t221 = t224.
                    ELSE.
                      DATA t225 TYPE REF TO zcl_lnt_abstract_token.
                      DATA t226 TYPE REF TO zcl_lnt_expression_node.
                      DATA(t227) = t215.
                      t226 = t227.
                      t225 = t226->get_first_token( ).
                      t221 = t225.
                    ENDIF.
                    t214 = t221.
                    t213 = t214.
                    DATA t228 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t228.
                    DATA(t229) = VALUE abap_bool( ).
                    DATA(t230) = t213.
                    IF t230 IS INITIAL.
                      t229 = abap_true.
                    ENDIF.
                    IF t229 = abap_true.
                      DATA t231 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t231.
                      t228 = t231.
                    ELSE.
                      DATA t232 TYPE string.
                      DATA t233 TYPE REF TO zcl_lnt_abstract_token.
                      DATA t234 TYPE REF TO zcl_lnt_abstract_token.
                      DATA(t235) = t213.
                      t234 = t235.
                      t233 = t234.
                      DATA t236 TYPE string.
                      DATA(t237) = t233.
                      t236 = t237->str.
                      t232 = t236.
                      DATA(t238) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t238->has = abap_true.
                      t238->value = t232.
                      t228 = t238.
                    ENDIF.
                    t212 = t228.
                    t211 = t212.
                    DATA t239 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t239.
                    DATA(t240) = VALUE abap_bool( ).
                    DATA(t241) = t211.
                    IF t241 IS INITIAL.
                      t240 = abap_true.
                    ELSEIF t241->has = abap_false.
                      t240 = abap_true.
                    ENDIF.
                    IF t240 = abap_true.
                      DATA t242 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t242.
                      t239 = t242.
                    ELSE.
                      DATA t243 TYPE string.
                      DATA t244 TYPE string.
                      DATA(t245) = t211.
                      t244 = t245->value.
                      DATA(t246) = strlen( t244 ).
                      t243 = t244.
                      IF t243 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                        TRANSLATE t243 TO UPPER CASE.
                      ELSE.
                        t243 = zlnt_runtime_uppe_91169605024d=>full( t243 ).
                      ENDIF.
                      DATA(t247) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t247->has = abap_true.
                      t247->value = t243.
                      t239 = t247.
                    ENDIF.
                    t210 = t239.
                    t194 = t210.
                  ELSE.
                    DATA(t248) = VALUE abap_bool( ).
                    DATA(t249) = t196.
                    DATA(t250) = |RAISE EXCEPTION NEW |.
                    DATA(t251) = strlen( t249 ).
                    DATA t252 TYPE i.
                    DATA(t253) = VALUE i( ).
                    DATA(t254) = VALUE string( ).
                    t252 = strlen( t250 ).
                    IF t252 = 0.
                      t248 = abap_true.
                    ELSEIF t252 <= t251.
                      t253 = 0.
                      t254 = t249+t253(t252).
                      IF t254 = t250.
                        t248 = abap_true.
                      ENDIF.
                    ENDIF.
                    IF t248 = abap_true.
                      DATA t255 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t255.
                      DATA t256 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t256.
                      DATA t257 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t257.
                      DATA t258 TYPE REF TO zcl_lnt_abstract_token.
                      CLEAR t258.
                      DATA t259 TYPE REF TO zcl_lnt_abstract_token.
                      CLEAR t259.
                      DATA t260 TYPE REF TO zcl_lnt_expression_node.
                      CLEAR t260.
                      DATA t261 TYPE REF TO zcl_lnt_expression_node.
                      CLEAR t261.
                      DATA t262 TYPE REF TO zcl_lnt_expression_node.
                      DATA t263 TYPE REF TO zcl_lnt_expression_node.
                      DATA t264 TYPE REF TO zcl_lnt_statement_node.
                      DATA(t265) = t1.
                      DATA t266 TYPE REF TO object.
                      t266 = t265.
                      t264 ?= t266.
                      DATA(t267) = zlnt_runtime_desc_78196487750d=>zlnt_member_d224_4e54f441ad62.
                      t263 = t264->find_first_expression( i_type_9913 = t267 ).
                      t262 = t263.
                      DATA t268 TYPE REF TO zcl_lnt_expression_node.
                      CLEAR t268.
                      DATA(t269) = VALUE abap_bool( ).
                      DATA(t270) = t262.
                      IF t270 IS INITIAL.
                        t269 = abap_true.
                      ENDIF.
                      IF t269 = abap_true.
                        DATA t271 TYPE REF TO zcl_lnt_expression_node.
                        CLEAR t271.
                        t268 = t271.
                      ELSE.
                        DATA t272 TYPE REF TO zcl_lnt_expression_node.
                        DATA t273 TYPE REF TO zcl_lnt_expression_node.
                        DATA(t274) = t262.
                        t273 = t274.
                        DATA(t275) = zlnt_runtime_desc_78196487750d=>zlnt_member_d111_4d9698a8e1bf.
                        t272 = t273->find_first_expression( i_type_9913 = t275 ).
                        t268 = t272.
                      ENDIF.
                      t261 = t268.
                      t260 = t261.
                      DATA t276 TYPE REF TO zcl_lnt_abstract_token.
                      CLEAR t276.
                      DATA(t277) = VALUE abap_bool( ).
                      DATA(t278) = t260.
                      IF t278 IS INITIAL.
                        t277 = abap_true.
                      ENDIF.
                      IF t277 = abap_true.
                        DATA t279 TYPE REF TO zcl_lnt_abstract_token.
                        CLEAR t279.
                        t276 = t279.
                      ELSE.
                        DATA t280 TYPE REF TO zcl_lnt_abstract_token.
                        DATA t281 TYPE REF TO zcl_lnt_expression_node.
                        DATA(t282) = t260.
                        t281 = t282.
                        t280 = t281->get_first_token( ).
                        t276 = t280.
                      ENDIF.
                      t259 = t276.
                      t258 = t259.
                      DATA t283 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t283.
                      DATA(t284) = VALUE abap_bool( ).
                      DATA(t285) = t258.
                      IF t285 IS INITIAL.
                        t284 = abap_true.
                      ENDIF.
                      IF t284 = abap_true.
                        DATA t286 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t286.
                        t283 = t286.
                      ELSE.
                        DATA t287 TYPE string.
                        DATA t288 TYPE REF TO zcl_lnt_abstract_token.
                        DATA t289 TYPE REF TO zcl_lnt_abstract_token.
                        DATA(t290) = t258.
                        t289 = t290.
                        t288 = t289.
                        DATA t291 TYPE string.
                        DATA(t292) = t288.
                        t291 = t292->str.
                        t287 = t291.
                        DATA(t293) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                        t293->has = abap_true.
                        t293->value = t287.
                        t283 = t293.
                      ENDIF.
                      t257 = t283.
                      t256 = t257.
                      DATA t294 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t294.
                      DATA(t295) = VALUE abap_bool( ).
                      DATA(t296) = t256.
                      IF t296 IS INITIAL.
                        t295 = abap_true.
                      ELSEIF t296->has = abap_false.
                        t295 = abap_true.
                      ENDIF.
                      IF t295 = abap_true.
                        DATA t297 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        CLEAR t297.
                        t294 = t297.
                      ELSE.
                        DATA t298 TYPE string.
                        DATA t299 TYPE string.
                        DATA(t300) = t256.
                        t299 = t300->value.
                        DATA(t301) = strlen( t299 ).
                        t298 = t299.
                        IF t298 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                          TRANSLATE t298 TO UPPER CASE.
                        ELSE.
                          t298 = zlnt_runtime_uppe_91169605024d=>full( t298 ).
                        ENDIF.
                        DATA(t302) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                        t302->has = abap_true.
                        t302->value = t298.
                        t294 = t302.
                      ENDIF.
                      t255 = t294.
                      t194 = t255.
                    ENDIF.
                  ENDIF.
                  DATA t303 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  DATA(t304) = t194.
                  t303 = t304.
                  DATA t305 TYPE REF TO zcl_lnt_statement_node.
                  DATA t306 TYPE REF TO zcl_lnt_statement_node.
                  DATA(t307) = t1.
                  DATA t308 TYPE REF TO object.
                  t308 = t307.
                  t306 ?= t308.
                  t305 = t306.
                  DATA t309 TYPE REF TO zcl_lnt_abap_file.
                  DATA(t310) = t2.
                  t309 = t310.
                  DATA t311 TYPE abap_bool.
                  DATA t312 TYPE abap_bool.
                  DATA(t313) = t303.
                  t312 = me->is_sinked( i_name = t313 ).
                  DATA(t314) = abap_false.
                  t311 = xsdbool( t312 = t314 ).
                  IF t311 = abap_true.
                    DATA t315 TYPE REF TO zcl_lnt_issue.
                    CLEAR t315.
                    DATA t316 TYPE REF TO zcl_lnt_issue.
                    CLEAR t316.
                    DATA(t317) = t309.
                    DATA(t318) = t305.
                    DATA(t319) = VALUE string( ).
                    DATA(t320) = |Uncaught exception |.
                    DATA(t321) = VALUE string( ).
                    DATA t322 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    DATA(t323) = t303.
                    t322 = t323.
                    DATA(t324) = VALUE string( ).
                    DATA(t325) = VALUE abap_bool( ).
                    DATA(t326) = t322.
                    IF t326 IS INITIAL.
                      t325 = abap_true.
                    ELSEIF t326->has = abap_false.
                      t325 = abap_true.
                    ENDIF.
                    IF t325 = abap_true.
                      DATA(t327) = |undefined|.
                      t324 = t327.
                    ELSE.
                      DATA t328 TYPE string.
                      DATA(t329) = t322.
                      t328 = t329->value.
                      t324 = t328.
                    ENDIF.
                    t321 = t324.
                    DATA(t330) = strlen( t320 ).
                    t319 = |{ t320 }{ t321 }|.
                    DATA(t331) = VALUE string( ).
                    DATA t332 TYPE REF TO zcl_lnt_irule_metadata.
                    CLEAR t332.
                    DATA t333 TYPE string.
                    DATA(t334) = |uncaught_exception|.
                    t333 = t334.
                    DATA t335 TYPE string.
                    DATA(t336) = |Uncaught Exception|.
                    t335 = t336.
                    DATA t337 TYPE string.
                    DATA(t338) = |Checks for uncaught static exception|.
                    t337 = t338.
                    DATA t339 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t339.
                    DATA t340 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t340.
                    DATA(t341) = abap_true.
                    IF t341 = abap_true.
                      DATA(t342) = |Does not report any issues if the code contains syntax error|.
                      t342 = t342 && |s|.
                      DATA(t343) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                      t343->has = abap_true.
                      t343->value = t342.
                      t340 = t343.
                    ELSE.
                      DATA t344 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t344.
                      t340 = t344.
                    ENDIF.
                    t339 = t340.
                    DATA t345 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                    CLEAR t345.
                    DATA t346 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                    CLEAR t346.
                    DATA(t347) = abap_true.
                    IF t347 = abap_true.
                      DATA t348 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                      DATA t349 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                      DATA t350 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                      CREATE OBJECT t350.
                      t349 = t350.
                      DATA(t351) = t349.
                      DATA(t352) = |Syntax|.
                      t351->load( ).
                      APPEND t352 TO t351->items.
                      t351->save( ).
                      DATA(t353) = t349.
                      t348 = t353.
                      t346 = t348.
                    ELSE.
                      DATA t354 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                      CLEAR t354.
                      t346 = t354.
                    ENDIF.
                    t345 = t346.
                    DATA t355 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    DATA t356 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t356.
                    t355 = t356.
                    DATA t357 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    DATA t358 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t358.
                    t357 = t358.
                    DATA t359 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    DATA t360 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t360.
                    t359 = t360.
                    DATA t361 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    DATA t362 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t362.
                    t361 = t362.
                    t332 = NEW zcl_lnt_irule_metadata( i_key = t333 i_title = t335 i_short_description = t337 i_bad_example = t355 i_good_example = t357 i_extended_information = t339 i_tags = t345 i_pragma = t359 i_pseudo_comment = t361 ).
                    CREATE OBJECT t332->zlnt_view_ownkeys_b0e8086400eb.
                    t332->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA t363 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t363.
                    IF t332->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                      t332->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t363 ).
                    ENDIF.
                    DATA t364 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t364.
                    IF t332->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                      t332->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t364 ).
                    ENDIF.
                    DATA t365 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t365.
                    IF t332->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                      t332->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t365 ).
                    ENDIF.
                    DATA t366 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t366.
                    IF t332->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                      t332->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t366 ).
                    ENDIF.
                    DATA t367 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t367.
                    IF t332->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                      t332->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t367 ).
                    ENDIF.
                    CREATE OBJECT t332->zlnt_json_ownkeys_70e5fd461788.
                    t332->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA(t368) = |key|.
                    DATA t369 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t369.
                    IF t332->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                      t332->zlnt_json_ownkeys_70e5fd461788->put( p0 = t368 p1 = t369 ).
                    ENDIF.
                    DATA(t370) = |title|.
                    DATA t371 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t371.
                    IF t332->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                      t332->zlnt_json_ownkeys_70e5fd461788->put( p0 = t370 p1 = t371 ).
                    ENDIF.
                    DATA(t372) = |shortDescription|.
                    DATA t373 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t373.
                    IF t332->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                      t332->zlnt_json_ownkeys_70e5fd461788->put( p0 = t372 p1 = t373 ).
                    ENDIF.
                    DATA(t374) = |extendedInformation|.
                    DATA t375 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t375.
                    IF t332->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                      t332->zlnt_json_ownkeys_70e5fd461788->put( p0 = t374 p1 = t375 ).
                    ENDIF.
                    DATA(t376) = |tags|.
                    DATA t377 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    CLEAR t377.
                    IF t332->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                      t332->zlnt_json_ownkeys_70e5fd461788->put( p0 = t376 p1 = t377 ).
                    ENDIF.
                    t331 = t332->key.
                    DATA t378 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    DATA(t379) = CAST zcl_lnt_uncght_excptn_cnf( me->gt_cn_in_sr_rl_un_ex_ts_un_exc( ) ).
                    t378 = t379->zlnt_view_read_sr_15c06369f827( ).
                    DATA t380 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
                    CLEAR t380.
                    DATA t381 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                    CLEAR t381.
                    t316 = zcl_lnt_issue=>at_statement( i_file = t317 i_statement = t318 i_message_26cb = t319 i_key = t331 i_severity = t378 i_fix = t380 i_alternative_fixes = t381 ).
                    t315 = t316.
                    DATA(t382) = me->issues.
                    DATA(t383) = t315.
                    t382->load( ).
                    APPEND t383 TO t382->items.
                    t382->save( ).
                  ENDIF.
                ELSE.
                  DATA t384 TYPE abap_bool.
                  DATA(t385) = t3.
                  t384 = xsdbool( t385 IS BOUND AND t385 IS INSTANCE OF zcl_lnt_st_perform ).
                  IF t384 = abap_true.
                  ELSE.
                    DATA t386 TYPE REF TO zcl_lnt_statement_node.
                    DATA(t387) = t1.
                    DATA t388 TYPE REF TO object.
                    t388 = t387.
                    t386 ?= t388.
                    DATA(t389) = t2.
                    me->check_for_method_calls( i_n_0c97 = t386 i_file = t389 ).
                  ENDIF.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
  ENDMETHOD.

  METHOD check_bf6e.
    DATA(t1) = i_name.
    DATA(t2) = i_n_0c97.
    DATA(t3) = i_file.
    DATA t4 TYPE abap_bool.
    DATA t5 TYPE abap_bool.
    DATA(t6) = t1.
    t5 = me->is_sinked( i_name = t6 ).
    DATA(t7) = abap_false.
    t4 = xsdbool( t5 = t7 ).
    IF t4 = abap_true.
      DATA t8 TYPE REF TO zcl_lnt_issue.
      CLEAR t8.
      DATA t9 TYPE REF TO zcl_lnt_issue.
      CLEAR t9.
      DATA(t10) = t3.
      DATA(t11) = t2.
      DATA(t12) = VALUE string( ).
      DATA(t13) = |Uncaught exception |.
      DATA(t14) = VALUE string( ).
      DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t16) = t1.
      t15 = t16.
      DATA(t17) = VALUE string( ).
      DATA(t18) = VALUE abap_bool( ).
      DATA(t19) = t15.
      IF t19 IS INITIAL.
        t18 = abap_true.
      ELSEIF t19->has = abap_false.
        t18 = abap_true.
      ENDIF.
      IF t18 = abap_true.
        DATA(t20) = |undefined|.
        t17 = t20.
      ELSE.
        DATA t21 TYPE string.
        DATA(t22) = t15.
        t21 = t22->value.
        t17 = t21.
      ENDIF.
      t14 = t17.
      DATA(t23) = strlen( t13 ).
      t12 = |{ t13 }{ t14 }|.
      DATA(t24) = VALUE string( ).
      DATA t25 TYPE REF TO zcl_lnt_irule_metadata.
      CLEAR t25.
      DATA t26 TYPE string.
      DATA(t27) = |uncaught_exception|.
      t26 = t27.
      DATA t28 TYPE string.
      DATA(t29) = |Uncaught Exception|.
      t28 = t29.
      DATA t30 TYPE string.
      DATA(t31) = |Checks for uncaught static exception|.
      t30 = t31.
      DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t32.
      DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t33.
      DATA(t34) = abap_true.
      IF t34 = abap_true.
        DATA(t35) = |Does not report any issues if the code contains syntax error|.
        t35 = t35 && |s|.
        DATA(t36) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t36->has = abap_true.
        t36->value = t35.
        t33 = t36.
      ELSE.
        DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t37.
        t33 = t37.
      ENDIF.
      t32 = t33.
      DATA t38 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t38.
      DATA t39 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t39.
      DATA(t40) = abap_true.
      IF t40 = abap_true.
        DATA t41 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t42 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t43 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t43.
        t42 = t43.
        DATA(t44) = t42.
        DATA(t45) = |Syntax|.
        t44->load( ).
        APPEND t45 TO t44->items.
        t44->save( ).
        DATA(t46) = t42.
        t41 = t46.
        t39 = t41.
      ELSE.
        DATA t47 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t47.
        t39 = t47.
      ENDIF.
      t38 = t39.
      DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t49 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t49.
      t48 = t49.
      DATA t50 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t51.
      t50 = t51.
      DATA t52 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t53 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t53.
      t52 = t53.
      DATA t54 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t55 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t55.
      t54 = t55.
      t25 = NEW zcl_lnt_irule_metadata( i_key = t26 i_title = t28 i_short_description = t30 i_bad_example = t48 i_good_example = t50 i_extended_information = t32 i_tags = t38 i_pragma = t52 i_pseudo_comment = t54 ).
      CREATE OBJECT t25->zlnt_view_ownkeys_b0e8086400eb.
      t25->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t56.
      IF t25->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t25->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t56 ).
      ENDIF.
      DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t57.
      IF t25->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t25->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t57 ).
      ENDIF.
      DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t58.
      IF t25->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t25->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t58 ).
      ENDIF.
      DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t59.
      IF t25->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t25->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t59 ).
      ENDIF.
      DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t60.
      IF t25->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t25->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t60 ).
      ENDIF.
      CREATE OBJECT t25->zlnt_json_ownkeys_70e5fd461788.
      t25->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t61) = |key|.
      DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t62.
      IF t25->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t25->zlnt_json_ownkeys_70e5fd461788->put( p0 = t61 p1 = t62 ).
      ENDIF.
      DATA(t63) = |title|.
      DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t64.
      IF t25->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t25->zlnt_json_ownkeys_70e5fd461788->put( p0 = t63 p1 = t64 ).
      ENDIF.
      DATA(t65) = |shortDescription|.
      DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t66.
      IF t25->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t25->zlnt_json_ownkeys_70e5fd461788->put( p0 = t65 p1 = t66 ).
      ENDIF.
      DATA(t67) = |extendedInformation|.
      DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t68.
      IF t25->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t25->zlnt_json_ownkeys_70e5fd461788->put( p0 = t67 p1 = t68 ).
      ENDIF.
      DATA(t69) = |tags|.
      DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t70.
      IF t25->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t25->zlnt_json_ownkeys_70e5fd461788->put( p0 = t69 p1 = t70 ).
      ENDIF.
      t24 = t25->key.
      DATA t71 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t72) = CAST zcl_lnt_uncght_excptn_cnf( me->gt_cn_in_sr_rl_un_ex_ts_un_exc( ) ).
      t71 = t72->zlnt_view_read_sr_15c06369f827( ).
      DATA t73 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t73.
      DATA t74 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t74.
      t9 = zcl_lnt_issue=>at_statement( i_file = t10 i_statement = t11 i_message_26cb = t12 i_key = t24 i_severity = t71 i_fix = t73 i_alternative_fixes = t74 ).
      t8 = t9.
      DATA(t75) = me->issues.
      DATA(t76) = t8.
      t75->load( ).
      APPEND t76 TO t75->items.
      t75->save( ).
    ENDIF.
  ENDMETHOD.

  METHOD check_for_method_calls.
    DATA(t1) = i_n_0c97.
    DATA(t2) = i_file.
    DATA t3 TYPE REF TO zcl_lnt_position.
    DATA t4 TYPE REF TO zcl_lnt_position.
    DATA t5 TYPE REF TO zcl_lnt_abstract_token.
    DATA t6 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t7) = t1.
    t6 = t7->get_first_token( ).
    t5 = t6.
    DATA t8 TYPE REF TO zcl_lnt_position.
    DATA(t9) = t5.
    t8 = t9->start.
    t4 = t8.
    t3 = t4.
    DATA t10 TYPE REF TO zcl_lnt_position.
    DATA t11 TYPE REF TO zcl_lnt_position.
    DATA t12 TYPE REF TO zcl_lnt_abstract_token.
    DATA t13 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t14) = t1.
    t13 = t14->get_last_token( ).
    t12 = t13.
    DATA t15 TYPE REF TO zcl_lnt_position.
    DATA t16 TYPE f.
    DATA t17 TYPE REF TO zcl_lnt_position.
    DATA t18 TYPE REF TO zcl_lnt_position.
    DATA(t19) = t12.
    t18 = t19->start.
    t17 = t18.
    DATA t20 TYPE f.
    DATA(t21) = t17.
    t20 = t21->row.
    t16 = t20.
    DATA t22 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t23 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t24 TYPE REF TO zcl_lnt_position.
    DATA t25 TYPE REF TO zcl_lnt_position.
    DATA(t26) = t12.
    t25 = t26->start.
    t24 = t25.
    DATA t27 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA(t28) = t24.
    t27 = t28->col.
    t23 = t27.
    DATA t29 TYPE f.
    DATA t30 TYPE i.
    DATA t31 TYPE string.
    DATA(t32) = t12.
    t31 = t32->str.
    DATA(t33) = strlen( t31 ).
    t30 = t33.
    t29 = t30.
    DATA(t34) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
    t34->has = abap_true.
    t34->value = t29.
    t22 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t23 right = t34 op = `+` ).
    t15 = NEW zcl_lnt_position( i_row = t16 i_col = t22 ).
    t11 = t15.
    t10 = t11.
    DATA t35 TYPE REF TO zif_lnt_spaghetti_scope_node.
    CLEAR t35.
    DATA t36 TYPE REF TO zif_lnt_spaghetti_scope_node.
    CLEAR t36.
    DATA t37 TYPE REF TO zif_lnt_spaghetti_scope.
    DATA(t38) = me->syntax.
    t37 = t38->zlnt_view_read_sr_b6b1d9e0c93e( ).
    DATA t39 TYPE REF TO zcl_lnt_position.
    CLEAR t39.
    DATA(t40) = abap_true.
    IF t40 = abap_true.
      DATA(t41) = t3.
      t39 = t41.
    ELSE.
      DATA t42 TYPE REF TO zcl_lnt_position.
      CLEAR t42.
      t39 = t42.
    ENDIF.
    DATA t43 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t43.
    DATA(t44) = abap_true.
    IF t44 = abap_true.
      DATA t45 TYPE string.
      DATA t46 TYPE REF TO zcl_lnt_abstract_file.
      DATA(t47) = t2.
      t46 = t47.
      DATA t48 TYPE string.
      DATA(t49) = t46.
      t48 = t49->filename.
      t45 = t48.
      DATA(t50) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t50->has = abap_true.
      t50->value = t45.
      t43 = t50.
    ELSE.
      DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t51.
      t43 = t51.
    ENDIF.
    t36 = t37->lookup_position( i_p = t39 i_filename = t43 ).
    t35 = t36.
    DATA t52 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t52.
    DATA t53 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t53.
    DATA t54 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t54.
    DATA t55 TYPE REF TO zcl_lnt_iscope_data.
    CLEAR t55.
    DATA t56 TYPE REF TO zcl_lnt_iscope_data.
    CLEAR t56.
    DATA t57 TYPE REF TO zif_lnt_spaghetti_scope_node.
    DATA(t58) = t35.
    t57 = t58.
    DATA t59 TYPE REF TO zcl_lnt_iscope_data.
    CLEAR t59.
    DATA(t60) = VALUE abap_bool( ).
    DATA(t61) = t57.
    IF t61 IS INITIAL.
      t60 = abap_true.
    ENDIF.
    IF t60 = abap_true.
      DATA t62 TYPE REF TO zcl_lnt_iscope_data.
      CLEAR t62.
      t59 = t62.
    ELSE.
      DATA t63 TYPE REF TO zcl_lnt_iscope_data.
      DATA t64 TYPE REF TO zif_lnt_spaghetti_scope_node.
      DATA(t65) = t57.
      t64 = t65.
      t63 = t64->get_data( ).
      t59 = t63.
    ENDIF.
    t56 = t59.
    t55 = t56.
    DATA t66 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t66.
    DATA(t67) = VALUE abap_bool( ).
    DATA(t68) = t55.
    IF t68 IS INITIAL.
      t67 = abap_true.
    ENDIF.
    IF t67 = abap_true.
      DATA t69 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t69.
      t66 = t69.
    ELSE.
      DATA t70 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t71 TYPE REF TO zcl_lnt_iscope_data.
      DATA(t72) = t55.
      t71 = t72.
      t70 = t71->references.
      t66 = t70.
    ENDIF.
    t54 = t66.
    t53 = t54.
    DATA t73 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t73.
    DATA t74 TYPE abap_bool.
    DATA(t75) = t53.
    t74 = xsdbool( t75 IS BOUND ).
    IF t74 = abap_true.
      DATA t76 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t77) = t53.
      t76 = t77.
      t73 = t76.
    ELSE.
      DATA t78 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t78.
      t73 = t78.
    ENDIF.
    t52 = t73.
    DATA t79 TYPE REF TO zcl_lnt_ireference.
    CLEAR t79.
    DATA t80 TYPE REF TO object.
    CLEAR t80.
    DATA(t81) = VALUE i( ).
    DO.
      t52->load( ).
      IF t81 >= lines( t52->items ).
        EXIT.
      ENDIF.
      CLEAR t80.
      READ TABLE t52->items INDEX t81 + 1 INTO t80.
      t81 = t81 + 1.
      DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t82.
      CLEAR t79.
      IF t80 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t82 ?= t80.
        DATA t83 TYPE REF TO object.
        t83 = t82->as_ref( ).
        t79 ?= t83.
      ELSE.
        t79 ?= t80.
      ENDIF.
      DATA(t84) = VALUE abap_bool( ).
      DATA(t85) = VALUE abap_bool( ).
      DATA t86 TYPE abap_bool.
      DATA t87 TYPE abap_bool.
      DATA t88 TYPE string.
      DATA(t89) = t79.
      t88 = t89->reference_type.
      DATA(t90) = |Method|.
      t87 = xsdbool( t88 = t90 ).
      t86 = t87.
      IF t87 = abap_true.
        DATA t91 TYPE abap_bool.
        DATA t92 TYPE REF TO zcl_lnt_position.
        DATA t93 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t94 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t95) = t79.
        t94 = t95->position_7b94.
        t93 = t94.
        DATA t96 TYPE REF TO zcl_lnt_position.
        DATA t97 TYPE REF TO zcl_lnt_abstract_token.
        DATA t98 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t99) = t93.
        t98 = t99->token.
        t97 = t98.
        DATA t100 TYPE REF TO zcl_lnt_position.
        DATA(t101) = t97.
        t100 = t101->start.
        t96 = t100.
        t92 = t96.
        DATA(t102) = t3.
        t91 = t92->is_after( i_p = t102 ).
        t86 = t91.
      ENDIF.
      t85 = t86.
      IF t86 = abap_true.
        DATA(t103) = VALUE abap_bool( ).
        DATA t104 TYPE REF TO zcl_lnt_position.
        DATA t105 TYPE REF TO zcl_lnt_position.
        DATA t106 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t107 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t108) = t79.
        t107 = t108->position_7b94.
        t106 = t107.
        DATA t109 TYPE REF TO zcl_lnt_position.
        DATA t110 TYPE REF TO zcl_lnt_abstract_token.
        DATA t111 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t112) = t106.
        t111 = t112->token.
        t110 = t111.
        DATA t113 TYPE REF TO zcl_lnt_position.
        DATA t114 TYPE f.
        DATA t115 TYPE REF TO zcl_lnt_position.
        DATA t116 TYPE REF TO zcl_lnt_position.
        DATA(t117) = t110.
        t116 = t117->start.
        t115 = t116.
        DATA t118 TYPE f.
        DATA(t119) = t115.
        t118 = t119->row.
        t114 = t118.
        DATA t120 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t121 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t122 TYPE REF TO zcl_lnt_position.
        DATA t123 TYPE REF TO zcl_lnt_position.
        DATA(t124) = t110.
        t123 = t124->start.
        t122 = t123.
        DATA t125 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t126) = t122.
        t125 = t126->col.
        t121 = t125.
        DATA t127 TYPE f.
        DATA t128 TYPE i.
        DATA t129 TYPE string.
        DATA(t130) = t110.
        t129 = t130->str.
        DATA(t131) = strlen( t129 ).
        t128 = t131.
        t127 = t128.
        DATA(t132) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t132->has = abap_true.
        t132->value = t127.
        t120 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t121 right = t132 op = `+` ).
        t113 = NEW zcl_lnt_position( i_row = t114 i_col = t120 ).
        t109 = t113.
        t105 = t109.
        t104 = t105.
        DATA t133 TYPE REF TO zcl_lnt_position.
        DATA(t134) = t10.
        t133 = t134.
        DATA t135 TYPE abap_bool.
        DATA t136 TYPE abap_bool.
        DATA t137 TYPE f.
        DATA(t138) = t104.
        t137 = t138->row.
        DATA t139 TYPE f.
        DATA(t140) = t133.
        t139 = t140->row.
        t136 = xsdbool( t137 < t139 ).
        t135 = t136.
        IF t136 = abap_false.
          DATA t141 TYPE abap_bool.
          DATA t142 TYPE abap_bool.
          DATA t143 TYPE f.
          DATA(t144) = t104.
          t143 = t144->row.
          DATA t145 TYPE f.
          DATA(t146) = t133.
          t145 = t146->row.
          t142 = xsdbool( t143 = t145 ).
          t141 = t142.
          IF t142 = abap_true.
            DATA t147 TYPE abap_bool.
            DATA t148 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA(t149) = t104.
            t148 = t149->col.
            DATA t150 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA(t151) = t133.
            t150 = t151->col.
            t147 = zlnt_runtime_numb_290eb04a9758=>compare( left = t148 right = t150 op = `<` ).
            t141 = t147.
          ENDIF.
          t135 = t141.
        ENDIF.
        t103 = t135.
        t85 = t103.
      ENDIF.
      t84 = t85.
      IF t85 = abap_true.
        DATA t152 TYPE abap_bool.
        DATA t153 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t154) = t79.
        t153 = t154->resolved.
        t152 = xsdbool( t153 IS BOUND AND t153 IS INSTANCE OF zcl_lnt_method_definition ).
        t84 = t152.
      ENDIF.
      IF t84 = abap_true.
        DATA t155 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t156 TYPE REF TO zcl_lnt_method_definition.
        DATA t157 TYPE REF TO zcl_lnt_method_definition.
        DATA t158 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t159) = t79.
        t158 = t159->resolved.
        t157 ?= t158.
        t156 = t157.
        DATA t160 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t161) = t156.
        t160 = t161->raising.
        t155 = t160.
        DATA(t162) = VALUE string( ).
        t155->dense( ).
        DATA(t163) = VALUE i( ).
        DO.
          t155->load( ).
          IF t163 >= lines( t155->items ).
            EXIT.
          ENDIF.
          CLEAR t162.
          READ TABLE t155->items INDEX t163 + 1 INTO t162.
          IF t155->has( t163 ) = abap_false.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t163 = t163 + 1.
          DATA t164 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t164.
          DATA t165 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t165.
          DATA(t166) = abap_true.
          IF t166 = abap_true.
            DATA(t167) = t162.
            DATA(t168) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t168->has = abap_true.
            t168->value = t167.
            t165 = t168.
          ELSE.
            DATA t169 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t169.
            t165 = t169.
          ENDIF.
          t164 = t165.
          DATA t170 TYPE REF TO zcl_lnt_statement_node.
          DATA(t171) = t1.
          t170 = t171.
          DATA t172 TYPE REF TO zcl_lnt_abap_file.
          DATA(t173) = t2.
          t172 = t173.
          DATA t174 TYPE abap_bool.
          DATA t175 TYPE abap_bool.
          DATA(t176) = t164.
          t175 = me->is_sinked( i_name = t176 ).
          DATA(t177) = abap_false.
          t174 = xsdbool( t175 = t177 ).
          IF t174 = abap_true.
            DATA t178 TYPE REF TO zcl_lnt_issue.
            CLEAR t178.
            DATA t179 TYPE REF TO zcl_lnt_issue.
            CLEAR t179.
            DATA(t180) = t172.
            DATA(t181) = t170.
            DATA(t182) = VALUE string( ).
            DATA(t183) = |Uncaught exception |.
            DATA(t184) = VALUE string( ).
            DATA t185 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t186) = t164.
            t185 = t186.
            DATA(t187) = VALUE string( ).
            DATA(t188) = VALUE abap_bool( ).
            DATA(t189) = t185.
            IF t189 IS INITIAL.
              t188 = abap_true.
            ELSEIF t189->has = abap_false.
              t188 = abap_true.
            ENDIF.
            IF t188 = abap_true.
              DATA(t190) = |undefined|.
              t187 = t190.
            ELSE.
              DATA t191 TYPE string.
              DATA(t192) = t185.
              t191 = t192->value.
              t187 = t191.
            ENDIF.
            t184 = t187.
            DATA(t193) = strlen( t183 ).
            t182 = |{ t183 }{ t184 }|.
            DATA(t194) = VALUE string( ).
            DATA t195 TYPE REF TO zcl_lnt_irule_metadata.
            CLEAR t195.
            DATA t196 TYPE string.
            DATA(t197) = |uncaught_exception|.
            t196 = t197.
            DATA t198 TYPE string.
            DATA(t199) = |Uncaught Exception|.
            t198 = t199.
            DATA t200 TYPE string.
            DATA(t201) = |Checks for uncaught static exception|.
            t200 = t201.
            DATA t202 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t202.
            DATA t203 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t203.
            DATA(t204) = abap_true.
            IF t204 = abap_true.
              DATA(t205) = |Does not report any issues if the code contains syntax error|.
              t205 = t205 && |s|.
              DATA(t206) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t206->has = abap_true.
              t206->value = t205.
              t203 = t206.
            ELSE.
              DATA t207 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t207.
              t203 = t207.
            ENDIF.
            t202 = t203.
            DATA t208 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t208.
            DATA t209 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t209.
            DATA(t210) = abap_true.
            IF t210 = abap_true.
              DATA t211 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA t212 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA t213 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CREATE OBJECT t213.
              t212 = t213.
              DATA(t214) = t212.
              DATA(t215) = |Syntax|.
              t214->load( ).
              APPEND t215 TO t214->items.
              t214->save( ).
              DATA(t216) = t212.
              t211 = t216.
              t209 = t211.
            ELSE.
              DATA t217 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t217.
              t209 = t217.
            ENDIF.
            t208 = t209.
            DATA t218 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t219 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t219.
            t218 = t219.
            DATA t220 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t221 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t221.
            t220 = t221.
            DATA t222 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t223 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t223.
            t222 = t223.
            DATA t224 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t225 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t225.
            t224 = t225.
            t195 = NEW zcl_lnt_irule_metadata( i_key = t196 i_title = t198 i_short_description = t200 i_bad_example = t218 i_good_example = t220 i_extended_information = t202 i_tags = t208 i_pragma = t222 i_pseudo_comment = t224 ).
            CREATE OBJECT t195->zlnt_view_ownkeys_b0e8086400eb.
            t195->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t226 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t226.
            IF t195->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t195->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t226 ).
            ENDIF.
            DATA t227 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t227.
            IF t195->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t195->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t227 ).
            ENDIF.
            DATA t228 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t228.
            IF t195->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t195->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t228 ).
            ENDIF.
            DATA t229 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t229.
            IF t195->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t195->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t229 ).
            ENDIF.
            DATA t230 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t230.
            IF t195->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t195->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t230 ).
            ENDIF.
            CREATE OBJECT t195->zlnt_json_ownkeys_70e5fd461788.
            t195->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA(t231) = |key|.
            DATA t232 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t232.
            IF t195->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t195->zlnt_json_ownkeys_70e5fd461788->put( p0 = t231 p1 = t232 ).
            ENDIF.
            DATA(t233) = |title|.
            DATA t234 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t234.
            IF t195->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t195->zlnt_json_ownkeys_70e5fd461788->put( p0 = t233 p1 = t234 ).
            ENDIF.
            DATA(t235) = |shortDescription|.
            DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t236.
            IF t195->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t195->zlnt_json_ownkeys_70e5fd461788->put( p0 = t235 p1 = t236 ).
            ENDIF.
            DATA(t237) = |extendedInformation|.
            DATA t238 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t238.
            IF t195->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t195->zlnt_json_ownkeys_70e5fd461788->put( p0 = t237 p1 = t238 ).
            ENDIF.
            DATA(t239) = |tags|.
            DATA t240 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t240.
            IF t195->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t195->zlnt_json_ownkeys_70e5fd461788->put( p0 = t239 p1 = t240 ).
            ENDIF.
            t194 = t195->key.
            DATA t241 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t242) = CAST zcl_lnt_uncght_excptn_cnf( me->gt_cn_in_sr_rl_un_ex_ts_un_exc( ) ).
            t241 = t242->zlnt_view_read_sr_15c06369f827( ).
            DATA t243 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
            CLEAR t243.
            DATA t244 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t244.
            t179 = zcl_lnt_issue=>at_statement( i_file = t180 i_statement = t181 i_message_26cb = t182 i_key = t194 i_severity = t241 i_fix = t243 i_alternative_fixes = t244 ).
            t178 = t179.
            DATA(t245) = me->issues.
            DATA(t246) = t178.
            t245->load( ).
            APPEND t246 TO t245->items.
            t245->save( ).
          ENDIF.
        ENDDO.
      ELSE.
        DATA(t247) = VALUE abap_bool( ).
        DATA(t248) = VALUE abap_bool( ).
        DATA t249 TYPE abap_bool.
        DATA t250 TYPE abap_bool.
        DATA t251 TYPE string.
        DATA(t252) = t79.
        t251 = t252->reference_type.
        DATA(t253) = |Constructor Reference|.
        t250 = xsdbool( t251 = t253 ).
        t249 = t250.
        IF t250 = abap_true.
          DATA t254 TYPE abap_bool.
          DATA t255 TYPE REF TO zcl_lnt_position.
          DATA t256 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t257 TYPE REF TO zcl_lnt_fi_identifier.
          DATA(t258) = t79.
          t257 = t258->position_7b94.
          t256 = t257.
          DATA t259 TYPE REF TO zcl_lnt_position.
          DATA t260 TYPE REF TO zcl_lnt_abstract_token.
          DATA t261 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t262) = t256.
          t261 = t262->token.
          t260 = t261.
          DATA t263 TYPE REF TO zcl_lnt_position.
          DATA(t264) = t260.
          t263 = t264->start.
          t259 = t263.
          t255 = t259.
          DATA(t265) = t3.
          t254 = t255->is_after( i_p = t265 ).
          t249 = t254.
        ENDIF.
        t248 = t249.
        IF t249 = abap_true.
          DATA(t266) = VALUE abap_bool( ).
          DATA t267 TYPE REF TO zcl_lnt_position.
          DATA t268 TYPE REF TO zcl_lnt_position.
          DATA t269 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t270 TYPE REF TO zcl_lnt_fi_identifier.
          DATA(t271) = t79.
          t270 = t271->position_7b94.
          t269 = t270.
          DATA t272 TYPE REF TO zcl_lnt_position.
          DATA t273 TYPE REF TO zcl_lnt_abstract_token.
          DATA t274 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t275) = t269.
          t274 = t275->token.
          t273 = t274.
          DATA t276 TYPE REF TO zcl_lnt_position.
          DATA t277 TYPE f.
          DATA t278 TYPE REF TO zcl_lnt_position.
          DATA t279 TYPE REF TO zcl_lnt_position.
          DATA(t280) = t273.
          t279 = t280->start.
          t278 = t279.
          DATA t281 TYPE f.
          DATA(t282) = t278.
          t281 = t282->row.
          t277 = t281.
          DATA t283 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t284 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA t285 TYPE REF TO zcl_lnt_position.
          DATA t286 TYPE REF TO zcl_lnt_position.
          DATA(t287) = t273.
          t286 = t287->start.
          t285 = t286.
          DATA t288 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA(t289) = t285.
          t288 = t289->col.
          t284 = t288.
          DATA t290 TYPE f.
          DATA t291 TYPE i.
          DATA t292 TYPE string.
          DATA(t293) = t273.
          t292 = t293->str.
          DATA(t294) = strlen( t292 ).
          t291 = t294.
          t290 = t291.
          DATA(t295) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
          t295->has = abap_true.
          t295->value = t290.
          t283 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t284 right = t295 op = `+` ).
          t276 = NEW zcl_lnt_position( i_row = t277 i_col = t283 ).
          t272 = t276.
          t268 = t272.
          t267 = t268.
          DATA t296 TYPE REF TO zcl_lnt_position.
          DATA(t297) = t10.
          t296 = t297.
          DATA t298 TYPE abap_bool.
          DATA t299 TYPE abap_bool.
          DATA t300 TYPE f.
          DATA(t301) = t267.
          t300 = t301->row.
          DATA t302 TYPE f.
          DATA(t303) = t296.
          t302 = t303->row.
          t299 = xsdbool( t300 < t302 ).
          t298 = t299.
          IF t299 = abap_false.
            DATA t304 TYPE abap_bool.
            DATA t305 TYPE abap_bool.
            DATA t306 TYPE f.
            DATA(t307) = t267.
            t306 = t307->row.
            DATA t308 TYPE f.
            DATA(t309) = t296.
            t308 = t309->row.
            t305 = xsdbool( t306 = t308 ).
            t304 = t305.
            IF t305 = abap_true.
              DATA t310 TYPE abap_bool.
              DATA t311 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
              DATA(t312) = t267.
              t311 = t312->col.
              DATA t313 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
              DATA(t314) = t296.
              t313 = t314->col.
              t310 = zlnt_runtime_numb_290eb04a9758=>compare( left = t311 right = t313 op = `<` ).
              t304 = t310.
            ENDIF.
            t298 = t304.
          ENDIF.
          t266 = t298.
          t248 = t266.
        ENDIF.
        t247 = t248.
        IF t248 = abap_true.
          DATA t315 TYPE abap_bool.
          DATA t316 TYPE REF TO zcl_lnt_fi_identifier.
          DATA(t317) = t79.
          t316 = t317->resolved.
          t315 = xsdbool( t316 IS BOUND AND t316 IS INSTANCE OF zcl_lnt_ty_class_definition ).
          t247 = t315.
        ENDIF.
        IF t247 = abap_true.
          DATA t318 TYPE REF TO zcl_lnt_method_definition.
          DATA t319 TYPE REF TO zcl_lnt_method_definition.
          DATA t320 TYPE REF TO zcl_lnt_ty_class_definition.
          DATA t321 TYPE REF TO zcl_lnt_fi_identifier.
          DATA(t322) = t79.
          t321 = t322->resolved.
          t320 ?= t321.
          DATA(t323) = t35.
          t319 = me->find_constructor( i_def = t320 i_scope = t323 ).
          t318 = t319.
          DATA t324 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t324.
          DATA t325 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t325.
          DATA t326 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t326.
          DATA t327 TYPE REF TO zcl_lnt_method_definition.
          DATA(t328) = t318.
          t327 = t328.
          DATA t329 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t329.
          DATA(t330) = VALUE abap_bool( ).
          DATA(t331) = t327.
          IF t331 IS INITIAL.
            t330 = abap_true.
          ENDIF.
          IF t330 = abap_true.
            DATA t332 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t332.
            t329 = t332.
          ELSE.
            DATA t333 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t334 TYPE REF TO zcl_lnt_method_definition.
            DATA t335 TYPE REF TO zcl_lnt_method_definition.
            DATA(t336) = t327.
            t335 = t336.
            t334 = t335.
            DATA t337 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA(t338) = t334.
            t337 = t338->raising.
            t333 = t337.
            t329 = t333.
          ENDIF.
          t326 = t329.
          t325 = t326.
          DATA t339 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t339.
          DATA t340 TYPE abap_bool.
          DATA(t341) = t325.
          t340 = xsdbool( t341 IS BOUND ).
          IF t340 = abap_true.
            DATA t342 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA(t343) = t325.
            t342 = t343.
            t339 = t342.
          ELSE.
            DATA t344 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t344.
            t339 = t344.
          ENDIF.
          t324 = t339.
          DATA(t345) = VALUE string( ).
          t324->dense( ).
          DATA(t346) = VALUE i( ).
          DO.
            t324->load( ).
            IF t346 >= lines( t324->items ).
              EXIT.
            ENDIF.
            CLEAR t345.
            READ TABLE t324->items INDEX t346 + 1 INTO t345.
            IF t324->has( t346 ) = abap_false.
              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
            ENDIF.
            t346 = t346 + 1.
            DATA t347 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t347.
            DATA t348 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t348.
            DATA(t349) = abap_true.
            IF t349 = abap_true.
              DATA(t350) = t345.
              DATA(t351) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t351->has = abap_true.
              t351->value = t350.
              t348 = t351.
            ELSE.
              DATA t352 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t352.
              t348 = t352.
            ENDIF.
            t347 = t348.
            DATA t353 TYPE REF TO zcl_lnt_statement_node.
            DATA(t354) = t1.
            t353 = t354.
            DATA t355 TYPE REF TO zcl_lnt_abap_file.
            DATA(t356) = t2.
            t355 = t356.
            DATA t357 TYPE abap_bool.
            DATA t358 TYPE abap_bool.
            DATA(t359) = t347.
            t358 = me->is_sinked( i_name = t359 ).
            DATA(t360) = abap_false.
            t357 = xsdbool( t358 = t360 ).
            IF t357 = abap_true.
              DATA t361 TYPE REF TO zcl_lnt_issue.
              CLEAR t361.
              DATA t362 TYPE REF TO zcl_lnt_issue.
              CLEAR t362.
              DATA(t363) = t355.
              DATA(t364) = t353.
              DATA(t365) = VALUE string( ).
              DATA(t366) = |Uncaught exception |.
              DATA(t367) = VALUE string( ).
              DATA t368 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA(t369) = t347.
              t368 = t369.
              DATA(t370) = VALUE string( ).
              DATA(t371) = VALUE abap_bool( ).
              DATA(t372) = t368.
              IF t372 IS INITIAL.
                t371 = abap_true.
              ELSEIF t372->has = abap_false.
                t371 = abap_true.
              ENDIF.
              IF t371 = abap_true.
                DATA(t373) = |undefined|.
                t370 = t373.
              ELSE.
                DATA t374 TYPE string.
                DATA(t375) = t368.
                t374 = t375->value.
                t370 = t374.
              ENDIF.
              t367 = t370.
              DATA(t376) = strlen( t366 ).
              t365 = |{ t366 }{ t367 }|.
              DATA(t377) = VALUE string( ).
              DATA t378 TYPE REF TO zcl_lnt_irule_metadata.
              CLEAR t378.
              DATA t379 TYPE string.
              DATA(t380) = |uncaught_exception|.
              t379 = t380.
              DATA t381 TYPE string.
              DATA(t382) = |Uncaught Exception|.
              t381 = t382.
              DATA t383 TYPE string.
              DATA(t384) = |Checks for uncaught static exception|.
              t383 = t384.
              DATA t385 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t385.
              DATA t386 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t386.
              DATA(t387) = abap_true.
              IF t387 = abap_true.
                DATA(t388) = |Does not report any issues if the code contains syntax error|.
                t388 = t388 && |s|.
                DATA(t389) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t389->has = abap_true.
                t389->value = t388.
                t386 = t389.
              ELSE.
                DATA t390 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t390.
                t386 = t390.
              ENDIF.
              t385 = t386.
              DATA t391 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t391.
              DATA t392 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              CLEAR t392.
              DATA(t393) = abap_true.
              IF t393 = abap_true.
                DATA t394 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                DATA t395 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                DATA t396 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CREATE OBJECT t396.
                t395 = t396.
                DATA(t397) = t395.
                DATA(t398) = |Syntax|.
                t397->load( ).
                APPEND t398 TO t397->items.
                t397->save( ).
                DATA(t399) = t395.
                t394 = t399.
                t392 = t394.
              ELSE.
                DATA t400 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
                CLEAR t400.
                t392 = t400.
              ENDIF.
              t391 = t392.
              DATA t401 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t402 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t402.
              t401 = t402.
              DATA t403 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t404 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t404.
              t403 = t404.
              DATA t405 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t406 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t406.
              t405 = t406.
              DATA t407 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t408 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t408.
              t407 = t408.
              t378 = NEW zcl_lnt_irule_metadata( i_key = t379 i_title = t381 i_short_description = t383 i_bad_example = t401 i_good_example = t403 i_extended_information = t385 i_tags = t391 i_pragma = t405 i_pseudo_comment = t407 ).
              CREATE OBJECT t378->zlnt_view_ownkeys_b0e8086400eb.
              t378->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t409 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t409.
              IF t378->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t378->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t409 ).
              ENDIF.
              DATA t410 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t410.
              IF t378->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t378->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t410 ).
              ENDIF.
              DATA t411 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t411.
              IF t378->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t378->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t411 ).
              ENDIF.
              DATA t412 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t412.
              IF t378->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t378->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `extendedInformation` p1 = t412 ).
              ENDIF.
              DATA t413 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t413.
              IF t378->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t378->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t413 ).
              ENDIF.
              CREATE OBJECT t378->zlnt_json_ownkeys_70e5fd461788.
              t378->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA(t414) = |key|.
              DATA t415 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t415.
              IF t378->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t378->zlnt_json_ownkeys_70e5fd461788->put( p0 = t414 p1 = t415 ).
              ENDIF.
              DATA(t416) = |title|.
              DATA t417 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t417.
              IF t378->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t378->zlnt_json_ownkeys_70e5fd461788->put( p0 = t416 p1 = t417 ).
              ENDIF.
              DATA(t418) = |shortDescription|.
              DATA t419 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t419.
              IF t378->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t378->zlnt_json_ownkeys_70e5fd461788->put( p0 = t418 p1 = t419 ).
              ENDIF.
              DATA(t420) = |extendedInformation|.
              DATA t421 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t421.
              IF t378->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t378->zlnt_json_ownkeys_70e5fd461788->put( p0 = t420 p1 = t421 ).
              ENDIF.
              DATA(t422) = |tags|.
              DATA t423 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t423.
              IF t378->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t378->zlnt_json_ownkeys_70e5fd461788->put( p0 = t422 p1 = t423 ).
              ENDIF.
              t377 = t378->key.
              DATA t424 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA(t425) = CAST zcl_lnt_uncght_excptn_cnf( me->gt_cn_in_sr_rl_un_ex_ts_un_exc( ) ).
              t424 = t425->zlnt_view_read_sr_15c06369f827( ).
              DATA t426 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
              CLEAR t426.
              DATA t427 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t427.
              t362 = zcl_lnt_issue=>at_statement( i_file = t363 i_statement = t364 i_message_26cb = t365 i_key = t377 i_severity = t424 i_fix = t426 i_alternative_fixes = t427 ).
              t361 = t362.
              DATA(t428) = me->issues.
              DATA(t429) = t361.
              t428->load( ).
              APPEND t429 TO t428->items.
              t428->save( ).
            ENDIF.
          ENDDO.
        ENDIF.
      ENDIF.
    ENDDO.
  ENDMETHOD.

  METHOD find_constructor.
    DATA(t1) = i_def.
    DATA(t2) = i_scope.
    DATA t3 TYPE REF TO zif_lnt_generator_0f59ca3c.
    CLEAR t3.
    DATA t4 TYPE REF TO zif_lnt_generator_0f59ca3c.
    CLEAR t4.
    DATA t5 TYPE REF TO zif_lnt_generator_0f59ca3c.
    CLEAR t5.
    DATA t6 TYPE REF TO zif_lnt_method_definitions.
    CLEAR t6.
    DATA(t7) = t1.
    t6 = t7->get_method_definitions( ).
    t5 = t6->get_all( ).
    t4 = t5->iterate( ).
    t3 = t4.
    DO.
      DATA(t8) = abap_true.
      IF t8 = abap_false.
        EXIT.
      ENDIF.
      DATA t9 TYPE REF TO zcl_lnt_generator_0f216880.
      CLEAR t9.
      DATA t10 TYPE REF TO zcl_lnt_generator_0f216880.
      CLEAR t10.
      DATA(t11) = t3.
      t10 = t11->next( ).
      t9 = t10.
      DATA(t12) = VALUE abap_bool( ).
      DATA(t13) = t9.
      t12 = t13->done.
      IF t12 = abap_true.
        EXIT.
      ENDIF.
      DATA t14 TYPE REF TO zif_lnt_method_definition.
      CLEAR t14.
      DATA t15 TYPE REF TO zif_lnt_method_definition.
      CLEAR t15.
      DATA t16 TYPE REF TO zif_lnt_method_definition.
      CLEAR t16.
      DATA(t17) = t9.
      t16 = t17->value.
      t15 = t16.
      t14 = t15.
      DATA(t18) = VALUE abap_bool( ).
      DATA(t19) = VALUE abap_bool( ).
      DATA(t20) = VALUE abap_bool( ).
      DATA(t21) = abap_false.
      t20 = t21.
      DATA t22 TYPE REF TO cx_root.
      CLEAR t22.
      TRY.
          DATA(t23) = VALUE abap_bool( ).
          DATA(t24) = VALUE abap_bool( ).
          DATA(t25) = t14.
          t24 = xsdbool( t25 IS BOUND AND t25 IS INSTANCE OF zcl_lnt_method_definition ).
          t23 = t24.
          IF t24 = abap_true.
            DATA(t26) = VALUE abap_bool( ).
            DATA(t27) = VALUE string( ).
            DATA(t28) = VALUE string( ).
            DATA t29 TYPE REF TO zcl_lnt_fi_identifier.
            CLEAR t29.
            DATA t30 TYPE REF TO zcl_lnt_method_definition.
            CLEAR t30.
            DATA(t31) = t14.
            DATA t32 TYPE REF TO object.
            CLEAR t32.
            t32 = t31.
            t30 ?= t32.
            t29 = t30.
            DATA(t33) = VALUE string( ).
            DATA(t34) = VALUE string( ).
            DATA(t35) = VALUE string( ).
            DATA t36 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t36.
            DATA t37 TYPE REF TO zcl_lnt_abstract_token.
            CLEAR t37.
            DATA(t38) = t29.
            t37 = t38->token.
            t36 = t37.
            DATA(t39) = VALUE string( ).
            DATA(t40) = t36.
            t39 = t40->str.
            t35 = t39.
            t34 = t35.
            DATA(t41) = VALUE abap_bool( ).
            DATA(t42) = VALUE string( ).
            DATA(t43) = t34.
            DATA(t44) = 0.
            DATA(t45) = 1.
            DATA(t46) = strlen( t43 ).
            IF t44 < 0.
              t44 = t44 + t46.
              IF t44 < 0.
                t44 = 0.
              ENDIF.
            ENDIF.
            IF t44 > t46 OR t45 <= 0.
              CLEAR t42.
            ELSE.
              IF t45 > t46 - t44.
                t45 = t46 - t44.
              ENDIF.
              t42 = t43+t44(t45).
            ENDIF.
            DATA(t47) = |!|.
            t41 = xsdbool( t42 = t47 ).
            IF t41 = abap_true.
              DATA(t48) = VALUE string( ).
              DATA(t49) = VALUE string( ).
              DATA(t50) = t34.
              t49 = t50.
              DATA(t51) = VALUE string( ).
              DATA(t52) = t49.
              DATA(t53) = 1.
              DATA(t54) = VALUE i( ).
              DATA(t55) = t49.
              DATA(t56) = strlen( t55 ).
              t54 = t56.
              DATA(t57) = strlen( t52 ).
              IF t53 < 0.
                t53 = t53 + t57.
                IF t53 < 0.
                  t53 = 0.
                ENDIF.
              ENDIF.
              IF t53 > t57 OR t54 <= 0.
                CLEAR t51.
              ELSE.
                IF t54 > t57 - t53.
                  t54 = t57 - t53.
                ENDIF.
                t51 = t52+t53(t54).
              ENDIF.
              t48 = t51.
              t34 = t48.
            ENDIF.
            DATA(t58) = t34.
            t33 = t58.
            t28 = t33.
            DATA(t59) = strlen( t28 ).
            t27 = t28.
            IF t27 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t27 TO UPPER CASE.
            ELSE.
              t27 = zlnt_runtime_uppe_91169605024d=>full( t27 ).
            ENDIF.
            DATA(t60) = |CONSTRUCTOR|.
            t26 = xsdbool( t27 = t60 ).
            t23 = t26.
          ENDIF.
          t19 = t23.
          DATA(t61) = abap_true.
          t20 = t61.
        CATCH cx_root INTO t22.
          DATA(t62) = VALUE abap_bool( ).
          DATA(t63) = t20.
          t62 = xsdbool( t63 = abap_false ).
          IF t62 = abap_true.
            DATA(t64) = t3.
            t64->close( ).
          ENDIF.
          RAISE EXCEPTION t22.
      ENDTRY.
      DATA(t65) = VALUE abap_bool( ).
      DATA(t66) = t20.
      t65 = xsdbool( t66 = abap_false ).
      IF t65 = abap_true.
        DATA(t67) = t3.
        t67->close( ).
      ENDIF.
      DATA(t68) = t19.
      t18 = t68.
      IF t18 = abap_true.
        DATA t69 TYPE REF TO zcl_lnt_method_definition.
        CLEAR t69.
        DATA t70 TYPE REF TO zcl_lnt_method_definition.
        CLEAR t70.
        DATA t71 TYPE REF TO zcl_lnt_method_definition.
        CLEAR t71.
        DATA(t72) = VALUE abap_bool( ).
        DATA(t73) = abap_false.
        t72 = t73.
        DATA t74 TYPE REF TO cx_root.
        CLEAR t74.
        TRY.
            DATA t75 TYPE REF TO zcl_lnt_method_definition.
            CLEAR t75.
            DATA(t76) = abap_true.
            IF t76 = abap_true.
              DATA t77 TYPE REF TO zcl_lnt_method_definition.
              CLEAR t77.
              DATA(t78) = t14.
              DATA t79 TYPE REF TO object.
              CLEAR t79.
              t79 = t78.
              t77 ?= t79.
              t75 = t77.
            ELSE.
              DATA t80 TYPE REF TO zcl_lnt_method_definition.
              CLEAR t80.
              t75 = t80.
            ENDIF.
            t71 = t75.
            DATA(t81) = abap_true.
            t72 = t81.
          CATCH cx_root INTO t74.
            DATA(t82) = VALUE abap_bool( ).
            DATA(t83) = t72.
            t82 = xsdbool( t83 = abap_false ).
            IF t82 = abap_true.
              DATA(t84) = t3.
              t84->close( ).
            ENDIF.
            RAISE EXCEPTION t74.
        ENDTRY.
        DATA(t85) = VALUE abap_bool( ).
        DATA(t86) = t72.
        t85 = xsdbool( t86 = abap_false ).
        IF t85 = abap_true.
          DATA(t87) = t3.
          t87->close( ).
        ENDIF.
        DATA(t88) = t71.
        t70 = t88.
        t69 = t70.
        DATA(t89) = t3.
        t89->close( ).
        DATA(t90) = t69.
        result = t90.
        RETURN.
      ENDIF.
    ENDDO.
    DATA t91 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t91.
    DATA t92 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t92.
    DATA(t93) = t1.
    t92 = t93->get_super_class( ).
    t91 = t92.
    DATA(t94) = VALUE abap_bool( ).
    DATA t95 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t95.
    DATA(t96) = t91.
    t95 = t96.
    DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t97.
    DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t98.
    t97 = t98.
    DATA(t99) = VALUE abap_bool( ).
    DATA(t100) = t95.
    IF t100 IS INITIAL.
      t99 = abap_true.
    ELSEIF t100->has = abap_false.
      t99 = abap_true.
    ENDIF.
    t94 = t99.
    IF t94 = abap_true.
      DATA t101 TYPE REF TO zcl_lnt_method_definition.
      CLEAR t101.
      result = t101.
      RETURN.
    ENDIF.
    DATA t102 TYPE REF TO zif_lnt_class_definition.
    CLEAR t102.
    DATA t103 TYPE REF TO zif_lnt_class_definition.
    CLEAR t103.
    DATA t104 TYPE REF TO zif_lnt_spaghetti_scope_node.
    CLEAR t104.
    DATA(t105) = t2.
    t104 = t105.
    DATA t106 TYPE REF TO zif_lnt_class_definition.
    CLEAR t106.
    DATA(t107) = VALUE abap_bool( ).
    DATA(t108) = t104.
    IF t108 IS INITIAL.
      t107 = abap_true.
    ENDIF.
    IF t107 = abap_true.
      DATA t109 TYPE REF TO zif_lnt_class_definition.
      CLEAR t109.
      t106 = t109.
    ELSE.
      DATA t110 TYPE REF TO zif_lnt_class_definition.
      CLEAR t110.
      DATA t111 TYPE REF TO zif_lnt_spaghetti_scope_node.
      CLEAR t111.
      DATA(t112) = t104.
      t111 = t112.
      DATA(t113) = VALUE string( ).
      DATA(t114) = t91.
      t113 = t114->value.
      t110 = t111->find_class_definition( i_name = t113 ).
      t106 = t110.
    ENDIF.
    t103 = t106.
    t102 = t103.
    DATA t115 TYPE REF TO zcl_lnt_method_definition.
    CLEAR t115.
    DATA(t116) = VALUE abap_bool( ).
    DATA(t117) = t102.
    t116 = xsdbool( t117 IS BOUND ).
    IF t116 = abap_true.
      DATA t118 TYPE REF TO zcl_lnt_method_definition.
      CLEAR t118.
      DATA t119 TYPE REF TO zif_lnt_class_definition.
      CLEAR t119.
      DATA(t120) = t102.
      t119 = t120.
      DATA(t121) = t2.
      t118 = me->find_constructor( i_def = t119 i_scope = t121 ).
      t115 = t118.
    ELSE.
      DATA t122 TYPE REF TO zcl_lnt_method_definition.
      CLEAR t122.
      t115 = t122.
    ENDIF.
    result = t115.

  ENDMETHOD.

  METHOD add_from_try_structure.
    DATA(t1) = i_s.
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t4) = me->sinked.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    t5 = t6.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = t3.
    IF t8 IS INITIAL.
      t7 = abap_true.
    ENDIF.
    t2 = t7.
    IF t2 = abap_true.
      RETURN.
    ENDIF.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t10) = t1.
    DATA(t11) = zlnt_runtime_desc_78196487750d=>zlnt_member_d712_8689fb760a6c.
    t9 = t10->find_direct_structures( i_type_9913 = t11 ).
    DATA t12 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t12.
    DATA t13 TYPE REF TO object.
    CLEAR t13.
    DATA(t14) = VALUE i( ).
    DO.
      t9->load( ).
      IF t14 >= lines( t9->items ).
        EXIT.
      ENDIF.
      CLEAR t13.
      READ TABLE t9->items INDEX t14 + 1 INTO t13.
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
      DATA t17 TYPE REF TO zcl_lnt_statement_node.
      DATA t18 TYPE REF TO zcl_lnt_statement_node.
      DATA(t19) = t12.
      DATA(t20) = zlnt_runtime_desc_78196487750d=>zlnt_member_d402_a27e9c5370ec.
      t18 = t19->find_direct_statement( i_type_9913 = t20 ).
      t17 = t18.
      DATA(t21) = VALUE abap_bool( ).
      DATA t22 TYPE REF TO zcl_lnt_statement_node.
      DATA(t23) = t17.
      t22 = t23.
      DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t25.
      t24 = t25.
      DATA(t26) = VALUE abap_bool( ).
      DATA(t27) = t22.
      IF t27 IS INITIAL.
        t26 = abap_true.
      ENDIF.
      t21 = t26.
      IF t21 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t28 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t29 TYPE REF TO zcl_lnt_statement_node.
      DATA(t30) = t17.
      t29 = t30.
      DATA(t31) = zlnt_runtime_desc_78196487750d=>zlnt_member_d116_84f27914b88c.
      t28 = t29->find_direct_expressions( i_type_9913 = t31 ).
      DATA t32 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t32.
      DATA t33 TYPE REF TO object.
      CLEAR t33.
      DATA(t34) = VALUE i( ).
      DO.
        t28->load( ).
        IF t34 >= lines( t28->items ).
          EXIT.
        ENDIF.
        CLEAR t33.
        READ TABLE t28->items INDEX t34 + 1 INTO t33.
        t34 = t34 + 1.
        DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t35.
        CLEAR t32.
        IF t33 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t35 ?= t33.
          DATA t36 TYPE REF TO object.
          t36 = t35->as_ref( ).
          t32 ?= t36.
        ELSE.
          t32 ?= t33.
        ENDIF.
        DATA t37 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t38) = me->sinked.
        t37 = t38.
        DATA t39 TYPE string.
        DATA(t40) = t32.
        t39 = t40->concat_tokens( ).
        t37->load( ).
        APPEND t39 TO t37->items.
        t37->save( ).
      ENDDO.
    ENDDO.
  ENDMETHOD.

  METHOD set_sinked_from_method.
    DATA(t1) = i_s.
    DATA(t2) = i_file.
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t3.
    DATA(t4) = abap_true.
    IF t4 = abap_true.
      DATA t5 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t5.
      t3 = t5.
    ELSE.
      DATA t6 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t6.
      t3 = t6.
    ENDIF.
    me->sinked = t3.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `sinked`.
    DATA t7 TYPE REF TO zif_lnt_spaghetti_scope_node.
    CLEAR t7.
    DATA t8 TYPE REF TO zif_lnt_spaghetti_scope_node.
    CLEAR t8.
    DATA t9 TYPE REF TO zif_lnt_spaghetti_scope.
    DATA(t10) = me->syntax.
    t9 = t10->zlnt_view_read_sr_b6b1d9e0c93e( ).
    DATA t11 TYPE REF TO zcl_lnt_position.
    CLEAR t11.
    DATA(t12) = abap_true.
    IF t12 = abap_true.
      DATA t13 TYPE REF TO zcl_lnt_position.
      DATA t14 TYPE REF TO zcl_lnt_abstract_token.
      DATA t15 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t16) = t1.
      t15 = t16->get_last_token( ).
      t14 = t15.
      DATA t17 TYPE REF TO zcl_lnt_position.
      DATA t18 TYPE f.
      DATA t19 TYPE REF TO zcl_lnt_position.
      DATA t20 TYPE REF TO zcl_lnt_position.
      DATA(t21) = t14.
      t20 = t21->start.
      t19 = t20.
      DATA t22 TYPE f.
      DATA(t23) = t19.
      t22 = t23->row.
      t18 = t22.
      DATA t24 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t25 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t26 TYPE REF TO zcl_lnt_position.
      DATA t27 TYPE REF TO zcl_lnt_position.
      DATA(t28) = t14.
      t27 = t28->start.
      t26 = t27.
      DATA t29 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA(t30) = t26.
      t29 = t30->col.
      t25 = t29.
      DATA t31 TYPE f.
      DATA t32 TYPE i.
      DATA t33 TYPE string.
      DATA(t34) = t14.
      t33 = t34->str.
      DATA(t35) = strlen( t33 ).
      t32 = t35.
      t31 = t32.
      DATA(t36) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t36->has = abap_true.
      t36->value = t31.
      t24 = zlnt_runtime_numb_290eb04a9758=>calculate( left = t25 right = t36 op = `+` ).
      t17 = NEW zcl_lnt_position( i_row = t18 i_col = t24 ).
      t13 = t17.
      t11 = t13.
    ELSE.
      DATA t37 TYPE REF TO zcl_lnt_position.
      CLEAR t37.
      t11 = t37.
    ENDIF.
    DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t38.
    DATA(t39) = abap_true.
    IF t39 = abap_true.
      DATA t40 TYPE string.
      DATA t41 TYPE REF TO zcl_lnt_abstract_file.
      DATA(t42) = t2.
      t41 = t42.
      DATA t43 TYPE string.
      DATA(t44) = t41.
      t43 = t44->filename.
      t40 = t43.
      DATA(t45) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t45->has = abap_true.
      t45->value = t40.
      t38 = t45.
    ELSE.
      DATA t46 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t46.
      t38 = t46.
    ENDIF.
    t8 = t9->lookup_position( i_p = t11 i_filename = t38 ).
    t7 = t8.
    DATA t47 TYPE REF TO zcl_lnt_method_definition.
    DATA t48 TYPE REF TO zcl_lnt_method_definition.
    CLEAR t48.
    t47 = t48.
    DATA t49 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t49.
    DATA t50 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t50.
    DATA t51 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t51.
    DATA t52 TYPE REF TO zcl_lnt_iscope_data.
    CLEAR t52.
    DATA t53 TYPE REF TO zcl_lnt_iscope_data.
    CLEAR t53.
    DATA t54 TYPE REF TO zif_lnt_spaghetti_scope_node.
    DATA(t55) = t7.
    t54 = t55.
    DATA t56 TYPE REF TO zcl_lnt_iscope_data.
    CLEAR t56.
    DATA(t57) = VALUE abap_bool( ).
    DATA(t58) = t54.
    IF t58 IS INITIAL.
      t57 = abap_true.
    ENDIF.
    IF t57 = abap_true.
      DATA t59 TYPE REF TO zcl_lnt_iscope_data.
      CLEAR t59.
      t56 = t59.
    ELSE.
      DATA t60 TYPE REF TO zcl_lnt_iscope_data.
      DATA t61 TYPE REF TO zif_lnt_spaghetti_scope_node.
      DATA(t62) = t54.
      t61 = t62.
      t60 = t61->get_data( ).
      t56 = t60.
    ENDIF.
    t53 = t56.
    t52 = t53.
    DATA t63 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t63.
    DATA(t64) = VALUE abap_bool( ).
    DATA(t65) = t52.
    IF t65 IS INITIAL.
      t64 = abap_true.
    ENDIF.
    IF t64 = abap_true.
      DATA t66 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t66.
      t63 = t66.
    ELSE.
      DATA t67 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t68 TYPE REF TO zcl_lnt_iscope_data.
      DATA(t69) = t52.
      t68 = t69.
      t67 = t68->references.
      t63 = t67.
    ENDIF.
    t51 = t63.
    t50 = t51.
    DATA t70 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t70.
    DATA t71 TYPE abap_bool.
    DATA(t72) = t50.
    t71 = xsdbool( t72 IS BOUND ).
    IF t71 = abap_true.
      DATA t73 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t74) = t50.
      t73 = t74.
      t70 = t73.
    ELSE.
      DATA t75 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t75.
      t70 = t75.
    ENDIF.
    t49 = t70.
    DATA t76 TYPE REF TO zcl_lnt_ireference.
    CLEAR t76.
    DATA t77 TYPE REF TO object.
    CLEAR t77.
    DATA(t78) = VALUE i( ).
    DO.
      t49->load( ).
      IF t78 >= lines( t49->items ).
        EXIT.
      ENDIF.
      CLEAR t77.
      READ TABLE t49->items INDEX t78 + 1 INTO t77.
      t78 = t78 + 1.
      DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t79.
      CLEAR t76.
      IF t77 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t79 ?= t77.
        DATA t80 TYPE REF TO object.
        t80 = t79->as_ref( ).
        t76 ?= t80.
      ELSE.
        t76 ?= t77.
      ENDIF.
      DATA t81 TYPE abap_bool.
      DATA t82 TYPE abap_bool.
      DATA t83 TYPE string.
      DATA(t84) = t76.
      t83 = t84->reference_type.
      DATA(t85) = |Method Implementation|.
      t82 = xsdbool( t83 = t85 ).
      t81 = t82.
      IF t82 = abap_true.
        DATA t86 TYPE abap_bool.
        DATA t87 TYPE REF TO zcl_lnt_fi_identifier.
        DATA(t88) = t76.
        t87 = t88->resolved.
        t86 = xsdbool( t87 IS BOUND AND t87 IS INSTANCE OF zcl_lnt_method_definition ).
        t81 = t86.
      ENDIF.
      IF t81 = abap_true.
        DATA t89 TYPE REF TO zcl_lnt_method_definition.
        CLEAR t89.
        DATA(t90) = abap_true.
        IF t90 = abap_true.
          DATA t91 TYPE REF TO zcl_lnt_method_definition.
          DATA t92 TYPE REF TO zcl_lnt_fi_identifier.
          DATA(t93) = t76.
          t92 = t93->resolved.
          t91 ?= t92.
          t89 = t91.
        ELSE.
          DATA t94 TYPE REF TO zcl_lnt_method_definition.
          CLEAR t94.
          t89 = t94.
        ENDIF.
        t47 = t89.
        EXIT.
      ENDIF.
    ENDDO.
    DATA(t95) = VALUE abap_bool( ).
    DATA t96 TYPE REF TO zcl_lnt_method_definition.
    DATA(t97) = t47.
    t96 = t97.
    DATA t98 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t99.
    t98 = t99.
    DATA(t100) = VALUE abap_bool( ).
    DATA(t101) = t96.
    IF t101 IS INITIAL.
      t100 = abap_true.
    ENDIF.
    t95 = t100.
    IF t95 = abap_true.
      RETURN.
    ENDIF.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t102.
    DATA t103 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t104 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t105 TYPE REF TO zcl_lnt_method_definition.
    DATA t106 TYPE REF TO zcl_lnt_method_definition.
    DATA(t107) = t47.
    t106 = t107.
    t105 = t106.
    DATA t108 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t109) = t105.
    t108 = t109->raising.
    t104 = t108.
    t103 = t104.
    DATA t110 TYPE i.
    DATA t111 TYPE i.
    DATA(t112) = t103.
    t112->load( ).
    t111 = lines( t112->items ).
    t110 = t111.
    DATA t113 TYPE i.
    DATA(t114) = 0.
    t113 = t114.
    DO.
      DATA t115 TYPE abap_bool.
      DATA(t116) = t113.
      DATA(t117) = t110.
      t115 = xsdbool( t116 < t117 ).
      IF t115 = abap_false.
        EXIT.
      ENDIF.
      DATA t118 TYPE string.
      DATA t119 TYPE string.
      DATA t120 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t121) = t103.
      DATA(t122) = t113.
      t120 = t121->get( p0 = t122 ).
      t119 = t120->value.
      t118 = t119.
      DATA t123 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t123.
      DATA t124 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t125) = me->sinked.
      t124 = t125.
      DATA t126 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      CLEAR t126.
      DATA(t127) = VALUE abap_bool( ).
      DATA(t128) = t124.
      IF t128 IS INITIAL.
        t127 = abap_true.
      ENDIF.
      IF t127 = abap_true.
        DATA t129 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        CLEAR t129.
        t126 = t129.
      ELSE.
        DATA t130 TYPE f.
        DATA t131 TYPE i.
        DATA t132 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t133) = t124.
        t132 = t133.
        DATA(t134) = t118.
        t132->load( ).
        APPEND t134 TO t132->items.
        t131 = lines( t132->items ).
        t132->save( ).
        t130 = t131.
        DATA(t135) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
        t135->has = abap_true.
        t135->value = t130.
        t126 = t135.
      ENDIF.
      t123 = t126.
      DATA t136 TYPE i.
      DATA(t137) = t113.
      DATA(t138) = 1.
      t136 = t137 + t138.
      t113 = t136.
    ENDDO.
    DATA t139 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t139.
    t102 = t139.
  ENDMETHOD.

  METHOD is_sinked.
    DATA(t1) = i_name.
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = VALUE abap_bool( ).
    DATA t4 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t5) = me->sinked.
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t7.
    t6 = t7.
    DATA(t8) = VALUE abap_bool( ).
    DATA(t9) = t4.
    IF t9 IS INITIAL.
      t8 = abap_true.
    ENDIF.
    t3 = t8.
    t2 = t3.
    IF t3 = abap_false.
      DATA(t10) = VALUE abap_bool( ).
      DATA t11 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t12) = t1.
      t11 = t12.
      DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t14.
      t13 = t14.
      DATA(t15) = VALUE abap_bool( ).
      DATA(t16) = t11.
      IF t16 IS INITIAL.
        t15 = abap_true.
      ELSEIF t16->has = abap_false.
        t15 = abap_true.
      ENDIF.
      t10 = t15.
      t2 = t10.
    ENDIF.
    IF t2 = abap_true.
      DATA(t17) = abap_true.
      result = t17.
      RETURN.
    ENDIF.
    DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t18.
    DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t19.
    DATA(t20) = me->global_exceptions.
    DATA t21 TYPE string.
    DATA t22 TYPE string.
    DATA(t23) = t1.
    t22 = t23->value.
    DATA(t24) = strlen( t22 ).
    t21 = t22.
    IF t21 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t21 TO UPPER CASE.
    ELSE.
      t21 = zlnt_runtime_uppe_91169605024d=>full( t21 ).
    ENDIF.
    DATA(t25) = CAST zlnt_runtime_opti_7fb1553a12de( t20->get( p0 = t21 ) ).
    IF t25 IS BOUND.
      t19 = t25->value.
    ENDIF.
    t18 = t19.
    DATA(t26) = VALUE abap_bool( ).
    DATA(t27) = VALUE abap_bool( ).
    DATA(t28) = t18.
    DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t29.
    DATA(t30) = abap_true.
    IF t30 = abap_true.
      DATA(t31) = |CX_DYNAMIC_CHECK|.
      DATA(t32) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t32->has = abap_true.
      t32->value = t31.
      t29 = t32.
    ELSE.
      DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t33.
      t29 = t33.
    ENDIF.
    DATA(t34) = VALUE abap_bool( ).
    DATA(t35) = VALUE abap_bool( ).
    IF t28 IS BOUND.
      t34 = t28->has.
    ENDIF.
    IF t29 IS BOUND.
      t35 = t29->has.
    ENDIF.
    IF t34 = t35.
      IF t34 = abap_false.
        t27 = abap_true.
      ELSEIF t28->value = t29->value.
        t27 = abap_true.
      ENDIF.
    ENDIF.
    t26 = t27.
    IF t27 = abap_true.
      DATA t36 TYPE abap_bool.
      DATA t37 TYPE abap_bool.
      DATA(t38) = CAST zcl_lnt_uncght_excptn_cnf( me->gt_cn_in_sr_rl_un_ex_ts_un_exc( ) ).
      t37 = t38->zlnt_view_read_sr_54312afc1b0a( ).
      DATA(t39) = abap_true.
      t36 = xsdbool( t37 <> t39 ).
      t26 = t36.
    ENDIF.
    IF t26 = abap_true.
      DATA(t40) = abap_true.
      result = t40.
      RETURN.
    ENDIF.
    DATA(t41) = VALUE abap_bool( ).
    DATA(t42) = VALUE abap_bool( ).
    DATA(t43) = t18.
    DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t44.
    DATA(t45) = abap_true.
    IF t45 = abap_true.
      DATA(t46) = |CX_NO_CHECK|.
      DATA(t47) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t47->has = abap_true.
      t47->value = t46.
      t44 = t47.
    ELSE.
      DATA t48 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t48.
      t44 = t48.
    ENDIF.
    DATA(t49) = VALUE abap_bool( ).
    DATA(t50) = VALUE abap_bool( ).
    IF t43 IS BOUND.
      t49 = t43->has.
    ENDIF.
    IF t44 IS BOUND.
      t50 = t44->has.
    ENDIF.
    IF t49 = t50.
      IF t49 = abap_false.
        t42 = abap_true.
      ELSEIF t43->value = t44->value.
        t42 = abap_true.
      ENDIF.
    ENDIF.
    t41 = t42.
    IF t42 = abap_true.
      DATA t51 TYPE abap_bool.
      DATA t52 TYPE abap_bool.
      DATA(t53) = CAST zcl_lnt_uncght_excptn_cnf( me->gt_cn_in_sr_rl_un_ex_ts_un_exc( ) ).
      t52 = t53->zlnt_view_read_sr_d2c23be943f9( ).
      DATA(t54) = abap_true.
      t51 = xsdbool( t52 <> t54 ).
      t41 = t51.
    ENDIF.
    IF t41 = abap_true.
      DATA(t55) = abap_true.
      result = t55.
      RETURN.
    ENDIF.
    DATA t56 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t56.
    DATA t57 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t57.
    DATA(t58) = me->local_exceptions.
    DATA t59 TYPE string.
    DATA t60 TYPE string.
    DATA(t61) = t1.
    t60 = t61->value.
    DATA(t62) = strlen( t60 ).
    t59 = t60.
    IF t59 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t59 TO UPPER CASE.
    ELSE.
      t59 = zlnt_runtime_uppe_91169605024d=>full( t59 ).
    ENDIF.
    DATA(t63) = CAST zlnt_runtime_opti_7fb1553a12de( t58->get( p0 = t59 ) ).
    IF t63 IS BOUND.
      t57 = t63->value.
    ENDIF.
    t56 = t57.
    DATA(t64) = VALUE abap_bool( ).
    DATA(t65) = VALUE abap_bool( ).
    DATA(t66) = t56.
    DATA t67 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t67.
    DATA(t68) = abap_true.
    IF t68 = abap_true.
      DATA(t69) = |CX_DYNAMIC_CHECK|.
      DATA(t70) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t70->has = abap_true.
      t70->value = t69.
      t67 = t70.
    ELSE.
      DATA t71 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t71.
      t67 = t71.
    ENDIF.
    DATA(t72) = VALUE abap_bool( ).
    DATA(t73) = VALUE abap_bool( ).
    IF t66 IS BOUND.
      t72 = t66->has.
    ENDIF.
    IF t67 IS BOUND.
      t73 = t67->has.
    ENDIF.
    IF t72 = t73.
      IF t72 = abap_false.
        t65 = abap_true.
      ELSEIF t66->value = t67->value.
        t65 = abap_true.
      ENDIF.
    ENDIF.
    t64 = t65.
    IF t65 = abap_true.
      DATA t74 TYPE abap_bool.
      DATA t75 TYPE abap_bool.
      DATA(t76) = CAST zcl_lnt_uncght_excptn_cnf( me->gt_cn_in_sr_rl_un_ex_ts_un_exc( ) ).
      t75 = t76->zlnt_view_read_sr_54312afc1b0a( ).
      DATA(t77) = abap_true.
      t74 = xsdbool( t75 <> t77 ).
      t64 = t74.
    ENDIF.
    IF t64 = abap_true.
      DATA(t78) = abap_true.
      result = t78.
      RETURN.
    ENDIF.
    DATA(t79) = VALUE abap_bool( ).
    DATA(t80) = VALUE abap_bool( ).
    DATA(t81) = t56.
    DATA t82 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t82.
    DATA(t83) = abap_true.
    IF t83 = abap_true.
      DATA(t84) = |CX_NO_CHECK|.
      DATA(t85) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t85->has = abap_true.
      t85->value = t84.
      t82 = t85.
    ELSE.
      DATA t86 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t86.
      t82 = t86.
    ENDIF.
    DATA(t87) = VALUE abap_bool( ).
    DATA(t88) = VALUE abap_bool( ).
    IF t81 IS BOUND.
      t87 = t81->has.
    ENDIF.
    IF t82 IS BOUND.
      t88 = t82->has.
    ENDIF.
    IF t87 = t88.
      IF t87 = abap_false.
        t80 = abap_true.
      ELSEIF t81->value = t82->value.
        t80 = abap_true.
      ENDIF.
    ENDIF.
    t79 = t80.
    IF t80 = abap_true.
      DATA t89 TYPE abap_bool.
      DATA t90 TYPE abap_bool.
      DATA(t91) = CAST zcl_lnt_uncght_excptn_cnf( me->gt_cn_in_sr_rl_un_ex_ts_un_exc( ) ).
      t90 = t91->zlnt_view_read_sr_d2c23be943f9( ).
      DATA(t92) = abap_true.
      t89 = xsdbool( t90 <> t92 ).
      t79 = t89.
    ENDIF.
    IF t79 = abap_true.
      DATA(t93) = abap_true.
      result = t93.
      RETURN.
    ENDIF.
    DATA(t94) = VALUE abap_bool( ).
    DATA(t95) = VALUE abap_bool( ).
    DATA(t96) = VALUE abap_bool( ).
    DATA t97 TYPE abap_bool.
    DATA(t98) = abap_false.
    t97 = t98.
    DATA t99 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t100) = me->sinked.
    t99 = t100.
    DATA(t101) = VALUE string( ).
    t99->dense( ).
    DATA(t102) = VALUE i( ).
    DO.
      t99->load( ).
      IF t102 >= lines( t99->items ).
        EXIT.
      ENDIF.
      CLEAR t101.
      READ TABLE t99->items INDEX t102 + 1 INTO t101.
      IF t99->has( t102 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t102 = t102 + 1.
      DATA(t103) = VALUE abap_bool( ).
      DATA t104 TYPE string.
      DATA(t105) = t101.
      DATA(t106) = strlen( t105 ).
      t104 = t105.
      IF t104 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t104 TO UPPER CASE.
      ELSE.
        t104 = zlnt_runtime_uppe_91169605024d=>full( t104 ).
      ENDIF.
      DATA t107 TYPE string.
      DATA t108 TYPE string.
      DATA(t109) = t1.
      t108 = t109->value.
      DATA(t110) = strlen( t108 ).
      t107 = t108.
      IF t107 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t107 TO UPPER CASE.
      ELSE.
        t107 = zlnt_runtime_uppe_91169605024d=>full( t107 ).
      ENDIF.
      t103 = xsdbool( t104 = t107 ).
      IF t103 = abap_true.
        DATA(t111) = abap_true.
        t97 = t111.
        EXIT.
      ENDIF.
    ENDDO.
    DATA(t112) = t97.
    t96 = t112.
    t95 = t96.
    IF t96 = abap_false.
      DATA(t113) = VALUE abap_bool( ).
      DATA(t114) = VALUE abap_bool( ).
      DATA t115 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t116) = t18.
      t115 = t116.
      DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t118.
      t117 = t118.
      DATA(t119) = VALUE abap_bool( ).
      DATA(t120) = VALUE abap_bool( ).
      DATA(t121) = t115.
      IF t121 IS INITIAL.
        t120 = abap_true.
      ELSEIF t121->has = abap_false.
        t120 = abap_true.
      ENDIF.
      t119 = xsdbool( t120 = abap_false ).
      t114 = t119.
      t113 = t114.
      IF t114 = abap_true.
        DATA(t122) = VALUE abap_bool( ).
        DATA(t123) = VALUE abap_bool( ).
        DATA t124 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t124.
        DATA(t125) = abap_true.
        IF t125 = abap_true.
          DATA t126 TYPE string.
          DATA(t127) = t18.
          t126 = t127->value.
          DATA(t128) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t128->has = abap_true.
          t128->value = t126.
          t124 = t128.
        ELSE.
          DATA t129 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t129.
          t124 = t129.
        ENDIF.
        t123 = me->is_sinked( i_name = t124 ).
        DATA(t130) = abap_true.
        t122 = xsdbool( t123 = t130 ).
        t113 = t122.
      ENDIF.
      t95 = t113.
    ENDIF.
    t94 = t95.
    IF t95 = abap_false.
      DATA(t131) = VALUE abap_bool( ).
      DATA(t132) = VALUE abap_bool( ).
      DATA t133 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t134) = t56.
      t133 = t134.
      DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t136 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t136.
      t135 = t136.
      DATA(t137) = VALUE abap_bool( ).
      DATA(t138) = VALUE abap_bool( ).
      DATA(t139) = t133.
      IF t139 IS INITIAL.
        t138 = abap_true.
      ELSEIF t139->has = abap_false.
        t138 = abap_true.
      ENDIF.
      t137 = xsdbool( t138 = abap_false ).
      t132 = t137.
      t131 = t132.
      IF t132 = abap_true.
        DATA(t140) = VALUE abap_bool( ).
        DATA(t141) = VALUE abap_bool( ).
        DATA t142 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t142.
        DATA(t143) = abap_true.
        IF t143 = abap_true.
          DATA t144 TYPE string.
          DATA(t145) = t56.
          t144 = t145->value.
          DATA(t146) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t146->has = abap_true.
          t146->value = t144.
          t142 = t146.
        ELSE.
          DATA t147 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t147.
          t142 = t147.
        ENDIF.
        t141 = me->is_sinked( i_name = t142 ).
        DATA(t148) = abap_true.
        t140 = xsdbool( t141 = t148 ).
        t131 = t140.
      ENDIF.
      t94 = t131.
    ENDIF.
    result = t94.

  ENDMETHOD.

  METHOD find_global_exceptions.
    DATA t1 TYPE REF TO zlnt_runtime_map__70f58d75267f.
    CLEAR t1.
    DATA t2 TYPE REF TO zlnt_runtime_map__70f58d75267f.
    CLEAR t2.
    DATA(t3) = NEW zlnt_runtime_map__70f58d75267f( ).
    t2 = t3.
    DATA(t4) = t2.
    t1 = t4.
    me->global_exceptions = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `globalExceptions`.
    DATA t5 TYPE REF TO zcl_lnt_ddic.
    CLEAR t5.
    DATA t6 TYPE REF TO zcl_lnt_ddic.
    CLEAR t6.
    DATA(t7) = me->reg.
    t6 = NEW zcl_lnt_ddic( i_reg_f149 = t7 ).
    t5 = t6.
    DATA t8 TYPE REF TO zif_lnt_generator_8f73cd1c.
    CLEAR t8.
    DATA t9 TYPE REF TO zif_lnt_generator_8f73cd1c.
    CLEAR t9.
    DATA t10 TYPE REF TO zif_lnt_generator_8f73cd1c.
    CLEAR t10.
    DATA(t11) = me->reg.
    t10 = t11->get_objects( ).
    t9 = t10->iterate( ).
    t8 = t9.
    DO.
      DATA(t12) = abap_true.
      IF t12 = abap_false.
        EXIT.
      ENDIF.
      DATA t13 TYPE REF TO zcl_lnt_generator_17955b8b.
      CLEAR t13.
      DATA t14 TYPE REF TO zcl_lnt_generator_17955b8b.
      CLEAR t14.
      DATA(t15) = t8.
      t14 = t15->next( ).
      t13 = t14.
      DATA(t16) = VALUE abap_bool( ).
      DATA(t17) = t13.
      t16 = t17->done.
      IF t16 = abap_true.
        EXIT.
      ENDIF.
      DATA t18 TYPE REF TO zif_lnt_object.
      CLEAR t18.
      DATA t19 TYPE REF TO zif_lnt_object.
      CLEAR t19.
      DATA t20 TYPE REF TO zif_lnt_object.
      CLEAR t20.
      DATA(t21) = t13.
      t20 = t21->value.
      t19 = t20.
      t18 = t19.
      DATA(t22) = VALUE abap_bool( ).
      DATA(t23) = VALUE abap_bool( ).
      DATA(t24) = VALUE abap_bool( ).
      DATA(t25) = abap_false.
      t24 = t25.
      DATA t26 TYPE REF TO cx_root.
      CLEAR t26.
      TRY.
          DATA(t27) = VALUE abap_bool( ).
          DATA(t28) = VALUE abap_bool( ).
          DATA(t29) = t18.
          t28 = xsdbool( t29 IS BOUND AND t29 IS INSTANCE OF zcl_lnt_class ).
          t27 = xsdbool( t28 = abap_false ).
          t23 = t27.
          DATA(t30) = abap_true.
          t24 = t30.
        CATCH cx_root INTO t26.
          DATA(t31) = VALUE abap_bool( ).
          DATA(t32) = t24.
          t31 = xsdbool( t32 = abap_false ).
          IF t31 = abap_true.
            DATA(t33) = t8.
            t33->close( ).
          ENDIF.
          RAISE EXCEPTION t26.
      ENDTRY.
      DATA(t34) = VALUE abap_bool( ).
      DATA(t35) = t24.
      t34 = xsdbool( t35 = abap_false ).
      IF t34 = abap_true.
        DATA(t36) = t8.
        t36->close( ).
      ENDIF.
      DATA(t37) = t23.
      t22 = t37.
      IF t22 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t38 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t38.
      DATA t39 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t39.
      DATA t40 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t40.
      DATA(t41) = VALUE abap_bool( ).
      DATA(t42) = abap_false.
      t41 = t42.
      DATA t43 TYPE REF TO cx_root.
      CLEAR t43.
      TRY.
          DATA t44 TYPE REF TO zcl_lnt_info_class_definition.
          CLEAR t44.
          DATA t45 TYPE REF TO zif_lnt_abap_file_information.
          CLEAR t45.
          DATA t46 TYPE REF TO zif_lnt_abap_file_information.
          CLEAR t46.
          DATA t47 TYPE REF TO zcl_lnt_abap_file.
          CLEAR t47.
          DATA t48 TYPE REF TO zcl_lnt_abap_file.
          CLEAR t48.
          DATA t49 TYPE REF TO zcl_lnt_class.
          CLEAR t49.
          DATA(t50) = t18.
          DATA t51 TYPE REF TO object.
          CLEAR t51.
          t51 = t50.
          t49 ?= t51.
          t48 = t49->get_main_abap_file( ).
          t47 = t48.
          DATA t52 TYPE REF TO zif_lnt_abap_file_information.
          CLEAR t52.
          DATA(t53) = VALUE abap_bool( ).
          DATA(t54) = t47.
          IF t54 IS INITIAL.
            t53 = abap_true.
          ENDIF.
          IF t53 = abap_true.
            DATA t55 TYPE REF TO zif_lnt_abap_file_information.
            CLEAR t55.
            t52 = t55.
          ELSE.
            DATA t56 TYPE REF TO zif_lnt_abap_file_information.
            CLEAR t56.
            DATA t57 TYPE REF TO zcl_lnt_abap_file.
            CLEAR t57.
            DATA t58 TYPE REF TO zcl_lnt_abap_file.
            CLEAR t58.
            DATA(t59) = t47.
            t58 = t59.
            t57 = t58.
            DATA t60 TYPE REF TO zif_lnt_abap_file_information.
            CLEAR t60.
            DATA(t61) = t57.
            t60 = t61->info.
            t56 = t60.
            t52 = t56.
          ENDIF.
          t46 = t52.
          t45 = t46.
          DATA t62 TYPE REF TO zcl_lnt_info_class_definition.
          CLEAR t62.
          DATA(t63) = VALUE abap_bool( ).
          DATA(t64) = t45.
          IF t64 IS INITIAL.
            t63 = abap_true.
          ENDIF.
          IF t63 = abap_true.
            DATA t65 TYPE REF TO zcl_lnt_info_class_definition.
            CLEAR t65.
            t62 = t65.
          ELSE.
            DATA t66 TYPE REF TO zcl_lnt_info_class_definition.
            CLEAR t66.
            DATA t67 TYPE REF TO zif_lnt_abap_file_information.
            CLEAR t67.
            DATA(t68) = t45.
            t67 = t68.
            DATA(t69) = VALUE string( ).
            DATA t70 TYPE REF TO zcl_lnt_abstract_object.
            CLEAR t70.
            DATA t71 TYPE REF TO zcl_lnt_class.
            CLEAR t71.
            DATA(t72) = t18.
            DATA t73 TYPE REF TO object.
            CLEAR t73.
            t73 = t72.
            t71 ?= t73.
            t70 = t71.
            DATA(t74) = VALUE string( ).
            DATA(t75) = t70.
            t74 = t75->name.
            t69 = t74.
            t66 = t67->get_class_definition_by_name( i_name = t69 ).
            t62 = t66.
          ENDIF.
          t44 = t62.
          t40 = t44.
          DATA(t76) = abap_true.
          t41 = t76.
        CATCH cx_root INTO t43.
          DATA(t77) = VALUE abap_bool( ).
          DATA(t78) = t41.
          t77 = xsdbool( t78 = abap_false ).
          IF t77 = abap_true.
            DATA(t79) = t8.
            t79->close( ).
          ENDIF.
          RAISE EXCEPTION t43.
      ENDTRY.
      DATA(t80) = VALUE abap_bool( ).
      DATA(t81) = t41.
      t80 = xsdbool( t81 = abap_false ).
      IF t80 = abap_true.
        DATA(t82) = t8.
        t82->close( ).
      ENDIF.
      DATA(t83) = t40.
      t39 = t83.
      t38 = t39.
      DATA(t84) = VALUE abap_bool( ).
      DATA(t85) = VALUE abap_bool( ).
      DATA(t86) = VALUE abap_bool( ).
      DATA(t87) = abap_false.
      t86 = t87.
      DATA t88 TYPE REF TO cx_root.
      CLEAR t88.
      TRY.
          DATA(t89) = VALUE abap_bool( ).
          DATA(t90) = VALUE abap_bool( ).
          DATA t91 TYPE REF TO zcl_lnt_info_class_definition.
          CLEAR t91.
          DATA(t92) = t38.
          t91 = t92.
          DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t93.
          DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t94.
          t93 = t94.
          DATA(t95) = VALUE abap_bool( ).
          DATA(t96) = t91.
          IF t96 IS INITIAL.
            t95 = abap_true.
          ENDIF.
          t90 = t95.
          t89 = t90.
          IF t90 = abap_false.
            DATA(t97) = VALUE abap_bool( ).
            DATA(t98) = VALUE abap_bool( ).
            DATA(t99) = t5.
            DATA t100 TYPE REF TO zcl_lnt_info_class_definition.
            CLEAR t100.
            DATA(t101) = abap_true.
            IF t101 = abap_true.
              DATA t102 TYPE REF TO zcl_lnt_info_class_definition.
              CLEAR t102.
              DATA(t103) = t38.
              t102 = t103.
              t100 = t102.
            ELSE.
              DATA t104 TYPE REF TO zcl_lnt_info_class_definition.
              CLEAR t104.
              t100 = t104.
            ENDIF.
            DATA t105 TYPE REF TO zcl_lnt_class.
            CLEAR t105.
            DATA(t106) = t18.
            DATA t107 TYPE REF TO object.
            CLEAR t107.
            t107 = t106.
            t105 ?= t107.
            t98 = t99->is_exception( i_def = t100 i_obj_ac26 = t105 ).
            DATA(t108) = abap_false.
            t97 = xsdbool( t98 = t108 ).
            t89 = t97.
          ENDIF.
          t85 = t89.
          DATA(t109) = abap_true.
          t86 = t109.
        CATCH cx_root INTO t88.
          DATA(t110) = VALUE abap_bool( ).
          DATA(t111) = t86.
          t110 = xsdbool( t111 = abap_false ).
          IF t110 = abap_true.
            DATA(t112) = t8.
            t112->close( ).
          ENDIF.
          RAISE EXCEPTION t88.
      ENDTRY.
      DATA(t113) = VALUE abap_bool( ).
      DATA(t114) = t86.
      t113 = xsdbool( t114 = abap_false ).
      IF t113 = abap_true.
        DATA(t115) = t8.
        t115->close( ).
      ENDIF.
      DATA(t116) = t85.
      t84 = t116.
      IF t84 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t117 TYPE REF TO zlnt_runtime_map__70f58d75267f.
      CLEAR t117.
      DATA t118 TYPE REF TO zlnt_runtime_map__70f58d75267f.
      CLEAR t118.
      DATA(t119) = VALUE abap_bool( ).
      DATA(t120) = abap_false.
      t119 = t120.
      DATA t121 TYPE REF TO cx_root.
      CLEAR t121.
      TRY.
          DATA t122 TYPE REF TO zlnt_runtime_map__70f58d75267f.
          CLEAR t122.
          DATA(t123) = me->global_exceptions.
          DATA(t124) = VALUE string( ).
          DATA(t125) = VALUE string( ).
          DATA t126 TYPE REF TO zcl_lnt_abstract_object.
          CLEAR t126.
          DATA t127 TYPE REF TO zcl_lnt_class.
          CLEAR t127.
          DATA(t128) = t18.
          DATA t129 TYPE REF TO object.
          CLEAR t129.
          t129 = t128.
          t127 ?= t129.
          t126 = t127.
          DATA(t130) = VALUE string( ).
          DATA(t131) = t126.
          t130 = t131->name.
          t125 = t130.
          DATA(t132) = strlen( t125 ).
          t124 = t125.
          IF t124 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t124 TO UPPER CASE.
          ELSE.
            t124 = zlnt_runtime_uppe_91169605024d=>full( t124 ).
          ENDIF.
          DATA t133 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t133.
          DATA t134 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t134.
          DATA t135 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t135.
          DATA t136 TYPE REF TO zcl_lnt_info_class_definition.
          CLEAR t136.
          DATA(t137) = t38.
          t136 = t137.
          t135 = t136->super_class_name.
          t134 = t135.
          DATA t138 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t138.
          DATA(t139) = VALUE abap_bool( ).
          DATA(t140) = t134.
          IF t140 IS INITIAL.
            t139 = abap_true.
          ELSEIF t140->has = abap_false.
            t139 = abap_true.
          ENDIF.
          IF t139 = abap_true.
            DATA t141 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t141.
            t138 = t141.
          ELSE.
            DATA(t142) = VALUE string( ).
            DATA(t143) = VALUE string( ).
            DATA(t144) = t134.
            t143 = t144->value.
            DATA(t145) = strlen( t143 ).
            t142 = t143.
            IF t142 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t142 TO UPPER CASE.
            ELSE.
              t142 = zlnt_runtime_uppe_91169605024d=>full( t142 ).
            ENDIF.
            DATA(t146) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t146->has = abap_true.
            t146->value = t142.
            t138 = t146.
          ENDIF.
          t133 = t138.
          t122 = t123->set( p0 = t124 p1 = t133 ).
          t118 = t122.
          DATA(t147) = abap_true.
          t119 = t147.
        CATCH cx_root INTO t121.
          DATA(t148) = VALUE abap_bool( ).
          DATA(t149) = t119.
          t148 = xsdbool( t149 = abap_false ).
          IF t148 = abap_true.
            DATA(t150) = t8.
            t150->close( ).
          ENDIF.
          RAISE EXCEPTION t121.
      ENDTRY.
      DATA(t151) = VALUE abap_bool( ).
      DATA(t152) = t119.
      t151 = xsdbool( t152 = abap_false ).
      IF t151 = abap_true.
        DATA(t153) = t8.
        t153->close( ).
      ENDIF.
      DATA(t154) = t118.
      t117 = t154.
    ENDDO.
  ENDMETHOD.

  METHOD find_local_exceptions.
    DATA(t1) = i_obj_1ed0.
    DATA t2 TYPE REF TO zlnt_runtime_map__70f58d75267f.
    DATA t3 TYPE REF TO zlnt_runtime_map__70f58d75267f.
    DATA(t4) = NEW zlnt_runtime_map__70f58d75267f( ).
    t3 = t4.
    DATA(t5) = t3.
    t2 = t5.
    me->local_exceptions = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `localExceptions`.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE REF TO zcl_lnt_abap_object.
    DATA(t8) = t1.
    t7 = t8.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t10) = t7.
    t9 = t10->parsed.
    t6 = t9.
    DATA t11 TYPE REF TO zcl_lnt_abap_file.
    CLEAR t11.
    DATA t12 TYPE REF TO object.
    CLEAR t12.
    DATA(t13) = VALUE i( ).
    DO.
      t6->load( ).
      IF t13 >= lines( t6->items ).
        EXIT.
      ENDIF.
      CLEAR t12.
      READ TABLE t6->items INDEX t13 + 1 INTO t12.
      t13 = t13 + 1.
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t14.
      CLEAR t11.
      IF t12 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t14 ?= t12.
        DATA t15 TYPE REF TO object.
        t15 = t14->as_ref( ).
        t11 ?= t15.
      ELSE.
        t11 ?= t12.
      ENDIF.
      DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t17 TYPE REF TO zif_lnt_abap_file_information.
      DATA t18 TYPE REF TO zcl_lnt_abap_file.
      DATA(t19) = t11.
      t18 = t19.
      DATA t20 TYPE REF TO zif_lnt_abap_file_information.
      DATA(t21) = t18.
      t20 = t21->info.
      t17 = t20.
      t16 = t17->list_class_definitions( ).
      DATA t22 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t22.
      DATA t23 TYPE REF TO object.
      CLEAR t23.
      DATA(t24) = VALUE i( ).
      DO.
        t16->load( ).
        IF t24 >= lines( t16->items ).
          EXIT.
        ENDIF.
        CLEAR t23.
        READ TABLE t16->items INDEX t24 + 1 INTO t23.
        t24 = t24 + 1.
        DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t25.
        CLEAR t22.
        IF t23 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t25 ?= t23.
          DATA t26 TYPE REF TO object.
          t26 = t25->as_ref( ).
          t22 ?= t26.
        ELSE.
          t22 ?= t23.
        ENDIF.
        DATA(t27) = VALUE abap_bool( ).
        DATA(t28) = VALUE abap_bool( ).
        DATA t29 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        DATA(t30) = t22.
        t29 = t30->is_local.
        DATA t31 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t31.
        DATA(t32) = abap_true.
        IF t32 = abap_true.
          DATA(t33) = abap_true.
          DATA(t34) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t34->has = abap_true.
          t34->value = t33.
          t31 = t34.
        ELSE.
          DATA t35 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t35.
          t31 = t35.
        ENDIF.
        DATA(t36) = VALUE abap_bool( ).
        DATA(t37) = VALUE abap_bool( ).
        IF t29 IS BOUND.
          t36 = t29->has.
        ENDIF.
        IF t31 IS BOUND.
          t37 = t31->has.
        ENDIF.
        IF t36 = t37.
          IF t36 = abap_false.
            t28 = abap_true.
          ELSEIF t29->value = t31->value.
            t28 = abap_true.
          ENDIF.
        ENDIF.
        t27 = t28.
        IF t28 = abap_true.
          DATA(t38) = VALUE abap_bool( ).
          DATA t39 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t41) = t22.
          t40 = t41->super_class_name.
          t39 = t40.
          DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t43.
          t42 = t43.
          DATA(t44) = VALUE abap_bool( ).
          DATA(t45) = VALUE abap_bool( ).
          DATA(t46) = t39.
          IF t46 IS INITIAL.
            t45 = abap_true.
          ELSEIF t46->has = abap_false.
            t45 = abap_true.
          ENDIF.
          t44 = xsdbool( t45 = abap_false ).
          t38 = t44.
          t27 = t38.
        ENDIF.
        IF t27 = abap_true.
          DATA t47 TYPE REF TO zlnt_runtime_map__70f58d75267f.
          CLEAR t47.
          DATA(t48) = me->local_exceptions.
          DATA t49 TYPE string.
          DATA t50 TYPE string.
          DATA(t51) = t22.
          t50 = t51->name.
          DATA(t52) = strlen( t50 ).
          t49 = t50.
          IF t49 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t49 TO UPPER CASE.
          ELSE.
            t49 = zlnt_runtime_uppe_91169605024d=>full( t49 ).
          ENDIF.
          DATA t53 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t53.
          DATA(t54) = abap_true.
          IF t54 = abap_true.
            DATA t55 TYPE string.
            DATA t56 TYPE string.
            DATA t57 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t58) = t22.
            t57 = t58->super_class_name.
            t56 = t57->value.
            DATA(t59) = strlen( t56 ).
            t55 = t56.
            IF t55 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t55 TO UPPER CASE.
            ELSE.
              t55 = zlnt_runtime_uppe_91169605024d=>full( t55 ).
            ENDIF.
            DATA(t60) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t60->has = abap_true.
            t60->value = t55.
            t53 = t60.
          ELSE.
            DATA t61 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t61.
            t53 = t61.
          ENDIF.
          t47 = t48->set( p0 = t49 p1 = t53 ).
        ENDIF.
      ENDDO.
    ENDDO.
  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_uncght_excptn_cnf( me->gt_cn_in_sr_rl_un_ex_ts_un_exc( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_uncght_excptn_cnf( me->gt_cn_in_sr_rl_un_ex_ts_un_exc( ) ).
    result = t1.

  ENDMETHOD.

  METHOD initialize.
    DATA(t1) = i_reg_f149.
    DATA t2 TYPE REF TO zcl_lnt_uncaught_exception.
    DATA t3 TYPE REF TO zcl_lnt_abap_rule.
    DATA(t4) = t1.
    DATA(t5) = CAST zif_lnt_rule( super->initialize( i_reg_f149 = t4 ) ).
    t3 ?= t5.
    t2 ?= t3.
    me->find_global_exceptions( ).
    DATA(t6) = me.
    result = t6.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_uncght_excptn_cnf.
    CLEAR t1.
    CLEAR t1.
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
          CLEAR t2.
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
        t1 = NEW zcl_lnt_uncght_excptn_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->st_cn_in_sr_rl_un_ex_ts_un_exc( i_conf = t1 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1738_a4ede2e8d353.
  ENDMETHOD.
ENDCLASS.
