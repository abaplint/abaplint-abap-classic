* TS: src/abap/1_lexer/lexer_stream.ts:4:1 LexerStream
CLASS zcl_lnt_lexer_stream DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA raw TYPE string.
    DATA offset TYPE i.
    DATA row TYPE int8.
    DATA col TYPE int8.
    METHODS constructor IMPORTING i_raw TYPE string.
    METHODS advance RETURNING VALUE(result) TYPE abap_bool.
    METHODS get_col RETURNING VALUE(result) TYPE int8.
    METHODS get_row RETURNING VALUE(result) TYPE int8.
    METHODS prev_char RETURNING VALUE(result) TYPE int8.
    METHODS prev_prev_char RETURNING VALUE(result) TYPE int8.
    METHODS current_char RETURNING VALUE(result) TYPE int8.
    METHODS next_char RETURNING VALUE(result) TYPE int8.
    METHODS next_next_char RETURNING VALUE(result) TYPE int8.
    METHODS char_code_at IMPORTING i_o TYPE int8 RETURNING VALUE(result) TYPE int8.
    METHODS get_raw RETURNING VALUE(result) TYPE string.
    METHODS get_offset RETURNING VALUE(result) TYPE int8.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
    CLASS-DATA zlnt_builtin_code_bed0e68a96ec TYPE REF TO cl_abap_conv_out_ce.
