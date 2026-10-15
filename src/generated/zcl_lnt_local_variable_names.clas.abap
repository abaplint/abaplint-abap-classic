* TS: src/rules/local_variable_names.ts:22:1 LocalVariableNames
CLASS zcl_lnt_local_variable_names DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_lcl_vrbl_nms_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS get_description IMPORTING i_expected TYPE string i_actual TYPE string RETURNING VALUE(result) TYPE string.
    METHODS g_c_i_s_r_lc_vr_nm_ts_lc_vr_nm RETURNING VALUE(result) TYPE REF TO zcl_lnt_lcl_vrbl_nms_cnf.
    METHODS s_c_i_s_r_lc_vr_nm_ts_lc_vr_nm IMPORTING i_conf TYPE REF TO zcl_lnt_lcl_vrbl_nms_cnf.
    METHODS r_p_i_s_r_lc_vr_nm_ts_lc_vr_nm IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS check_locals IMPORTING i_structure TYPE REF TO zcl_lnt_structure_node i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS check_name IMPORTING i_token TYPE REF TO zcl_lnt_abstract_token i_file TYPE REF TO zcl_lnt_abap_file i_expected TYPE string RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_local_variable_names IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    DATA(t1) = NEW zcl_lnt_lcl_vrbl_nms_cnf( ).
    me->conf = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    CLEAR t1.
    DATA t2 TYPE string.
    DATA(t3) = |local_variable_names|.
    t2 = t3.
    DATA t4 TYPE string.
    DATA(t5) = |Local variable naming conventions|.
    t4 = t5.
    DATA t6 TYPE string.
    DATA(t7) = |\nAllows you to enforce a pattern, such as a prefix, for loca|.
    t7 = t7 && |l variables, constants and field symbols.\nRegexes are case-i|.
    t7 = t7 && |nsensitive.|.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t8.
    DATA t9 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA t11 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t13 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t13.
      t12 = t13.
      DATA(t14) = t12.
      DATA(t15) = |Naming|.
      t14->load( ).
      APPEND t15 TO t14->items.
      t14->save( ).
      DATA(t16) = t12.
      DATA(t17) = |SingleFile|.
      t16->load( ).
      APPEND t17 TO t16->items.
      t16->save( ).
      DATA(t18) = t12.
      t11 = t18.
      t9 = t11.
    ELSE.
      DATA t19 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t19.
      t9 = t19.
    ENDIF.
    t8 = t9.
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t20.
    DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t21.
    DATA(t22) = abap_true.
    IF t22 = abap_true.
      DATA(t23) = |FORM bar.\n  DATA foo.\nENDFORM.|.
      DATA(t24) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t24->has = abap_true.
      t24->value = t23.
      t21 = t24.
    ELSE.
      DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t25.
      t21 = t25.
    ENDIF.
    t20 = t21.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t26.
    DATA t27 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t27.
    DATA(t28) = abap_true.
    IF t28 = abap_true.
      DATA(t29) = |FORM bar.\n  DATA lv_foo.\nENDFORM.|.
      DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t30->has = abap_true.
      t30->value = t29.
      t27 = t30.
    ELSE.
      DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t31.
      t27 = t31.
    ENDIF.
    t26 = t27.
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t33.
    t32 = t33.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t35.
    t34 = t35.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t37.
    t36 = t37.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t20 i_good_example = t26 i_extended_information = t32 i_tags = t8 i_pragma = t34 i_pseudo_comment = t36 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t38.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t38 ).
    ENDIF.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t39.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t39 ).
    ENDIF.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t40 ).
    ENDIF.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t41.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t41 ).
    ENDIF.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t42 ).
    ENDIF.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t43.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t43 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t44) = |key|.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t44 p1 = t45 ).
    ENDIF.
    DATA(t46) = |title|.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t46 p1 = t47 ).
    ENDIF.
    DATA(t48) = |shortDescription|.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t49.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t48 p1 = t49 ).
    ENDIF.
    DATA(t50) = |tags|.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t51.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t50 p1 = t51 ).
    ENDIF.
    DATA(t52) = |badExample|.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t53.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t52 p1 = t53 ).
    ENDIF.
    DATA(t54) = |goodExample|.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t55.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t54 p1 = t55 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD get_description.
    DATA(t1) = i_expected.
    DATA(t2) = i_actual.
    DATA(t3) = VALUE string( ).
    DATA(t4) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t6) = me->conf.
    t5 = t6->zlnt_view_read_sr_ef452f77fd06( ).
    DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t7.
    DATA(t8) = abap_true.
    IF t8 = abap_true.
      DATA(t9) = |required|.
      DATA(t10) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t10->has = abap_true.
      t10->value = t9.
      t7 = t10.
    ELSE.
      DATA t11 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t11.
      t7 = t11.
    ENDIF.
    DATA(t12) = VALUE abap_bool( ).
    DATA(t13) = VALUE abap_bool( ).
    IF t5 IS BOUND.
      t12 = t5->has.
    ENDIF.
    IF t7 IS BOUND.
      t13 = t7->has.
    ENDIF.
    IF t12 = t13.
      IF t12 = abap_false.
        t4 = abap_true.
      ELSEIF t5->value = t7->value.
        t4 = abap_true.
      ENDIF.
    ENDIF.
    IF t4 = abap_true.
      DATA t14 TYPE string.
      DATA t15 TYPE string.
      DATA t16 TYPE string.
      DATA(t17) = |Local variable name does not match pattern |.
      DATA(t18) = t1.
      DATA(t19) = strlen( t17 ).
      t16 = |{ t17 }{ t18 }|.
      DATA(t20) = |: |.
      DATA(t21) = strlen( t16 ).
      t15 = |{ t16 }{ t20 }|.
      DATA(t22) = t2.
      DATA(t23) = strlen( t15 ).
      t14 = |{ t15 }{ t22 }|.
      t3 = t14.
    ELSE.
      DATA t24 TYPE string.
      DATA t25 TYPE string.
      DATA t26 TYPE string.
      DATA(t27) = |Local variable name must not match pattern |.
      DATA(t28) = t1.
      DATA(t29) = strlen( t27 ).
      t26 = |{ t27 }{ t28 }|.
      DATA(t30) = |: |.
      DATA(t31) = strlen( t26 ).
      t25 = |{ t26 }{ t30 }|.
      DATA(t32) = t2.
      DATA(t33) = strlen( t25 ).
      t24 = |{ t25 }{ t32 }|.
      t3 = t24.
    ENDIF.
    result = t3.

  ENDMETHOD.

  METHOD g_c_i_s_r_lc_vr_nm_ts_lc_vr_nm.
    DATA(t1) = me->conf.
    result = t1.

  ENDMETHOD.

  METHOD s_c_i_s_r_lc_vr_nm_ts_lc_vr_nm.
    DATA(t1) = i_conf.
    DATA(t2) = t1.
    me->conf = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_lc_vr_nm_ts_lc_vr_nm.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA(t4) = VALUE abap_bool( ).
    DATA t5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t6 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t7) = me->conf.
    t6 = t7->zlnt_view_read_sr_ef452f77fd06( ).
    t5 = t6.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t9.
    t8 = t9.
    DATA(t10) = VALUE abap_bool( ).
    DATA(t11) = t5.
    IF t11 IS INITIAL.
      t10 = abap_true.
    ELSEIF t11->has = abap_false.
      t10 = abap_true.
    ENDIF.
    t4 = t10.
    IF t4 = abap_true.
      DATA(t12) = me->conf.
      DATA t13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t13.
      DATA(t14) = abap_true.
      IF t14 = abap_true.
        DATA(t15) = |required|.
        DATA(t16) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t16->has = abap_true.
        t16->value = t15.
        t13 = t16.
      ELSE.
        DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t17.
        t13 = t17.
      ENDIF.
      t12->zlnt_view_write_s_9ebcbca32e92( p0 = t13 ).
    ENDIF.
    DATA t18 TYPE REF TO zcl_lnt_structure_node.
    DATA t19 TYPE REF TO zcl_lnt_structure_node.
    DATA t20 TYPE REF TO zcl_lnt_abap_file.
    DATA(t21) = t1.
    t20 = t21.
    DATA t22 TYPE REF TO zcl_lnt_structure_node.
    DATA(t23) = t20.
    t22 = t23->structure.
    t19 = t22.
    t18 = t19.
    DATA(t24) = VALUE abap_bool( ).
    DATA t25 TYPE REF TO zcl_lnt_structure_node.
    DATA(t26) = t18.
    t25 = t26.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t28.
    t27 = t28.
    DATA(t29) = VALUE abap_bool( ).
    DATA(t30) = t25.
    IF t30 IS INITIAL.
      t29 = abap_true.
    ENDIF.
    t24 = t29.
    IF t24 = abap_true.
      DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t31.
      result = t31.
      RETURN.
    ENDIF.
    DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t33 TYPE REF TO zcl_lnt_structure_node.
    DATA(t34) = t18.
    t33 = t34.
    DATA(t35) = zlnt_runtime_desc_78196487750d=>zlnt_member_d697_195ff21ba72a.
    t32 = t33->find_all_structures( i_type_9913 = t35 ).
    DATA t36 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t36.
    DATA t37 TYPE REF TO object.
    CLEAR t37.
    DATA(t38) = VALUE i( ).
    DO.
      t32->load( ).
      IF t38 >= lines( t32->items ).
        EXIT.
      ENDIF.
      CLEAR t37.
      READ TABLE t32->items INDEX t38 + 1 INTO t37.
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
      DATA(t41) = VALUE i( ).
      DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t43) = t36.
      DATA(t44) = t1.
      t42 = me->check_locals( i_structure = t43 i_file = t44 ).
      DATA t45 TYPE REF TO zcl_lnt_issue.
      CLEAR t45.
      DATA t46 TYPE REF TO object.
      CLEAR t46.
      DATA(t47) = VALUE i( ).
      DO.
        t42->load( ).
        IF t47 >= lines( t42->items ).
          EXIT.
        ENDIF.
        CLEAR t46.
        READ TABLE t42->items INDEX t47 + 1 INTO t46.
        t47 = t47 + 1.
        DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t48.
        CLEAR t45.
        IF t46 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t48 ?= t46.
          DATA t49 TYPE REF TO object.
          t49 = t48->as_ref( ).
          t45 ?= t49.
        ELSE.
          t45 ?= t46.
        ENDIF.
        DATA(t50) = t2.
        DATA(t51) = t45.
        t50->load( ).
        APPEND t51 TO t50->items.
        t50->save( ).
      ENDDO.
      DATA t52 TYPE i.
      DATA(t53) = t2.
      t53->load( ).
      t52 = lines( t53->items ).
      t41 = t52.
    ENDDO.
    DATA t54 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t55 TYPE REF TO zcl_lnt_structure_node.
    DATA(t56) = t18.
    t55 = t56.
    DATA(t57) = zlnt_runtime_desc_78196487750d=>zlnt_member_d721_06b6159f9afc.
    t54 = t55->find_all_structures( i_type_9913 = t57 ).
    DATA t58 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t58.
    DATA t59 TYPE REF TO object.
    CLEAR t59.
    DATA(t60) = VALUE i( ).
    DO.
      t54->load( ).
      IF t60 >= lines( t54->items ).
        EXIT.
      ENDIF.
      CLEAR t59.
      READ TABLE t54->items INDEX t60 + 1 INTO t59.
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
      DATA(t63) = VALUE i( ).
      DATA t64 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t65) = t58.
      DATA(t66) = t1.
      t64 = me->check_locals( i_structure = t65 i_file = t66 ).
      DATA t67 TYPE REF TO zcl_lnt_issue.
      CLEAR t67.
      DATA t68 TYPE REF TO object.
      CLEAR t68.
      DATA(t69) = VALUE i( ).
      DO.
        t64->load( ).
        IF t69 >= lines( t64->items ).
          EXIT.
        ENDIF.
        CLEAR t68.
        READ TABLE t64->items INDEX t69 + 1 INTO t68.
        t69 = t69 + 1.
        DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t70.
        CLEAR t67.
        IF t68 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t70 ?= t68.
          DATA t71 TYPE REF TO object.
          t71 = t70->as_ref( ).
          t67 ?= t71.
        ELSE.
          t67 ?= t68.
        ENDIF.
        DATA(t72) = t2.
        DATA(t73) = t67.
        t72->load( ).
        APPEND t73 TO t72->items.
        t72->save( ).
      ENDDO.
      DATA t74 TYPE i.
      DATA(t75) = t2.
      t75->load( ).
      t74 = lines( t75->items ).
      t63 = t74.
    ENDDO.
    DATA t76 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t77 TYPE REF TO zcl_lnt_structure_node.
    DATA(t78) = t18.
    t77 = t78.
    DATA(t79) = zlnt_runtime_desc_78196487750d=>zlnt_member_d699_5bd4c856ada5.
    t76 = t77->find_all_structures( i_type_9913 = t79 ).
    DATA t80 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t80.
    DATA t81 TYPE REF TO object.
    CLEAR t81.
    DATA(t82) = VALUE i( ).
    DO.
      t76->load( ).
      IF t82 >= lines( t76->items ).
        EXIT.
      ENDIF.
      CLEAR t81.
      READ TABLE t76->items INDEX t82 + 1 INTO t81.
      t82 = t82 + 1.
      DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t83.
      CLEAR t80.
      IF t81 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t83 ?= t81.
        DATA t84 TYPE REF TO object.
        t84 = t83->as_ref( ).
        t80 ?= t84.
      ELSE.
        t80 ?= t81.
      ENDIF.
      DATA(t85) = VALUE i( ).
      DATA t86 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t87) = t80.
      DATA(t88) = t1.
      t86 = me->check_locals( i_structure = t87 i_file = t88 ).
      DATA t89 TYPE REF TO zcl_lnt_issue.
      CLEAR t89.
      DATA t90 TYPE REF TO object.
      CLEAR t90.
      DATA(t91) = VALUE i( ).
      DO.
        t86->load( ).
        IF t91 >= lines( t86->items ).
          EXIT.
        ENDIF.
        CLEAR t90.
        READ TABLE t86->items INDEX t91 + 1 INTO t90.
        t91 = t91 + 1.
        DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t92.
        CLEAR t89.
        IF t90 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t92 ?= t90.
          DATA t93 TYPE REF TO object.
          t93 = t92->as_ref( ).
          t89 ?= t93.
        ELSE.
          t89 ?= t90.
        ENDIF.
        DATA(t94) = t2.
        DATA(t95) = t89.
        t94->load( ).
        APPEND t95 TO t94->items.
        t94->save( ).
      ENDDO.
      DATA t96 TYPE i.
      DATA(t97) = t2.
      t97->load( ).
      t96 = lines( t97->items ).
      t85 = t96.
    ENDDO.
    DATA(t98) = t2.
    result = t98.

  ENDMETHOD.

  METHOD check_locals.
    DATA(t1) = i_structure.
    DATA(t2) = i_file.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t6) = t1.
    DATA(t7) = zlnt_runtime_desc_78196487750d=>zlnt_member_d437_1e504b4be960.
    t5 = t6->find_all_statements( i_type_9913 = t7 ).
    DATA t8 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t8.
    DATA t9 TYPE REF TO object.
    CLEAR t9.
    DATA(t10) = VALUE i( ).
    DO.
      t5->load( ).
      IF t10 >= lines( t5->items ).
        EXIT.
      ENDIF.
      CLEAR t9.
      READ TABLE t5->items INDEX t10 + 1 INTO t9.
      t10 = t10 + 1.
      DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t11.
      CLEAR t8.
      IF t9 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t11 ?= t9.
        DATA t12 TYPE REF TO object.
        t12 = t11->as_ref( ).
        t8 ?= t12.
      ELSE.
        t8 ?= t9.
      ENDIF.
      DATA t13 TYPE REF TO zcl_lnt_structure_node.
      DATA t14 TYPE REF TO zcl_lnt_structure_node.
      DATA(t15) = t1.
      DATA(t16) = t8.
      t14 = t15->find_parent( i_node = t16 ).
      t13 = t14.
      DATA t17 TYPE abap_bool.
      DATA t18 TYPE abap_bool.
      DATA(t19) = t13.
      t18 = xsdbool( t19 IS BOUND ).
      t17 = t18.
      IF t18 = abap_true.
        DATA t20 TYPE abap_bool.
        DATA t21 TYPE REF TO zif_lnt_structure.
        DATA t22 TYPE REF TO zcl_lnt_structure_node.
        DATA(t23) = t13.
        t22 = t23.
        t21 = t22->gt_in_sr_ab_nd_st_nd_ts_str_nd( ).
        t20 = xsdbool( t21 IS BOUND AND t21 IS INSTANCE OF zcl_lnt_sr_data ).
        t17 = t20.
      ENDIF.
      IF t17 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t24 TYPE REF TO zcl_lnt_expression_node.
      DATA t25 TYPE REF TO zcl_lnt_expression_node.
      DATA(t26) = t8.
      DATA(t27) = zlnt_runtime_desc_78196487750d=>zlnt_member_d152_d99fb56fbc57.
      t25 = t26->find_first_expression( i_type_9913 = t27 ).
      t24 = t25.
      DATA t28 TYPE abap_bool.
      DATA(t29) = t24.
      t28 = xsdbool( t29 IS BOUND ).
      IF t28 = abap_true.
        DATA t30 TYPE REF TO zcl_lnt_abstract_token.
        DATA t31 TYPE REF TO zcl_lnt_abstract_token.
        DATA t32 TYPE REF TO zcl_lnt_expression_node.
        DATA(t33) = t24.
        t32 = t33.
        t31 = t32->get_first_token( ).
        t30 = t31.
        DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t34.
        DATA(t35) = t3.
        DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t36.
        DATA t37 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t38) = t30.
        t37 = t38.
        DATA t39 TYPE REF TO zcl_lnt_abap_file.
        DATA(t40) = t2.
        t39 = t40.
        DATA t41 TYPE string.
        DATA t42 TYPE string.
        DATA(t43) = me->conf.
        t42 = t43->zlnt_view_read_sr_2cb5fe9e0aa7( ).
        t41 = t42.
        DATA t44 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t44.
        DATA t45 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t46 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t46.
        t45 = t46.
        DATA t47 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        DATA t48 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        CLEAR t48.
        DATA(t49) = t41.
        DATA(t50) = |i|.
        CREATE OBJECT t48 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t49 flags = t50.
        t47 = t48.
        DATA t51 TYPE string.
        DATA t52 TYPE string.
        DATA t53 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t54) = t37.
        t53 = t54.
        DATA t55 TYPE string.
        DATA(t56) = t53.
        t55 = t56->str.
        t52 = t55.
        t51 = t52.
        DATA(t57) = VALUE abap_bool( ).
        DATA t58 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t58.
        DATA(t59) = abap_true.
        IF t59 = abap_true.
          DATA(t60) = t51.
          DATA(t61) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t61->has = abap_true.
          t61->value = t60.
          t58 = t61.
        ELSE.
          DATA t62 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t62.
          t58 = t62.
        ENDIF.
        DATA(t63) = t47.
        DATA(t64) = me->conf.
        t57 = zcl_lnt_name_validator=>violates_rule( i_name = t58 i_pattern = t63 i_params_4c59 = t64 ).
        IF t57 = abap_true.
          DATA(t65) = VALUE string( ).
          DATA(t66) = VALUE string( ).
          DATA t67 TYPE string.
          DATA(t68) = t41.
          t67 = t68.
          DATA t69 TYPE string.
          DATA(t70) = t51.
          t69 = t70.
          DATA(t71) = VALUE string( ).
          DATA(t72) = VALUE abap_bool( ).
          DATA t73 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t74) = me->conf.
          t73 = t74->zlnt_view_read_sr_ef452f77fd06( ).
          DATA t75 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t75.
          DATA(t76) = abap_true.
          IF t76 = abap_true.
            DATA(t77) = |required|.
            DATA(t78) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t78->has = abap_true.
            t78->value = t77.
            t75 = t78.
          ELSE.
            DATA t79 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t79.
            t75 = t79.
          ENDIF.
          DATA(t80) = VALUE abap_bool( ).
          DATA(t81) = VALUE abap_bool( ).
          IF t73 IS BOUND.
            t80 = t73->has.
          ENDIF.
          IF t75 IS BOUND.
            t81 = t75->has.
          ENDIF.
          IF t80 = t81.
            IF t80 = abap_false.
              t72 = abap_true.
            ELSEIF t73->value = t75->value.
              t72 = abap_true.
            ENDIF.
          ENDIF.
          IF t72 = abap_true.
            DATA t82 TYPE string.
            DATA t83 TYPE string.
            DATA t84 TYPE string.
            DATA(t85) = |Local variable name does not match pattern |.
            DATA(t86) = t67.
            DATA(t87) = strlen( t85 ).
            t84 = |{ t85 }{ t86 }|.
            DATA(t88) = |: |.
            DATA(t89) = strlen( t84 ).
            t83 = |{ t84 }{ t88 }|.
            DATA(t90) = t69.
            DATA(t91) = strlen( t83 ).
            t82 = |{ t83 }{ t90 }|.
            t71 = t82.
          ELSE.
            DATA t92 TYPE string.
            DATA t93 TYPE string.
            DATA t94 TYPE string.
            DATA(t95) = |Local variable name must not match pattern |.
            DATA(t96) = t67.
            DATA(t97) = strlen( t95 ).
            t94 = |{ t95 }{ t96 }|.
            DATA(t98) = |: |.
            DATA(t99) = strlen( t94 ).
            t93 = |{ t94 }{ t98 }|.
            DATA(t100) = t69.
            DATA(t101) = strlen( t93 ).
            t92 = |{ t93 }{ t100 }|.
            t71 = t92.
          ENDIF.
          t66 = t71.
          t65 = t66.
          DATA t102 TYPE REF TO zcl_lnt_issue.
          CLEAR t102.
          DATA t103 TYPE REF TO zcl_lnt_issue.
          CLEAR t103.
          DATA(t104) = t39.
          DATA(t105) = t37.
          DATA(t106) = t65.
          DATA(t107) = VALUE string( ).
          DATA t108 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t108.
          DATA t109 TYPE string.
          DATA(t110) = |local_variable_names|.
          t109 = t110.
          DATA t111 TYPE string.
          DATA(t112) = |Local variable naming conventions|.
          t111 = t112.
          DATA t113 TYPE string.
          DATA(t114) = |\nAllows you to enforce a pattern, such as a prefix, for loca|.
          t114 = t114 && |l variables, constants and field symbols.\nRegexes are case-i|.
          t114 = t114 && |nsensitive.|.
          t113 = t114.
          DATA t115 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t115.
          DATA t116 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t116.
          DATA(t117) = abap_true.
          IF t117 = abap_true.
            DATA t118 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t119 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t120 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t120.
            t119 = t120.
            DATA(t121) = t119.
            DATA(t122) = |Naming|.
            t121->load( ).
            APPEND t122 TO t121->items.
            t121->save( ).
            DATA(t123) = t119.
            DATA(t124) = |SingleFile|.
            t123->load( ).
            APPEND t124 TO t123->items.
            t123->save( ).
            DATA(t125) = t119.
            t118 = t125.
            t116 = t118.
          ELSE.
            DATA t126 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t126.
            t116 = t126.
          ENDIF.
          t115 = t116.
          DATA t127 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t127.
          DATA t128 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t128.
          DATA(t129) = abap_true.
          IF t129 = abap_true.
            DATA(t130) = |FORM bar.\n  DATA foo.\nENDFORM.|.
            DATA(t131) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t131->has = abap_true.
            t131->value = t130.
            t128 = t131.
          ELSE.
            DATA t132 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t132.
            t128 = t132.
          ENDIF.
          t127 = t128.
          DATA t133 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t133.
          DATA t134 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t134.
          DATA(t135) = abap_true.
          IF t135 = abap_true.
            DATA(t136) = |FORM bar.\n  DATA lv_foo.\nENDFORM.|.
            DATA(t137) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t137->has = abap_true.
            t137->value = t136.
            t134 = t137.
          ELSE.
            DATA t138 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t138.
            t134 = t138.
          ENDIF.
          t133 = t134.
          DATA t139 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t140 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t140.
          t139 = t140.
          DATA t141 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t142 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t142.
          t141 = t142.
          DATA t143 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t144 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t144.
          t143 = t144.
          t108 = NEW zcl_lnt_irule_metadata( i_key = t109 i_title = t111 i_short_description = t113 i_bad_example = t127 i_good_example = t133 i_extended_information = t139 i_tags = t115 i_pragma = t141 i_pseudo_comment = t143 ).
          CREATE OBJECT t108->zlnt_view_ownkeys_b0e8086400eb.
          t108->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t145 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t145.
          IF t108->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t108->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t145 ).
          ENDIF.
          DATA t146 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t146.
          IF t108->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t108->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t146 ).
          ENDIF.
          DATA t147 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t147.
          IF t108->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t108->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t147 ).
          ENDIF.
          DATA t148 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t148.
          IF t108->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t108->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t148 ).
          ENDIF.
          DATA t149 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t149.
          IF t108->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t108->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t149 ).
          ENDIF.
          DATA t150 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t150.
          IF t108->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t108->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t150 ).
          ENDIF.
          CREATE OBJECT t108->zlnt_json_ownkeys_70e5fd461788.
          t108->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t151) = |key|.
          DATA t152 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t152.
          IF t108->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t108->zlnt_json_ownkeys_70e5fd461788->put( p0 = t151 p1 = t152 ).
          ENDIF.
          DATA(t153) = |title|.
          DATA t154 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t154.
          IF t108->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t108->zlnt_json_ownkeys_70e5fd461788->put( p0 = t153 p1 = t154 ).
          ENDIF.
          DATA(t155) = |shortDescription|.
          DATA t156 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t156.
          IF t108->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t108->zlnt_json_ownkeys_70e5fd461788->put( p0 = t155 p1 = t156 ).
          ENDIF.
          DATA(t157) = |tags|.
          DATA t158 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t158.
          IF t108->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t108->zlnt_json_ownkeys_70e5fd461788->put( p0 = t157 p1 = t158 ).
          ENDIF.
          DATA(t159) = |badExample|.
          DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t160.
          IF t108->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t108->zlnt_json_ownkeys_70e5fd461788->put( p0 = t159 p1 = t160 ).
          ENDIF.
          DATA(t161) = |goodExample|.
          DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t162.
          IF t108->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t108->zlnt_json_ownkeys_70e5fd461788->put( p0 = t161 p1 = t162 ).
          ENDIF.
          t107 = t108->key.
          DATA t163 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t164) = me->conf.
          t163 = t164->zlnt_view_read_sr_15c06369f827( ).
          DATA t165 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t165.
          t103 = zcl_lnt_issue=>at_token( i_file = t104 i_token = t105 i_message_26cb = t106 i_key = t107 i_severity = t163 i_fix = t165 ).
          t102 = t103.
          DATA(t166) = t45.
          DATA(t167) = t102.
          t166->load( ).
          APPEND t167 TO t166->items.
          t166->save( ).
        ENDIF.
        DATA(t168) = t45.
        t44 = t168.
        t36 = t44.
        t34 = t35->concat( p0 = t36 ).
        t3 = t34.
      ENDIF.
    ENDDO.
    DATA t169 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t170) = t1.
    DATA(t171) = zlnt_runtime_desc_78196487750d=>zlnt_member_d203_a0e2832e9f27.
    t169 = t170->find_all_expressions( i_type_9913 = t171 ).
    DATA t172 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t172.
    DATA t173 TYPE REF TO object.
    CLEAR t173.
    DATA(t174) = VALUE i( ).
    DO.
      t169->load( ).
      IF t174 >= lines( t169->items ).
        EXIT.
      ENDIF.
      CLEAR t173.
      READ TABLE t169->items INDEX t174 + 1 INTO t173.
      t174 = t174 + 1.
      DATA t175 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t175.
      CLEAR t172.
      IF t173 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t175 ?= t173.
        DATA t176 TYPE REF TO object.
        t176 = t175->as_ref( ).
        t172 ?= t176.
      ELSE.
        t172 ?= t173.
      ENDIF.
      DATA t177 TYPE REF TO zcl_lnt_expression_node.
      DATA t178 TYPE REF TO zcl_lnt_expression_node.
      DATA(t179) = t172.
      DATA(t180) = zlnt_runtime_desc_78196487750d=>zlnt_member_d180_085bc4e4d844.
      t178 = t179->find_first_expression( i_type_9913 = t180 ).
      t177 = t178.
      DATA t181 TYPE abap_bool.
      DATA(t182) = t177.
      t181 = xsdbool( t182 IS BOUND ).
      IF t181 = abap_true.
        DATA t183 TYPE REF TO zcl_lnt_abstract_token.
        DATA t184 TYPE REF TO zcl_lnt_abstract_token.
        DATA t185 TYPE REF TO zcl_lnt_expression_node.
        DATA(t186) = t177.
        t185 = t186.
        t184 = t185->get_first_token( ).
        t183 = t184.
        DATA t187 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t187.
        DATA(t188) = t3.
        DATA t189 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t189.
        DATA t190 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t191) = t183.
        t190 = t191.
        DATA t192 TYPE REF TO zcl_lnt_abap_file.
        DATA(t193) = t2.
        t192 = t193.
        DATA t194 TYPE string.
        DATA t195 TYPE string.
        DATA(t196) = me->conf.
        t195 = t196->zlnt_view_read_sr_2cb5fe9e0aa7( ).
        t194 = t195.
        DATA t197 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t197.
        DATA t198 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t199 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t199.
        t198 = t199.
        DATA t200 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        DATA t201 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        CLEAR t201.
        DATA(t202) = t194.
        DATA(t203) = |i|.
        CREATE OBJECT t201 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t202 flags = t203.
        t200 = t201.
        DATA t204 TYPE string.
        DATA t205 TYPE string.
        DATA t206 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t207) = t190.
        t206 = t207.
        DATA t208 TYPE string.
        DATA(t209) = t206.
        t208 = t209->str.
        t205 = t208.
        t204 = t205.
        DATA(t210) = VALUE abap_bool( ).
        DATA t211 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t211.
        DATA(t212) = abap_true.
        IF t212 = abap_true.
          DATA(t213) = t204.
          DATA(t214) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t214->has = abap_true.
          t214->value = t213.
          t211 = t214.
        ELSE.
          DATA t215 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t215.
          t211 = t215.
        ENDIF.
        DATA(t216) = t200.
        DATA(t217) = me->conf.
        t210 = zcl_lnt_name_validator=>violates_rule( i_name = t211 i_pattern = t216 i_params_4c59 = t217 ).
        IF t210 = abap_true.
          DATA(t218) = VALUE string( ).
          DATA(t219) = VALUE string( ).
          DATA t220 TYPE string.
          DATA(t221) = t194.
          t220 = t221.
          DATA t222 TYPE string.
          DATA(t223) = t204.
          t222 = t223.
          DATA(t224) = VALUE string( ).
          DATA(t225) = VALUE abap_bool( ).
          DATA t226 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t227) = me->conf.
          t226 = t227->zlnt_view_read_sr_ef452f77fd06( ).
          DATA t228 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t228.
          DATA(t229) = abap_true.
          IF t229 = abap_true.
            DATA(t230) = |required|.
            DATA(t231) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t231->has = abap_true.
            t231->value = t230.
            t228 = t231.
          ELSE.
            DATA t232 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t232.
            t228 = t232.
          ENDIF.
          DATA(t233) = VALUE abap_bool( ).
          DATA(t234) = VALUE abap_bool( ).
          IF t226 IS BOUND.
            t233 = t226->has.
          ENDIF.
          IF t228 IS BOUND.
            t234 = t228->has.
          ENDIF.
          IF t233 = t234.
            IF t233 = abap_false.
              t225 = abap_true.
            ELSEIF t226->value = t228->value.
              t225 = abap_true.
            ENDIF.
          ENDIF.
          IF t225 = abap_true.
            DATA t235 TYPE string.
            DATA t236 TYPE string.
            DATA t237 TYPE string.
            DATA(t238) = |Local variable name does not match pattern |.
            DATA(t239) = t220.
            DATA(t240) = strlen( t238 ).
            t237 = |{ t238 }{ t239 }|.
            DATA(t241) = |: |.
            DATA(t242) = strlen( t237 ).
            t236 = |{ t237 }{ t241 }|.
            DATA(t243) = t222.
            DATA(t244) = strlen( t236 ).
            t235 = |{ t236 }{ t243 }|.
            t224 = t235.
          ELSE.
            DATA t245 TYPE string.
            DATA t246 TYPE string.
            DATA t247 TYPE string.
            DATA(t248) = |Local variable name must not match pattern |.
            DATA(t249) = t220.
            DATA(t250) = strlen( t248 ).
            t247 = |{ t248 }{ t249 }|.
            DATA(t251) = |: |.
            DATA(t252) = strlen( t247 ).
            t246 = |{ t247 }{ t251 }|.
            DATA(t253) = t222.
            DATA(t254) = strlen( t246 ).
            t245 = |{ t246 }{ t253 }|.
            t224 = t245.
          ENDIF.
          t219 = t224.
          t218 = t219.
          DATA t255 TYPE REF TO zcl_lnt_issue.
          CLEAR t255.
          DATA t256 TYPE REF TO zcl_lnt_issue.
          CLEAR t256.
          DATA(t257) = t192.
          DATA(t258) = t190.
          DATA(t259) = t218.
          DATA(t260) = VALUE string( ).
          DATA t261 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t261.
          DATA t262 TYPE string.
          DATA(t263) = |local_variable_names|.
          t262 = t263.
          DATA t264 TYPE string.
          DATA(t265) = |Local variable naming conventions|.
          t264 = t265.
          DATA t266 TYPE string.
          DATA(t267) = |\nAllows you to enforce a pattern, such as a prefix, for loca|.
          t267 = t267 && |l variables, constants and field symbols.\nRegexes are case-i|.
          t267 = t267 && |nsensitive.|.
          t266 = t267.
          DATA t268 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t268.
          DATA t269 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t269.
          DATA(t270) = abap_true.
          IF t270 = abap_true.
            DATA t271 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t272 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t273 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t273.
            t272 = t273.
            DATA(t274) = t272.
            DATA(t275) = |Naming|.
            t274->load( ).
            APPEND t275 TO t274->items.
            t274->save( ).
            DATA(t276) = t272.
            DATA(t277) = |SingleFile|.
            t276->load( ).
            APPEND t277 TO t276->items.
            t276->save( ).
            DATA(t278) = t272.
            t271 = t278.
            t269 = t271.
          ELSE.
            DATA t279 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t279.
            t269 = t279.
          ENDIF.
          t268 = t269.
          DATA t280 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t280.
          DATA t281 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t281.
          DATA(t282) = abap_true.
          IF t282 = abap_true.
            DATA(t283) = |FORM bar.\n  DATA foo.\nENDFORM.|.
            DATA(t284) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t284->has = abap_true.
            t284->value = t283.
            t281 = t284.
          ELSE.
            DATA t285 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t285.
            t281 = t285.
          ENDIF.
          t280 = t281.
          DATA t286 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t286.
          DATA t287 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t287.
          DATA(t288) = abap_true.
          IF t288 = abap_true.
            DATA(t289) = |FORM bar.\n  DATA lv_foo.\nENDFORM.|.
            DATA(t290) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t290->has = abap_true.
            t290->value = t289.
            t287 = t290.
          ELSE.
            DATA t291 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t291.
            t287 = t291.
          ENDIF.
          t286 = t287.
          DATA t292 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t293 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t293.
          t292 = t293.
          DATA t294 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t295 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t295.
          t294 = t295.
          DATA t296 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t297 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t297.
          t296 = t297.
          t261 = NEW zcl_lnt_irule_metadata( i_key = t262 i_title = t264 i_short_description = t266 i_bad_example = t280 i_good_example = t286 i_extended_information = t292 i_tags = t268 i_pragma = t294 i_pseudo_comment = t296 ).
          CREATE OBJECT t261->zlnt_view_ownkeys_b0e8086400eb.
          t261->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t298 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t298.
          IF t261->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t261->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t298 ).
          ENDIF.
          DATA t299 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t299.
          IF t261->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t261->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t299 ).
          ENDIF.
          DATA t300 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t300.
          IF t261->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t261->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t300 ).
          ENDIF.
          DATA t301 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t301.
          IF t261->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t261->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t301 ).
          ENDIF.
          DATA t302 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t302.
          IF t261->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t261->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t302 ).
          ENDIF.
          DATA t303 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t303.
          IF t261->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t261->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t303 ).
          ENDIF.
          CREATE OBJECT t261->zlnt_json_ownkeys_70e5fd461788.
          t261->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t304) = |key|.
          DATA t305 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t305.
          IF t261->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t261->zlnt_json_ownkeys_70e5fd461788->put( p0 = t304 p1 = t305 ).
          ENDIF.
          DATA(t306) = |title|.
          DATA t307 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t307.
          IF t261->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t261->zlnt_json_ownkeys_70e5fd461788->put( p0 = t306 p1 = t307 ).
          ENDIF.
          DATA(t308) = |shortDescription|.
          DATA t309 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t309.
          IF t261->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t261->zlnt_json_ownkeys_70e5fd461788->put( p0 = t308 p1 = t309 ).
          ENDIF.
          DATA(t310) = |tags|.
          DATA t311 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t311.
          IF t261->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t261->zlnt_json_ownkeys_70e5fd461788->put( p0 = t310 p1 = t311 ).
          ENDIF.
          DATA(t312) = |badExample|.
          DATA t313 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t313.
          IF t261->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t261->zlnt_json_ownkeys_70e5fd461788->put( p0 = t312 p1 = t313 ).
          ENDIF.
          DATA(t314) = |goodExample|.
          DATA t315 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t315.
          IF t261->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t261->zlnt_json_ownkeys_70e5fd461788->put( p0 = t314 p1 = t315 ).
          ENDIF.
          t260 = t261->key.
          DATA t316 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t317) = me->conf.
          t316 = t317->zlnt_view_read_sr_15c06369f827( ).
          DATA t318 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t318.
          t256 = zcl_lnt_issue=>at_token( i_file = t257 i_token = t258 i_message_26cb = t259 i_key = t260 i_severity = t316 i_fix = t318 ).
          t255 = t256.
          DATA(t319) = t198.
          DATA(t320) = t255.
          t319->load( ).
          APPEND t320 TO t319->items.
          t319->save( ).
        ENDIF.
        DATA(t321) = t198.
        t197 = t321.
        t189 = t197.
        t187 = t188->concat( p0 = t189 ).
        t3 = t187.
      ENDIF.
    ENDDO.
    DATA t322 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t323 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t324) = t1.
    DATA(t325) = zlnt_runtime_desc_78196487750d=>zlnt_member_d724_5dde4ab12008.
    t323 = t324->find_all_structures( i_type_9913 = t325 ).
    t322 = t323.
    DATA(t326) = t322.
    DATA t327 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t327.
    DATA t328 TYPE REF TO object.
    CLEAR t328.
    DATA(t329) = VALUE i( ).
    DO.
      t326->load( ).
      IF t329 >= lines( t326->items ).
        EXIT.
      ENDIF.
      CLEAR t328.
      READ TABLE t326->items INDEX t329 + 1 INTO t328.
      t329 = t329 + 1.
      DATA t330 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t330.
      CLEAR t327.
      IF t328 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t330 ?= t328.
        DATA t331 TYPE REF TO object.
        t331 = t330->as_ref( ).
        t327 ?= t331.
      ELSE.
        t327 ?= t328.
      ENDIF.
      DATA t332 TYPE REF TO zcl_lnt_statement_node.
      DATA t333 TYPE REF TO zcl_lnt_statement_node.
      DATA(t334) = t327.
      DATA(t335) = zlnt_runtime_desc_78196487750d=>zlnt_member_d438_3024048eff4c.
      t333 = t334->find_first_statement( i_type_9913 = t335 ).
      t332 = t333.
      DATA t336 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t336.
      DATA t337 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t337.
      DATA t338 TYPE REF TO zcl_lnt_statement_node.
      DATA(t339) = t332.
      t338 = t339.
      DATA t340 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t340.
      DATA(t341) = VALUE abap_bool( ).
      DATA(t342) = t338.
      IF t342 IS INITIAL.
        t341 = abap_true.
      ENDIF.
      IF t341 = abap_true.
        DATA t343 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t343.
        t340 = t343.
      ELSE.
        DATA t344 TYPE REF TO zcl_lnt_expression_node.
        DATA t345 TYPE REF TO zcl_lnt_statement_node.
        DATA(t346) = t338.
        t345 = t346.
        DATA(t347) = zlnt_runtime_desc_78196487750d=>zlnt_member_d152_d99fb56fbc57.
        t344 = t345->find_first_expression( i_type_9913 = t347 ).
        t340 = t344.
      ENDIF.
      t337 = t340.
      t336 = t337.
      DATA t348 TYPE abap_bool.
      DATA(t349) = t336.
      t348 = xsdbool( t349 IS BOUND ).
      IF t348 = abap_true.
        DATA t350 TYPE REF TO zcl_lnt_abstract_token.
        DATA t351 TYPE REF TO zcl_lnt_abstract_token.
        DATA t352 TYPE REF TO zcl_lnt_expression_node.
        DATA(t353) = t336.
        t352 = t353.
        t351 = t352->get_first_token( ).
        t350 = t351.
        DATA t354 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t354.
        DATA(t355) = t3.
        DATA t356 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t356.
        DATA t357 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t358) = t350.
        t357 = t358.
        DATA t359 TYPE REF TO zcl_lnt_abap_file.
        DATA(t360) = t2.
        t359 = t360.
        DATA t361 TYPE string.
        DATA t362 TYPE string.
        DATA(t363) = me->conf.
        t362 = t363->zlnt_view_read_sr_2cb5fe9e0aa7( ).
        t361 = t362.
        DATA t364 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t364.
        DATA t365 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t366 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t366.
        t365 = t366.
        DATA t367 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        DATA t368 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        CLEAR t368.
        DATA(t369) = t361.
        DATA(t370) = |i|.
        CREATE OBJECT t368 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t369 flags = t370.
        t367 = t368.
        DATA t371 TYPE string.
        DATA t372 TYPE string.
        DATA t373 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t374) = t357.
        t373 = t374.
        DATA t375 TYPE string.
        DATA(t376) = t373.
        t375 = t376->str.
        t372 = t375.
        t371 = t372.
        DATA(t377) = VALUE abap_bool( ).
        DATA t378 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t378.
        DATA(t379) = abap_true.
        IF t379 = abap_true.
          DATA(t380) = t371.
          DATA(t381) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t381->has = abap_true.
          t381->value = t380.
          t378 = t381.
        ELSE.
          DATA t382 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t382.
          t378 = t382.
        ENDIF.
        DATA(t383) = t367.
        DATA(t384) = me->conf.
        t377 = zcl_lnt_name_validator=>violates_rule( i_name = t378 i_pattern = t383 i_params_4c59 = t384 ).
        IF t377 = abap_true.
          DATA(t385) = VALUE string( ).
          DATA(t386) = VALUE string( ).
          DATA t387 TYPE string.
          DATA(t388) = t361.
          t387 = t388.
          DATA t389 TYPE string.
          DATA(t390) = t371.
          t389 = t390.
          DATA(t391) = VALUE string( ).
          DATA(t392) = VALUE abap_bool( ).
          DATA t393 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t394) = me->conf.
          t393 = t394->zlnt_view_read_sr_ef452f77fd06( ).
          DATA t395 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t395.
          DATA(t396) = abap_true.
          IF t396 = abap_true.
            DATA(t397) = |required|.
            DATA(t398) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t398->has = abap_true.
            t398->value = t397.
            t395 = t398.
          ELSE.
            DATA t399 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t399.
            t395 = t399.
          ENDIF.
          DATA(t400) = VALUE abap_bool( ).
          DATA(t401) = VALUE abap_bool( ).
          IF t393 IS BOUND.
            t400 = t393->has.
          ENDIF.
          IF t395 IS BOUND.
            t401 = t395->has.
          ENDIF.
          IF t400 = t401.
            IF t400 = abap_false.
              t392 = abap_true.
            ELSEIF t393->value = t395->value.
              t392 = abap_true.
            ENDIF.
          ENDIF.
          IF t392 = abap_true.
            DATA t402 TYPE string.
            DATA t403 TYPE string.
            DATA t404 TYPE string.
            DATA(t405) = |Local variable name does not match pattern |.
            DATA(t406) = t387.
            DATA(t407) = strlen( t405 ).
            t404 = |{ t405 }{ t406 }|.
            DATA(t408) = |: |.
            DATA(t409) = strlen( t404 ).
            t403 = |{ t404 }{ t408 }|.
            DATA(t410) = t389.
            DATA(t411) = strlen( t403 ).
            t402 = |{ t403 }{ t410 }|.
            t391 = t402.
          ELSE.
            DATA t412 TYPE string.
            DATA t413 TYPE string.
            DATA t414 TYPE string.
            DATA(t415) = |Local variable name must not match pattern |.
            DATA(t416) = t387.
            DATA(t417) = strlen( t415 ).
            t414 = |{ t415 }{ t416 }|.
            DATA(t418) = |: |.
            DATA(t419) = strlen( t414 ).
            t413 = |{ t414 }{ t418 }|.
            DATA(t420) = t389.
            DATA(t421) = strlen( t413 ).
            t412 = |{ t413 }{ t420 }|.
            t391 = t412.
          ENDIF.
          t386 = t391.
          t385 = t386.
          DATA t422 TYPE REF TO zcl_lnt_issue.
          CLEAR t422.
          DATA t423 TYPE REF TO zcl_lnt_issue.
          CLEAR t423.
          DATA(t424) = t359.
          DATA(t425) = t357.
          DATA(t426) = t385.
          DATA(t427) = VALUE string( ).
          DATA t428 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t428.
          DATA t429 TYPE string.
          DATA(t430) = |local_variable_names|.
          t429 = t430.
          DATA t431 TYPE string.
          DATA(t432) = |Local variable naming conventions|.
          t431 = t432.
          DATA t433 TYPE string.
          DATA(t434) = |\nAllows you to enforce a pattern, such as a prefix, for loca|.
          t434 = t434 && |l variables, constants and field symbols.\nRegexes are case-i|.
          t434 = t434 && |nsensitive.|.
          t433 = t434.
          DATA t435 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t435.
          DATA t436 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t436.
          DATA(t437) = abap_true.
          IF t437 = abap_true.
            DATA t438 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t439 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t440 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t440.
            t439 = t440.
            DATA(t441) = t439.
            DATA(t442) = |Naming|.
            t441->load( ).
            APPEND t442 TO t441->items.
            t441->save( ).
            DATA(t443) = t439.
            DATA(t444) = |SingleFile|.
            t443->load( ).
            APPEND t444 TO t443->items.
            t443->save( ).
            DATA(t445) = t439.
            t438 = t445.
            t436 = t438.
          ELSE.
            DATA t446 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t446.
            t436 = t446.
          ENDIF.
          t435 = t436.
          DATA t447 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t447.
          DATA t448 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t448.
          DATA(t449) = abap_true.
          IF t449 = abap_true.
            DATA(t450) = |FORM bar.\n  DATA foo.\nENDFORM.|.
            DATA(t451) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t451->has = abap_true.
            t451->value = t450.
            t448 = t451.
          ELSE.
            DATA t452 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t452.
            t448 = t452.
          ENDIF.
          t447 = t448.
          DATA t453 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t453.
          DATA t454 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t454.
          DATA(t455) = abap_true.
          IF t455 = abap_true.
            DATA(t456) = |FORM bar.\n  DATA lv_foo.\nENDFORM.|.
            DATA(t457) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t457->has = abap_true.
            t457->value = t456.
            t454 = t457.
          ELSE.
            DATA t458 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t458.
            t454 = t458.
          ENDIF.
          t453 = t454.
          DATA t459 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t460 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t460.
          t459 = t460.
          DATA t461 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t462 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t462.
          t461 = t462.
          DATA t463 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t464 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t464.
          t463 = t464.
          t428 = NEW zcl_lnt_irule_metadata( i_key = t429 i_title = t431 i_short_description = t433 i_bad_example = t447 i_good_example = t453 i_extended_information = t459 i_tags = t435 i_pragma = t461 i_pseudo_comment = t463 ).
          CREATE OBJECT t428->zlnt_view_ownkeys_b0e8086400eb.
          t428->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t465 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t465.
          IF t428->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t428->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t465 ).
          ENDIF.
          DATA t466 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t466.
          IF t428->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t428->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t466 ).
          ENDIF.
          DATA t467 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t467.
          IF t428->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t428->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t467 ).
          ENDIF.
          DATA t468 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t468.
          IF t428->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t428->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t468 ).
          ENDIF.
          DATA t469 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t469.
          IF t428->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t428->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t469 ).
          ENDIF.
          DATA t470 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t470.
          IF t428->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t428->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t470 ).
          ENDIF.
          CREATE OBJECT t428->zlnt_json_ownkeys_70e5fd461788.
          t428->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t471) = |key|.
          DATA t472 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t472.
          IF t428->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t428->zlnt_json_ownkeys_70e5fd461788->put( p0 = t471 p1 = t472 ).
          ENDIF.
          DATA(t473) = |title|.
          DATA t474 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t474.
          IF t428->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t428->zlnt_json_ownkeys_70e5fd461788->put( p0 = t473 p1 = t474 ).
          ENDIF.
          DATA(t475) = |shortDescription|.
          DATA t476 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t476.
          IF t428->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t428->zlnt_json_ownkeys_70e5fd461788->put( p0 = t475 p1 = t476 ).
          ENDIF.
          DATA(t477) = |tags|.
          DATA t478 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t478.
          IF t428->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t428->zlnt_json_ownkeys_70e5fd461788->put( p0 = t477 p1 = t478 ).
          ENDIF.
          DATA(t479) = |badExample|.
          DATA t480 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t480.
          IF t428->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t428->zlnt_json_ownkeys_70e5fd461788->put( p0 = t479 p1 = t480 ).
          ENDIF.
          DATA(t481) = |goodExample|.
          DATA t482 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t482.
          IF t428->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t428->zlnt_json_ownkeys_70e5fd461788->put( p0 = t481 p1 = t482 ).
          ENDIF.
          t427 = t428->key.
          DATA t483 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t484) = me->conf.
          t483 = t484->zlnt_view_read_sr_15c06369f827( ).
          DATA t485 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t485.
          t423 = zcl_lnt_issue=>at_token( i_file = t424 i_token = t425 i_message_26cb = t426 i_key = t427 i_severity = t483 i_fix = t485 ).
          t422 = t423.
          DATA(t486) = t365.
          DATA(t487) = t422.
          t486->load( ).
          APPEND t487 TO t486->items.
          t486->save( ).
        ENDIF.
        DATA(t488) = t365.
        t364 = t488.
        t356 = t364.
        t354 = t355->concat( p0 = t356 ).
        t3 = t354.
      ENDIF.
    ENDDO.
    DATA t489 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t490) = t1.
    DATA(t491) = zlnt_runtime_desc_78196487750d=>zlnt_member_d498_bacf37b32951.
    t489 = t490->find_all_statements( i_type_9913 = t491 ).
    DATA t492 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t492.
    DATA t493 TYPE REF TO object.
    CLEAR t493.
    DATA(t494) = VALUE i( ).
    DO.
      t489->load( ).
      IF t494 >= lines( t489->items ).
        EXIT.
      ENDIF.
      CLEAR t493.
      READ TABLE t489->items INDEX t494 + 1 INTO t493.
      t494 = t494 + 1.
      DATA t495 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t495.
      CLEAR t492.
      IF t493 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t495 ?= t493.
        DATA t496 TYPE REF TO object.
        t496 = t495->as_ref( ).
        t492 ?= t496.
      ELSE.
        t492 ?= t493.
      ENDIF.
      DATA t497 TYPE REF TO zcl_lnt_expression_node.
      DATA t498 TYPE REF TO zcl_lnt_expression_node.
      DATA(t499) = t492.
      DATA(t500) = zlnt_runtime_desc_78196487750d=>zlnt_member_d172_090204a1a05d.
      t498 = t499->find_first_expression( i_type_9913 = t500 ).
      t497 = t498.
      DATA t501 TYPE abap_bool.
      DATA(t502) = t497.
      t501 = xsdbool( t502 IS BOUND ).
      IF t501 = abap_true.
        DATA t503 TYPE REF TO zcl_lnt_abstract_token.
        DATA t504 TYPE REF TO zcl_lnt_abstract_token.
        DATA t505 TYPE REF TO zcl_lnt_expression_node.
        DATA(t506) = t497.
        t505 = t506.
        t504 = t505->get_first_token( ).
        t503 = t504.
        DATA t507 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t507.
        DATA(t508) = t3.
        DATA t509 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t509.
        DATA t510 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t511) = t503.
        t510 = t511.
        DATA t512 TYPE REF TO zcl_lnt_abap_file.
        DATA(t513) = t2.
        t512 = t513.
        DATA t514 TYPE string.
        DATA t515 TYPE string.
        DATA(t516) = me->conf.
        t515 = t516->zlnt_view_read_sr_6ea768f84b35( ).
        t514 = t515.
        DATA t517 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t517.
        DATA t518 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t519 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t519.
        t518 = t519.
        DATA t520 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        DATA t521 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        CLEAR t521.
        DATA(t522) = t514.
        DATA(t523) = |i|.
        CREATE OBJECT t521 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t522 flags = t523.
        t520 = t521.
        DATA t524 TYPE string.
        DATA t525 TYPE string.
        DATA t526 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t527) = t510.
        t526 = t527.
        DATA t528 TYPE string.
        DATA(t529) = t526.
        t528 = t529->str.
        t525 = t528.
        t524 = t525.
        DATA(t530) = VALUE abap_bool( ).
        DATA t531 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t531.
        DATA(t532) = abap_true.
        IF t532 = abap_true.
          DATA(t533) = t524.
          DATA(t534) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t534->has = abap_true.
          t534->value = t533.
          t531 = t534.
        ELSE.
          DATA t535 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t535.
          t531 = t535.
        ENDIF.
        DATA(t536) = t520.
        DATA(t537) = me->conf.
        t530 = zcl_lnt_name_validator=>violates_rule( i_name = t531 i_pattern = t536 i_params_4c59 = t537 ).
        IF t530 = abap_true.
          DATA(t538) = VALUE string( ).
          DATA(t539) = VALUE string( ).
          DATA t540 TYPE string.
          DATA(t541) = t514.
          t540 = t541.
          DATA t542 TYPE string.
          DATA(t543) = t524.
          t542 = t543.
          DATA(t544) = VALUE string( ).
          DATA(t545) = VALUE abap_bool( ).
          DATA t546 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t547) = me->conf.
          t546 = t547->zlnt_view_read_sr_ef452f77fd06( ).
          DATA t548 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t548.
          DATA(t549) = abap_true.
          IF t549 = abap_true.
            DATA(t550) = |required|.
            DATA(t551) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t551->has = abap_true.
            t551->value = t550.
            t548 = t551.
          ELSE.
            DATA t552 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t552.
            t548 = t552.
          ENDIF.
          DATA(t553) = VALUE abap_bool( ).
          DATA(t554) = VALUE abap_bool( ).
          IF t546 IS BOUND.
            t553 = t546->has.
          ENDIF.
          IF t548 IS BOUND.
            t554 = t548->has.
          ENDIF.
          IF t553 = t554.
            IF t553 = abap_false.
              t545 = abap_true.
            ELSEIF t546->value = t548->value.
              t545 = abap_true.
            ENDIF.
          ENDIF.
          IF t545 = abap_true.
            DATA t555 TYPE string.
            DATA t556 TYPE string.
            DATA t557 TYPE string.
            DATA(t558) = |Local variable name does not match pattern |.
            DATA(t559) = t540.
            DATA(t560) = strlen( t558 ).
            t557 = |{ t558 }{ t559 }|.
            DATA(t561) = |: |.
            DATA(t562) = strlen( t557 ).
            t556 = |{ t557 }{ t561 }|.
            DATA(t563) = t542.
            DATA(t564) = strlen( t556 ).
            t555 = |{ t556 }{ t563 }|.
            t544 = t555.
          ELSE.
            DATA t565 TYPE string.
            DATA t566 TYPE string.
            DATA t567 TYPE string.
            DATA(t568) = |Local variable name must not match pattern |.
            DATA(t569) = t540.
            DATA(t570) = strlen( t568 ).
            t567 = |{ t568 }{ t569 }|.
            DATA(t571) = |: |.
            DATA(t572) = strlen( t567 ).
            t566 = |{ t567 }{ t571 }|.
            DATA(t573) = t542.
            DATA(t574) = strlen( t566 ).
            t565 = |{ t566 }{ t573 }|.
            t544 = t565.
          ENDIF.
          t539 = t544.
          t538 = t539.
          DATA t575 TYPE REF TO zcl_lnt_issue.
          CLEAR t575.
          DATA t576 TYPE REF TO zcl_lnt_issue.
          CLEAR t576.
          DATA(t577) = t512.
          DATA(t578) = t510.
          DATA(t579) = t538.
          DATA(t580) = VALUE string( ).
          DATA t581 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t581.
          DATA t582 TYPE string.
          DATA(t583) = |local_variable_names|.
          t582 = t583.
          DATA t584 TYPE string.
          DATA(t585) = |Local variable naming conventions|.
          t584 = t585.
          DATA t586 TYPE string.
          DATA(t587) = |\nAllows you to enforce a pattern, such as a prefix, for loca|.
          t587 = t587 && |l variables, constants and field symbols.\nRegexes are case-i|.
          t587 = t587 && |nsensitive.|.
          t586 = t587.
          DATA t588 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t588.
          DATA t589 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t589.
          DATA(t590) = abap_true.
          IF t590 = abap_true.
            DATA t591 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t592 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t593 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t593.
            t592 = t593.
            DATA(t594) = t592.
            DATA(t595) = |Naming|.
            t594->load( ).
            APPEND t595 TO t594->items.
            t594->save( ).
            DATA(t596) = t592.
            DATA(t597) = |SingleFile|.
            t596->load( ).
            APPEND t597 TO t596->items.
            t596->save( ).
            DATA(t598) = t592.
            t591 = t598.
            t589 = t591.
          ELSE.
            DATA t599 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t599.
            t589 = t599.
          ENDIF.
          t588 = t589.
          DATA t600 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t600.
          DATA t601 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t601.
          DATA(t602) = abap_true.
          IF t602 = abap_true.
            DATA(t603) = |FORM bar.\n  DATA foo.\nENDFORM.|.
            DATA(t604) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t604->has = abap_true.
            t604->value = t603.
            t601 = t604.
          ELSE.
            DATA t605 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t605.
            t601 = t605.
          ENDIF.
          t600 = t601.
          DATA t606 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t606.
          DATA t607 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t607.
          DATA(t608) = abap_true.
          IF t608 = abap_true.
            DATA(t609) = |FORM bar.\n  DATA lv_foo.\nENDFORM.|.
            DATA(t610) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t610->has = abap_true.
            t610->value = t609.
            t607 = t610.
          ELSE.
            DATA t611 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t611.
            t607 = t611.
          ENDIF.
          t606 = t607.
          DATA t612 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t613 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t613.
          t612 = t613.
          DATA t614 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t615 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t615.
          t614 = t615.
          DATA t616 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t617 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t617.
          t616 = t617.
          t581 = NEW zcl_lnt_irule_metadata( i_key = t582 i_title = t584 i_short_description = t586 i_bad_example = t600 i_good_example = t606 i_extended_information = t612 i_tags = t588 i_pragma = t614 i_pseudo_comment = t616 ).
          CREATE OBJECT t581->zlnt_view_ownkeys_b0e8086400eb.
          t581->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t618 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t618.
          IF t581->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t581->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t618 ).
          ENDIF.
          DATA t619 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t619.
          IF t581->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t581->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t619 ).
          ENDIF.
          DATA t620 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t620.
          IF t581->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t581->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t620 ).
          ENDIF.
          DATA t621 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t621.
          IF t581->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t581->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t621 ).
          ENDIF.
          DATA t622 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t622.
          IF t581->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t581->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t622 ).
          ENDIF.
          DATA t623 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t623.
          IF t581->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t581->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t623 ).
          ENDIF.
          CREATE OBJECT t581->zlnt_json_ownkeys_70e5fd461788.
          t581->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t624) = |key|.
          DATA t625 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t625.
          IF t581->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t581->zlnt_json_ownkeys_70e5fd461788->put( p0 = t624 p1 = t625 ).
          ENDIF.
          DATA(t626) = |title|.
          DATA t627 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t627.
          IF t581->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t581->zlnt_json_ownkeys_70e5fd461788->put( p0 = t626 p1 = t627 ).
          ENDIF.
          DATA(t628) = |shortDescription|.
          DATA t629 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t629.
          IF t581->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t581->zlnt_json_ownkeys_70e5fd461788->put( p0 = t628 p1 = t629 ).
          ENDIF.
          DATA(t630) = |tags|.
          DATA t631 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t631.
          IF t581->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t581->zlnt_json_ownkeys_70e5fd461788->put( p0 = t630 p1 = t631 ).
          ENDIF.
          DATA(t632) = |badExample|.
          DATA t633 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t633.
          IF t581->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t581->zlnt_json_ownkeys_70e5fd461788->put( p0 = t632 p1 = t633 ).
          ENDIF.
          DATA(t634) = |goodExample|.
          DATA t635 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t635.
          IF t581->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t581->zlnt_json_ownkeys_70e5fd461788->put( p0 = t634 p1 = t635 ).
          ENDIF.
          t580 = t581->key.
          DATA t636 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t637) = me->conf.
          t636 = t637->zlnt_view_read_sr_15c06369f827( ).
          DATA t638 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t638.
          t576 = zcl_lnt_issue=>at_token( i_file = t577 i_token = t578 i_message_26cb = t579 i_key = t580 i_severity = t636 i_fix = t638 ).
          t575 = t576.
          DATA(t639) = t518.
          DATA(t640) = t575.
          t639->load( ).
          APPEND t640 TO t639->items.
          t639->save( ).
        ENDIF.
        DATA(t641) = t518.
        t517 = t641.
        t509 = t517.
        t507 = t508->concat( p0 = t509 ).
        t3 = t507.
      ENDIF.
    ENDDO.
    DATA t642 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t643) = t1.
    DATA(t644) = zlnt_runtime_desc_78196487750d=>zlnt_member_d193_7f7e5054ef0a.
    t642 = t643->find_all_expressions( i_type_9913 = t644 ).
    DATA t645 TYPE REF TO zcl_lnt_expression_node.
    CLEAR t645.
    DATA t646 TYPE REF TO object.
    CLEAR t646.
    DATA(t647) = VALUE i( ).
    DO.
      t642->load( ).
      IF t647 >= lines( t642->items ).
        EXIT.
      ENDIF.
      CLEAR t646.
      READ TABLE t642->items INDEX t647 + 1 INTO t646.
      t647 = t647 + 1.
      DATA t648 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t648.
      CLEAR t645.
      IF t646 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t648 ?= t646.
        DATA t649 TYPE REF TO object.
        t649 = t648->as_ref( ).
        t645 ?= t649.
      ELSE.
        t645 ?= t646.
      ENDIF.
      DATA t650 TYPE REF TO zcl_lnt_expression_node.
      DATA t651 TYPE REF TO zcl_lnt_expression_node.
      DATA(t652) = t645.
      DATA(t653) = zlnt_runtime_desc_78196487750d=>zlnt_member_d181_df35d03977d7.
      t651 = t652->find_first_expression( i_type_9913 = t653 ).
      t650 = t651.
      DATA t654 TYPE abap_bool.
      DATA(t655) = t650.
      t654 = xsdbool( t655 IS BOUND ).
      IF t654 = abap_true.
        DATA t656 TYPE REF TO zcl_lnt_abstract_token.
        DATA t657 TYPE REF TO zcl_lnt_abstract_token.
        DATA t658 TYPE REF TO zcl_lnt_expression_node.
        DATA(t659) = t650.
        t658 = t659.
        t657 = t658->get_first_token( ).
        t656 = t657.
        DATA t660 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t660.
        DATA(t661) = t3.
        DATA t662 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t662.
        DATA t663 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t664) = t656.
        t663 = t664.
        DATA t665 TYPE REF TO zcl_lnt_abap_file.
        DATA(t666) = t2.
        t665 = t666.
        DATA t667 TYPE string.
        DATA t668 TYPE string.
        DATA(t669) = me->conf.
        t668 = t669->zlnt_view_read_sr_6ea768f84b35( ).
        t667 = t668.
        DATA t670 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t670.
        DATA t671 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t672 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t672.
        t671 = t672.
        DATA t673 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        DATA t674 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        CLEAR t674.
        DATA(t675) = t667.
        DATA(t676) = |i|.
        CREATE OBJECT t674 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t675 flags = t676.
        t673 = t674.
        DATA t677 TYPE string.
        DATA t678 TYPE string.
        DATA t679 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t680) = t663.
        t679 = t680.
        DATA t681 TYPE string.
        DATA(t682) = t679.
        t681 = t682->str.
        t678 = t681.
        t677 = t678.
        DATA(t683) = VALUE abap_bool( ).
        DATA t684 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t684.
        DATA(t685) = abap_true.
        IF t685 = abap_true.
          DATA(t686) = t677.
          DATA(t687) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t687->has = abap_true.
          t687->value = t686.
          t684 = t687.
        ELSE.
          DATA t688 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t688.
          t684 = t688.
        ENDIF.
        DATA(t689) = t673.
        DATA(t690) = me->conf.
        t683 = zcl_lnt_name_validator=>violates_rule( i_name = t684 i_pattern = t689 i_params_4c59 = t690 ).
        IF t683 = abap_true.
          DATA(t691) = VALUE string( ).
          DATA(t692) = VALUE string( ).
          DATA t693 TYPE string.
          DATA(t694) = t667.
          t693 = t694.
          DATA t695 TYPE string.
          DATA(t696) = t677.
          t695 = t696.
          DATA(t697) = VALUE string( ).
          DATA(t698) = VALUE abap_bool( ).
          DATA t699 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t700) = me->conf.
          t699 = t700->zlnt_view_read_sr_ef452f77fd06( ).
          DATA t701 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t701.
          DATA(t702) = abap_true.
          IF t702 = abap_true.
            DATA(t703) = |required|.
            DATA(t704) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t704->has = abap_true.
            t704->value = t703.
            t701 = t704.
          ELSE.
            DATA t705 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t705.
            t701 = t705.
          ENDIF.
          DATA(t706) = VALUE abap_bool( ).
          DATA(t707) = VALUE abap_bool( ).
          IF t699 IS BOUND.
            t706 = t699->has.
          ENDIF.
          IF t701 IS BOUND.
            t707 = t701->has.
          ENDIF.
          IF t706 = t707.
            IF t706 = abap_false.
              t698 = abap_true.
            ELSEIF t699->value = t701->value.
              t698 = abap_true.
            ENDIF.
          ENDIF.
          IF t698 = abap_true.
            DATA t708 TYPE string.
            DATA t709 TYPE string.
            DATA t710 TYPE string.
            DATA(t711) = |Local variable name does not match pattern |.
            DATA(t712) = t693.
            DATA(t713) = strlen( t711 ).
            t710 = |{ t711 }{ t712 }|.
            DATA(t714) = |: |.
            DATA(t715) = strlen( t710 ).
            t709 = |{ t710 }{ t714 }|.
            DATA(t716) = t695.
            DATA(t717) = strlen( t709 ).
            t708 = |{ t709 }{ t716 }|.
            t697 = t708.
          ELSE.
            DATA t718 TYPE string.
            DATA t719 TYPE string.
            DATA t720 TYPE string.
            DATA(t721) = |Local variable name must not match pattern |.
            DATA(t722) = t693.
            DATA(t723) = strlen( t721 ).
            t720 = |{ t721 }{ t722 }|.
            DATA(t724) = |: |.
            DATA(t725) = strlen( t720 ).
            t719 = |{ t720 }{ t724 }|.
            DATA(t726) = t695.
            DATA(t727) = strlen( t719 ).
            t718 = |{ t719 }{ t726 }|.
            t697 = t718.
          ENDIF.
          t692 = t697.
          t691 = t692.
          DATA t728 TYPE REF TO zcl_lnt_issue.
          CLEAR t728.
          DATA t729 TYPE REF TO zcl_lnt_issue.
          CLEAR t729.
          DATA(t730) = t665.
          DATA(t731) = t663.
          DATA(t732) = t691.
          DATA(t733) = VALUE string( ).
          DATA t734 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t734.
          DATA t735 TYPE string.
          DATA(t736) = |local_variable_names|.
          t735 = t736.
          DATA t737 TYPE string.
          DATA(t738) = |Local variable naming conventions|.
          t737 = t738.
          DATA t739 TYPE string.
          DATA(t740) = |\nAllows you to enforce a pattern, such as a prefix, for loca|.
          t740 = t740 && |l variables, constants and field symbols.\nRegexes are case-i|.
          t740 = t740 && |nsensitive.|.
          t739 = t740.
          DATA t741 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t741.
          DATA t742 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t742.
          DATA(t743) = abap_true.
          IF t743 = abap_true.
            DATA t744 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t745 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t746 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t746.
            t745 = t746.
            DATA(t747) = t745.
            DATA(t748) = |Naming|.
            t747->load( ).
            APPEND t748 TO t747->items.
            t747->save( ).
            DATA(t749) = t745.
            DATA(t750) = |SingleFile|.
            t749->load( ).
            APPEND t750 TO t749->items.
            t749->save( ).
            DATA(t751) = t745.
            t744 = t751.
            t742 = t744.
          ELSE.
            DATA t752 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t752.
            t742 = t752.
          ENDIF.
          t741 = t742.
          DATA t753 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t753.
          DATA t754 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t754.
          DATA(t755) = abap_true.
          IF t755 = abap_true.
            DATA(t756) = |FORM bar.\n  DATA foo.\nENDFORM.|.
            DATA(t757) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t757->has = abap_true.
            t757->value = t756.
            t754 = t757.
          ELSE.
            DATA t758 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t758.
            t754 = t758.
          ENDIF.
          t753 = t754.
          DATA t759 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t759.
          DATA t760 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t760.
          DATA(t761) = abap_true.
          IF t761 = abap_true.
            DATA(t762) = |FORM bar.\n  DATA lv_foo.\nENDFORM.|.
            DATA(t763) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t763->has = abap_true.
            t763->value = t762.
            t760 = t763.
          ELSE.
            DATA t764 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t764.
            t760 = t764.
          ENDIF.
          t759 = t760.
          DATA t765 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t766 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t766.
          t765 = t766.
          DATA t767 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t768 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t768.
          t767 = t768.
          DATA t769 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t770 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t770.
          t769 = t770.
          t734 = NEW zcl_lnt_irule_metadata( i_key = t735 i_title = t737 i_short_description = t739 i_bad_example = t753 i_good_example = t759 i_extended_information = t765 i_tags = t741 i_pragma = t767 i_pseudo_comment = t769 ).
          CREATE OBJECT t734->zlnt_view_ownkeys_b0e8086400eb.
          t734->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t771 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t771.
          IF t734->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t734->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t771 ).
          ENDIF.
          DATA t772 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t772.
          IF t734->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t734->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t772 ).
          ENDIF.
          DATA t773 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t773.
          IF t734->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t734->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t773 ).
          ENDIF.
          DATA t774 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t774.
          IF t734->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t734->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t774 ).
          ENDIF.
          DATA t775 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t775.
          IF t734->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t734->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t775 ).
          ENDIF.
          DATA t776 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t776.
          IF t734->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t734->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t776 ).
          ENDIF.
          CREATE OBJECT t734->zlnt_json_ownkeys_70e5fd461788.
          t734->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t777) = |key|.
          DATA t778 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t778.
          IF t734->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t734->zlnt_json_ownkeys_70e5fd461788->put( p0 = t777 p1 = t778 ).
          ENDIF.
          DATA(t779) = |title|.
          DATA t780 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t780.
          IF t734->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t734->zlnt_json_ownkeys_70e5fd461788->put( p0 = t779 p1 = t780 ).
          ENDIF.
          DATA(t781) = |shortDescription|.
          DATA t782 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t782.
          IF t734->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t734->zlnt_json_ownkeys_70e5fd461788->put( p0 = t781 p1 = t782 ).
          ENDIF.
          DATA(t783) = |tags|.
          DATA t784 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t784.
          IF t734->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t734->zlnt_json_ownkeys_70e5fd461788->put( p0 = t783 p1 = t784 ).
          ENDIF.
          DATA(t785) = |badExample|.
          DATA t786 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t786.
          IF t734->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t734->zlnt_json_ownkeys_70e5fd461788->put( p0 = t785 p1 = t786 ).
          ENDIF.
          DATA(t787) = |goodExample|.
          DATA t788 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t788.
          IF t734->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t734->zlnt_json_ownkeys_70e5fd461788->put( p0 = t787 p1 = t788 ).
          ENDIF.
          t733 = t734->key.
          DATA t789 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t790) = me->conf.
          t789 = t790->zlnt_view_read_sr_15c06369f827( ).
          DATA t791 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t791.
          t729 = zcl_lnt_issue=>at_token( i_file = t730 i_token = t731 i_message_26cb = t732 i_key = t733 i_severity = t789 i_fix = t791 ).
          t728 = t729.
          DATA(t792) = t671.
          DATA(t793) = t728.
          t792->load( ).
          APPEND t793 TO t792->items.
          t792->save( ).
        ENDIF.
        DATA(t794) = t671.
        t670 = t794.
        t662 = t670.
        t660 = t661->concat( p0 = t662 ).
        t3 = t660.
      ENDIF.
    ENDDO.
    DATA t795 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t796 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t797) = t1.
    DATA(t798) = zlnt_runtime_desc_78196487750d=>zlnt_member_d426_fb8ad08dadf9.
    t796 = t797->find_all_statements( i_type_9913 = t798 ).
    t795 = t796.
    DATA(t799) = t795.
    DATA t800 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t800.
    DATA t801 TYPE REF TO object.
    CLEAR t801.
    DATA(t802) = VALUE i( ).
    DO.
      t799->load( ).
      IF t802 >= lines( t799->items ).
        EXIT.
      ENDIF.
      CLEAR t801.
      READ TABLE t799->items INDEX t802 + 1 INTO t801.
      t802 = t802 + 1.
      DATA t803 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t803.
      CLEAR t800.
      IF t801 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t803 ?= t801.
        DATA t804 TYPE REF TO object.
        t804 = t803->as_ref( ).
        t800 ?= t804.
      ELSE.
        t800 ?= t801.
      ENDIF.
      DATA t805 TYPE REF TO zcl_lnt_structure_node.
      DATA t806 TYPE REF TO zcl_lnt_structure_node.
      DATA(t807) = t1.
      DATA(t808) = t800.
      t806 = t807->find_parent( i_node = t808 ).
      t805 = t806.
      DATA t809 TYPE abap_bool.
      DATA t810 TYPE abap_bool.
      DATA(t811) = t805.
      t810 = xsdbool( t811 IS BOUND ).
      t809 = t810.
      IF t810 = abap_true.
        DATA t812 TYPE abap_bool.
        DATA t813 TYPE REF TO zif_lnt_structure.
        DATA t814 TYPE REF TO zcl_lnt_structure_node.
        DATA(t815) = t805.
        t814 = t815.
        t813 = t814->gt_in_sr_ab_nd_st_nd_ts_str_nd( ).
        t812 = xsdbool( t813 IS BOUND AND t813 IS INSTANCE OF zcl_lnt_sr_constants ).
        t809 = t812.
      ENDIF.
      IF t809 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t816 TYPE REF TO zcl_lnt_expression_node.
      DATA t817 TYPE REF TO zcl_lnt_expression_node.
      DATA(t818) = t800.
      DATA(t819) = zlnt_runtime_desc_78196487750d=>zlnt_member_d152_d99fb56fbc57.
      t817 = t818->find_first_expression( i_type_9913 = t819 ).
      t816 = t817.
      DATA t820 TYPE abap_bool.
      DATA(t821) = t816.
      t820 = xsdbool( t821 IS BOUND ).
      IF t820 = abap_true.
        DATA t822 TYPE REF TO zcl_lnt_abstract_token.
        DATA t823 TYPE REF TO zcl_lnt_abstract_token.
        DATA t824 TYPE REF TO zcl_lnt_expression_node.
        DATA(t825) = t816.
        t824 = t825.
        t823 = t824->get_first_token( ).
        t822 = t823.
        DATA t826 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t826.
        DATA(t827) = t3.
        DATA t828 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t828.
        DATA t829 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t830) = t822.
        t829 = t830.
        DATA t831 TYPE REF TO zcl_lnt_abap_file.
        DATA(t832) = t2.
        t831 = t832.
        DATA t833 TYPE string.
        DATA t834 TYPE string.
        DATA(t835) = me->conf.
        t834 = t835->zlnt_view_read_sr_b54b84b45d72( ).
        t833 = t834.
        DATA t836 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t836.
        DATA t837 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t838 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t838.
        t837 = t838.
        DATA t839 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        DATA t840 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
        CLEAR t840.
        DATA(t841) = t833.
        DATA(t842) = |i|.
        CREATE OBJECT t840 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t841 flags = t842.
        t839 = t840.
        DATA t843 TYPE string.
        DATA t844 TYPE string.
        DATA t845 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t846) = t829.
        t845 = t846.
        DATA t847 TYPE string.
        DATA(t848) = t845.
        t847 = t848->str.
        t844 = t847.
        t843 = t844.
        DATA(t849) = VALUE abap_bool( ).
        DATA t850 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t850.
        DATA(t851) = abap_true.
        IF t851 = abap_true.
          DATA(t852) = t843.
          DATA(t853) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t853->has = abap_true.
          t853->value = t852.
          t850 = t853.
        ELSE.
          DATA t854 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t854.
          t850 = t854.
        ENDIF.
        DATA(t855) = t839.
        DATA(t856) = me->conf.
        t849 = zcl_lnt_name_validator=>violates_rule( i_name = t850 i_pattern = t855 i_params_4c59 = t856 ).
        IF t849 = abap_true.
          DATA(t857) = VALUE string( ).
          DATA(t858) = VALUE string( ).
          DATA t859 TYPE string.
          DATA(t860) = t833.
          t859 = t860.
          DATA t861 TYPE string.
          DATA(t862) = t843.
          t861 = t862.
          DATA(t863) = VALUE string( ).
          DATA(t864) = VALUE abap_bool( ).
          DATA t865 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t866) = me->conf.
          t865 = t866->zlnt_view_read_sr_ef452f77fd06( ).
          DATA t867 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t867.
          DATA(t868) = abap_true.
          IF t868 = abap_true.
            DATA(t869) = |required|.
            DATA(t870) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t870->has = abap_true.
            t870->value = t869.
            t867 = t870.
          ELSE.
            DATA t871 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t871.
            t867 = t871.
          ENDIF.
          DATA(t872) = VALUE abap_bool( ).
          DATA(t873) = VALUE abap_bool( ).
          IF t865 IS BOUND.
            t872 = t865->has.
          ENDIF.
          IF t867 IS BOUND.
            t873 = t867->has.
          ENDIF.
          IF t872 = t873.
            IF t872 = abap_false.
              t864 = abap_true.
            ELSEIF t865->value = t867->value.
              t864 = abap_true.
            ENDIF.
          ENDIF.
          IF t864 = abap_true.
            DATA t874 TYPE string.
            DATA t875 TYPE string.
            DATA t876 TYPE string.
            DATA(t877) = |Local variable name does not match pattern |.
            DATA(t878) = t859.
            DATA(t879) = strlen( t877 ).
            t876 = |{ t877 }{ t878 }|.
            DATA(t880) = |: |.
            DATA(t881) = strlen( t876 ).
            t875 = |{ t876 }{ t880 }|.
            DATA(t882) = t861.
            DATA(t883) = strlen( t875 ).
            t874 = |{ t875 }{ t882 }|.
            t863 = t874.
          ELSE.
            DATA t884 TYPE string.
            DATA t885 TYPE string.
            DATA t886 TYPE string.
            DATA(t887) = |Local variable name must not match pattern |.
            DATA(t888) = t859.
            DATA(t889) = strlen( t887 ).
            t886 = |{ t887 }{ t888 }|.
            DATA(t890) = |: |.
            DATA(t891) = strlen( t886 ).
            t885 = |{ t886 }{ t890 }|.
            DATA(t892) = t861.
            DATA(t893) = strlen( t885 ).
            t884 = |{ t885 }{ t892 }|.
            t863 = t884.
          ENDIF.
          t858 = t863.
          t857 = t858.
          DATA t894 TYPE REF TO zcl_lnt_issue.
          CLEAR t894.
          DATA t895 TYPE REF TO zcl_lnt_issue.
          CLEAR t895.
          DATA(t896) = t831.
          DATA(t897) = t829.
          DATA(t898) = t857.
          DATA(t899) = VALUE string( ).
          DATA t900 TYPE REF TO zcl_lnt_irule_metadata.
          CLEAR t900.
          DATA t901 TYPE string.
          DATA(t902) = |local_variable_names|.
          t901 = t902.
          DATA t903 TYPE string.
          DATA(t904) = |Local variable naming conventions|.
          t903 = t904.
          DATA t905 TYPE string.
          DATA(t906) = |\nAllows you to enforce a pattern, such as a prefix, for loca|.
          t906 = t906 && |l variables, constants and field symbols.\nRegexes are case-i|.
          t906 = t906 && |nsensitive.|.
          t905 = t906.
          DATA t907 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t907.
          DATA t908 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          CLEAR t908.
          DATA(t909) = abap_true.
          IF t909 = abap_true.
            DATA t910 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t911 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA t912 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CREATE OBJECT t912.
            t911 = t912.
            DATA(t913) = t911.
            DATA(t914) = |Naming|.
            t913->load( ).
            APPEND t914 TO t913->items.
            t913->save( ).
            DATA(t915) = t911.
            DATA(t916) = |SingleFile|.
            t915->load( ).
            APPEND t916 TO t915->items.
            t915->save( ).
            DATA(t917) = t911.
            t910 = t917.
            t908 = t910.
          ELSE.
            DATA t918 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            CLEAR t918.
            t908 = t918.
          ENDIF.
          t907 = t908.
          DATA t919 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t919.
          DATA t920 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t920.
          DATA(t921) = abap_true.
          IF t921 = abap_true.
            DATA(t922) = |FORM bar.\n  DATA foo.\nENDFORM.|.
            DATA(t923) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t923->has = abap_true.
            t923->value = t922.
            t920 = t923.
          ELSE.
            DATA t924 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t924.
            t920 = t924.
          ENDIF.
          t919 = t920.
          DATA t925 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t925.
          DATA t926 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t926.
          DATA(t927) = abap_true.
          IF t927 = abap_true.
            DATA(t928) = |FORM bar.\n  DATA lv_foo.\nENDFORM.|.
            DATA(t929) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t929->has = abap_true.
            t929->value = t928.
            t926 = t929.
          ELSE.
            DATA t930 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t930.
            t926 = t930.
          ENDIF.
          t925 = t926.
          DATA t931 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t932 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t932.
          t931 = t932.
          DATA t933 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t934 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t934.
          t933 = t934.
          DATA t935 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t936 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t936.
          t935 = t936.
          t900 = NEW zcl_lnt_irule_metadata( i_key = t901 i_title = t903 i_short_description = t905 i_bad_example = t919 i_good_example = t925 i_extended_information = t931 i_tags = t907 i_pragma = t933 i_pseudo_comment = t935 ).
          CREATE OBJECT t900->zlnt_view_ownkeys_b0e8086400eb.
          t900->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t937 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t937.
          IF t900->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t900->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t937 ).
          ENDIF.
          DATA t938 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t938.
          IF t900->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t900->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t938 ).
          ENDIF.
          DATA t939 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t939.
          IF t900->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t900->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t939 ).
          ENDIF.
          DATA t940 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t940.
          IF t900->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t900->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t940 ).
          ENDIF.
          DATA t941 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t941.
          IF t900->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t900->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t941 ).
          ENDIF.
          DATA t942 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t942.
          IF t900->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t900->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t942 ).
          ENDIF.
          CREATE OBJECT t900->zlnt_json_ownkeys_70e5fd461788.
          t900->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t943) = |key|.
          DATA t944 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t944.
          IF t900->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t900->zlnt_json_ownkeys_70e5fd461788->put( p0 = t943 p1 = t944 ).
          ENDIF.
          DATA(t945) = |title|.
          DATA t946 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t946.
          IF t900->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t900->zlnt_json_ownkeys_70e5fd461788->put( p0 = t945 p1 = t946 ).
          ENDIF.
          DATA(t947) = |shortDescription|.
          DATA t948 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t948.
          IF t900->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t900->zlnt_json_ownkeys_70e5fd461788->put( p0 = t947 p1 = t948 ).
          ENDIF.
          DATA(t949) = |tags|.
          DATA t950 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t950.
          IF t900->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t900->zlnt_json_ownkeys_70e5fd461788->put( p0 = t949 p1 = t950 ).
          ENDIF.
          DATA(t951) = |badExample|.
          DATA t952 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t952.
          IF t900->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t900->zlnt_json_ownkeys_70e5fd461788->put( p0 = t951 p1 = t952 ).
          ENDIF.
          DATA(t953) = |goodExample|.
          DATA t954 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t954.
          IF t900->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t900->zlnt_json_ownkeys_70e5fd461788->put( p0 = t953 p1 = t954 ).
          ENDIF.
          t899 = t900->key.
          DATA t955 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t956) = me->conf.
          t955 = t956->zlnt_view_read_sr_15c06369f827( ).
          DATA t957 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
          CLEAR t957.
          t895 = zcl_lnt_issue=>at_token( i_file = t896 i_token = t897 i_message_26cb = t898 i_key = t899 i_severity = t955 i_fix = t957 ).
          t894 = t895.
          DATA(t958) = t837.
          DATA(t959) = t894.
          t958->load( ).
          APPEND t959 TO t958->items.
          t958->save( ).
        ENDIF.
        DATA(t960) = t837.
        t836 = t960.
        t828 = t836.
        t826 = t827->concat( p0 = t828 ).
        t3 = t826.
      ENDIF.
    ENDDO.
    DATA(t961) = t3.
    result = t961.

  ENDMETHOD.

  METHOD check_name.
    DATA(t1) = i_token.
    DATA(t2) = i_file.
    DATA(t3) = i_expected.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t5.
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    DATA t7 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t7.
    DATA(t8) = t3.
    DATA(t9) = |i|.
    CREATE OBJECT t7 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t8 flags = t9.
    t6 = t7.
    DATA t10 TYPE string.
    DATA t11 TYPE string.
    DATA t12 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t13) = t1.
    t12 = t13.
    DATA t14 TYPE string.
    DATA(t15) = t12.
    t14 = t15->str.
    t11 = t14.
    t10 = t11.
    DATA(t16) = VALUE abap_bool( ).
    DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t17.
    DATA(t18) = abap_true.
    IF t18 = abap_true.
      DATA(t19) = t10.
      DATA(t20) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t20->has = abap_true.
      t20->value = t19.
      t17 = t20.
    ELSE.
      DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t21.
      t17 = t21.
    ENDIF.
    DATA(t22) = t6.
    DATA(t23) = me->conf.
    t16 = zcl_lnt_name_validator=>violates_rule( i_name = t17 i_pattern = t22 i_params_4c59 = t23 ).
    IF t16 = abap_true.
      DATA(t24) = VALUE string( ).
      DATA(t25) = VALUE string( ).
      DATA t26 TYPE string.
      DATA(t27) = t3.
      t26 = t27.
      DATA t28 TYPE string.
      DATA(t29) = t10.
      t28 = t29.
      DATA(t30) = VALUE string( ).
      DATA(t31) = VALUE abap_bool( ).
      DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t33) = me->conf.
      t32 = t33->zlnt_view_read_sr_ef452f77fd06( ).
      DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t34.
      DATA(t35) = abap_true.
      IF t35 = abap_true.
        DATA(t36) = |required|.
        DATA(t37) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t37->has = abap_true.
        t37->value = t36.
        t34 = t37.
      ELSE.
        DATA t38 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t38.
        t34 = t38.
      ENDIF.
      DATA(t39) = VALUE abap_bool( ).
      DATA(t40) = VALUE abap_bool( ).
      IF t32 IS BOUND.
        t39 = t32->has.
      ENDIF.
      IF t34 IS BOUND.
        t40 = t34->has.
      ENDIF.
      IF t39 = t40.
        IF t39 = abap_false.
          t31 = abap_true.
        ELSEIF t32->value = t34->value.
          t31 = abap_true.
        ENDIF.
      ENDIF.
      IF t31 = abap_true.
        DATA t41 TYPE string.
        DATA t42 TYPE string.
        DATA t43 TYPE string.
        DATA(t44) = |Local variable name does not match pattern |.
        DATA(t45) = t26.
        DATA(t46) = strlen( t44 ).
        t43 = |{ t44 }{ t45 }|.
        DATA(t47) = |: |.
        DATA(t48) = strlen( t43 ).
        t42 = |{ t43 }{ t47 }|.
        DATA(t49) = t28.
        DATA(t50) = strlen( t42 ).
        t41 = |{ t42 }{ t49 }|.
        t30 = t41.
      ELSE.
        DATA t51 TYPE string.
        DATA t52 TYPE string.
        DATA t53 TYPE string.
        DATA(t54) = |Local variable name must not match pattern |.
        DATA(t55) = t26.
        DATA(t56) = strlen( t54 ).
        t53 = |{ t54 }{ t55 }|.
        DATA(t57) = |: |.
        DATA(t58) = strlen( t53 ).
        t52 = |{ t53 }{ t57 }|.
        DATA(t59) = t28.
        DATA(t60) = strlen( t52 ).
        t51 = |{ t52 }{ t59 }|.
        t30 = t51.
      ENDIF.
      t25 = t30.
      t24 = t25.
      DATA t61 TYPE REF TO zcl_lnt_issue.
      CLEAR t61.
      DATA t62 TYPE REF TO zcl_lnt_issue.
      CLEAR t62.
      DATA(t63) = t2.
      DATA(t64) = t1.
      DATA(t65) = t24.
      DATA(t66) = VALUE string( ).
      DATA t67 TYPE REF TO zcl_lnt_irule_metadata.
      CLEAR t67.
      DATA t68 TYPE string.
      DATA(t69) = |local_variable_names|.
      t68 = t69.
      DATA t70 TYPE string.
      DATA(t71) = |Local variable naming conventions|.
      t70 = t71.
      DATA t72 TYPE string.
      DATA(t73) = |\nAllows you to enforce a pattern, such as a prefix, for loca|.
      t73 = t73 && |l variables, constants and field symbols.\nRegexes are case-i|.
      t73 = t73 && |nsensitive.|.
      t72 = t73.
      DATA t74 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t74.
      DATA t75 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CLEAR t75.
      DATA(t76) = abap_true.
      IF t76 = abap_true.
        DATA t77 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t78 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t79 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t79.
        t78 = t79.
        DATA(t80) = t78.
        DATA(t81) = |Naming|.
        t80->load( ).
        APPEND t81 TO t80->items.
        t80->save( ).
        DATA(t82) = t78.
        DATA(t83) = |SingleFile|.
        t82->load( ).
        APPEND t83 TO t82->items.
        t82->save( ).
        DATA(t84) = t78.
        t77 = t84.
        t75 = t77.
      ELSE.
        DATA t85 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t85.
        t75 = t85.
      ENDIF.
      t74 = t75.
      DATA t86 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t86.
      DATA t87 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t87.
      DATA(t88) = abap_true.
      IF t88 = abap_true.
        DATA(t89) = |FORM bar.\n  DATA foo.\nENDFORM.|.
        DATA(t90) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t90->has = abap_true.
        t90->value = t89.
        t87 = t90.
      ELSE.
        DATA t91 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t91.
        t87 = t91.
      ENDIF.
      t86 = t87.
      DATA t92 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t92.
      DATA t93 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t93.
      DATA(t94) = abap_true.
      IF t94 = abap_true.
        DATA(t95) = |FORM bar.\n  DATA lv_foo.\nENDFORM.|.
        DATA(t96) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t96->has = abap_true.
        t96->value = t95.
        t93 = t96.
      ELSE.
        DATA t97 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t97.
        t93 = t97.
      ENDIF.
      t92 = t93.
      DATA t98 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t99 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t99.
      t98 = t99.
      DATA t100 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t101 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t101.
      t100 = t101.
      DATA t102 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t103 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t103.
      t102 = t103.
      t67 = NEW zcl_lnt_irule_metadata( i_key = t68 i_title = t70 i_short_description = t72 i_bad_example = t86 i_good_example = t92 i_extended_information = t98 i_tags = t74 i_pragma = t100 i_pseudo_comment = t102 ).
      CREATE OBJECT t67->zlnt_view_ownkeys_b0e8086400eb.
      t67->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t104 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t104.
      IF t67->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t67->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t104 ).
      ENDIF.
      DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t105.
      IF t67->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t67->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t105 ).
      ENDIF.
      DATA t106 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t106.
      IF t67->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t67->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t106 ).
      ENDIF.
      DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t107.
      IF t67->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t67->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t107 ).
      ENDIF.
      DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t108.
      IF t67->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t67->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t108 ).
      ENDIF.
      DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t109.
      IF t67->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t67->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t109 ).
      ENDIF.
      CREATE OBJECT t67->zlnt_json_ownkeys_70e5fd461788.
      t67->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA(t110) = |key|.
      DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t111.
      IF t67->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t67->zlnt_json_ownkeys_70e5fd461788->put( p0 = t110 p1 = t111 ).
      ENDIF.
      DATA(t112) = |title|.
      DATA t113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t113.
      IF t67->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t67->zlnt_json_ownkeys_70e5fd461788->put( p0 = t112 p1 = t113 ).
      ENDIF.
      DATA(t114) = |shortDescription|.
      DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t115.
      IF t67->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t67->zlnt_json_ownkeys_70e5fd461788->put( p0 = t114 p1 = t115 ).
      ENDIF.
      DATA(t116) = |tags|.
      DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t117.
      IF t67->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t67->zlnt_json_ownkeys_70e5fd461788->put( p0 = t116 p1 = t117 ).
      ENDIF.
      DATA(t118) = |badExample|.
      DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t119.
      IF t67->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t67->zlnt_json_ownkeys_70e5fd461788->put( p0 = t118 p1 = t119 ).
      ENDIF.
      DATA(t120) = |goodExample|.
      DATA t121 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t121.
      IF t67->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t67->zlnt_json_ownkeys_70e5fd461788->put( p0 = t120 p1 = t121 ).
      ENDIF.
      t66 = t67->key.
      DATA t122 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t123) = me->conf.
      t122 = t123->zlnt_view_read_sr_15c06369f827( ).
      DATA t124 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
      CLEAR t124.
      t62 = zcl_lnt_issue=>at_token( i_file = t63 i_token = t64 i_message_26cb = t65 i_key = t66 i_severity = t122 i_fix = t124 ).
      t61 = t62.
      DATA(t125) = t4.
      DATA(t126) = t61.
      t125->load( ).
      APPEND t126 TO t125->items.
      t125->save( ).
    ENDIF.
    DATA(t127) = t4.
    result = t127.

  ENDMETHOD.

  METHOD get_config_value.
    DATA(t1) = CAST zcl_lnt_lcl_vrbl_nms_cnf( me->g_c_i_s_r_lc_vr_nm_ts_lc_vr_nm( ) ).
    result = t1.

  ENDMETHOD.

  METHOD get_config.
    DATA(t1) = CAST zcl_lnt_lcl_vrbl_nms_cnf( me->g_c_i_s_r_lc_vr_nm_ts_lc_vr_nm( ) ).
    result = t1.

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_lcl_vrbl_nms_cnf.
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
        t1 = NEW zcl_lnt_lcl_vrbl_nms_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_lc_vr_nm_ts_lc_vr_nm( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_lc_vr_nm_ts_lc_vr_nm( i_file = i_file ) ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1571_264dd87a7443.
  ENDMETHOD.
ENDCLASS.
