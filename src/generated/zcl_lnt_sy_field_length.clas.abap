* TS: src/abap/5_syntax/expressions/field_length.ts:7:1 FieldLength
CLASS zcl_lnt_sy_field_length DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
    CLASS-DATA zlnt_builtin_code_d8bd11a286d5 TYPE REF TO cl_abap_conv_out_ce.
ENDCLASS.
CLASS zcl_lnt_sy_field_length IMPLEMENTATION.
  METHOD run_syntax.
    DATA(t1) = CAST zcl_lnt_expression_node( i_node ).
    DATA(t2) = CAST zcl_lnt_syntax_input( i_input_967e ).
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA(t5) = CAST zcl_lnt_expression_node( t1 ).
    DATA(t6) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d167_3c4543cf3a18 ).
    t4 = t5->find_direct_expression( i_type_9913 = t6 ).
    t3 = t4.
    DATA t7 TYPE abap_bool.
    DATA(t8) = CAST zcl_lnt_expression_node( t3 ).
    t7 = xsdbool( t8 IS BOUND ).
    IF t7 = abap_true.
      DATA t9 TYPE REF TO zcl_lnt_abstract_type.
      CLEAR t9.
      DATA t10 TYPE REF TO zcl_lnt_expression_node.
      DATA(t11) = CAST zcl_lnt_expression_node( t3 ).
      t10 = t11.
      DATA(t12) = CAST zcl_lnt_syntax_input( t2 ).
      DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t13.
      DATA(t14) = abap_true.
      IF t14 = abap_true.
        DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t16) = |Read From|.
        CREATE OBJECT t15.
        t15->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t15->sval = t16.
        t13 = t15.
      ELSE.
        DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t17.
        t13 = t17.
      ENDIF.
      DATA t18 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t18.
      t9 = zcl_lnt_sy_field_chain=>run_syntax( i_node = t10 i_input_967e = t12 i_ref_type = t13 i_allow_generic_deference = t18 ).
      DATA t19 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
      CLEAR t19.
      result = t19.
      RETURN.
    ELSE.
      DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t23 TYPE REF TO zcl_lnt_abstract_node.
      DATA(t24) = CAST zcl_lnt_expression_node( t1 ).
      t23 = t24.
      DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t26) = CAST zcl_lnt_abstract_node( t23 ).
      t25 = t26->children.
      t22 = t25.
      t21 ?= t22.
      t20 = t21.
      DATA t27 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA t28 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA(t29) = CAST zlnt_runtime_arra_c22708faf2e3( t20 ).
      DATA t30 TYPE i.
      DATA t31 TYPE i.
      DATA(t32) = CAST zlnt_runtime_arra_c22708faf2e3( t20 ).
      t31 = lines( t32->items ).
      DATA(t33) = 2.
      t30 = t31 - t33.
      t30 = t30 + 1.
      DATA t34 TYPE REF TO object.
      CLEAR t34.
      READ TABLE t29->items INDEX t30 INTO t34.
      t28 ?= t34.
      t27 = t28.
      DATA t35 TYPE abap_bool.
      DATA t36 TYPE string.
      DATA t37 TYPE REF TO zcl_lnt_abstract_token.
      DATA t38 TYPE REF TO zcl_lnt_abstract_token.
      DATA(t39) = CAST zif_lnt_union_4cf1d054( t27 ).
      t38 = t39->get_last_token(  ).
      t37 = t38.
      DATA t40 TYPE string.
      DATA(t41) = CAST zcl_lnt_abstract_token( t37 ).
      t40 = t41->str.
      t36 = t40.
      DATA(t42) = |*|.
      t35 = xsdbool( t36 = t42 ).
      IF t35 = abap_true.
        DATA t43 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
        CLEAR t43.
        result = t43.
        RETURN.
      ENDIF.
      DATA t44 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
      CLEAR t44.
      DATA(t45) = abap_true.
      IF t45 = abap_true.
        DATA(t46) = VALUE int8( ).
        DATA t47 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
        CLEAR t47.
        DATA t48 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
        CLEAR t48.
        DATA t49 TYPE string.
        DATA t50 TYPE REF TO zcl_lnt_abstract_token.
        DATA t51 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t52) = CAST zif_lnt_union_4cf1d054( t27 ).
        t51 = t52->get_last_token(  ).
        t50 = t51.
        DATA t53 TYPE string.
        DATA(t54) = CAST zcl_lnt_abstract_token( t50 ).
        t53 = t54->str.
        t49 = t53.
        DATA(t55) = strlen( t49 ).
        DATA t56 TYPE i.
        DATA t57 TYPE i.
        t56 = 0.
        t57 = t55.
        DATA(t58) = VALUE i( ).
        DATA(t59) = VALUE i( ).
        DATA(t60) = VALUE string( ).
        WHILE t56 < t57.
          t59 = t56.
          t60 = t49+t59(1).
          DATA t61 TYPE c LENGTH 1.
          CLEAR t61.
          DATA(t62) = VALUE xstring( ).
          DATA t63 TYPE x LENGTH 1.
          CLEAR t63.
          DATA t64 TYPE x LENGTH 1.
          CLEAR t64.
          DATA(t65) = VALUE i( ).
          t61 = t60.
          t58 = cl_abap_conv_out_ce=>uccpi( t61 ).
          IF t58 >= 255.
            IF zlnt_builtin_code_d8bd11a286d5 IS NOT BOUND.
              zlnt_builtin_code_d8bd11a286d5 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
            ENDIF.
            zlnt_builtin_code_d8bd11a286d5->convert( EXPORTING data = t60 IMPORTING buffer = t62 ).
            t63 = t62(1).
            t64 = t62+1(1).
            t58 = t63.
            t65 = t64.
            t58 = t58 + t65 * 256.
          ENDIF.
          IF t58 = 9 OR t58 = 10 OR t58 = 11 OR t58 = 12 OR t58 = 13 OR t58 = 32 OR t58 = 160 OR t58 = 5760 OR t58 = 8232 OR t58 = 8233 OR t58 = 8239 OR t58 = 8287 OR t58 = 12288 OR t58 = 65279 OR t58 >= 8192 AND t58 <= 8202.
            t56 = t56 + 1.
          ELSE.
            EXIT.
          ENDIF.
        ENDWHILE.
        DATA t66 TYPE f.
        DATA t67 TYPE f.
        DATA t68 TYPE i.
        DATA(t69) = VALUE string( ).
        t66 = 1.
        t67 = 0.
        t68 = 0.
        IF t56 < t57.
          t69 = t49+t56(1).
          IF t69 = '-'.
            t66 = -1.
            t56 = t56 + 1.
          ELSEIF t69 = '+'.
            t56 = t56 + 1.
          ENDIF.
        ENDIF.
        WHILE t56 < t57.
          t69 = t49+t56(1).
          IF t69 CA '0123456789' AND t69 <> ` `.
            t67 = t67 * 10 + ( t69 ).
            t68 = t68 + 1.
            t56 = t56 + 1.
          ELSE.
            EXIT.
          ENDIF.
        ENDWHILE.
        IF t68 = 0.
          CLEAR t48.
        ELSE.
          t48 = NEW #( ).
          t48->has = abap_true.
          t48->value = t66 * t67.
        ENDIF.
        t47 = t48.
        DATA(t70) = VALUE abap_bool( ).
        DATA(t71) = CAST zlnt_runtime_opti_4a236cd5714d( t47 ).
        IF t71 IS INITIAL.
          t70 = abap_true.
        ELSEIF t71->has = abap_false.
          t70 = abap_true.
        ENDIF.
        IF t70 = abap_true.
          DATA(t72) = NEW zlnt_exception_un_5f2d02892fe8( ).
          DATA(t73) = |src/abap/5_syntax/expressions/field_length.ts:20:14|.
          t72->source_location = t73.
          RAISE EXCEPTION t72.
        ENDIF.
        DATA t74 TYPE int8.
        DATA(t75) = CAST zlnt_runtime_opti_4a236cd5714d( t47 ).
        t74 = t75->value.
        t46 = t74.
        DATA(t76) = NEW zlnt_runtime_opti_4a236cd5714d( ).
        t76->has = abap_true.
        t76->value = t46.
        t44 = t76.
      ELSE.
        DATA t77 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
        CLEAR t77.
        t44 = t77.
      ENDIF.
      result = t44.

    ENDIF.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d782_35a94517cf75.
  ENDMETHOD.
ENDCLASS.