ENDCLASS.
CLASS zcl_lnt_lexer_stream IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_raw.
    DATA(t2) = -1.
    me->offset = t2.
    DATA(t3) = t1.
    me->raw = t3.
    DATA(t4) = CONV int8( 0 ).
    me->row = t4.
    DATA(t5) = CONV int8( 0 ).
    me->col = t5.
  ENDMETHOD.
  METHOD advance.
    CONSTANTS range_int8_bound_max TYPE int8 VALUE '9007199254740991'.
    CONSTANTS range_int8_bound_min TYPE int8 VALUE '-9007199254740991'.
    DATA(t1) = VALUE abap_bool( ).
    DATA(t2) = VALUE i( ).
    DATA(t3) = VALUE int8( ).
    DATA t4 TYPE abap_bool.
    DATA(t5) = CONV i( me->offset ).
    DATA(t6) = 0.
    t4 = xsdbool( t5 < t6 ).
    IF t4 = abap_true.
      DATA t7 TYPE int8.
      DATA(t8) = CONV i( zcl_lnt_lexer_stream_module=>nl ).
      t7 = t8.
      t3 = t7.
    ELSE.
      DATA(t9) = VALUE int8( ).
      DATA t10 TYPE abap_bool.
      DATA(t11) = CONV i( me->offset ).
      DATA t12 TYPE i.
      DATA(t13) = CONV string( me->raw ).
      DATA(t14) = strlen( t13 ).
      t12 = t14.
      t10 = xsdbool( t11 >= t12 ).
      IF t10 = abap_true.
        DATA t15 TYPE int8.
        DATA(t16) = CONV i( zcl_lnt_lexer_stream_module=>eof ).
        t15 = t16.
        t9 = t15.
      ELSE.
        DATA(t17) = VALUE int8( ).
        DATA(t18) = VALUE i( ).
        DATA(t19) = CONV string( me->raw ).
        DATA(t20) = CONV i( me->offset ).
        DATA(t21) = strlen( t19 ).
        IF t20 < 0 OR t20 >= t21.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        DATA(t22) = CONV string( t19+t20(1) ).
        DATA t23 TYPE c LENGTH 1.
        CLEAR t23.
        DATA(t24) = VALUE xstring( ).
        DATA t25 TYPE x LENGTH 1.
        CLEAR t25.
        DATA t26 TYPE x LENGTH 1.
        CLEAR t26.
        DATA(t27) = VALUE i( ).
        t23 = t22.
        t18 = cl_abap_conv_out_ce=>uccpi( t23 ).
        IF t18 >= 255.
          IF zlnt_builtin_code_bed0e68a96ec IS NOT BOUND.
            zlnt_builtin_code_bed0e68a96ec = cl_abap_conv_out_ce=>create( encoding = '4103' ).
          ENDIF.
          zlnt_builtin_code_bed0e68a96ec->convert( EXPORTING data = t22 IMPORTING buffer = t24 ).
          t25 = t24(1).
          t26 = t24+1(1).
          t18 = t25.
          t27 = t26.
          t18 = t18 + t27 * 256.
        ENDIF.
        t17 = t18.
        t9 = t17.
      ENDIF.
      t3 = t9.
    ENDIF.
    t2 = t3.
    DATA(t28) = CONV i( zcl_lnt_lexer_stream_module=>nl ).
    t1 = xsdbool( t2 = t28 ).
    IF t1 = abap_true.
      DATA(t29) = CONV int8( 1 ).
      me->col = t29.
      DATA t30 TYPE int8.
      DATA(t31) = CONV int8( me->row ).
      DATA(t32) = CONV int8( 1 ).
      t30 = t31 + t32.
      IF t30 < range_int8_bound_min OR t30 > range_int8_bound_max.
        RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
      ENDIF.
      me->row = t30.
    ENDIF.
    DATA t33 TYPE abap_bool.
    DATA(t34) = CONV i( me->offset ).
    DATA t35 TYPE i.
    DATA(t36) = CONV string( me->raw ).
    DATA(t37) = strlen( t36 ).
    t35 = t37.
    t33 = xsdbool( t34 = t35 ).
    IF t33 = abap_true.
      DATA t38 TYPE int8.
      DATA(t39) = CONV int8( me->col ).
      DATA(t40) = CONV int8( 1 ).
      t38 = t39 - t40.
      IF t38 < range_int8_bound_min OR t38 > range_int8_bound_max.
        RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
      ENDIF.
      me->col = t38.
      DATA(t41) = abap_false.
      result = t41.
      RETURN.
    ENDIF.
    DATA t42 TYPE int8.
    DATA(t43) = CONV int8( me->col ).
    DATA(t44) = CONV int8( 1 ).
    t42 = t43 + t44.
    IF t42 < range_int8_bound_min OR t42 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    me->col = t42.
    DATA t45 TYPE i.
    DATA(t46) = CONV i( me->offset ).
    DATA(t47) = 1.
    t45 = t46 + t47.
    me->offset = t45.
    DATA(t48) = abap_true.
    result = t48.
    
  ENDMETHOD.
  METHOD get_col.
    DATA(t1) = CONV int8( me->col ).
    result = t1.
    
  ENDMETHOD.
  METHOD get_row.
    DATA(t1) = CONV int8( me->row ).
    result = t1.
    
  ENDMETHOD.
  METHOD prev_char.
    DATA t1 TYPE i.
    DATA t2 TYPE i.
    DATA(t3) = CONV i( me->offset ).
    DATA(t4) = 1.
    t2 = t3 - t4.
    t1 = t2.
    DATA t5 TYPE abap_bool.
    DATA(t6) = t1.
    DATA(t7) = 0.
    t5 = xsdbool( t6 < t7 ).
    IF t5 = abap_true.
      DATA t8 TYPE int8.
      DATA(t9) = CONV i( zcl_lnt_lexer_stream_module=>eof ).
      t8 = t9.
      result = t8.
      RETURN.
    ENDIF.
    DATA(t10) = VALUE int8( ).
    DATA(t11) = VALUE i( ).
    DATA(t12) = CONV string( me->raw ).
    DATA(t13) = t1.
    DATA(t14) = strlen( t12 ).
    IF t13 < 0 OR t13 >= t14.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    DATA(t15) = CONV string( t12+t13(1) ).
    DATA t16 TYPE c LENGTH 1.
    CLEAR t16.
    DATA(t17) = VALUE xstring( ).
    DATA t18 TYPE x LENGTH 1.
    CLEAR t18.
    DATA t19 TYPE x LENGTH 1.
    CLEAR t19.
    DATA(t20) = VALUE i( ).
    t16 = t15.
    t11 = cl_abap_conv_out_ce=>uccpi( t16 ).
    IF t11 >= 255.
      IF zlnt_builtin_code_bed0e68a96ec IS NOT BOUND.
        zlnt_builtin_code_bed0e68a96ec = cl_abap_conv_out_ce=>create( encoding = '4103' ).
      ENDIF.
      zlnt_builtin_code_bed0e68a96ec->convert( EXPORTING data = t15 IMPORTING buffer = t17 ).
      t18 = t17(1).
      t19 = t17+1(1).
      t11 = t18.
      t20 = t19.
      t11 = t11 + t20 * 256.
    ENDIF.
    t10 = t11.
    result = t10.
    
  ENDMETHOD.
  METHOD prev_prev_char.
    DATA t1 TYPE i.
    DATA t2 TYPE i.
    DATA(t3) = CONV i( me->offset ).
    DATA(t4) = 2.
    t2 = t3 - t4.
    t1 = t2.
    DATA t5 TYPE abap_bool.
    DATA(t6) = t1.
    DATA(t7) = 0.
    t5 = xsdbool( t6 < t7 ).
    IF t5 = abap_true.
      DATA t8 TYPE int8.
      DATA(t9) = CONV i( zcl_lnt_lexer_stream_module=>eof ).
      t8 = t9.
      result = t8.
      RETURN.
    ENDIF.
    DATA(t10) = VALUE int8( ).
    DATA(t11) = VALUE i( ).
    DATA(t12) = CONV string( me->raw ).
    DATA(t13) = t1.
    DATA(t14) = strlen( t12 ).
    IF t13 < 0 OR t13 >= t14.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    DATA(t15) = CONV string( t12+t13(1) ).
    DATA t16 TYPE c LENGTH 1.
    CLEAR t16.
    DATA(t17) = VALUE xstring( ).
    DATA t18 TYPE x LENGTH 1.
    CLEAR t18.
    DATA t19 TYPE x LENGTH 1.
    CLEAR t19.
    DATA(t20) = VALUE i( ).
    t16 = t15.
    t11 = cl_abap_conv_out_ce=>uccpi( t16 ).
    IF t11 >= 255.
      IF zlnt_builtin_code_bed0e68a96ec IS NOT BOUND.
        zlnt_builtin_code_bed0e68a96ec = cl_abap_conv_out_ce=>create( encoding = '4103' ).
      ENDIF.
      zlnt_builtin_code_bed0e68a96ec->convert( EXPORTING data = t15 IMPORTING buffer = t17 ).
      t18 = t17(1).
      t19 = t17+1(1).
      t11 = t18.
      t20 = t19.
      t11 = t11 + t20 * 256.
    ENDIF.
    t10 = t11.
    result = t10.
    
  ENDMETHOD.
  METHOD current_char.
    DATA t1 TYPE abap_bool.
    DATA(t2) = CONV i( me->offset ).
    DATA(t3) = 0.
    t1 = xsdbool( t2 < t3 ).
    IF t1 = abap_true.
      DATA t4 TYPE int8.
      DATA(t5) = CONV i( zcl_lnt_lexer_stream_module=>nl ).
      t4 = t5.
      result = t4.
      RETURN.
    ELSE.
      DATA t6 TYPE abap_bool.
      DATA(t7) = CONV i( me->offset ).
      DATA t8 TYPE i.
      DATA(t9) = CONV string( me->raw ).
      DATA(t10) = strlen( t9 ).
      t8 = t10.
      t6 = xsdbool( t7 >= t8 ).
      IF t6 = abap_true.
        DATA t11 TYPE int8.
        DATA(t12) = CONV i( zcl_lnt_lexer_stream_module=>eof ).
        t11 = t12.
        result = t11.
        RETURN.
      ENDIF.
    ENDIF.
    DATA(t13) = VALUE int8( ).
    DATA(t14) = VALUE i( ).
    DATA(t15) = CONV string( me->raw ).
    DATA(t16) = CONV i( me->offset ).
    DATA(t17) = strlen( t15 ).
    IF t16 < 0 OR t16 >= t17.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    DATA(t18) = CONV string( t15+t16(1) ).
    DATA t19 TYPE c LENGTH 1.
    CLEAR t19.
    DATA(t20) = VALUE xstring( ).
    DATA t21 TYPE x LENGTH 1.
    CLEAR t21.
    DATA t22 TYPE x LENGTH 1.
    CLEAR t22.
    DATA(t23) = VALUE i( ).
    t19 = t18.
    t14 = cl_abap_conv_out_ce=>uccpi( t19 ).
    IF t14 >= 255.
      IF zlnt_builtin_code_bed0e68a96ec IS NOT BOUND.
        zlnt_builtin_code_bed0e68a96ec = cl_abap_conv_out_ce=>create( encoding = '4103' ).
      ENDIF.
      zlnt_builtin_code_bed0e68a96ec->convert( EXPORTING data = t18 IMPORTING buffer = t20 ).
      t21 = t20(1).
      t22 = t20+1(1).
      t14 = t21.
      t23 = t22.
      t14 = t14 + t23 * 256.
    ENDIF.
    t13 = t14.
    result = t13.
    
  ENDMETHOD.
  METHOD next_char.
    CONSTANTS range_int8_bound_max TYPE int8 VALUE '9007199254740991'.
    CONSTANTS range_int8_bound_min TYPE int8 VALUE '-9007199254740991'.
    DATA(t1) = VALUE int8( ).
    DATA t2 TYPE int8.
    DATA t3 TYPE int8.
    DATA(t4) = CONV i( me->offset ).
    t3 = t4.
    DATA(t5) = CONV int8( 1 ).
    t2 = t3 + t5.
    IF t2 < range_int8_bound_min OR t2 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    t1 = t2.
    DATA t6 TYPE abap_bool.
    DATA(t7) = t1.
    DATA t8 TYPE int8.
    DATA t9 TYPE i.
    DATA(t10) = CONV string( me->raw ).
    DATA(t11) = strlen( t10 ).
    t9 = t11.
    t8 = t9.
    t6 = xsdbool( t7 >= t8 ).
    IF t6 = abap_true.
      DATA t12 TYPE int8.
      DATA(t13) = CONV i( zcl_lnt_lexer_stream_module=>eof ).
      t12 = t13.
      result = t12.
      RETURN.
    ENDIF.
    DATA(t14) = VALUE int8( ).
    DATA(t15) = VALUE i( ).
    DATA(t16) = CONV string( me->raw ).
    DATA t17 TYPE i.
    DATA(t18) = t1.
    t17 = t18.
    DATA(t19) = strlen( t16 ).
    IF t17 < 0 OR t17 >= t19.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    DATA(t20) = CONV string( t16+t17(1) ).
    DATA t21 TYPE c LENGTH 1.
    CLEAR t21.
    DATA(t22) = VALUE xstring( ).
    DATA t23 TYPE x LENGTH 1.
    CLEAR t23.
    DATA t24 TYPE x LENGTH 1.
    CLEAR t24.
    DATA(t25) = VALUE i( ).
    t21 = t20.
    t15 = cl_abap_conv_out_ce=>uccpi( t21 ).
    IF t15 >= 255.
      IF zlnt_builtin_code_bed0e68a96ec IS NOT BOUND.
        zlnt_builtin_code_bed0e68a96ec = cl_abap_conv_out_ce=>create( encoding = '4103' ).
      ENDIF.
      zlnt_builtin_code_bed0e68a96ec->convert( EXPORTING data = t20 IMPORTING buffer = t22 ).
      t23 = t22(1).
      t24 = t22+1(1).
      t15 = t23.
      t25 = t24.
      t15 = t15 + t25 * 256.
    ENDIF.
    t14 = t15.
    result = t14.
    
  ENDMETHOD.
  METHOD next_next_char.
    CONSTANTS range_int8_bound_max TYPE int8 VALUE '9007199254740991'.
    CONSTANTS range_int8_bound_min TYPE int8 VALUE '-9007199254740991'.
    DATA(t1) = VALUE int8( ).
    DATA t2 TYPE int8.
    DATA t3 TYPE int8.
    DATA(t4) = CONV i( me->offset ).
    t3 = t4.
    DATA(t5) = CONV int8( 2 ).
    t2 = t3 + t5.
    IF t2 < range_int8_bound_min OR t2 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    t1 = t2.
    DATA t6 TYPE abap_bool.
    DATA(t7) = t1.
    DATA t8 TYPE int8.
    DATA t9 TYPE i.
    DATA(t10) = CONV string( me->raw ).
    DATA(t11) = strlen( t10 ).
    t9 = t11.
    t8 = t9.
    t6 = xsdbool( t7 >= t8 ).
    IF t6 = abap_true.
      DATA t12 TYPE int8.
      DATA(t13) = CONV i( zcl_lnt_lexer_stream_module=>eof ).
      t12 = t13.
      result = t12.
      RETURN.
    ENDIF.
    DATA(t14) = VALUE int8( ).
    DATA(t15) = VALUE i( ).
    DATA(t16) = CONV string( me->raw ).
    DATA t17 TYPE i.
    DATA(t18) = t1.
    t17 = t18.
    DATA(t19) = strlen( t16 ).
    IF t17 < 0 OR t17 >= t19.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    DATA(t20) = CONV string( t16+t17(1) ).
    DATA t21 TYPE c LENGTH 1.
    CLEAR t21.
    DATA(t22) = VALUE xstring( ).
    DATA t23 TYPE x LENGTH 1.
    CLEAR t23.
    DATA t24 TYPE x LENGTH 1.
    CLEAR t24.
    DATA(t25) = VALUE i( ).
    t21 = t20.
    t15 = cl_abap_conv_out_ce=>uccpi( t21 ).
    IF t15 >= 255.
      IF zlnt_builtin_code_bed0e68a96ec IS NOT BOUND.
        zlnt_builtin_code_bed0e68a96ec = cl_abap_conv_out_ce=>create( encoding = '4103' ).
      ENDIF.
      zlnt_builtin_code_bed0e68a96ec->convert( EXPORTING data = t20 IMPORTING buffer = t22 ).
      t23 = t22(1).
      t24 = t22+1(1).
      t15 = t23.
      t25 = t24.
      t15 = t15 + t25 * 256.
    ENDIF.
    t14 = t15.
    result = t14.
    
  ENDMETHOD.
  METHOD char_code_at.
    CONSTANTS range_int_check_hi_zik0zj TYPE int8 VALUE '2147483647'.
    CONSTANTS range_int_check_lo_nzik0zk TYPE int8 VALUE '-2147483648'.
    DATA(t1) = i_o.
    DATA t2 TYPE abap_bool.
    DATA t3 TYPE abap_bool.
    DATA(t4) = t1.
    DATA(t5) = CONV int8( 0 ).
    t3 = xsdbool( t4 < t5 ).
    t2 = t3.
    IF t3 = abap_false.
      DATA t6 TYPE abap_bool.
      DATA(t7) = t1.
      DATA t8 TYPE int8.
      DATA t9 TYPE i.
      DATA(t10) = CONV string( me->raw ).
      DATA(t11) = strlen( t10 ).
      t9 = t11.
      t8 = t9.
      t6 = xsdbool( t7 >= t8 ).
      t2 = t6.
    ENDIF.
    IF t2 = abap_true.
      DATA t12 TYPE int8.
      DATA(t13) = CONV i( zcl_lnt_lexer_stream_module=>eof ).
      t12 = t13.
      result = t12.
      RETURN.
    ENDIF.
    DATA(t14) = VALUE int8( ).
    DATA(t15) = VALUE i( ).
    DATA(t16) = CONV string( me->raw ).
    DATA(t17) = VALUE i( ).
    DATA(t18) = t1.
    IF t18 < range_int_check_lo_nzik0zk OR t18 > range_int_check_hi_zik0zj.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t17 = t18.
    DATA(t19) = strlen( t16 ).
    IF t17 < 0 OR t17 >= t19.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    DATA(t20) = CONV string( t16+t17(1) ).
    DATA t21 TYPE c LENGTH 1.
    CLEAR t21.
    DATA(t22) = VALUE xstring( ).
    DATA t23 TYPE x LENGTH 1.
    CLEAR t23.
    DATA t24 TYPE x LENGTH 1.
    CLEAR t24.
    DATA(t25) = VALUE i( ).
    t21 = t20.
    t15 = cl_abap_conv_out_ce=>uccpi( t21 ).
    IF t15 >= 255.
      IF zlnt_builtin_code_bed0e68a96ec IS NOT BOUND.
        zlnt_builtin_code_bed0e68a96ec = cl_abap_conv_out_ce=>create( encoding = '4103' ).
      ENDIF.
      zlnt_builtin_code_bed0e68a96ec->convert( EXPORTING data = t20 IMPORTING buffer = t22 ).
      t23 = t22(1).
      t24 = t22+1(1).
      t15 = t23.
      t25 = t24.
      t15 = t15 + t25 * 256.
    ENDIF.
    t14 = t15.
    result = t14.
    
  ENDMETHOD.
  METHOD get_raw.
    DATA(t1) = CONV string( me->raw ).
    result = t1.
    
  ENDMETHOD.
  METHOD get_offset.
    DATA t1 TYPE int8.
    DATA(t2) = CONV i( me->offset ).
    t1 = t2.
    result = t1.
    
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d11_b829914c6cc66c.
  ENDMETHOD.
ENDCLASS.
