* TS: src/abap/4_file_information/abap_file_information_parser.ts:11:1 ABAPFileInformationParser
CLASS zcl_lnt_abp_fl_infrmtn_prsr DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA filename TYPE string.
    METHODS constructor IMPORTING i_filename TYPE string.
    METHODS parse IMPORTING i_structure TYPE REF TO zcl_lnt_structure_node RETURNING VALUE(result) TYPE REF TO zcl_lnt_prsd_fl_infrmtn.
    METHODS parse_class_implementations IMPORTING i_structure TYPE REF TO zcl_lnt_structure_node RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS parse_forms IMPORTING i_structure TYPE REF TO zcl_lnt_structure_node RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS parse_interfaces IMPORTING i_structure TYPE REF TO zcl_lnt_structure_node RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS parse_classes IMPORTING i_structure TYPE REF TO zcl_lnt_structure_node RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS find_behavior_definition_name IMPORTING i_cdef TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS get_implementing IMPORTING i_input_967e TYPE REF TO zcl_lnt_structure_node RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS parse_aliases IMPORTING i_node TYPE REF TO zcl_lnt_structure_node i_visibility_5c1f TYPE i RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS parse_constants IMPORTING i_node TYPE REF TO zcl_lnt_structure_node i_visibility_5c1f TYPE i RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS parse_attributes IMPORTING i_node TYPE REF TO zcl_lnt_structure_node i_visibility_5c1f TYPE i RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS parse_method_definition IMPORTING i_node TYPE REF TO zcl_lnt_structure_node i_visibility_5c1f TYPE i RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS parse_method_parameters IMPORTING i_node TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_abp_fl_infrmtn_prsr IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_filename.
    DATA(t2) = t1.
    me->filename = t2.
  ENDMETHOD.

  METHOD parse.
    DATA(t1) = i_structure.
    DATA t2 TYPE REF TO zcl_lnt_prsd_fl_infrmtn.
    DATA t3 TYPE REF TO zcl_lnt_prsd_fl_infrmtn.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t5.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t6.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t7.
    t3 = NEW zcl_lnt_prsd_fl_infrmtn( i_interfaces = t4 i_classes = t5 i_forms = t6 i_implementations = t7 ).
    t2 = t3.
    DATA(t8) = VALUE abap_bool( ).
    DATA t9 TYPE REF TO zcl_lnt_structure_node.
    DATA(t10) = t1.
    t9 = t10.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    t11 = t12.
    DATA(t13) = VALUE abap_bool( ).
    DATA(t14) = t9.
    IF t14 IS INITIAL.
      t13 = abap_true.
    ENDIF.
    t8 = t13.
    IF t8 = abap_true.
      DATA(t15) = t2.
      result = t15.
      RETURN.
    ENDIF.
    DATA(t16) = t2.
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t18 TYPE REF TO zcl_lnt_structure_node.
    DATA(t19) = t1.
    t18 = t19.
    t17 = me->parse_classes( i_structure = t18 ).
    t16->classes = t17.
    DATA(t20) = t2.
    DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t22 TYPE REF TO zcl_lnt_structure_node.
    DATA(t23) = t1.
    t22 = t23.
    t21 = me->parse_interfaces( i_structure = t22 ).
    t20->interfaces = t21.
    DATA(t24) = t2.
    DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t26 TYPE REF TO zcl_lnt_structure_node.
    DATA(t27) = t1.
    t26 = t27.
    t25 = me->parse_class_implementations( i_structure = t26 ).
    t24->implementations = t25.
    DATA(t28) = t2.
    DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t30 TYPE REF TO zcl_lnt_structure_node.
    DATA(t31) = t1.
    t30 = t31.
    t29 = me->parse_forms( i_structure = t30 ).
    t28->forms = t29.
    DATA(t32) = t2.
    result = t32.

  ENDMETHOD.

  METHOD parse_class_implementations.
    DATA(t1) = i_structure.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t5) = t1.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d685_91b502e796fa.
    t4 = t5->find_all_structures( i_type_9913 = t6 ).
    DATA t7 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t7.
    DATA t8 TYPE REF TO object.
    CLEAR t8.
    LOOP AT t4->items INTO t8.
      t7 ?= t8.
      DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t10.
      t9 = t10.
      DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t12) = t7.
      DATA(t13) = zlnt_runtime_desc_78196487750d=>zlnt_member_d704_640ee0c36424.
      t11 = t12->find_all_structures( i_type_9913 = t13 ).
      DATA t14 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t14.
      DATA t15 TYPE REF TO object.
      CLEAR t15.
      LOOP AT t11->items INTO t15.
        t14 ?= t15.
        DATA t16 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t16.
        DATA t17 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t17.
        DATA t18 TYPE REF TO zcl_lnt_expression_node.
        DATA t19 TYPE REF TO zcl_lnt_expression_node.
        DATA(t20) = t14.
        DATA(t21) = zlnt_runtime_desc_78196487750d=>zlnt_member_d86_5c0b7073356207.
        t19 = t20->find_first_expression( i_type_9913 = t21 ).
        t18 = t19.
        DATA t22 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t22.
        DATA(t23) = VALUE abap_bool( ).
        DATA(t24) = t18.
        IF t24 IS INITIAL.
          t23 = abap_true.
        ENDIF.
        IF t23 = abap_true.
          DATA t25 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t25.
          t22 = t25.
        ELSE.
          DATA t26 TYPE REF TO zcl_lnt_abstract_token.
          DATA t27 TYPE REF TO zcl_lnt_expression_node.
          DATA(t28) = t18.
          t27 = t28.
          t26 = t27->get_first_token( ).
          t22 = t26.
        ENDIF.
        t17 = t22.
        t16 = t17.
        DATA t29 TYPE abap_bool.
        DATA(t30) = t16.
        t29 = xsdbool( t30 IS BOUND ).
        IF t29 = abap_true.
          DATA(t31) = t9.
          DATA t32 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t33 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t34) = t16.
          t33 = t34.
          DATA(t35) = CONV string( me->filename ).
          t32 = NEW zcl_lnt_fi_identifier( i_token = t33 i_filename = t35 ).
          APPEND t32 TO t31->items.
        ENDIF.
      ENDLOOP.
      DATA t36 TYPE REF TO zcl_lnt_abstract_token.
      DATA t37 TYPE REF TO zcl_lnt_abstract_token.
      DATA t38 TYPE REF TO zcl_lnt_expression_node.
      DATA t39 TYPE REF TO zcl_lnt_expression_node.
      DATA t40 TYPE REF TO zcl_lnt_statement_node.
      DATA t41 TYPE REF TO zcl_lnt_statement_node.
      DATA(t42) = t7.
      DATA(t43) = zlnt_runtime_desc_78196487750d=>zlnt_member_d396_f66c9403a435.
      t41 = t42->find_first_statement( i_type_9913 = t43 ).
      t40 = t41.
      DATA(t44) = zlnt_runtime_desc_78196487750d=>zlnt_member_d114_8c1c765e2687.
      t39 = t40->find_first_expression( i_type_9913 = t44 ).
      t38 = t39.
      t37 = t38->get_first_token( ).
      t36 = t37.
      DATA(t45) = t2.
      DATA t46 TYPE REF TO zcl_lnt_inf_clss_implmnttn.
      DATA t47 TYPE string.
      DATA t48 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t49) = t36.
      t48 = t49.
      DATA t50 TYPE string.
      DATA(t51) = t48.
      t50 = t51->str.
      t47 = t50.
      DATA t52 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t53) = t36.
      DATA(t54) = CONV string( me->filename ).
      t52 = NEW zcl_lnt_fi_identifier( i_token = t53 i_filename = t54 ).
      DATA(t55) = t9.
      t46 = NEW zcl_lnt_inf_clss_implmnttn( i_name = t47 i_identifier = t52 i_methods = t55 ).
      APPEND t46 TO t45->items.
    ENDLOOP.
    DATA(t56) = t2.
    result = t56.

  ENDMETHOD.

  METHOD parse_forms.
    DATA(t1) = i_structure.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t5) = t1.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d680_7b1b0c92e5ad.
    t4 = t5->find_all_structures( i_type_9913 = t6 ).
    DATA t7 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t7.
    DATA t8 TYPE REF TO object.
    CLEAR t8.
    LOOP AT t4->items INTO t8.
      t7 ?= t8.
      DATA t9 TYPE REF TO zcl_lnt_position.
      DATA t10 TYPE REF TO zcl_lnt_position.
      DATA t11 TYPE REF TO zcl_lnt_abstract_token.
      DATA t12 TYPE REF TO zcl_lnt_abstract_token.
      DATA t13 TYPE REF TO zcl_lnt_expression_node.
      DATA t14 TYPE REF TO zcl_lnt_expression_node.
      DATA(t15) = t7.
      DATA(t16) = zlnt_runtime_desc_78196487750d=>zlnt_member_d175_344bc5837b82.
      t14 = t15->find_first_expression( i_type_9913 = t16 ).
      t13 = t14.
      t12 = t13->get_first_token( ).
      t11 = t12.
      DATA t17 TYPE REF TO zcl_lnt_position.
      DATA(t18) = t11.
      t17 = t18->start.
      t10 = t17.
      t9 = t10.
      DATA t19 TYPE string.
      DATA t20 TYPE string.
      DATA t21 TYPE REF TO zcl_lnt_expression_node.
      DATA t22 TYPE REF TO zcl_lnt_expression_node.
      DATA(t23) = t7.
      DATA(t24) = zlnt_runtime_desc_78196487750d=>zlnt_member_d175_344bc5837b82.
      t22 = t23->find_first_expression( i_type_9913 = t24 ).
      t21 = t22.
      t20 = t21->concat_tokens( ).
      t19 = t20.
      DATA t25 TYPE REF TO zcl_lnt_lx_identifier.
      DATA t26 TYPE REF TO zcl_lnt_lx_identifier.
      DATA(t27) = t9.
      DATA(t28) = t19.
      t26 = NEW zcl_lnt_lx_identifier( i_start = t27 i_str = t28 ).
      t25 = t26.
      DATA(t29) = t2.
      DATA t30 TYPE REF TO zcl_lnt_info_form_definition.
      DATA t31 TYPE string.
      DATA t32 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t33) = t25.
      t32 = t33.
      DATA t34 TYPE string.
      DATA(t35) = t32.
      t34 = t35->str.
      t31 = t34.
      DATA t36 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t37) = t25.
      DATA(t38) = CONV string( me->filename ).
      t36 = NEW zcl_lnt_fi_identifier( i_token = t37 i_filename = t38 ).
      t30 = NEW zcl_lnt_info_form_definition( i_name = t31 i_identifier = t36 ).
      APPEND t30 TO t29->items.
    ENDLOOP.
    DATA(t39) = t2.
    result = t39.

  ENDMETHOD.

  METHOD parse_interfaces.
    DATA(t1) = i_structure.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t5) = t1.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d683_aa96b8bd10e1.
    t4 = t5->find_direct_structures( i_type_9913 = t6 ).
    DATA t7 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t7.
    DATA t8 TYPE REF TO object.
    CLEAR t8.
    LOOP AT t4->items INTO t8.
      t7 ?= t8.
      DATA t9 TYPE REF TO zcl_lnt_statement_node.
      DATA t10 TYPE REF TO zcl_lnt_statement_node.
      DATA(t11) = t7.
      DATA(t12) = zlnt_runtime_desc_78196487750d=>zlnt_member_d522_37de97ed1215.
      t10 = t11->find_first_statement( i_type_9913 = t12 ).
      t9 = t10.
      DATA(t13) = VALUE abap_bool( ).
      DATA t14 TYPE REF TO zcl_lnt_statement_node.
      DATA(t15) = t9.
      t14 = t15.
      DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t17.
      t16 = t17.
      DATA(t18) = VALUE abap_bool( ).
      DATA(t19) = t14.
      IF t19 IS INITIAL.
        t18 = abap_true.
      ENDIF.
      t13 = t18.
      IF t13 = abap_true.
        DATA t20 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
        CLEAR t20.
        DATA t21 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
        CLEAR t21.
        DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t22.
        DATA(t23) = abap_true.
        IF t23 = abap_true.
          DATA(t24) = |Interface expected, parseInterfaces|.
          DATA(t25) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t25->has = abap_true.
          t25->value = t24.
          t22 = t25.
        ELSE.
          DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t26.
          t22 = t26.
        ENDIF.
        t21 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t22 ).
        t20 = NEW #( ).
        t20->payload = t21.
        RAISE EXCEPTION t20.
      ENDIF.
      DATA t27 TYPE REF TO zcl_lnt_abstract_token.
      DATA t28 TYPE REF TO zcl_lnt_abstract_token.
      DATA t29 TYPE REF TO zcl_lnt_expression_node.
      DATA t30 TYPE REF TO zcl_lnt_expression_node.
      DATA t31 TYPE REF TO zcl_lnt_statement_node.
      DATA(t32) = t9.
      t31 = t32.
      DATA(t33) = zlnt_runtime_desc_78196487750d=>zlnt_member_d198_f214049174db.
      t30 = t31->find_direct_expression( i_type_9913 = t33 ).
      t29 = t30.
      t28 = t29->get_first_token( ).
      t27 = t28.
      DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t34.
      DATA t35 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t35.
      DATA t36 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t36.
      DATA(t37) = abap_true.
      IF t37 = abap_true.
        DATA(t38) = t7.
        t36 = t38.
      ELSE.
        DATA t39 TYPE REF TO zcl_lnt_structure_node.
        CLEAR t39.
        t36 = t39.
      ENDIF.
      DATA(t40) = 3.
      t35 = me->parse_method_definition( i_node = t36 i_visibility_5c1f = t40 ).
      t34 = t35.
      DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t41.
      DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t42.
      DATA t43 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t43.
      DATA(t44) = abap_true.
      IF t44 = abap_true.
        DATA(t45) = t7.
        t43 = t45.
      ELSE.
        DATA t46 TYPE REF TO zcl_lnt_structure_node.
        CLEAR t46.
        t43 = t46.
      ENDIF.
      DATA(t47) = 3.
      t42 = me->parse_attributes( i_node = t43 i_visibility_5c1f = t47 ).
      t41 = t42.
      DATA t48 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t48.
      DATA t49 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t49.
      DATA t50 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t50.
      DATA(t51) = abap_true.
      IF t51 = abap_true.
        DATA(t52) = t7.
        t50 = t52.
      ELSE.
        DATA t53 TYPE REF TO zcl_lnt_structure_node.
        CLEAR t53.
        t50 = t53.
      ENDIF.
      DATA(t54) = 3.
      t49 = me->parse_aliases( i_node = t50 i_visibility_5c1f = t54 ).
      t48 = t49.
      DATA t55 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t55.
      DATA t56 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t56.
      DATA t57 TYPE REF TO zcl_lnt_structure_node.
      CLEAR t57.
      DATA(t58) = abap_true.
      IF t58 = abap_true.
        DATA(t59) = t7.
        t57 = t59.
      ELSE.
        DATA t60 TYPE REF TO zcl_lnt_structure_node.
        CLEAR t60.
        t57 = t60.
      ENDIF.
      DATA(t61) = 3.
      t56 = me->parse_constants( i_node = t57 i_visibility_5c1f = t61 ).
      t55 = t56.
      DATA t62 TYPE REF TO zcl_lnt_expression_node.
      DATA t63 TYPE REF TO zcl_lnt_expression_node.
      DATA t64 TYPE REF TO zcl_lnt_statement_node.
      DATA(t65) = t9.
      t64 = t65.
      DATA(t66) = zlnt_runtime_desc_78196487750d=>zlnt_member_d116_84f27914b88c.
      t63 = t64->find_direct_expression( i_type_9913 = t66 ).
      t62 = t63.
      DATA(t67) = t2.
      DATA t68 TYPE REF TO zcl_lnt_inf_intrfc_dfntn.
      CLEAR t68.
      DATA t69 TYPE string.
      DATA t70 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t71) = t27.
      t70 = t71.
      DATA t72 TYPE string.
      DATA(t73) = t70.
      t72 = t73->str.
      t69 = t72.
      DATA t74 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t75) = t27.
      DATA(t76) = CONV string( me->filename ).
      t74 = NEW zcl_lnt_fi_identifier( i_token = t75 i_filename = t76 ).
      DATA(t77) = VALUE abap_bool( ).
      DATA t78 TYPE REF TO zcl_lnt_expression_node.
      DATA(t79) = t62.
      t78 = t79.
      DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t81.
      t80 = t81.
      DATA(t82) = VALUE abap_bool( ).
      DATA(t83) = t78.
      IF t83 IS INITIAL.
        t82 = abap_true.
      ENDIF.
      t77 = t82.
      DATA(t84) = VALUE abap_bool( ).
      DATA t85 TYPE REF TO zcl_lnt_expression_node.
      DATA(t86) = t62.
      t85 = t86.
      DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t88 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t88.
      t87 = t88.
      DATA(t89) = VALUE abap_bool( ).
      DATA(t90) = VALUE abap_bool( ).
      DATA(t91) = t85.
      IF t91 IS INITIAL.
        t90 = abap_true.
      ENDIF.
      t89 = xsdbool( t90 = abap_false ).
      t84 = t89.
      DATA t92 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t93) = t7.
      t92 = me->get_implementing( i_input_967e = t93 ).
      DATA(t94) = t34.
      DATA(t95) = t48.
      DATA(t96) = t55.
      DATA(t97) = t41.
      t68 = NEW zcl_lnt_inf_intrfc_dfntn( i_name = t69 i_identifier = t74 i_is_local = t77 i_is_global = t84 i_interfaces = t92 i_methods = t94 i_aliases_acc1 = t95 i_constants = t96 i_attributes = t97 ).
      APPEND t68 TO t67->items.
    ENDLOOP.
    DATA(t98) = t2.
    result = t98.

  ENDMETHOD.

  METHOD parse_classes.
    DATA(t1) = i_structure.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t5) = t1.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d684_dd4b0670faf6.
    t4 = t5->find_all_structures( i_type_9913 = t6 ).
    DATA t7 TYPE REF TO zcl_lnt_structure_node.
    CLEAR t7.
    DATA t8 TYPE REF TO object.
    CLEAR t8.
    LOOP AT t4->items INTO t8.
      t7 ?= t8.
      DATA t9 TYPE REF TO zcl_lnt_abstract_token.
      DATA t10 TYPE REF TO zcl_lnt_abstract_token.
      DATA t11 TYPE REF TO zcl_lnt_expression_node.
      DATA t12 TYPE REF TO zcl_lnt_expression_node.
      DATA t13 TYPE REF TO zcl_lnt_statement_node.
      DATA t14 TYPE REF TO zcl_lnt_statement_node.
      DATA(t15) = t7.
      DATA(t16) = zlnt_runtime_desc_78196487750d=>zlnt_member_d394_f6e1a10c8513.
      t14 = t15->find_first_statement( i_type_9913 = t16 ).
      t13 = t14.
      DATA(t17) = zlnt_runtime_desc_78196487750d=>zlnt_member_d114_8c1c765e2687.
      t12 = t13->find_first_expression( i_type_9913 = t17 ).
      t11 = t12.
      t10 = t11->get_first_token( ).
      t9 = t10.
      DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t20 TYPE REF TO zcl_lnt_structure_node.
      DATA(t21) = t7.
      DATA(t22) = zlnt_runtime_desc_78196487750d=>zlnt_member_d699_5bd4c856ada5.
      t20 = t21->find_first_structure( i_type_9913 = t22 ).
      DATA(t23) = 3.
      t19 = me->parse_method_definition( i_node = t20 i_visibility_5c1f = t23 ).
      t18 = t19.
      DATA(t24) = VALUE i( ).
      DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t26 TYPE REF TO zcl_lnt_structure_node.
      DATA(t27) = t7.
      DATA(t28) = zlnt_runtime_desc_78196487750d=>zlnt_member_d700_0943ee7a14b4.
      t26 = t27->find_first_structure( i_type_9913 = t28 ).
      DATA(t29) = 2.
      t25 = me->parse_method_definition( i_node = t26 i_visibility_5c1f = t29 ).
      DATA t30 TYPE REF TO zcl_lnt_info_method_definition.
      CLEAR t30.
      DATA t31 TYPE REF TO object.
      CLEAR t31.
      LOOP AT t25->items INTO t31.
        t30 ?= t31.
        DATA(t32) = t18.
        DATA(t33) = t30.
        APPEND t33 TO t32->items.
      ENDLOOP.
      DATA t34 TYPE i.
      DATA(t35) = t18.
      t34 = lines( t35->items ).
      t24 = t34.
      DATA(t36) = VALUE i( ).
      DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t38 TYPE REF TO zcl_lnt_structure_node.
      DATA(t39) = t7.
      DATA(t40) = zlnt_runtime_desc_78196487750d=>zlnt_member_d701_259241cbe79e.
      t38 = t39->find_first_structure( i_type_9913 = t40 ).
      DATA(t41) = 1.
      t37 = me->parse_method_definition( i_node = t38 i_visibility_5c1f = t41 ).
      DATA t42 TYPE REF TO zcl_lnt_info_method_definition.
      CLEAR t42.
      DATA t43 TYPE REF TO object.
      CLEAR t43.
      LOOP AT t37->items INTO t43.
        t42 ?= t43.
        DATA(t44) = t18.
        DATA(t45) = t42.
        APPEND t45 TO t44->items.
      ENDLOOP.
      DATA t46 TYPE i.
      DATA(t47) = t18.
      t46 = lines( t47->items ).
      t36 = t46.
      DATA t48 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t49 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t50 TYPE REF TO zcl_lnt_structure_node.
      DATA(t51) = t7.
      DATA(t52) = zlnt_runtime_desc_78196487750d=>zlnt_member_d699_5bd4c856ada5.
      t50 = t51->find_first_structure( i_type_9913 = t52 ).
      DATA(t53) = 3.
      t49 = me->parse_attributes( i_node = t50 i_visibility_5c1f = t53 ).
      t48 = t49.
      DATA(t54) = VALUE i( ).
      DATA t55 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t56 TYPE REF TO zcl_lnt_structure_node.
      DATA(t57) = t7.
      DATA(t58) = zlnt_runtime_desc_78196487750d=>zlnt_member_d700_0943ee7a14b4.
      t56 = t57->find_first_structure( i_type_9913 = t58 ).
      DATA(t59) = 2.
      t55 = me->parse_attributes( i_node = t56 i_visibility_5c1f = t59 ).
      DATA t60 TYPE REF TO zcl_lnt_info_attribute.
      CLEAR t60.
      DATA t61 TYPE REF TO object.
      CLEAR t61.
      LOOP AT t55->items INTO t61.
        t60 ?= t61.
        DATA(t62) = t48.
        DATA(t63) = t60.
        APPEND t63 TO t62->items.
      ENDLOOP.
      DATA t64 TYPE i.
      DATA(t65) = t48.
      t64 = lines( t65->items ).
      t54 = t64.
      DATA(t66) = VALUE i( ).
      DATA t67 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t68 TYPE REF TO zcl_lnt_structure_node.
      DATA(t69) = t7.
      DATA(t70) = zlnt_runtime_desc_78196487750d=>zlnt_member_d701_259241cbe79e.
      t68 = t69->find_first_structure( i_type_9913 = t70 ).
      DATA(t71) = 1.
      t67 = me->parse_attributes( i_node = t68 i_visibility_5c1f = t71 ).
      DATA t72 TYPE REF TO zcl_lnt_info_attribute.
      CLEAR t72.
      DATA t73 TYPE REF TO object.
      CLEAR t73.
      LOOP AT t67->items INTO t73.
        t72 ?= t73.
        DATA(t74) = t48.
        DATA(t75) = t72.
        APPEND t75 TO t74->items.
      ENDLOOP.
      DATA t76 TYPE i.
      DATA(t77) = t48.
      t76 = lines( t77->items ).
      t66 = t76.
      DATA t78 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t79 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t80 TYPE REF TO zcl_lnt_structure_node.
      DATA(t81) = t7.
      DATA(t82) = zlnt_runtime_desc_78196487750d=>zlnt_member_d699_5bd4c856ada5.
      t80 = t81->find_first_structure( i_type_9913 = t82 ).
      DATA(t83) = 3.
      t79 = me->parse_aliases( i_node = t80 i_visibility_5c1f = t83 ).
      t78 = t79.
      DATA(t84) = VALUE i( ).
      DATA t85 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t86 TYPE REF TO zcl_lnt_structure_node.
      DATA(t87) = t7.
      DATA(t88) = zlnt_runtime_desc_78196487750d=>zlnt_member_d700_0943ee7a14b4.
      t86 = t87->find_first_structure( i_type_9913 = t88 ).
      DATA(t89) = 2.
      t85 = me->parse_aliases( i_node = t86 i_visibility_5c1f = t89 ).
      DATA t90 TYPE REF TO zcl_lnt_info_alias.
      CLEAR t90.
      DATA t91 TYPE REF TO object.
      CLEAR t91.
      LOOP AT t85->items INTO t91.
        t90 ?= t91.
        DATA(t92) = t78.
        DATA(t93) = t90.
        APPEND t93 TO t92->items.
      ENDLOOP.
      DATA t94 TYPE i.
      DATA(t95) = t78.
      t94 = lines( t95->items ).
      t84 = t94.
      DATA(t96) = VALUE i( ).
      DATA t97 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t98 TYPE REF TO zcl_lnt_structure_node.
      DATA(t99) = t7.
      DATA(t100) = zlnt_runtime_desc_78196487750d=>zlnt_member_d701_259241cbe79e.
      t98 = t99->find_first_structure( i_type_9913 = t100 ).
      DATA(t101) = 1.
      t97 = me->parse_aliases( i_node = t98 i_visibility_5c1f = t101 ).
      DATA t102 TYPE REF TO zcl_lnt_info_alias.
      CLEAR t102.
      DATA t103 TYPE REF TO object.
      CLEAR t103.
      LOOP AT t97->items INTO t103.
        t102 ?= t103.
        DATA(t104) = t78.
        DATA(t105) = t102.
        APPEND t105 TO t104->items.
      ENDLOOP.
      DATA t106 TYPE i.
      DATA(t107) = t78.
      t106 = lines( t107->items ).
      t96 = t106.
      DATA t108 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t109 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t110 TYPE REF TO zcl_lnt_structure_node.
      DATA(t111) = t7.
      DATA(t112) = zlnt_runtime_desc_78196487750d=>zlnt_member_d699_5bd4c856ada5.
      t110 = t111->find_first_structure( i_type_9913 = t112 ).
      DATA(t113) = 3.
      t109 = me->parse_constants( i_node = t110 i_visibility_5c1f = t113 ).
      t108 = t109.
      DATA(t114) = VALUE i( ).
      DATA t115 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t116 TYPE REF TO zcl_lnt_structure_node.
      DATA(t117) = t7.
      DATA(t118) = zlnt_runtime_desc_78196487750d=>zlnt_member_d700_0943ee7a14b4.
      t116 = t117->find_first_structure( i_type_9913 = t118 ).
      DATA(t119) = 2.
      t115 = me->parse_constants( i_node = t116 i_visibility_5c1f = t119 ).
      DATA t120 TYPE REF TO zcl_lnt_info_constant.
      CLEAR t120.
      DATA t121 TYPE REF TO object.
      CLEAR t121.
      LOOP AT t115->items INTO t121.
        t120 ?= t121.
        DATA(t122) = t108.
        DATA(t123) = t120.
        APPEND t123 TO t122->items.
      ENDLOOP.
      DATA t124 TYPE i.
      DATA(t125) = t108.
      t124 = lines( t125->items ).
      t114 = t124.
      DATA(t126) = VALUE i( ).
      DATA t127 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t128 TYPE REF TO zcl_lnt_structure_node.
      DATA(t129) = t7.
      DATA(t130) = zlnt_runtime_desc_78196487750d=>zlnt_member_d701_259241cbe79e.
      t128 = t129->find_first_structure( i_type_9913 = t130 ).
      DATA(t131) = 1.
      t127 = me->parse_constants( i_node = t128 i_visibility_5c1f = t131 ).
      DATA t132 TYPE REF TO zcl_lnt_info_constant.
      CLEAR t132.
      DATA t133 TYPE REF TO object.
      CLEAR t133.
      LOOP AT t127->items INTO t133.
        t132 ?= t133.
        DATA(t134) = t108.
        DATA(t135) = t132.
        APPEND t135 TO t134->items.
      ENDLOOP.
      DATA t136 TYPE i.
      DATA(t137) = t108.
      t136 = lines( t137->items ).
      t126 = t136.
      DATA t138 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t138.
      DATA t139 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t139.
      DATA t140 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t140.
      DATA t141 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t141.
      DATA t142 TYPE REF TO zcl_lnt_expression_node.
      DATA t143 TYPE REF TO zcl_lnt_expression_node.
      DATA(t144) = t7.
      DATA(t145) = zlnt_runtime_desc_78196487750d=>zlnt_member_d331_0a1ba381b33b.
      t143 = t144->find_first_expression( i_type_9913 = t145 ).
      t142 = t143.
      DATA t146 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t146.
      DATA(t147) = VALUE abap_bool( ).
      DATA(t148) = t142.
      IF t148 IS INITIAL.
        t147 = abap_true.
      ENDIF.
      IF t147 = abap_true.
        DATA t149 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t149.
        t146 = t149.
      ELSE.
        DATA t150 TYPE REF TO zcl_lnt_abstract_token.
        DATA t151 TYPE REF TO zcl_lnt_expression_node.
        DATA(t152) = t142.
        t151 = t152.
        t150 = t151->get_first_token( ).
        t146 = t150.
      ENDIF.
      t141 = t146.
      t140 = t141.
      DATA t153 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t153.
      DATA(t154) = VALUE abap_bool( ).
      DATA(t155) = t140.
      IF t155 IS INITIAL.
        t154 = abap_true.
      ENDIF.
      IF t154 = abap_true.
        DATA t156 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t156.
        t153 = t156.
      ELSE.
        DATA t157 TYPE string.
        DATA t158 TYPE REF TO zcl_lnt_abstract_token.
        DATA t159 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t160) = t140.
        t159 = t160.
        t158 = t159.
        DATA t161 TYPE string.
        DATA(t162) = t158.
        t161 = t162->str.
        t157 = t161.
        DATA(t163) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t163->has = abap_true.
        t163->value = t157.
        t153 = t163.
      ENDIF.
      t139 = t153.
      t138 = t139.
      DATA t164 TYPE REF TO zcl_lnt_expression_node.
      DATA t165 TYPE REF TO zcl_lnt_expression_node.
      DATA(t166) = t7.
      DATA(t167) = zlnt_runtime_desc_78196487750d=>zlnt_member_d116_84f27914b88c.
      t165 = t166->find_first_expression( i_type_9913 = t167 ).
      t164 = t165.
      DATA t168 TYPE REF TO zcl_lnt_statement_node.
      DATA t169 TYPE REF TO zcl_lnt_statement_node.
      DATA(t170) = t7.
      DATA(t171) = zlnt_runtime_desc_78196487750d=>zlnt_member_d394_f6e1a10c8513.
      t169 = t170->find_first_statement( i_type_9913 = t171 ).
      t168 = t169.
      DATA(t172) = VALUE string( ).
      DATA(t173) = VALUE string( ).
      DATA t174 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t174.
      DATA t175 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t175.
      DATA t176 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t176.
      DATA t177 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t177.
      DATA t178 TYPE REF TO zcl_lnt_statement_node.
      DATA(t179) = t168.
      t178 = t179.
      DATA t180 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t180.
      DATA(t181) = VALUE abap_bool( ).
      DATA(t182) = t178.
      IF t182 IS INITIAL.
        t181 = abap_true.
      ENDIF.
      IF t181 = abap_true.
        DATA t183 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t183.
        t180 = t183.
      ELSE.
        DATA t184 TYPE string.
        DATA t185 TYPE REF TO zcl_lnt_statement_node.
        DATA(t186) = t178.
        t185 = t186.
        t184 = t185->concat_tokens( ).
        DATA(t187) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t187->has = abap_true.
        t187->value = t184.
        t180 = t187.
      ENDIF.
      t177 = t180.
      t176 = t177.
      DATA t188 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t188.
      DATA(t189) = VALUE abap_bool( ).
      DATA(t190) = t176.
      IF t190 IS INITIAL.
        t189 = abap_true.
      ELSEIF t190->has = abap_false.
        t189 = abap_true.
      ENDIF.
      IF t189 = abap_true.
        DATA t191 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t191.
        t188 = t191.
      ELSE.
        DATA t192 TYPE string.
        DATA t193 TYPE string.
        DATA(t194) = t176.
        t193 = t194->value.
        DATA(t195) = strlen( t193 ).
        t192 = t193.
        IF t192 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t192 TO UPPER CASE.
        ELSE.
          t192 = zlnt_runtime_uppe_91169605024d=>full( t192 ).
        ENDIF.
        DATA(t196) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t196->has = abap_true.
        t196->value = t192.
        t188 = t196.
      ENDIF.
      t175 = t188.
      t174 = t175.
      DATA(t197) = VALUE string( ).
      DATA(t198) = VALUE abap_bool( ).
      DATA(t199) = t174.
      IF t199 IS BOUND.
        IF t199->has = abap_true.
          t198 = xsdbool( strlen( t199->value ) > 0 ).
        ENDIF.
      ENDIF.
      IF t198 = abap_true.
        DATA t200 TYPE string.
        DATA(t201) = t174.
        t200 = t201->value.
        t197 = t200.
      ELSE.
        DATA(t202) = ||.
        t197 = t202.
      ENDIF.
      t173 = t197.
      t172 = t173.
      DATA t203 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t203.
      DATA(t204) = VALUE abap_bool( ).
      DATA(t205) = VALUE i( ).
      DATA(t206) = t172.
      DATA(t207) = |RISK LEVEL CRITICAL|.
      DATA(t208) = strlen( t206 ).
      IF t207 IS INITIAL.
        t205 = 0.
      ELSE.
        FIND t207 IN t206 MATCH OFFSET t205.
        IF sy-subrc <> 0.
          t205 = -1.
        ENDIF.
      ENDIF.
      DATA(t209) = 0.
      t204 = xsdbool( t205 >= t209 ).
      IF t204 = abap_true.
        DATA t210 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t210.
        DATA(t211) = abap_true.
        IF t211 = abap_true.
          DATA(t212) = |CRITICAL|.
          DATA(t213) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t213->has = abap_true.
          t213->value = t212.
          t210 = t213.
        ELSE.
          DATA t214 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t214.
          t210 = t214.
        ENDIF.
        t203 = t210.
      ELSE.
        DATA(t215) = VALUE abap_bool( ).
        DATA(t216) = VALUE i( ).
        DATA(t217) = t172.
        DATA(t218) = |RISK LEVEL DANGEROUS|.
        DATA(t219) = strlen( t217 ).
        IF t218 IS INITIAL.
          t216 = 0.
        ELSE.
          FIND t218 IN t217 MATCH OFFSET t216.
          IF sy-subrc <> 0.
            t216 = -1.
          ENDIF.
        ENDIF.
        DATA(t220) = 0.
        t215 = xsdbool( t216 >= t220 ).
        IF t215 = abap_true.
          DATA t221 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t221.
          DATA(t222) = abap_true.
          IF t222 = abap_true.
            DATA(t223) = |DANGEROUS|.
            DATA(t224) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t224->has = abap_true.
            t224->value = t223.
            t221 = t224.
          ELSE.
            DATA t225 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t225.
            t221 = t225.
          ENDIF.
          t203 = t221.
        ELSE.
          DATA(t226) = VALUE abap_bool( ).
          DATA(t227) = VALUE i( ).
          DATA(t228) = t172.
          DATA(t229) = |RISK LEVEL HARMLESS|.
          DATA(t230) = strlen( t228 ).
          IF t229 IS INITIAL.
            t227 = 0.
          ELSE.
            FIND t229 IN t228 MATCH OFFSET t227.
            IF sy-subrc <> 0.
              t227 = -1.
            ENDIF.
          ENDIF.
          DATA(t231) = 0.
          t226 = xsdbool( t227 >= t231 ).
          IF t226 = abap_true.
            DATA t232 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t232.
            DATA(t233) = abap_true.
            IF t233 = abap_true.
              DATA(t234) = |HARMLESS|.
              DATA(t235) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t235->has = abap_true.
              t235->value = t234.
              t232 = t235.
            ELSE.
              DATA t236 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t236.
              t232 = t236.
            ENDIF.
            t203 = t232.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t237 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t237.
      DATA(t238) = VALUE abap_bool( ).
      DATA(t239) = VALUE i( ).
      DATA(t240) = t172.
      DATA(t241) = |DURATION SHORT|.
      DATA(t242) = strlen( t240 ).
      IF t241 IS INITIAL.
        t239 = 0.
      ELSE.
        FIND t241 IN t240 MATCH OFFSET t239.
        IF sy-subrc <> 0.
          t239 = -1.
        ENDIF.
      ENDIF.
      DATA(t243) = 0.
      t238 = xsdbool( t239 >= t243 ).
      IF t238 = abap_true.
        DATA t244 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t244.
        DATA(t245) = abap_true.
        IF t245 = abap_true.
          DATA(t246) = |SHORT|.
          DATA(t247) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t247->has = abap_true.
          t247->value = t246.
          t244 = t247.
        ELSE.
          DATA t248 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t248.
          t244 = t248.
        ENDIF.
        t237 = t244.
      ELSE.
        DATA(t249) = VALUE abap_bool( ).
        DATA(t250) = VALUE i( ).
        DATA(t251) = t172.
        DATA(t252) = |DURATION LONG|.
        DATA(t253) = strlen( t251 ).
        IF t252 IS INITIAL.
          t250 = 0.
        ELSE.
          FIND t252 IN t251 MATCH OFFSET t250.
          IF sy-subrc <> 0.
            t250 = -1.
          ENDIF.
        ENDIF.
        DATA(t254) = 0.
        t249 = xsdbool( t250 >= t254 ).
        IF t249 = abap_true.
          DATA t255 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t255.
          DATA(t256) = abap_true.
          IF t256 = abap_true.
            DATA(t257) = |LONG|.
            DATA(t258) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t258->has = abap_true.
            t258->value = t257.
            t255 = t258.
          ELSE.
            DATA t259 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t259.
            t255 = t259.
          ENDIF.
          t237 = t255.
        ELSE.
          DATA(t260) = VALUE abap_bool( ).
          DATA(t261) = VALUE i( ).
          DATA(t262) = t172.
          DATA(t263) = |DURATION MEDIUM|.
          DATA(t264) = strlen( t262 ).
          IF t263 IS INITIAL.
            t261 = 0.
          ELSE.
            FIND t263 IN t262 MATCH OFFSET t261.
            IF sy-subrc <> 0.
              t261 = -1.
            ENDIF.
          ENDIF.
          DATA(t265) = 0.
          t260 = xsdbool( t261 >= t265 ).
          IF t260 = abap_true.
            DATA t266 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            CLEAR t266.
            DATA(t267) = abap_true.
            IF t267 = abap_true.
              DATA(t268) = |MEDIUM|.
              DATA(t269) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t269->has = abap_true.
              t269->value = t268.
              t266 = t269.
            ELSE.
              DATA t270 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t270.
              t266 = t270.
            ENDIF.
            t237 = t266.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA(t271) = t2.
      DATA t272 TYPE REF TO zcl_lnt_info_class_definition.
      CLEAR t272.
      DATA t273 TYPE string.
      DATA t274 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t275) = t9.
      t274 = t275.
      DATA t276 TYPE string.
      DATA(t277) = t274.
      t276 = t277->str.
      t273 = t276.
      DATA t278 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t279) = t9.
      DATA(t280) = CONV string( me->filename ).
      t278 = NEW zcl_lnt_fi_identifier( i_token = t279 i_filename = t280 ).
      DATA(t281) = VALUE abap_bool( ).
      DATA t282 TYPE REF TO zcl_lnt_expression_node.
      DATA(t283) = t164.
      t282 = t283.
      DATA t284 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t285 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t285.
      t284 = t285.
      DATA(t286) = VALUE abap_bool( ).
      DATA(t287) = t282.
      IF t287 IS INITIAL.
        t286 = abap_true.
      ENDIF.
      t281 = t286.
      DATA(t288) = VALUE abap_bool( ).
      DATA t289 TYPE REF TO zcl_lnt_expression_node.
      DATA(t290) = t164.
      t289 = t290.
      DATA t291 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t292 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t292.
      t291 = t292.
      DATA(t293) = VALUE abap_bool( ).
      DATA(t294) = VALUE abap_bool( ).
      DATA(t295) = t289.
      IF t295 IS INITIAL.
        t294 = abap_true.
      ENDIF.
      t293 = xsdbool( t294 = abap_false ).
      t288 = t293.
      DATA(t296) = t18.
      DATA(t297) = t78.
      DATA(t298) = t108.
      DATA(t299) = t48.
      DATA(t300) = t138.
      DATA(t301) = VALUE abap_bool( ).
      DATA t302 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t302.
      DATA t303 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t303.
      DATA t304 TYPE REF TO zcl_lnt_statement_node.
      DATA(t305) = t168.
      t304 = t305.
      DATA t306 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t306.
      DATA(t307) = VALUE abap_bool( ).
      DATA(t308) = t304.
      IF t308 IS INITIAL.
        t307 = abap_true.
      ENDIF.
      IF t307 = abap_true.
        DATA t309 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t309.
        t306 = t309.
      ELSE.
        DATA t310 TYPE REF TO zcl_lnt_abstract_token.
        DATA t311 TYPE REF TO zcl_lnt_statement_node.
        DATA(t312) = t304.
        t311 = t312.
        DATA(t313) = |ABSTRACT|.
        t310 = t311->find_direct_token_by_text( i_text = t313 ).
        t306 = t310.
      ENDIF.
      t303 = t306.
      t302 = t303.
      DATA t314 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t315 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t315.
      t314 = t315.
      DATA(t316) = VALUE abap_bool( ).
      DATA(t317) = VALUE abap_bool( ).
      DATA(t318) = t302.
      IF t318 IS INITIAL.
        t317 = abap_true.
      ENDIF.
      t316 = xsdbool( t317 = abap_false ).
      t301 = t316.
      DATA(t319) = VALUE abap_bool( ).
      DATA t320 TYPE REF TO zcl_lnt_expression_node.
      DATA t321 TYPE REF TO zcl_lnt_expression_node.
      DATA(t322) = t7.
      DATA(t323) = zlnt_runtime_desc_78196487750d=>zlnt_member_d113_956a697889b2.
      t321 = t322->find_first_expression( i_type_9913 = t323 ).
      t320 = t321.
      DATA t324 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t325 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t325.
      t324 = t325.
      DATA(t326) = VALUE abap_bool( ).
      DATA(t327) = VALUE abap_bool( ).
      DATA(t328) = t320.
      IF t328 IS INITIAL.
        t327 = abap_true.
      ENDIF.
      t326 = xsdbool( t327 = abap_false ).
      t319 = t326.
      DATA t329 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t330) = t7.
      t329 = me->get_implementing( i_input_967e = t330 ).
      DATA(t331) = VALUE abap_bool( ).
      DATA(t332) = VALUE i( ).
      DATA(t333) = t172.
      DATA(t334) = | FOR TESTING|.
      DATA(t335) = strlen( t333 ).
      IF t334 IS INITIAL.
        t332 = 0.
      ELSE.
        FIND t334 IN t333 MATCH OFFSET t332.
        IF sy-subrc <> 0.
          t332 = -1.
        ENDIF.
      ENDIF.
      DATA(t336) = 0.
      t331 = xsdbool( t332 >= t336 ).
      DATA(t337) = t237.
      DATA(t338) = t203.
      DATA(t339) = VALUE abap_bool( ).
      DATA(t340) = VALUE i( ).
      DATA(t341) = t172.
      DATA(t342) = | SHARED MEMORY ENABLED|.
      DATA(t343) = strlen( t341 ).
      IF t342 IS INITIAL.
        t340 = 0.
      ELSE.
        FIND t342 IN t341 MATCH OFFSET t340.
        IF sy-subrc <> 0.
          t340 = -1.
        ENDIF.
      ENDIF.
      DATA(t344) = 0.
      t339 = xsdbool( t340 >= t344 ).
      DATA t345 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t346) = t168.
      t345 = me->find_behavior_definition_name( i_cdef = t346 ).
      t272 = NEW zcl_lnt_info_class_definition( i_name = t273 i_identifier = t278 i_is_local = t281 i_is_global = t288 i_methods = t296 i_aliases_acc1 = t297 i_constants = t298 i_attributes = t299 i_super_class_name = t300 i_is_abstract =
      t301 i_is_final = t319 i_interfaces = t329 i_is_for_testing = t331 i_duration = t337 i_risk_level = t338 i_is_shared_memory = t339 i_behavior_definition_name = t345 ).
      APPEND t272 TO t271->items.
    ENDLOOP.
    DATA(t347) = t2.
    result = t347.

  ENDMETHOD.

  METHOD find_behavior_definition_name.
    DATA(t1) = i_cdef.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t4.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t5.
    DATA t6 TYPE REF TO zcl_lnt_statement_node.
    DATA(t7) = t1.
    t6 = t7.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t8.
    DATA(t9) = VALUE abap_bool( ).
    DATA(t10) = t6.
    IF t10 IS INITIAL.
      t9 = abap_true.
    ENDIF.
    IF t9 = abap_true.
      DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t11.
      t8 = t11.
    ELSE.
      DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t14 TYPE REF TO zcl_lnt_abstract_node.
      DATA t15 TYPE REF TO zcl_lnt_statement_node.
      DATA(t16) = t6.
      t15 = t16.
      t14 = t15.
      DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t18) = t14.
      t17 = t18->children.
      t13 = t17.
      t12 ?= t13.
      t8 = t12.
    ENDIF.
    t5 = t8.
    t4 = t5.
    DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t19.
    DATA t20 TYPE abap_bool.
    DATA(t21) = t4.
    t20 = xsdbool( t21 IS BOUND ).
    IF t20 = abap_true.
      DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t23) = t4.
      t22 = t23.
      t19 = t22.
    ELSE.
      DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t24.
      t19 = t24.
    ENDIF.
    t3 = t19.
    t2 = t3.
    DATA t25 TYPE i.
    DATA(t26) = 2.
    t25 = t26.
    DO.
      DATA t27 TYPE abap_bool.
      DATA(t28) = t25.
      DATA t29 TYPE i.
      DATA(t30) = t2.
      t29 = lines( t30->items ).
      t27 = xsdbool( t28 < t29 ).
      IF t27 = abap_false.
        EXIT.
      ENDIF.
      DATA t31 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA t32 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA(t33) = t2.
      DATA(t34) = t25.
      t34 = t34 + 1.
      DATA t35 TYPE REF TO object.
      CLEAR t35.
      READ TABLE t33->items INDEX t34 INTO t35.
      t32 ?= t35.
      t31 = t32.
      DATA(t36) = VALUE abap_bool( ).
      DATA t37 TYPE abap_bool.
      DATA t38 TYPE abap_bool.
      DATA(t39) = t31.
      t38 = xsdbool( t39 IS BOUND AND t39 IS INSTANCE OF zcl_lnt_expression_node ).
      t37 = t38.
      IF t38 = abap_true.
        DATA t40 TYPE abap_bool.
        DATA t41 TYPE REF TO zif_lnt_statement_runnable.
        DATA t42 TYPE REF TO zcl_lnt_expression_node.
        DATA(t43) = t31.
        DATA t44 TYPE REF TO object.
        t44 = t43.
        t42 ?= t44.
        t41 = t42->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
        t40 = xsdbool( t41 IS BOUND AND t41 IS INSTANCE OF zcl_lnt_bhvr_dfntn_nm ).
        t37 = t40.
      ENDIF.
      t36 = t37.
      IF t37 = abap_true.
        DATA(t45) = VALUE abap_bool( ).
        DATA t46 TYPE string.
        DATA t47 TYPE string.
        DATA t48 TYPE REF TO zif_lnt_union_4cf1d054.
        DATA(t49) = t2.
        DATA t50 TYPE i.
        DATA(t51) = t25.
        DATA(t52) = 2.
        t50 = t51 - t52.
        t50 = t50 + 1.
        DATA t53 TYPE REF TO object.
        CLEAR t53.
        READ TABLE t49->items INDEX t50 INTO t53.
        t48 ?= t53.
        t47 = t48->concat_tokens( ).
        DATA(t54) = strlen( t47 ).
        t46 = t47.
        IF t46 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t46 TO UPPER CASE.
        ELSE.
          t46 = zlnt_runtime_uppe_91169605024d=>full( t46 ).
        ENDIF.
        DATA(t55) = |BEHAVIOR|.
        t45 = xsdbool( t46 = t55 ).
        t36 = t45.
      ENDIF.
      IF t36 = abap_true.
        DATA t56 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t56.
        DATA(t57) = abap_true.
        IF t57 = abap_true.
          DATA t58 TYPE string.
          DATA t59 TYPE REF TO zcl_lnt_expression_node.
          DATA(t60) = t31.
          DATA t61 TYPE REF TO object.
          t61 = t60.
          t59 ?= t61.
          t58 = t59->concat_tokens( ).
          DATA(t62) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t62->has = abap_true.
          t62->value = t58.
          t56 = t62.
        ELSE.
          DATA t63 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t63.
          t56 = t63.
        ENDIF.
        result = t56.
        RETURN.
      ENDIF.
      DATA t64 TYPE i.
      DATA(t65) = t25.
      DATA(t66) = 1.
      t64 = t65 + t66.
      t25 = t64.
    ENDDO.
    DATA t67 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t67.
    result = t67.

  ENDMETHOD.

  METHOD get_implementing.
    DATA(t1) = i_input_967e.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t5) = t1.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d523_88ac7053af9c.
    t4 = t5->find_all_statements( i_type_9913 = t6 ).
    DATA t7 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t7.
    DATA t8 TYPE REF TO object.
    CLEAR t8.
    LOOP AT t4->items INTO t8.
      t7 ?= t8.
      DATA t9 TYPE REF TO zcl_lnt_expression_node.
      DATA t10 TYPE REF TO zcl_lnt_expression_node.
      DATA(t11) = t7.
      DATA(t12) = zlnt_runtime_desc_78196487750d=>zlnt_member_d87_b6ca272efa9462.
      t10 = t11->find_direct_expression( i_type_9913 = t12 ).
      t9 = t10.
      DATA t13 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t14 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t14.
      t13 = t14.
      DATA t15 TYPE abap_bool.
      DATA(t16) = t9.
      t15 = xsdbool( t16 IS BOUND ).
      IF t15 = abap_true.
        DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t18 TYPE REF TO zcl_lnt_expression_node.
        DATA(t19) = t9.
        t18 = t19.
        DATA(t20) = zlnt_runtime_desc_78196487750d=>zlnt_member_d86_5c0b7073356207.
        t17 = t18->find_direct_expressions( i_type_9913 = t20 ).
        DATA t21 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t21.
        DATA t22 TYPE REF TO object.
        CLEAR t22.
        LOOP AT t17->items INTO t22.
          t21 ?= t22.
          DATA(t23) = t13.
          DATA t24 TYPE string.
          DATA t25 TYPE string.
          DATA(t26) = t21.
          t25 = t26->concat_tokens( ).
          DATA(t27) = strlen( t25 ).
          t24 = t25.
          IF t24 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t24 TO UPPER CASE.
          ELSE.
            t24 = zlnt_runtime_uppe_91169605024d=>full( t24 ).
          ENDIF.
          APPEND t24 TO t23->items.
        ENDLOOP.
      ENDIF.
      DATA t28 TYPE REF TO zcl_lnt_expression_node.
      DATA t29 TYPE REF TO zcl_lnt_expression_node.
      DATA(t30) = t7.
      DATA(t31) = zlnt_runtime_desc_78196487750d=>zlnt_member_d170_d4b536f00e50.
      t29 = t30->find_direct_expression( i_type_9913 = t31 ).
      t28 = t29.
      DATA t32 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t33 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t33.
      t32 = t33.
      DATA t34 TYPE abap_bool.
      DATA(t35) = t28.
      t34 = xsdbool( t35 IS BOUND ).
      IF t34 = abap_true.
        DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t37 TYPE REF TO zcl_lnt_expression_node.
        DATA(t38) = t28.
        t37 = t38.
        DATA(t39) = zlnt_runtime_desc_78196487750d=>zlnt_member_d86_5c0b7073356207.
        t36 = t37->find_direct_expressions( i_type_9913 = t39 ).
        DATA t40 TYPE REF TO zcl_lnt_expression_node.
        CLEAR t40.
        DATA t41 TYPE REF TO object.
        CLEAR t41.
        LOOP AT t36->items INTO t41.
          t40 ?= t41.
          DATA(t42) = t32.
          DATA t43 TYPE string.
          DATA t44 TYPE string.
          DATA(t45) = t40.
          t44 = t45->concat_tokens( ).
          DATA(t46) = strlen( t44 ).
          t43 = t44.
          IF t43 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t43 TO UPPER CASE.
          ELSE.
            t43 = zlnt_runtime_uppe_91169605024d=>full( t43 ).
          ENDIF.
          APPEND t43 TO t42->items.
        ENDLOOP.
      ENDIF.
      DATA(t47) = VALUE string( ).
      DATA t48 TYPE string.
      DATA t49 TYPE string.
      DATA(t50) = t7.
      t49 = t50->concat_tokens( ).
      DATA(t51) = strlen( t49 ).
      t48 = t49.
      IF t48 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t48 TO UPPER CASE.
      ELSE.
        t48 = zlnt_runtime_uppe_91169605024d=>full( t48 ).
      ENDIF.
      t47 = t48.
      DATA(t52) = VALUE abap_bool( ).
      DATA(t53) = VALUE abap_bool( ).
      DATA(t54) = VALUE i( ).
      DATA(t55) = t47.
      DATA(t56) = | ALL METHODS ABSTRACT|.
      DATA(t57) = strlen( t55 ).
      IF t56 IS INITIAL.
        t54 = 0.
      ELSE.
        FIND t56 IN t55 MATCH OFFSET t54.
        IF sy-subrc <> 0.
          t54 = -1.
        ENDIF.
      ENDIF.
      DATA(t58) = 0.
      t53 = xsdbool( t54 >= t58 ).
      t52 = t53.
      DATA(t59) = VALUE abap_bool( ).
      DATA(t60) = VALUE abap_bool( ).
      DATA(t61) = VALUE i( ).
      DATA(t62) = t47.
      DATA(t63) = | PARTIALLY IMPLEMENTED|.
      DATA(t64) = strlen( t62 ).
      IF t63 IS INITIAL.
        t61 = 0.
      ELSE.
        FIND t63 IN t62 MATCH OFFSET t61.
        IF sy-subrc <> 0.
          t61 = -1.
        ENDIF.
      ENDIF.
      DATA(t65) = 0.
      t60 = xsdbool( t61 >= t65 ).
      t59 = t60.
      DATA(t66) = VALUE string( ).
      DATA t67 TYPE string.
      DATA t68 TYPE string.
      DATA t69 TYPE REF TO zcl_lnt_abstract_token.
      DATA t70 TYPE REF TO zcl_lnt_abstract_token.
      DATA t71 TYPE REF TO zcl_lnt_expression_node.
      DATA t72 TYPE REF TO zcl_lnt_expression_node.
      DATA(t73) = t7.
      DATA(t74) = zlnt_runtime_desc_78196487750d=>zlnt_member_d198_f214049174db.
      t72 = t73->find_first_expression( i_type_9913 = t74 ).
      t71 = t72.
      t70 = t71->get_first_token( ).
      t69 = t70.
      DATA t75 TYPE string.
      DATA(t76) = t69.
      t75 = t76->str.
      t68 = t75.
      DATA(t77) = strlen( t68 ).
      t67 = t68.
      IF t67 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t67 TO UPPER CASE.
      ELSE.
        t67 = zlnt_runtime_uppe_91169605024d=>full( t67 ).
      ENDIF.
      t66 = t67.
      DATA(t78) = t2.
      DATA t79 TYPE REF TO zcl_lnt_info_implementing.
      DATA(t80) = t66.
      DATA(t81) = t59.
      DATA(t82) = t52.
      DATA(t83) = t13.
      DATA(t84) = t32.
      t79 = NEW zcl_lnt_info_implementing( i_name = t80 i_partial = t81 i_all_abstract = t82 i_abstract_methods = t83 i_final_methods = t84 ).
      APPEND t79 TO t78->items.
    ENDLOOP.
    DATA(t85) = t2.
    result = t85.

  ENDMETHOD.

  METHOD parse_aliases.
    DATA(t1) = i_node.
    DATA(t2) = i_visibility_5c1f.
    DATA(t3) = VALUE abap_bool( ).
    DATA t4 TYPE REF TO zcl_lnt_structure_node.
    DATA(t5) = t1.
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
    IF t3 = abap_true.
      DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t10.
      result = t10.
      RETURN.
    ENDIF.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t12.
    t11 = t12.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t14 TYPE REF TO zcl_lnt_structure_node.
    DATA(t15) = t1.
    t14 = t15.
    DATA(t16) = zlnt_runtime_desc_78196487750d=>zlnt_member_d355_f5f8042a98ef.
    t13 = t14->find_all_statements( i_type_9913 = t16 ).
    DATA t17 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t17.
    DATA t18 TYPE REF TO object.
    CLEAR t18.
    LOOP AT t13->items INTO t18.
      t17 ?= t18.
      DATA t19 TYPE REF TO zcl_lnt_abstract_token.
      DATA t20 TYPE REF TO zcl_lnt_abstract_token.
      DATA t21 TYPE REF TO zcl_lnt_expression_node.
      DATA t22 TYPE REF TO zcl_lnt_expression_node.
      DATA(t23) = t17.
      DATA(t24) = zlnt_runtime_desc_78196487750d=>zlnt_member_d256_4aab5e345b39.
      t22 = t23->find_first_expression( i_type_9913 = t24 ).
      t21 = t22.
      t20 = t21->get_first_token( ).
      t19 = t20.
      DATA t25 TYPE REF TO zcl_lnt_abstract_token.
      DATA t26 TYPE REF TO zcl_lnt_abstract_token.
      DATA t27 TYPE REF TO zcl_lnt_expression_node.
      DATA t28 TYPE REF TO zcl_lnt_expression_node.
      DATA(t29) = t17.
      DATA(t30) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
      t28 = t29->find_first_expression( i_type_9913 = t30 ).
      t27 = t28.
      t26 = t27->get_first_token( ).
      t25 = t26.
      DATA(t31) = t11.
      DATA t32 TYPE REF TO zcl_lnt_info_alias.
      DATA t33 TYPE string.
      DATA t34 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t35) = t19.
      t34 = t35.
      DATA t36 TYPE string.
      DATA(t37) = t34.
      t36 = t37->str.
      t33 = t36.
      DATA t38 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t39) = t19.
      DATA(t40) = CONV string( me->filename ).
      t38 = NEW zcl_lnt_fi_identifier( i_token = t39 i_filename = t40 ).
      DATA t41 TYPE int8.
      DATA(t42) = t2.
      t41 = t42.
      DATA t43 TYPE string.
      DATA t44 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t45) = t25.
      t44 = t45.
      DATA t46 TYPE string.
      DATA(t47) = t44.
      t46 = t47->str.
      t43 = t46.
      t32 = NEW zcl_lnt_info_alias( i_name = t33 i_identifier = t38 i_visibility_5c1f = t41 i_component = t43 ).
      APPEND t32 TO t31->items.
    ENDLOOP.
    DATA(t48) = t11.
    result = t48.

  ENDMETHOD.

  METHOD parse_constants.
    DATA(t1) = i_node.
    DATA(t2) = i_visibility_5c1f.
    DATA(t3) = VALUE abap_bool( ).
    DATA t4 TYPE REF TO zcl_lnt_structure_node.
    DATA(t5) = t1.
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
    IF t3 = abap_true.
      DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t10.
      result = t10.
      RETURN.
    ENDIF.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t12.
    t11 = t12.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t14 TYPE REF TO zcl_lnt_structure_node.
    DATA(t15) = t1.
    t14 = t15.
    DATA(t16) = zlnt_runtime_desc_78196487750d=>zlnt_member_d409_df8201533dcd.
    t13 = t14->find_all_statements( i_type_9913 = t16 ).
    DATA t17 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t17.
    DATA t18 TYPE REF TO object.
    CLEAR t18.
    LOOP AT t13->items INTO t18.
      t17 ?= t18.
      DATA t19 TYPE REF TO zcl_lnt_abstract_token.
      DATA t20 TYPE REF TO zcl_lnt_abstract_token.
      DATA t21 TYPE REF TO zcl_lnt_expression_node.
      DATA t22 TYPE REF TO zcl_lnt_expression_node.
      DATA(t23) = t17.
      DATA(t24) = zlnt_runtime_desc_78196487750d=>zlnt_member_d148_212592b80f97.
      t22 = t23->find_first_expression( i_type_9913 = t24 ).
      t21 = t22.
      t20 = t21->get_first_token( ).
      t19 = t20.
      DATA t25 TYPE REF TO zcl_lnt_expression_node.
      DATA t26 TYPE REF TO zcl_lnt_expression_node.
      DATA(t27) = t17.
      DATA(t28) = zlnt_runtime_desc_78196487750d=>zlnt_member_d179_7cc7b9e87931.
      t26 = t27->find_first_expression( i_type_9913 = t28 ).
      t25 = t26.
      DATA(t29) = VALUE string( ).
      DATA(t30) = VALUE string( ).
      DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t31.
      DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t32.
      DATA t33 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t33.
      DATA t34 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t34.
      DATA t35 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t35.
      DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t36.
      DATA t37 TYPE REF TO zcl_lnt_expression_node.
      DATA t38 TYPE REF TO zcl_lnt_expression_node.
      DATA(t39) = t17.
      DATA(t40) = zlnt_runtime_desc_78196487750d=>zlnt_member_d146_4e7b86c7b080.
      t38 = t39->find_first_expression( i_type_9913 = t40 ).
      t37 = t38.
      DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t41.
      DATA(t42) = VALUE abap_bool( ).
      DATA(t43) = t37.
      IF t43 IS INITIAL.
        t42 = abap_true.
      ENDIF.
      IF t42 = abap_true.
        DATA t44 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t44.
        t41 = t44.
      ELSE.
        DATA t45 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t46 TYPE REF TO zcl_lnt_expression_node.
        DATA(t47) = t37.
        t46 = t47.
        t45 = t46->get_tokens( ).
        t41 = t45.
      ENDIF.
      t36 = t41.
      t35 = t36.
      DATA t48 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t48.
      DATA(t49) = VALUE abap_bool( ).
      DATA(t50) = t35.
      IF t50 IS INITIAL.
        t49 = abap_true.
      ENDIF.
      IF t49 = abap_true.
        DATA t51 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t51.
        t48 = t51.
      ELSE.
        DATA t52 TYPE REF TO zcl_lnt_abstract_token.
        DATA t53 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t54) = t35.
        t53 = t54.
        DATA t55 TYPE REF TO object.
        CLEAR t55.
        READ TABLE t53->items INDEX 2 INTO t55.
        t52 ?= t55.
        t48 = t52.
      ENDIF.
      t34 = t48.
      t33 = t34.
      DATA t56 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t56.
      DATA(t57) = VALUE abap_bool( ).
      DATA(t58) = t33.
      IF t58 IS INITIAL.
        t57 = abap_true.
      ENDIF.
      IF t57 = abap_true.
        DATA t59 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t59.
        t56 = t59.
      ELSE.
        DATA t60 TYPE string.
        DATA t61 TYPE REF TO zcl_lnt_abstract_token.
        DATA t62 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t63) = t33.
        t62 = t63.
        t61 = t62.
        DATA t64 TYPE string.
        DATA(t65) = t61.
        t64 = t65->str.
        t60 = t64.
        DATA(t66) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t66->has = abap_true.
        t66->value = t60.
        t56 = t66.
      ENDIF.
      t32 = t56.
      t31 = t32.
      DATA(t67) = VALUE string( ).
      DATA(t68) = VALUE abap_bool( ).
      DATA(t69) = t31.
      IF t69 IS INITIAL.
        t68 = abap_true.
      ELSEIF t69->has = abap_false.
        t68 = abap_true.
      ENDIF.
      IF t68 = abap_true.
        DATA(t70) = |``|.
        t67 = t70.
      ELSE.
        DATA t71 TYPE string.
        DATA(t72) = t31.
        t71 = t72->value.
        t67 = t71.
      ENDIF.
      t30 = t67.
      t29 = t30.
      DATA(t73) = VALUE string( ).
      DATA(t74) = VALUE string( ).
      DATA t75 TYPE string.
      DATA(t76) = t29.
      t75 = t76.
      DATA(t77) = VALUE string( ).
      DATA(t78) = t75.
      DATA(t79) = 1.
      DATA t80 TYPE i.
      DATA t81 TYPE i.
      DATA(t82) = t29.
      DATA(t83) = strlen( t82 ).
      t81 = t83.
      DATA(t84) = 1.
      t80 = t81 - t84.
      DATA(t85) = strlen( t78 ).
      IF t79 < 0.
        t79 = t85 + t79.
      ENDIF.
      t79 = COND i( WHEN t79 < 0 THEN 0 WHEN t79 > t85 THEN t85 ELSE t79 ).
      IF t80 < 0.
        t80 = t85 + t80.
      ENDIF.
      t80 = COND i( WHEN t80 < 0 THEN 0 WHEN t80 > t85 THEN t85 ELSE t80 ).
      IF t80 > t79.
        t85 = t80 - t79.
        t77 = t78+t79(t85).
      ELSE.
        CLEAR t77.
      ENDIF.
      t74 = t77.
      t73 = t74.
      DATA(t86) = t11.
      DATA t87 TYPE REF TO zcl_lnt_info_constant.
      CLEAR t87.
      DATA t88 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t89) = t19.
      DATA(t90) = CONV string( me->filename ).
      t88 = NEW zcl_lnt_fi_identifier( i_token = t89 i_filename = t90 ).
      DATA t91 TYPE string.
      DATA t92 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t93) = t19.
      t92 = t93.
      DATA t94 TYPE string.
      DATA(t95) = t92.
      t94 = t95->str.
      t91 = t94.
      DATA(t96) = VALUE string( ).
      DATA t97 TYPE abap_bool.
      DATA(t98) = t25.
      t97 = xsdbool( t98 IS BOUND ).
      IF t97 = abap_true.
        DATA t99 TYPE string.
        DATA t100 TYPE REF TO zcl_lnt_abstract_token.
        DATA t101 TYPE REF TO zcl_lnt_abstract_token.
        DATA t102 TYPE REF TO zcl_lnt_expression_node.
        DATA(t103) = t25.
        t102 = t103.
        t101 = t102->get_first_token( ).
        t100 = t101.
        DATA t104 TYPE string.
        DATA(t105) = t100.
        t104 = t105->str.
        t99 = t104.
        t96 = t99.
      ELSE.
        DATA(t106) = ||.
        t96 = t106.
      ENDIF.
      DATA t107 TYPE int8.
      DATA(t108) = t2.
      t107 = t108.
      DATA(t109) = t73.
      t87 = NEW zcl_lnt_info_constant( i_identifier = t88 i_name = t91 i_type_name = t96 i_visibility_5c1f = t107 i_value = t109 ).
      APPEND t87 TO t86->items.
    ENDLOOP.
    DATA(t110) = t11.
    result = t110.

  ENDMETHOD.

  METHOD parse_attributes.
    DATA(t1) = i_node.
    DATA(t2) = i_visibility_5c1f.
    DATA(t3) = VALUE abap_bool( ).
    DATA t4 TYPE REF TO zcl_lnt_structure_node.
    DATA(t5) = t1.
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
    IF t3 = abap_true.
      DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t10.
      result = t10.
      RETURN.
    ENDIF.
    DATA t11 TYPE REF TO zcl_lnt_structure_node.
    DATA t12 TYPE REF TO zcl_lnt_structure_node.
    DATA t13 TYPE REF TO zcl_lnt_structure_node.
    DATA(t14) = t1.
    t13 = t14.
    DATA(t15) = zlnt_runtime_desc_78196487750d=>zlnt_member_d717_78ede11c0134.
    t12 = t13->find_first_structure( i_type_9913 = t15 ).
    t11 = t12.
    DATA(t16) = VALUE abap_bool( ).
    DATA t17 TYPE REF TO zcl_lnt_structure_node.
    DATA(t18) = t11.
    t17 = t18.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    t19 = t20.
    DATA(t21) = VALUE abap_bool( ).
    DATA(t22) = t17.
    IF t22 IS INITIAL.
      t21 = abap_true.
    ENDIF.
    t16 = t21.
    IF t16 = abap_true.
      DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t23.
      result = t23.
      RETURN.
    ENDIF.
    DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t25.
    t24 = t25.
    DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t27 TYPE REF TO zcl_lnt_structure_node.
    DATA(t28) = t11.
    t27 = t28.
    DATA(t29) = zlnt_runtime_desc_78196487750d=>zlnt_member_d420_cd77a127ab95.
    t26 = t27->find_direct_statements( i_type_9913 = t29 ).
    DATA t30 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t30.
    DATA t31 TYPE REF TO object.
    CLEAR t31.
    LOOP AT t26->items INTO t31.
      t30 ?= t31.
      DATA t32 TYPE REF TO zcl_lnt_abstract_token.
      DATA t33 TYPE REF TO zcl_lnt_abstract_token.
      DATA t34 TYPE REF TO zcl_lnt_expression_node.
      DATA t35 TYPE REF TO zcl_lnt_expression_node.
      DATA(t36) = t30.
      DATA(t37) = zlnt_runtime_desc_78196487750d=>zlnt_member_d148_212592b80f97.
      t35 = t36->find_first_expression( i_type_9913 = t37 ).
      t34 = t35.
      t33 = t34->get_first_token( ).
      t32 = t33.
      DATA(t38) = t24.
      DATA t39 TYPE REF TO zcl_lnt_info_attribute.
      CLEAR t39.
      DATA t40 TYPE string.
      DATA t41 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t42) = t32.
      t41 = t42.
      DATA t43 TYPE string.
      DATA(t44) = t41.
      t43 = t44->str.
      t40 = t43.
      DATA t45 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t46) = t32.
      DATA(t47) = CONV string( me->filename ).
      t45 = NEW zcl_lnt_fi_identifier( i_token = t46 i_filename = t47 ).
      DATA(t48) = |instance|.
      DATA(t49) = VALUE abap_bool( ).
      DATA(t50) = VALUE i( ).
      DATA t51 TYPE string.
      DATA t52 TYPE string.
      DATA(t53) = t30.
      t52 = t53->concat_tokens( ).
      DATA(t54) = strlen( t52 ).
      t51 = t52.
      IF t51 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t51 TO UPPER CASE.
      ELSE.
        t51 = zlnt_runtime_uppe_91169605024d=>full( t51 ).
      ENDIF.
      DATA(t55) = | READ-ONLY|.
      DATA(t56) = strlen( t51 ).
      IF t55 IS INITIAL.
        t50 = 0.
      ELSE.
        FIND t55 IN t51 MATCH OFFSET t50.
        IF sy-subrc <> 0.
          t50 = -1.
        ENDIF.
      ENDIF.
      DATA(t57) = 0.
      t49 = xsdbool( t50 >= t57 ).
      DATA t58 TYPE int8.
      DATA(t59) = t2.
      t58 = t59.
      t39 = NEW zcl_lnt_info_attribute( i_name = t40 i_identifier = t45 i_level = t48 i_read_only = t49 i_visibility_5c1f = t58 ).
      APPEND t39 TO t38->items.
    ENDLOOP.
    DATA t60 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t61 TYPE REF TO zcl_lnt_structure_node.
    DATA(t62) = t11.
    t61 = t62.
    DATA(t63) = zlnt_runtime_desc_78196487750d=>zlnt_member_d390_4c3d4a5e484d.
    t60 = t61->find_direct_statements( i_type_9913 = t63 ).
    DATA t64 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t64.
    DATA t65 TYPE REF TO object.
    CLEAR t65.
    LOOP AT t60->items INTO t65.
      t64 ?= t65.
      DATA t66 TYPE REF TO zcl_lnt_abstract_token.
      DATA t67 TYPE REF TO zcl_lnt_abstract_token.
      DATA t68 TYPE REF TO zcl_lnt_expression_node.
      DATA t69 TYPE REF TO zcl_lnt_expression_node.
      DATA(t70) = t64.
      DATA(t71) = zlnt_runtime_desc_78196487750d=>zlnt_member_d148_212592b80f97.
      t69 = t70->find_first_expression( i_type_9913 = t71 ).
      t68 = t69.
      t67 = t68->get_first_token( ).
      t66 = t67.
      DATA(t72) = t24.
      DATA t73 TYPE REF TO zcl_lnt_info_attribute.
      CLEAR t73.
      DATA t74 TYPE string.
      DATA t75 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t76) = t66.
      t75 = t76.
      DATA t77 TYPE string.
      DATA(t78) = t75.
      t77 = t78->str.
      t74 = t77.
      DATA t79 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t80) = t66.
      DATA(t81) = CONV string( me->filename ).
      t79 = NEW zcl_lnt_fi_identifier( i_token = t80 i_filename = t81 ).
      DATA(t82) = |static|.
      DATA(t83) = VALUE abap_bool( ).
      DATA(t84) = VALUE i( ).
      DATA t85 TYPE string.
      DATA t86 TYPE string.
      DATA(t87) = t64.
      t86 = t87->concat_tokens( ).
      DATA(t88) = strlen( t86 ).
      t85 = t86.
      IF t85 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t85 TO UPPER CASE.
      ELSE.
        t85 = zlnt_runtime_uppe_91169605024d=>full( t85 ).
      ENDIF.
      DATA(t89) = | READ-ONLY|.
      DATA(t90) = strlen( t85 ).
      IF t89 IS INITIAL.
        t84 = 0.
      ELSE.
        FIND t89 IN t85 MATCH OFFSET t84.
        IF sy-subrc <> 0.
          t84 = -1.
        ENDIF.
      ENDIF.
      DATA(t91) = 0.
      t83 = xsdbool( t84 >= t91 ).
      DATA t92 TYPE int8.
      DATA(t93) = t2.
      t92 = t93.
      t73 = NEW zcl_lnt_info_attribute( i_name = t74 i_identifier = t79 i_level = t82 i_read_only = t83 i_visibility_5c1f = t92 ).
      APPEND t73 TO t72->items.
    ENDLOOP.
    DATA t94 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t95 TYPE REF TO zcl_lnt_structure_node.
    DATA(t96) = t11.
    t95 = t96.
    DATA(t97) = zlnt_runtime_desc_78196487750d=>zlnt_member_d409_df8201533dcd.
    t94 = t95->find_direct_statements( i_type_9913 = t97 ).
    DATA t98 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t98.
    DATA t99 TYPE REF TO object.
    CLEAR t99.
    LOOP AT t94->items INTO t99.
      t98 ?= t99.
      DATA t100 TYPE REF TO zcl_lnt_abstract_token.
      DATA t101 TYPE REF TO zcl_lnt_abstract_token.
      DATA t102 TYPE REF TO zcl_lnt_expression_node.
      DATA t103 TYPE REF TO zcl_lnt_expression_node.
      DATA(t104) = t98.
      DATA(t105) = zlnt_runtime_desc_78196487750d=>zlnt_member_d148_212592b80f97.
      t103 = t104->find_first_expression( i_type_9913 = t105 ).
      t102 = t103.
      t101 = t102->get_first_token( ).
      t100 = t101.
      DATA(t106) = t24.
      DATA t107 TYPE REF TO zcl_lnt_info_attribute.
      DATA t108 TYPE string.
      DATA t109 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t110) = t100.
      t109 = t110.
      DATA t111 TYPE string.
      DATA(t112) = t109.
      t111 = t112->str.
      t108 = t111.
      DATA t113 TYPE REF TO zcl_lnt_fi_identifier.
      DATA(t114) = t100.
      DATA(t115) = CONV string( me->filename ).
      t113 = NEW zcl_lnt_fi_identifier( i_token = t114 i_filename = t115 ).
      DATA(t116) = |constant|.
      DATA(t117) = abap_true.
      DATA t118 TYPE int8.
      DATA(t119) = t2.
      t118 = t119.
      t107 = NEW zcl_lnt_info_attribute( i_name = t108 i_identifier = t113 i_level = t116 i_read_only = t117 i_visibility_5c1f = t118 ).
      APPEND t107 TO t106->items.
    ENDLOOP.
    DATA(t120) = t24.
    result = t120.

  ENDMETHOD.

  METHOD parse_method_definition.
    DATA(t1) = i_node.
    DATA(t2) = i_visibility_5c1f.
    DATA(t3) = VALUE abap_bool( ).
    DATA t4 TYPE REF TO zcl_lnt_structure_node.
    DATA(t5) = t1.
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
    IF t3 = abap_true.
      DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t10.
      result = t10.
      RETURN.
    ENDIF.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t12.
    t11 = t12.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t14 TYPE REF TO zcl_lnt_structure_node.
    DATA(t15) = t1.
    t14 = t15.
    DATA(t16) = zlnt_runtime_desc_78196487750d=>zlnt_member_d536_087fe30efad2.
    t13 = t14->find_all_statements( i_type_9913 = t16 ).
    DATA t17 TYPE REF TO zcl_lnt_statement_node.
    CLEAR t17.
    DATA t18 TYPE REF TO object.
    CLEAR t18.
    LOOP AT t13->items INTO t18.
      t17 ?= t18.
      DATA t19 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t19.
      DATA t20 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t20.
      DATA t21 TYPE REF TO zcl_lnt_expression_node.
      DATA t22 TYPE REF TO zcl_lnt_expression_node.
      DATA(t23) = t17.
      DATA(t24) = zlnt_runtime_desc_78196487750d=>zlnt_member_d86_5c0b7073356207.
      t22 = t23->find_direct_expression( i_type_9913 = t24 ).
      t21 = t22.
      DATA t25 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t25.
      DATA(t26) = VALUE abap_bool( ).
      DATA(t27) = t21.
      IF t27 IS INITIAL.
        t26 = abap_true.
      ENDIF.
      IF t26 = abap_true.
        DATA t28 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t28.
        t25 = t28.
      ELSE.
        DATA t29 TYPE REF TO zcl_lnt_abstract_token.
        DATA t30 TYPE REF TO zcl_lnt_expression_node.
        DATA(t31) = t21.
        t30 = t31.
        t29 = t30->get_first_token( ).
        t25 = t29.
      ENDIF.
      t20 = t25.
      t19 = t20.
      DATA(t32) = VALUE abap_bool( ).
      DATA t33 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t34) = t19.
      t33 = t34.
      DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t36.
      t35 = t36.
      DATA(t37) = VALUE abap_bool( ).
      DATA(t38) = t33.
      IF t38 IS INITIAL.
        t37 = abap_true.
      ENDIF.
      t32 = t37.
      IF t32 = abap_true.
        CONTINUE.
      ENDIF.
      DATA t39 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t41) = t17.
      t40 = me->parse_method_parameters( i_node = t41 ).
      t39 = t40.
      DATA(t42) = VALUE string( ).
      DATA t43 TYPE string.
      DATA t44 TYPE string.
      DATA(t45) = t17.
      t44 = t45->concat_tokens( ).
      DATA(t46) = strlen( t44 ).
      t43 = t44.
      IF t43 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t43 TO UPPER CASE.
      ELSE.
        t43 = zlnt_runtime_uppe_91169605024d=>full( t43 ).
      ENDIF.
      t42 = t43.
      DATA(t47) = t11.
      DATA t48 TYPE REF TO zcl_lnt_info_method_definition.
      CLEAR t48.
      DATA t49 TYPE string.
      DATA t50 TYPE REF TO zcl_lnt_abstract_token.
      DATA t51 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t52) = t19.
      t51 = t52.
      t50 = t51.
      DATA t53 TYPE string.
      DATA(t54) = t50.
      t53 = t54->str.
      t49 = t53.
      DATA t55 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t56 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t57) = t19.
      t56 = t57.
      DATA(t58) = CONV string( me->filename ).
      t55 = NEW zcl_lnt_fi_identifier( i_token = t56 i_filename = t58 ).
      DATA(t59) = VALUE abap_bool( ).
      DATA t60 TYPE REF TO zcl_lnt_expression_node.
      DATA t61 TYPE REF TO zcl_lnt_expression_node.
      DATA(t62) = t17.
      DATA(t63) = zlnt_runtime_desc_78196487750d=>zlnt_member_d245_8da77b7903ad.
      t61 = t62->find_direct_expression( i_type_9913 = t63 ).
      t60 = t61.
      DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t65.
      t64 = t65.
      DATA(t66) = VALUE abap_bool( ).
      DATA(t67) = VALUE abap_bool( ).
      DATA(t68) = t60.
      IF t68 IS INITIAL.
        t67 = abap_true.
      ENDIF.
      t66 = xsdbool( t67 = abap_false ).
      t59 = t66.
      DATA(t69) = VALUE abap_bool( ).
      DATA t70 TYPE REF TO zcl_lnt_expression_node.
      DATA t71 TYPE REF TO zcl_lnt_expression_node.
      DATA(t72) = t17.
      DATA(t73) = zlnt_runtime_desc_78196487750d=>zlnt_member_d161_a1a721da0257.
      t71 = t72->find_direct_expression( i_type_9913 = t73 ).
      t70 = t71.
      DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t75.
      t74 = t75.
      DATA(t76) = VALUE abap_bool( ).
      DATA(t77) = VALUE abap_bool( ).
      DATA(t78) = t70.
      IF t78 IS INITIAL.
        t77 = abap_true.
      ENDIF.
      t76 = xsdbool( t77 = abap_false ).
      t69 = t76.
      DATA(t79) = VALUE abap_bool( ).
      DATA(t80) = VALUE i( ).
      DATA(t81) = t42.
      DATA(t82) = | FOR TESTING|.
      DATA(t83) = strlen( t81 ).
      IF t82 IS INITIAL.
        t80 = 0.
      ELSE.
        FIND t82 IN t81 MATCH OFFSET t80.
        IF sy-subrc <> 0.
          t80 = -1.
        ENDIF.
      ENDIF.
      DATA(t84) = 0.
      t79 = xsdbool( t80 >= t84 ).
      DATA(t85) = VALUE abap_bool( ).
      DATA t86 TYPE REF TO zcl_lnt_expression_node.
      DATA t87 TYPE REF TO zcl_lnt_expression_node.
      DATA(t88) = t17.
      DATA(t89) = zlnt_runtime_desc_78196487750d=>zlnt_member_d85_7546e7dce3c106.
      t87 = t88->find_direct_expression( i_type_9913 = t89 ).
      t86 = t87.
      DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t91.
      t90 = t91.
      DATA(t92) = VALUE abap_bool( ).
      DATA(t93) = VALUE abap_bool( ).
      DATA(t94) = t86.
      IF t94 IS INITIAL.
        t93 = abap_true.
      ENDIF.
      t92 = xsdbool( t93 = abap_false ).
      t85 = t92.
      DATA(t95) = VALUE abap_bool( ).
      DATA(t96) = VALUE i( ).
      DATA(t97) = t42.
      DATA(t98) = | FINAL|.
      DATA(t99) = strlen( t97 ).
      IF t98 IS INITIAL.
        t96 = 0.
      ELSE.
        FIND t98 IN t97 MATCH OFFSET t96.
        IF sy-subrc <> 0.
          t96 = -1.
        ENDIF.
      ENDIF.
      DATA(t100) = 0.
      t95 = xsdbool( t96 >= t100 ).
      DATA(t101) = VALUE abap_bool( ).
      DATA(t102) = VALUE i( ).
      DATA(t103) = t42.
      DATA(t104) = | DEFAULT IGNORE|.
      DATA(t105) = strlen( t103 ).
      IF t104 IS INITIAL.
        t102 = 0.
      ELSE.
        FIND t104 IN t103 MATCH OFFSET t102.
        IF sy-subrc <> 0.
          t102 = -1.
        ENDIF.
      ENDIF.
      DATA(t106) = 0.
      t101 = xsdbool( t102 >= t106 ).
      DATA(t107) = VALUE abap_bool( ).
      DATA(t108) = VALUE i( ).
      DATA(t109) = t42.
      DATA(t110) = | DEFAULT FAIL|.
      DATA(t111) = strlen( t109 ).
      IF t110 IS INITIAL.
        t108 = 0.
      ELSE.
        FIND t110 IN t109 MATCH OFFSET t108.
        IF sy-subrc <> 0.
          t108 = -1.
        ENDIF.
      ENDIF.
      DATA(t112) = 0.
      t107 = xsdbool( t108 >= t112 ).
      DATA t113 TYPE int8.
      DATA(t114) = t2.
      t113 = t114.
      DATA(t115) = t39.
      DATA t116 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t116.
      t48 = NEW zcl_lnt_info_method_definition( i_name = t49 i_identifier = t55 i_is_redefinition = t59 i_is_event_handler = t69 i_is_for_testing = t79 i_is_abstract = t85 i_is_final = t95 i_is_default_ignore = t101 i_is_default_fail = t107
      i_visibility_5c1f = t113 i_parameters = t115 i_exceptions = t116 ).
      APPEND t48 TO t47->items.
    ENDLOOP.
    DATA(t117) = t11.
    result = t117.

  ENDMETHOD.

  METHOD parse_method_parameters.
    DATA(t1) = i_node.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    DATA(t6) = t1.
    DATA(t7) = zlnt_runtime_desc_78196487750d=>zlnt_member_d226_08d3e6bb8e97.
    t5 = t6->find_first_expression( i_type_9913 = t7 ).
    t4 = t5.
    DATA t8 TYPE abap_bool.
    DATA(t9) = t4.
    t8 = xsdbool( t9 IS BOUND ).
    IF t8 = abap_true.
      DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t11 TYPE REF TO zcl_lnt_expression_node.
      DATA(t12) = t4.
      t11 = t12.
      DATA(t13) = zlnt_runtime_desc_78196487750d=>zlnt_member_d224_4e54f441ad62.
      t10 = t11->find_all_expressions( i_type_9913 = t13 ).
      DATA t14 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t14.
      DATA t15 TYPE REF TO object.
      CLEAR t15.
      LOOP AT t10->items INTO t15.
        t14 ?= t15.
        DATA t16 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t16.
        DATA t17 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t17.
        DATA t18 TYPE REF TO zcl_lnt_expression_node.
        DATA t19 TYPE REF TO zcl_lnt_expression_node.
        DATA(t20) = t14.
        DATA(t21) = zlnt_runtime_desc_78196487750d=>zlnt_member_d160_b1cea157d835.
        t19 = t20->find_direct_expression( i_type_9913 = t21 ).
        t18 = t19.
        DATA t22 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t22.
        DATA(t23) = VALUE abap_bool( ).
        DATA(t24) = t18.
        IF t24 IS INITIAL.
          t23 = abap_true.
        ENDIF.
        IF t23 = abap_true.
          DATA t25 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t25.
          t22 = t25.
        ELSE.
          DATA t26 TYPE REF TO zcl_lnt_abstract_token.
          DATA t27 TYPE REF TO zcl_lnt_expression_node.
          DATA(t28) = t18.
          t27 = t28.
          t26 = t27->get_first_token( ).
          t22 = t26.
        ENDIF.
        t17 = t22.
        t16 = t17.
        DATA t29 TYPE abap_bool.
        DATA(t30) = t16.
        t29 = xsdbool( t30 IS BOUND ).
        IF t29 = abap_true.
          DATA(t31) = t2.
          DATA t32 TYPE REF TO zcl_lnt_info_method_parameter.
          DATA t33 TYPE string.
          DATA t34 TYPE string.
          DATA t35 TYPE REF TO zcl_lnt_abstract_token.
          DATA t36 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t37) = t16.
          t36 = t37.
          t35 = t36.
          DATA t38 TYPE string.
          DATA(t39) = t35.
          t38 = t39->str.
          t34 = t38.
          DATA(t40) = |!|.
          DATA(t41) = ||.
          DATA(t42) = strlen( t34 ).
          t33 = t34.
          REPLACE ALL OCCURRENCES OF t40 IN t33 WITH t41.
          DATA t43 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t44 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t45) = t16.
          t44 = t45.
          DATA(t46) = CONV string( me->filename ).
          t43 = NEW zcl_lnt_fi_identifier( i_token = t44 i_filename = t46 ).
          DATA(t47) = |importing|.
          t32 = NEW zcl_lnt_info_method_parameter( i_name = t33 i_identifier = t43 i_direction = t47 ).
          APPEND t32 TO t31->items.
        ENDIF.
      ENDLOOP.
    ENDIF.
    DATA t48 TYPE REF TO zcl_lnt_expression_node.
    DATA t49 TYPE REF TO zcl_lnt_expression_node.
    DATA(t50) = t1.
    DATA(t51) = zlnt_runtime_desc_78196487750d=>zlnt_member_d225_0eec1dcc9b8a.
    t49 = t50->find_first_expression( i_type_9913 = t51 ).
    t48 = t49.
    DATA t52 TYPE abap_bool.
    DATA(t53) = t48.
    t52 = xsdbool( t53 IS BOUND ).
    IF t52 = abap_true.
      DATA t54 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t55 TYPE REF TO zcl_lnt_expression_node.
      DATA(t56) = t48.
      t55 = t56.
      DATA(t57) = zlnt_runtime_desc_78196487750d=>zlnt_member_d224_4e54f441ad62.
      t54 = t55->find_all_expressions( i_type_9913 = t57 ).
      DATA t58 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t58.
      DATA t59 TYPE REF TO object.
      CLEAR t59.
      LOOP AT t54->items INTO t59.
        t58 ?= t59.
        DATA t60 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t60.
        DATA t61 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t61.
        DATA t62 TYPE REF TO zcl_lnt_expression_node.
        DATA t63 TYPE REF TO zcl_lnt_expression_node.
        DATA(t64) = t58.
        DATA(t65) = zlnt_runtime_desc_78196487750d=>zlnt_member_d160_b1cea157d835.
        t63 = t64->find_direct_expression( i_type_9913 = t65 ).
        t62 = t63.
        DATA t66 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t66.
        DATA(t67) = VALUE abap_bool( ).
        DATA(t68) = t62.
        IF t68 IS INITIAL.
          t67 = abap_true.
        ENDIF.
        IF t67 = abap_true.
          DATA t69 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t69.
          t66 = t69.
        ELSE.
          DATA t70 TYPE REF TO zcl_lnt_abstract_token.
          DATA t71 TYPE REF TO zcl_lnt_expression_node.
          DATA(t72) = t62.
          t71 = t72.
          t70 = t71->get_first_token( ).
          t66 = t70.
        ENDIF.
        t61 = t66.
        t60 = t61.
        DATA t73 TYPE abap_bool.
        DATA(t74) = t60.
        t73 = xsdbool( t74 IS BOUND ).
        IF t73 = abap_true.
          DATA(t75) = t2.
          DATA t76 TYPE REF TO zcl_lnt_info_method_parameter.
          DATA t77 TYPE string.
          DATA t78 TYPE string.
          DATA t79 TYPE REF TO zcl_lnt_abstract_token.
          DATA t80 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t81) = t60.
          t80 = t81.
          t79 = t80.
          DATA t82 TYPE string.
          DATA(t83) = t79.
          t82 = t83->str.
          t78 = t82.
          DATA(t84) = |!|.
          DATA(t85) = ||.
          DATA(t86) = strlen( t78 ).
          t77 = t78.
          REPLACE ALL OCCURRENCES OF t84 IN t77 WITH t85.
          DATA t87 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t88 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t89) = t60.
          t88 = t89.
          DATA(t90) = CONV string( me->filename ).
          t87 = NEW zcl_lnt_fi_identifier( i_token = t88 i_filename = t90 ).
          DATA(t91) = |exporting|.
          t76 = NEW zcl_lnt_info_method_parameter( i_name = t77 i_identifier = t87 i_direction = t91 ).
          APPEND t76 TO t75->items.
        ENDIF.
      ENDLOOP.
    ENDIF.
    DATA t92 TYPE REF TO zcl_lnt_expression_node.
    DATA t93 TYPE REF TO zcl_lnt_expression_node.
    DATA(t94) = t1.
    DATA(t95) = zlnt_runtime_desc_78196487750d=>zlnt_member_d221_0c54ed92df99.
    t93 = t94->find_first_expression( i_type_9913 = t95 ).
    t92 = t93.
    DATA t96 TYPE abap_bool.
    DATA(t97) = t92.
    t96 = xsdbool( t97 IS BOUND ).
    IF t96 = abap_true.
      DATA t98 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t99 TYPE REF TO zcl_lnt_expression_node.
      DATA(t100) = t92.
      t99 = t100.
      DATA(t101) = zlnt_runtime_desc_78196487750d=>zlnt_member_d224_4e54f441ad62.
      t98 = t99->find_all_expressions( i_type_9913 = t101 ).
      DATA t102 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t102.
      DATA t103 TYPE REF TO object.
      CLEAR t103.
      LOOP AT t98->items INTO t103.
        t102 ?= t103.
        DATA t104 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t104.
        DATA t105 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t105.
        DATA t106 TYPE REF TO zcl_lnt_expression_node.
        DATA t107 TYPE REF TO zcl_lnt_expression_node.
        DATA(t108) = t102.
        DATA(t109) = zlnt_runtime_desc_78196487750d=>zlnt_member_d160_b1cea157d835.
        t107 = t108->find_direct_expression( i_type_9913 = t109 ).
        t106 = t107.
        DATA t110 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t110.
        DATA(t111) = VALUE abap_bool( ).
        DATA(t112) = t106.
        IF t112 IS INITIAL.
          t111 = abap_true.
        ENDIF.
        IF t111 = abap_true.
          DATA t113 TYPE REF TO zcl_lnt_abstract_token.
          CLEAR t113.
          t110 = t113.
        ELSE.
          DATA t114 TYPE REF TO zcl_lnt_abstract_token.
          DATA t115 TYPE REF TO zcl_lnt_expression_node.
          DATA(t116) = t106.
          t115 = t116.
          t114 = t115->get_first_token( ).
          t110 = t114.
        ENDIF.
        t105 = t110.
        t104 = t105.
        DATA t117 TYPE abap_bool.
        DATA(t118) = t104.
        t117 = xsdbool( t118 IS BOUND ).
        IF t117 = abap_true.
          DATA(t119) = t2.
          DATA t120 TYPE REF TO zcl_lnt_info_method_parameter.
          DATA t121 TYPE string.
          DATA t122 TYPE string.
          DATA t123 TYPE REF TO zcl_lnt_abstract_token.
          DATA t124 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t125) = t104.
          t124 = t125.
          t123 = t124.
          DATA t126 TYPE string.
          DATA(t127) = t123.
          t126 = t127->str.
          t122 = t126.
          DATA(t128) = |!|.
          DATA(t129) = ||.
          DATA(t130) = strlen( t122 ).
          t121 = t122.
          REPLACE ALL OCCURRENCES OF t128 IN t121 WITH t129.
          DATA t131 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t132 TYPE REF TO zcl_lnt_abstract_token.
          DATA(t133) = t104.
          t132 = t133.
          DATA(t134) = CONV string( me->filename ).
          t131 = NEW zcl_lnt_fi_identifier( i_token = t132 i_filename = t134 ).
          DATA(t135) = |changing|.
          t120 = NEW zcl_lnt_info_method_parameter( i_name = t121 i_identifier = t131 i_direction = t135 ).
          APPEND t120 TO t119->items.
        ENDIF.
      ENDLOOP.
    ENDIF.
    DATA t136 TYPE REF TO zcl_lnt_expression_node.
    DATA t137 TYPE REF TO zcl_lnt_expression_node.
    DATA(t138) = t1.
    DATA(t139) = zlnt_runtime_desc_78196487750d=>zlnt_member_d229_3a5c1215c384.
    t137 = t138->find_first_expression( i_type_9913 = t139 ).
    t136 = t137.
    DATA t140 TYPE abap_bool.
    DATA(t141) = t136.
    t140 = xsdbool( t141 IS BOUND ).
    IF t140 = abap_true.
      DATA t142 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t142.
      DATA t143 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t143.
      DATA t144 TYPE REF TO zcl_lnt_expression_node.
      DATA t145 TYPE REF TO zcl_lnt_expression_node.
      DATA t146 TYPE REF TO zcl_lnt_expression_node.
      DATA(t147) = t136.
      t146 = t147.
      DATA(t148) = zlnt_runtime_desc_78196487750d=>zlnt_member_d160_b1cea157d835.
      t145 = t146->find_direct_expression( i_type_9913 = t148 ).
      t144 = t145.
      DATA t149 TYPE REF TO zcl_lnt_abstract_token.
      CLEAR t149.
      DATA(t150) = VALUE abap_bool( ).
      DATA(t151) = t144.
      IF t151 IS INITIAL.
        t150 = abap_true.
      ENDIF.
      IF t150 = abap_true.
        DATA t152 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t152.
        t149 = t152.
      ELSE.
        DATA t153 TYPE REF TO zcl_lnt_abstract_token.
        DATA t154 TYPE REF TO zcl_lnt_expression_node.
        DATA(t155) = t144.
        t154 = t155.
        t153 = t154->get_first_token( ).
        t149 = t153.
      ENDIF.
      t143 = t149.
      t142 = t143.
      DATA t156 TYPE abap_bool.
      DATA(t157) = t142.
      t156 = xsdbool( t157 IS BOUND ).
      IF t156 = abap_true.
        DATA(t158) = t2.
        DATA t159 TYPE REF TO zcl_lnt_info_method_parameter.
        DATA t160 TYPE string.
        DATA t161 TYPE string.
        DATA t162 TYPE REF TO zcl_lnt_abstract_token.
        DATA t163 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t164) = t142.
        t163 = t164.
        t162 = t163.
        DATA t165 TYPE string.
        DATA(t166) = t162.
        t165 = t166->str.
        t161 = t165.
        DATA(t167) = |!|.
        DATA(t168) = ||.
        DATA(t169) = strlen( t161 ).
        t160 = t161.
        REPLACE ALL OCCURRENCES OF t167 IN t160 WITH t168.
        DATA t170 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t171 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t172) = t142.
        t171 = t172.
        DATA(t173) = CONV string( me->filename ).
        t170 = NEW zcl_lnt_fi_identifier( i_token = t171 i_filename = t173 ).
        DATA(t174) = |returning|.
        t159 = NEW zcl_lnt_info_method_parameter( i_name = t160 i_identifier = t170 i_direction = t174 ).
        APPEND t159 TO t158->items.
      ENDIF.
    ENDIF.
    DATA(t175) = t2.
    result = t175.

  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d745_973382e545be.
  ENDMETHOD.
ENDCLASS.
