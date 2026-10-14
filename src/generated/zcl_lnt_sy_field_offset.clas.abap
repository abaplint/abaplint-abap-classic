* TS: src/abap/5_syntax/expressions/field_offset.ts:7:1 FieldOffset
CLASS zcl_lnt_sy_field_offset DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-METHODS run_syntax IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_input_967e TYPE REF TO zcl_lnt_syntax_input RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
    CLASS-DATA zlnt_builtin_code_8459c2d31923 TYPE REF TO cl_abap_conv_out_ce.
ENDCLASS.
CLASS zcl_lnt_sy_field_offset IMPLEMENTATION.
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
      DATA t20 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
      CLEAR t20.
      DATA(t21) = abap_true.
      IF t21 = abap_true.
        DATA(t22) = VALUE int8( ).
        DATA t23 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
        CLEAR t23.
        DATA t24 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
        CLEAR t24.
        DATA t25 TYPE string.
        DATA t26 TYPE REF TO zcl_lnt_abstract_token.
        DATA t27 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t28) = CAST zcl_lnt_expression_node( t1 ).
        t27 = t28->get_last_token(  ).
        t26 = t27.
        DATA t29 TYPE string.
        DATA(t30) = CAST zcl_lnt_abstract_token( t26 ).
        t29 = t30->str.
        t25 = t29.
        DATA(t31) = strlen( t25 ).
        DATA t32 TYPE i.
        DATA t33 TYPE i.
        t32 = 0.
        t33 = t31.
        DATA(t34) = VALUE i( ).
        DATA(t35) = VALUE i( ).
        DATA(t36) = VALUE string( ).
        WHILE t32 < t33.
          t35 = t32.
          t36 = t25+t35(1).
          DATA t37 TYPE c LENGTH 1.
          CLEAR t37.
          DATA(t38) = VALUE xstring( ).
          DATA t39 TYPE x LENGTH 1.
          CLEAR t39.
          DATA t40 TYPE x LENGTH 1.
          CLEAR t40.
          DATA(t41) = VALUE i( ).
          t37 = t36.
          t34 = cl_abap_conv_out_ce=>uccpi( t37 ).
          IF t34 >= 255.
            IF zlnt_builtin_code_8459c2d31923 IS NOT BOUND.
              zlnt_builtin_code_8459c2d31923 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
            ENDIF.
            zlnt_builtin_code_8459c2d31923->convert( EXPORTING data = t36 IMPORTING buffer = t38 ).
            t39 = t38(1).
            t40 = t38+1(1).
            t34 = t39.
            t41 = t40.
            t34 = t34 + t41 * 256.
          ENDIF.
          IF t34 = 9 OR t34 = 10 OR t34 = 11 OR t34 = 12 OR t34 = 13 OR t34 = 32 OR t34 = 160 OR t34 = 5760 OR t34 = 8232 OR t34 = 8233 OR t34 = 8239 OR t34 = 8287 OR t34 = 12288 OR t34 = 65279 OR t34 >= 8192 AND t34 <= 8202.
            t32 = t32 + 1.
          ELSE.
            EXIT.
          ENDIF.
        ENDWHILE.
        DATA t42 TYPE f.
        DATA t43 TYPE f.
        DATA t44 TYPE i.
        DATA(t45) = VALUE string( ).
        t42 = 1.
        t43 = 0.
        t44 = 0.
        IF t32 < t33.
          t45 = t25+t32(1).
          IF t45 = '-'.
            t42 = -1.
            t32 = t32 + 1.
          ELSEIF t45 = '+'.
            t32 = t32 + 1.
          ENDIF.
        ENDIF.
        WHILE t32 < t33.
          t45 = t25+t32(1).
          IF t45 CA '0123456789' AND t45 <> ` `.
            t43 = t43 * 10 + ( t45 ).
            t44 = t44 + 1.
            t32 = t32 + 1.
          ELSE.
            EXIT.
          ENDIF.
        ENDWHILE.
        IF t44 = 0.
          CLEAR t24.
        ELSE.
          t24 = NEW #( ).
          t24->has = abap_true.
          t24->value = t42 * t43.
        ENDIF.
        t23 = t24.
        DATA(t46) = VALUE abap_bool( ).
        DATA(t47) = CAST zlnt_runtime_opti_4a236cd5714d( t23 ).
        IF t47 IS INITIAL.
          t46 = abap_true.
        ELSEIF t47->has = abap_false.
          t46 = abap_true.
        ENDIF.
        IF t46 = abap_true.
          DATA(t48) = NEW zlnt_exception_un_5f2d02892fe8( ).
          DATA(t49) = |src/abap/5_syntax/expressions/field_offset.ts:15:14|.
          t48->source_location = t49.
          RAISE EXCEPTION t48.
        ENDIF.
        DATA t50 TYPE int8.
        DATA(t51) = CAST zlnt_runtime_opti_4a236cd5714d( t23 ).
        t50 = t51->value.
        t22 = t50.
        DATA(t52) = NEW zlnt_runtime_opti_4a236cd5714d( ).
        t52->has = abap_true.
        t52->value = t22.
        t20 = t52.
      ELSE.
        DATA t53 TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
        CLEAR t53.
        t20 = t53.
      ENDIF.
      result = t20.

    ENDIF.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d783_4fa93caf800d.
  ENDMETHOD.
ENDCLASS.
