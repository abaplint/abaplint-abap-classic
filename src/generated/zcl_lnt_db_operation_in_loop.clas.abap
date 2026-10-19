* TS: src/rules/db_operation_in_loop.ts:13:1 DbOperationInLoop
CLASS zcl_lnt_db_operation_in_loop DEFINITION PUBLIC INHERITING FROM zcl_lnt_abap_rule CREATE PUBLIC.
  PUBLIC SECTION.
    DATA conf TYPE REF TO zcl_lnt_db_oprtn_in_lp_cnf.
    METHODS constructor.
    METHODS get_metadata REDEFINITION.
    METHODS g_c_i_s_r_d_o_i_l_t_d_op_in_lp RETURNING VALUE(result) TYPE REF TO zcl_lnt_db_oprtn_in_lp_cnf.
    METHODS s_c_i_s_r_d_o_i_l_t_d_op_in_lp IMPORTING i_conf TYPE REF TO zcl_lnt_db_oprtn_in_lp_cnf.
    METHODS r_p_i_s_r_d_o_i_l_t_d_op_in_lp IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_config_value REDEFINITION.
    METHODS get_config REDEFINITION.
    METHODS set_config REDEFINITION.
    METHODS run_parsed REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_db_operation_in_loop IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
    me->conf = NEW zcl_lnt_db_oprtn_in_lp_cnf( ).
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD get_metadata.
    DATA t1 TYPE REF TO zcl_lnt_irule_metadata.
    DATA t2 TYPE string.
    t2 = |db_operation_in_loop|.
    DATA t4 TYPE string.
    t4 = |Database operation in loop|.
    DATA t6 TYPE string.
    t6 = |Database operation in LOOP/DO/WHILE|.
    DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t13 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t13.
    t12 = t13.
    DATA(t15) = |SingleFile|.
    t12->load( ).
    APPEND t15 TO t12->items.
    t12->save( ).
    DATA(t17) = |Performance|.
    t12->load( ).
    APPEND t17 TO t12->items.
    t12->save( ).
    t8 = t12.
    DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t23) = |LOOP AT lt_items INTO DATA(ls_item).\n  SELECT SINGLE name FR|.
    t23 = t23 && |OM zcustomer INTO @DATA(lv_name) WHERE id = @ls_item-custome|.
    t23 = t23 && |r_id.\nENDLOOP.|.
    DATA(t24) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t24->has = abap_true.
    t24->value = t23.
    t20 = t24.
    DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t29) = |ASSERT lines( lt_items ) > 0.\nSELECT id, name FROM zcustomer|.
    t29 = t29 && | INTO TABLE @DATA(lt_customers)\n  FOR ALL ENTRIES IN @lt_ite|.
    t29 = t29 && |ms\n  WHERE id = @lt_items-customer_id.\n\nLOOP AT lt_items INT|.
    t29 = t29 && |O DATA(ls_item).\n  READ TABLE lt_customers INTO DATA(ls_cust|.
    t29 = t29 && |omer) WITH KEY id = ls_item-customer_id.\nENDLOOP.|.
    DATA(t30) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t30->has = abap_true.
    t30->value = t29.
    t26 = t30.
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t36 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1 = NEW zcl_lnt_irule_metadata( i_key = t2 i_title = t4 i_short_description = t6 i_bad_example = t20 i_good_example = t26 i_extended_information = t32 i_tags = t8 i_pragma = t34 i_pseudo_comment = t36 ).
    CREATE OBJECT t1->zlnt_view_ownkeys_b0e8086400eb.
    t1->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t38 ).
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t39 ).
    ENDIF.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t40 ).
    ENDIF.
    DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t41 ).
    ENDIF.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t42 ).
    ENDIF.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t1->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t43 ).
    ENDIF.
    CREATE OBJECT t1->zlnt_json_ownkeys_70e5fd461788.
    t1->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA(t44) = |key|.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t44 p1 = t45 ).
    DATA(t46) = |title|.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t46 p1 = t47 ).
    ENDIF.
    DATA(t48) = |shortDescription|.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t48 p1 = t49 ).
    ENDIF.
    DATA(t50) = |tags|.
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t50 p1 = t51 ).
    ENDIF.
    DATA(t52) = |badExample|.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t52 p1 = t53 ).
    ENDIF.
    DATA(t54) = |goodExample|.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t1->zlnt_json_ownkeys_70e5fd461788->put( p0 = t54 p1 = t55 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD g_c_i_s_r_d_o_i_l_t_d_op_in_lp.
    result = me->conf.

  ENDMETHOD.

  METHOD s_c_i_s_r_d_o_i_l_t_d_op_in_lp.
    me->conf = i_conf.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `conf`.
  ENDMETHOD.

  METHOD r_p_i_s_r_d_o_i_l_t_d_op_in_lp.
    DATA(t1) = i_file.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zcl_lnt_structure_node.
    DATA t8 TYPE REF TO zcl_lnt_structure_node.
    t8 = t1->structure.
    t4 = t8.
    DATA(t10) = VALUE abap_bool( ).
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t10 = xsdbool( t4 IS INITIAL ).
    IF t10 = abap_true.
      result = t2.
      RETURN.
    ENDIF.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t20 TYPE REF TO zcl_lnt_structure_node.
    t20 = t4.
    DATA(t22) = zlnt_runtime_desc_78196487750d=>zlnt_member_d741_a4c2609517be.
    t19 = t20->find_all_structures( i_type_9913 = t22 ).
    t18 = t19.
    DATA(t23) = VALUE i( ).
    DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t25 TYPE REF TO zcl_lnt_structure_node.
    t25 = t4.
    DATA(t27) = zlnt_runtime_desc_78196487750d=>zlnt_member_d727_3ba4cd3431c9.
    t24 = t25->find_all_structures( i_type_9913 = t27 ).
    DATA t28 TYPE REF TO zcl_lnt_structure_node.
    DATA t29 TYPE REF TO object.
    DATA(t30) = VALUE i( ).
    DO.
      t24->load( ).
      IF t30 >= lines( t24->items ).
        EXIT.
      ENDIF.
      CLEAR t29.
      READ TABLE t24->items INDEX t30 + 1 INTO t29.
      t30 = t30 + 1.
      DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t31.
      CLEAR t28.
      IF t29 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t31 ?= t29.
        DATA t32 TYPE REF TO object.
        t32 = t31->as_ref( ).
        t28 ?= t32.
      ELSE.
        t28 ?= t29.
      ENDIF.
      t18->load( ).
      APPEND t28 TO t18->items.
      t18->save( ).
    ENDDO.
    DATA t35 TYPE i.
    t18->load( ).
    t35 = lines( t18->items ).
    t23 = t35.
    DATA(t37) = VALUE i( ).
    DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t39 TYPE REF TO zcl_lnt_structure_node.
    t39 = t4.
    DATA(t41) = zlnt_runtime_desc_78196487750d=>zlnt_member_d753_f3a2f457d984.
    t38 = t39->find_all_structures( i_type_9913 = t41 ).
    DATA t42 TYPE REF TO zcl_lnt_structure_node.
    DATA t43 TYPE REF TO object.
    DATA(t44) = VALUE i( ).
    DO.
      t38->load( ).
      IF t44 >= lines( t38->items ).
        EXIT.
      ENDIF.
      CLEAR t43.
      READ TABLE t38->items INDEX t44 + 1 INTO t43.
      t44 = t44 + 1.
      DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t45.
      CLEAR t42.
      IF t43 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t45 ?= t43.
        DATA t46 TYPE REF TO object.
        t46 = t45->as_ref( ).
        t42 ?= t46.
      ELSE.
        t42 ?= t43.
      ENDIF.
      t18->load( ).
      APPEND t42 TO t18->items.
      t18->save( ).
    ENDDO.
    DATA t49 TYPE i.
    t18->load( ).
    t49 = lines( t18->items ).
    t37 = t49.
    DATA t52 TYPE REF TO zcl_lnt_structure_node.
    DATA t53 TYPE REF TO object.
    DATA(t54) = VALUE i( ).
    DO.
      t18->load( ).
      IF t54 >= lines( t18->items ).
        EXIT.
      ENDIF.
      CLEAR t53.
      READ TABLE t18->items INDEX t54 + 1 INTO t53.
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
      DATA t57 TYPE REF TO zcl_lnt_statement_node.
      CLEAR t57.
      DATA(t59) = VALUE abap_bool( ).
      DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t62.
      t59 = xsdbool( t57 IS INITIAL ).
      IF t59 = abap_true.
        DATA t66 TYPE REF TO zcl_lnt_statement_node.
        DATA(t68) = zlnt_runtime_desc_78196487750d=>zlnt_member_d611_2852a1970316.
        t66 = t52->find_first_statement( i_type_9913 = t68 ).
        t57 = t66.
      ENDIF.
      DATA(t69) = VALUE abap_bool( ).
      DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t72.
      t69 = xsdbool( t57 IS INITIAL ).
      IF t69 = abap_true.
        DATA t76 TYPE REF TO zcl_lnt_statement_node.
        DATA(t78) = zlnt_runtime_desc_78196487750d=>zlnt_member_d612_458d252c73b7.
        t76 = t52->find_first_statement( i_type_9913 = t78 ).
        t57 = t76.
      ENDIF.
      DATA(t79) = VALUE abap_bool( ).
      DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t82.
      t79 = xsdbool( t57 IS INITIAL ).
      IF t79 = abap_true.
        DATA t86 TYPE REF TO zcl_lnt_statement_node.
        DATA(t88) = zlnt_runtime_desc_78196487750d=>zlnt_member_d534_4a06e0073eb0.
        t86 = t52->find_first_statement( i_type_9913 = t88 ).
        t57 = t86.
      ENDIF.
      DATA(t89) = VALUE abap_bool( ).
      DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t92.
      t89 = xsdbool( t57 IS INITIAL ).
      IF t89 = abap_true.
        DATA t96 TYPE REF TO zcl_lnt_statement_node.
        DATA(t98) = zlnt_runtime_desc_78196487750d=>zlnt_member_d442_7bcff8928bf7.
        t96 = t52->find_first_statement( i_type_9913 = t98 ).
        t57 = t96.
      ENDIF.
      DATA(t99) = VALUE abap_bool( ).
      DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t102.
      t99 = xsdbool( t57 IS INITIAL ).
      IF t99 = abap_true.
        DATA t106 TYPE REF TO zcl_lnt_statement_node.
        DATA(t108) = zlnt_runtime_desc_78196487750d=>zlnt_member_d676_4264b2ce5dbc.
        t106 = t52->find_first_statement( i_type_9913 = t108 ).
        t57 = t106.
      ENDIF.
      DATA(t109) = VALUE abap_bool( ).
      DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t112.
      t109 = xsdbool( t57 IS INITIAL ).
      IF t109 = abap_true.
        DATA t116 TYPE REF TO zcl_lnt_statement_node.
        DATA(t118) = zlnt_runtime_desc_78196487750d=>zlnt_member_d555_4421dfbe5302.
        t116 = t52->find_first_statement( i_type_9913 = t118 ).
        t57 = t116.
      ENDIF.
      DATA t119 TYPE abap_bool.
      t119 = xsdbool( t57 IS BOUND ).
      IF t119 = abap_true.
        DATA(t122) = |Database operation in loop|.
        DATA t124 TYPE REF TO zcl_lnt_issue.
        CLEAR t124.
        DATA t126 TYPE REF TO zcl_lnt_statement_node.
        t126 = t57.
        DATA(t129) = VALUE string( ).
        DATA t130 TYPE REF TO zcl_lnt_irule_metadata.
        CLEAR t130.
        DATA t131 TYPE string.
        t131 = |db_operation_in_loop|.
        DATA t133 TYPE string.
        t133 = |Database operation in loop|.
        DATA t135 TYPE string.
        t135 = |Database operation in LOOP/DO/WHILE|.
        DATA t137 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CLEAR t137.
        DATA t141 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t142 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t142.
        t141 = t142.
        DATA(t144) = |SingleFile|.
        t141->load( ).
        APPEND t144 TO t141->items.
        t141->save( ).
        DATA(t146) = |Performance|.
        t141->load( ).
        APPEND t146 TO t141->items.
        t141->save( ).
        t137 = t141.
        DATA t149 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t149.
        DATA(t152) = |LOOP AT lt_items INTO DATA(ls_item).\n  SELECT SINGLE name FR|.
        t152 = t152 && |OM zcustomer INTO @DATA(lv_name) WHERE id = @ls_item-custome|.
        t152 = t152 && |r_id.\nENDLOOP.|.
        DATA(t153) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t153->has = abap_true.
        t153->value = t152.
        t149 = t153.
        DATA t155 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t155.
        DATA(t158) = |ASSERT lines( lt_items ) > 0.\nSELECT id, name FROM zcustomer|.
        t158 = t158 && | INTO TABLE @DATA(lt_customers)\n  FOR ALL ENTRIES IN @lt_ite|.
        t158 = t158 && |ms\n  WHERE id = @lt_items-customer_id.\n\nLOOP AT lt_items INT|.
        t158 = t158 && |O DATA(ls_item).\n  READ TABLE lt_customers INTO DATA(ls_cust|.
        t158 = t158 && |omer) WITH KEY id = ls_item-customer_id.\nENDLOOP.|.
        DATA(t159) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t159->has = abap_true.
        t159->value = t158.
        t155 = t159.
        DATA t161 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t161.
        DATA t163 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t163.
        DATA t165 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t165.
        t130 = NEW zcl_lnt_irule_metadata( i_key = t131 i_title = t133 i_short_description = t135 i_bad_example = t149 i_good_example = t155 i_extended_information = t161 i_tags = t137 i_pragma = t163 i_pseudo_comment = t165 ).
        CREATE OBJECT t130->zlnt_view_ownkeys_b0e8086400eb.
        t130->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t167.
        t130->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `key` p1 = t167 ).
        DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t168.
        IF t130->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t130->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `title` p1 = t168 ).
        ENDIF.
        DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t169.
        IF t130->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t130->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `shortDescription` p1 = t169 ).
        ENDIF.
        DATA t170 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t170.
        IF t130->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t130->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `tags` p1 = t170 ).
        ENDIF.
        DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t171.
        IF t130->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t130->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `badExample` p1 = t171 ).
        ENDIF.
        DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t172.
        IF t130->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t130->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `goodExample` p1 = t172 ).
        ENDIF.
        CREATE OBJECT t130->zlnt_json_ownkeys_70e5fd461788.
        t130->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t173) = |key|.
        DATA t174 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t174.
        t130->zlnt_json_ownkeys_70e5fd461788->put( p0 = t173 p1 = t174 ).
        DATA(t175) = |title|.
        DATA t176 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t176.
        IF t130->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t130->zlnt_json_ownkeys_70e5fd461788->put( p0 = t175 p1 = t176 ).
        ENDIF.
        DATA(t177) = |shortDescription|.
        DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t178.
        IF t130->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t130->zlnt_json_ownkeys_70e5fd461788->put( p0 = t177 p1 = t178 ).
        ENDIF.
        DATA(t179) = |tags|.
        DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t180.
        IF t130->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t130->zlnt_json_ownkeys_70e5fd461788->put( p0 = t179 p1 = t180 ).
        ENDIF.
        DATA(t181) = |badExample|.
        DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t182.
        IF t130->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t130->zlnt_json_ownkeys_70e5fd461788->put( p0 = t181 p1 = t182 ).
        ENDIF.
        DATA(t183) = |goodExample|.
        DATA t184 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t184.
        IF t130->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t130->zlnt_json_ownkeys_70e5fd461788->put( p0 = t183 p1 = t184 ).
        ENDIF.
        t129 = t130->key.
        DATA t185 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t185 = me->conf->zlnt_view_read_sr_15c06369f827( ).
        DATA t187 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        CLEAR t187.
        DATA t188 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t188.
        t124 = zcl_lnt_issue=>at_statement( i_file = t1 i_statement = t126 i_message_26cb = t122 i_key = t129 i_severity = t185 i_fix = t187 i_alternative_fixes = t188 ).
        t2->load( ).
        APPEND t124 TO t2->items.
        t2->save( ).
      ENDIF.
    ENDDO.
    result = t2.

  ENDMETHOD.

  METHOD get_config_value.
    result = CAST zcl_lnt_db_oprtn_in_lp_cnf( me->g_c_i_s_r_d_o_i_l_t_d_op_in_lp( ) ).

  ENDMETHOD.

  METHOD get_config.
    result = CAST zcl_lnt_db_oprtn_in_lp_cnf( me->g_c_i_s_r_d_o_i_l_t_d_op_in_lp( ) ).

  ENDMETHOD.

  METHOD set_config.
    DATA t1 TYPE REF TO zcl_lnt_db_oprtn_in_lp_cnf.
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
        t1 = NEW zcl_lnt_db_oprtn_in_lp_cnf( view_source = i_conf ).
      ENDIF.
    ENDIF.
    me->s_c_i_s_r_d_o_i_l_t_d_op_in_lp( i_conf = t1 ).

  ENDMETHOD.

  METHOD run_parsed.
    result = CAST zlnt_runtime_arra_c22708faf2e3( me->r_p_i_s_r_d_o_i_l_t_d_op_in_lp( i_file = i_file ) ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1475_1e6a33efa87d.
  ENDMETHOD.
ENDCLASS.
