* TS: src/abap/5_syntax/expressions/constant.ts:6:1 Constant
CLASS zcl_lnt_sy_expres_constant DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_expres_constant IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = CAST zcl_lnt_expression_node( i_node ).
    DATA t2 TYPE abap_bool.
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA(t4) = CAST zcl_lnt_expression_node( t1 ).
    DATA(t5) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d106_a338c80a5154 ).
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
        DATA t10 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t10.
        DATA t11 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t11.
        DATA t12 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t12.
        DATA(t13) = abap_true.
        IF t13 = abap_true.
          DATA(t14) = abap_true.
          DATA(t15) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t15->has = abap_true.
          t15->value = t14.
          t12 = t15.
        ELSE.
          DATA t16 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t16.
          t12 = t16.
        ENDIF.
        DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t17.
        DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t18.
        DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t19.
        t9 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t10 i_conversion_exit = t11 i_derived_from_constant = t12 i_ddic_name = t17 i_rtti_name = t18 i_description = t19 ).
        t7 = t9.
      ELSE.
        DATA t20 TYPE REF TO zcl_lnt_abstract_type_data.
        CLEAR t20.
        t7 = t20.
      ENDIF.
      t6 = zcl_lnt_integer_type=>get_db65( i_input_967e = t7 ).
      result = t6.
      RETURN.
    ENDIF.
    DATA t21 TYPE string.
    DATA t22 TYPE string.
    DATA t23 TYPE REF TO zcl_lnt_abstract_token.
    DATA t24 TYPE REF TO zcl_lnt_abstract_token.
    DATA(t25) = CAST zcl_lnt_expression_node( t1 ).
    t24 = t25->get_first_token(  ).
    t23 = t24.
    DATA t26 TYPE string.
    DATA(t27) = CAST zcl_lnt_abstract_token( t23 ).
    t26 = t27->str.
    t22 = t26.
    t21 = t22.
    DATA(t28) = VALUE abap_bool( ).
    DATA(t29) = t21.
    DATA(t30) = |'|.
    DATA(t31) = strlen( t29 ).
    DATA t32 TYPE i.
    DATA(t33) = VALUE i( ).
    DATA(t34) = VALUE string( ).
    t32 = strlen( t30 ).
    IF t32 = 0.
      t28 = abap_true.
    ELSEIF t32 <= t31.
      t33 = 0.
      t34 = t29+t33(t32).
      IF t34 = t30.
        t28 = abap_true.
      ENDIF.
    ENDIF.
    IF t28 = abap_true.
      DATA t35 TYPE i.
      DATA t36 TYPE i.
      DATA t37 TYPE i.
      DATA(t38) = t21.
      DATA(t39) = strlen( t38 ).
      t37 = t39.
      DATA(t40) = 2.
      t36 = t37 - t40.
      t35 = t36.
      DATA t41 TYPE abap_bool.
      DATA(t42) = t35.
      DATA(t43) = 0.
      t41 = xsdbool( t42 <= t43 ).
      IF t41 = abap_true.
        DATA(t44) = 1.
        t35 = t44.
      ENDIF.
      DATA t45 TYPE REF TO zcl_lnt_character_type.
      CLEAR t45.
      DATA t46 TYPE int8.
      DATA(t47) = t35.
      t46 = t47.
      DATA t48 TYPE REF TO zcl_lnt_abstract_type_data.
      CLEAR t48.
      DATA(t49) = abap_true.
      IF t49 = abap_true.
        DATA t50 TYPE REF TO zcl_lnt_abstract_type_data.
        CLEAR t50.
        DATA t51 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t51.
        DATA t52 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t52.
        DATA t53 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t53.
        DATA(t54) = abap_true.
        IF t54 = abap_true.
          DATA(t55) = abap_true.
          DATA(t56) = NEW zlnt_runtime_opti_7f2541396f43( ).
          t56->has = abap_true.
          t56->value = t55.
          t53 = t56.
        ELSE.
          DATA t57 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t57.
          t53 = t57.
        ENDIF.
        DATA t58 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t58.
        DATA t59 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t59.
        DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t60.
        t50 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t51 i_conversion_exit = t52 i_derived_from_constant = t53 i_ddic_name = t58 i_rtti_name = t59 i_description = t60 ).
        t48 = t50.
      ELSE.
        DATA t61 TYPE REF TO zcl_lnt_abstract_type_data.
        CLEAR t61.
        t48 = t61.
      ENDIF.
      t45 = NEW zcl_lnt_character_type( i_length = t46 i_extra = t48 ).
      result = t45.
      RETURN.
    ELSE.
      DATA(t62) = VALUE abap_bool( ).
      DATA(t63) = t21.
      DATA(t64) = |`|.
      DATA(t65) = strlen( t63 ).
      DATA t66 TYPE i.
      DATA(t67) = VALUE i( ).
      DATA(t68) = VALUE string( ).
      t66 = strlen( t64 ).
      IF t66 = 0.
        t62 = abap_true.
      ELSEIF t66 <= t65.
        t67 = 0.
        t68 = t63+t67(t66).
        IF t68 = t64.
          t62 = abap_true.
        ENDIF.
      ENDIF.
      IF t62 = abap_true.
        DATA t69 TYPE REF TO zcl_lnt_string_type.
        CLEAR t69.
        DATA t70 TYPE REF TO zcl_lnt_abstract_type_data.
        CLEAR t70.
        DATA(t71) = abap_true.
        IF t71 = abap_true.
          DATA t72 TYPE REF TO zcl_lnt_abstract_type_data.
          CLEAR t72.
          DATA t73 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t73.
          DATA t74 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t74.
          DATA t75 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          CLEAR t75.
          DATA(t76) = abap_true.
          IF t76 = abap_true.
            DATA(t77) = abap_true.
            DATA(t78) = NEW zlnt_runtime_opti_7f2541396f43( ).
            t78->has = abap_true.
            t78->value = t77.
            t75 = t78.
          ELSE.
            DATA t79 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            CLEAR t79.
            t75 = t79.
          ENDIF.
          DATA t80 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t80.
          DATA t81 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t81.
          DATA t82 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t82.
          t72 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t73 i_conversion_exit = t74 i_derived_from_constant = t75 i_ddic_name = t80 i_rtti_name = t81 i_description = t82 ).
          t70 = t72.
        ELSE.
          DATA t83 TYPE REF TO zcl_lnt_abstract_type_data.
          CLEAR t83.
          t70 = t83.
        ENDIF.
        t69 = zcl_lnt_string_type=>get_db65( i_input_967e = t70 ).
        result = t69.
        RETURN.
      ELSE.
        DATA t84 TYPE REF TO zcl_lnt_string_type.
        DATA t85 TYPE REF TO zcl_lnt_abstract_type_data.
        CLEAR t85.
        t84 = zcl_lnt_string_type=>get_db65( i_input_967e = t85 ).
        result = t84.
        RETURN.
      ENDIF.
    ENDIF.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d772_da9da4eaf5f6.
  ENDMETHOD.
ENDCLASS.
