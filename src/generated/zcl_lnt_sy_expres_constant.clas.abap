* TS: src/abap/5_syntax/expressions/constant.ts:6:1 Constant
CLASS zcl_lnt_sy_expres_constant DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_expres_constant IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = i_node.
    DATA t2 TYPE abap_bool.
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA(t4) = t1.
    DATA(t5) = zlnt_runtime_desc_78196487750d=>zlnt_member_d108_ef0500b17c81.
    t3 = t4->find_direct_expression( i_type_9913 = t5 ).
    t2 = xsdbool( t3 IS BOUND ).
    IF t2 = abap_true.
      DATA t6 TYPE REF TO zcl_lnt_integer_type.
      CLEAR t6.
      DATA t7 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t7.
      DATA(t8) = abap_true.
      IF t8 = abap_true.
        DATA t9 TYPE REF TO zcl_lnt_abstract_type_data.
        CLEAR t9.
        DATA t10 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t10.
        DATA t11 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t11.
        DATA(t12) = abap_true.
        IF t12 = abap_true.
          DATA(t13) = abap_true.
          DATA(t14) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t14->has = abap_true.
          t14->value = t13.
          t11 = t14.
        ELSE.
          DATA t15 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t15.
          t11 = t15.
        ENDIF.
        t10 = t11.
        DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t17.
        t16 = t17.
        DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t19.
        t18 = t19.
        DATA t20 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t21 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t21.
        t20 = t21.
        DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t23.
        t22 = t23.
        DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t25.
        t24 = t25.
        t9 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t16 i_conversion_exit = t18 i_derived_from_constant = t10 i_ddic_name = t20 i_rtti_name = t22 i_description = t24 ).
        CREATE OBJECT t9->zlnt_view_ownkeys_b0e8086400eb.
        t9->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t26.
        IF t9->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t9->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `derivedFromConstant` p1 = t26 ).
        ENDIF.
        CREATE OBJECT t9->zlnt_json_ownkeys_70e5fd461788.
        t9->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t27) = |derivedFromConstant|.
        DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t28.
        IF t9->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t9->zlnt_json_ownkeys_70e5fd461788->put( p0 = t27 p1 = t28 ).
        ENDIF.
        t7 = t9.
      ELSE.
        DATA t29 TYPE REF TO zcl_lnt_abstract_type_data.
        CLEAR t29.
        t7 = t29.
      ENDIF.
      t6 = zcl_lnt_integer_type=>get_db65( i_input_967e = t7 ).
      result = t6.
      RETURN.
    ENDIF.
    DATA t30 TYPE string.
    DATA t31 TYPE string.
    DATA t32 TYPE REF TO zcl_lnt_abstract_token.
    DATA t33 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t34) = t1.
    t33 = t34->get_first_token( ).
    t32 = t33.
    DATA t35 TYPE string.
    DATA(t36) = t32.
    t35 = t36->str.
    t31 = t35.
    t30 = t31.
    DATA(t37) = VALUE abap_bool( ).
    DATA(t38) = t30.
    DATA(t39) = |'|.
    DATA(t40) = strlen( t38 ).
    DATA t41 TYPE i.
    DATA(t42) = VALUE i( ).
    DATA(t43) = VALUE string( ).
    t41 = strlen( t39 ).
    IF t41 = 0.
      t37 = abap_true.
    ELSEIF t41 <= t40.
      t42 = 0.
      t43 = t38+t42(t41).
      IF t43 = t39.
        t37 = abap_true.
      ENDIF.
    ENDIF.
    IF t37 = abap_true.
      DATA t44 TYPE i.
      DATA t45 TYPE i.
      DATA t46 TYPE i.
      DATA(t47) = t30.
      DATA(t48) = strlen( t47 ).
      t46 = t48.
      DATA(t49) = 2.
      t45 = t46 - t49.
      t44 = t45.
      DATA t50 TYPE abap_bool.
      DATA(t51) = t44.
      DATA(t52) = 0.
      t50 = xsdbool( t51 <= t52 ).
      IF t50 = abap_true.
        DATA(t53) = 1.
        t44 = t53.
      ENDIF.
      DATA t54 TYPE REF TO zcl_lnt_character_type.
      CLEAR t54.
      DATA t55 TYPE f.
      DATA(t56) = t44.
      t55 = t56.
      DATA t57 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t57.
      DATA(t58) = abap_true.
      IF t58 = abap_true.
        DATA t59 TYPE REF TO zcl_lnt_abstract_type_data.
        CLEAR t59.
        DATA t60 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t60.
        DATA t61 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t61.
        DATA(t62) = abap_true.
        IF t62 = abap_true.
          DATA(t63) = abap_true.
          DATA(t64) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t64->has = abap_true.
          t64->value = t63.
          t61 = t64.
        ELSE.
          DATA t65 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t65.
          t61 = t65.
        ENDIF.
        t60 = t61.
        DATA t66 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t67 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t67.
        t66 = t67.
        DATA t68 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t69 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t69.
        t68 = t69.
        DATA t70 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t71 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t71.
        t70 = t71.
        DATA t72 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t73 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t73.
        t72 = t73.
        DATA t74 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t75 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t75.
        t74 = t75.
        t59 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t66 i_conversion_exit = t68 i_derived_from_constant = t60 i_ddic_name = t70 i_rtti_name = t72 i_description = t74 ).
        CREATE OBJECT t59->zlnt_view_ownkeys_b0e8086400eb.
        t59->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t76.
        IF t59->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t59->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `derivedFromConstant` p1 = t76 ).
        ENDIF.
        CREATE OBJECT t59->zlnt_json_ownkeys_70e5fd461788.
        t59->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA(t77) = |derivedFromConstant|.
        DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t78.
        IF t59->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t59->zlnt_json_ownkeys_70e5fd461788->put( p0 = t77 p1 = t78 ).
        ENDIF.
        t57 = t59.
      ELSE.
        DATA t79 TYPE REF TO zcl_lnt_abstract_type_data.
        CLEAR t79.
        t57 = t79.
      ENDIF.
      t54 = NEW zcl_lnt_character_type( i_length = t55 i_extra = t57 ).
      result = t54.
      RETURN.
    ELSE.
      DATA(t80) = VALUE abap_bool( ).
      DATA(t81) = t30.
      DATA(t82) = |`|.
      DATA(t83) = strlen( t81 ).
      DATA t84 TYPE i.
      DATA(t85) = VALUE i( ).
      DATA(t86) = VALUE string( ).
      t84 = strlen( t82 ).
      IF t84 = 0.
        t80 = abap_true.
      ELSEIF t84 <= t83.
        t85 = 0.
        t86 = t81+t85(t84).
        IF t86 = t82.
          t80 = abap_true.
        ENDIF.
      ENDIF.
      IF t80 = abap_true.
        DATA t87 TYPE REF TO zcl_lnt_string_type.
        CLEAR t87.
        DATA t88 TYPE REF TO zcl_lnt_abstract_type_data.
        CLEAR t88.
        DATA(t89) = abap_true.
        IF t89 = abap_true.
          DATA t90 TYPE REF TO zcl_lnt_abstract_type_data.
          CLEAR t90.
          DATA t91 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t91.
          DATA t92 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t92.
          DATA(t93) = abap_true.
          IF t93 = abap_true.
            DATA(t94) = abap_true.
            DATA(t95) = NEW zlnt_runtime_opti_7f2541396f43( ).
            t95->has = abap_true.
            t95->value = t94.
            t92 = t95.
          ELSE.
            DATA t96 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t96.
            t92 = t96.
          ENDIF.
          t91 = t92.
          DATA t97 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t98 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t98.
          t97 = t98.
          DATA t99 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t100 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t100.
          t99 = t100.
          DATA t101 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t102 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t102.
          t101 = t102.
          DATA t103 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t104 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t104.
          t103 = t104.
          DATA t105 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t106 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t106.
          t105 = t106.
          t90 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t97 i_conversion_exit = t99 i_derived_from_constant = t91 i_ddic_name = t101 i_rtti_name = t103 i_description = t105 ).
          CREATE OBJECT t90->zlnt_view_ownkeys_b0e8086400eb.
          t90->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t107.
          IF t90->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t90->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `derivedFromConstant` p1 = t107 ).
          ENDIF.
          CREATE OBJECT t90->zlnt_json_ownkeys_70e5fd461788.
          t90->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA(t108) = |derivedFromConstant|.
          DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t109.
          IF t90->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t90->zlnt_json_ownkeys_70e5fd461788->put( p0 = t108 p1 = t109 ).
          ENDIF.
          t88 = t90.
        ELSE.
          DATA t110 TYPE REF TO zcl_lnt_abstract_type_data.
          CLEAR t110.
          t88 = t110.
        ENDIF.
        t87 = zcl_lnt_string_type=>get_db65( i_input_967e = t88 ).
        result = t87.
        RETURN.
      ELSE.
        DATA t111 TYPE REF TO zcl_lnt_string_type.
        DATA t112 TYPE REF TO zcl_lnt_abstract_type_data.
        CLEAR t112.
        t111 = zcl_lnt_string_type=>get_db65( i_input_967e = t112 ).
        result = t111.
        RETURN.
      ENDIF.
    ENDIF.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d794_0f024dad6ad6.
  ENDMETHOD.
ENDCLASS.
