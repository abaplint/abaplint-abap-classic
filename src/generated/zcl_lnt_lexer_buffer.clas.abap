* TS: src/abap/1_lexer/lexer_buffer.ts:4:1 LexerBuffer
CLASS zcl_lnt_lexer_buffer DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA raw TYPE string.
    DATA start TYPE i.
    DATA end TYPE i.
    DATA empty_a4a6 TYPE abap_bool.
    METHODS constructor IMPORTING i_raw TYPE string.
    METHODS add_51c1 IMPORTING i_offset TYPE int8.
    METHODS get_db65 RETURNING VALUE(result) TYPE string.
    METHODS length RETURNING VALUE(result) TYPE int8.
    METHODS clear_feba.
    METHODS count_is_even IMPORTING i_char TYPE int8 RETURNING VALUE(result) TYPE abap_bool.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
    CLASS-DATA zlnt_builtin_code_c83088ceb759 TYPE REF TO cl_abap_conv_out_ce.
ENDCLASS.
CLASS zcl_lnt_lexer_buffer IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_raw.
    DATA(t2) = t1.
    me->raw = t2.
    DATA(t3) = 0.
    me->start = t3.
    DATA(t4) = 0.
    me->end = t4.
    DATA(t5) = abap_true.
    me->empty_a4a6 = t5.
  ENDMETHOD.
  METHOD add_51c1.
    CONSTANTS range_int_check_hi_zik0zi TYPE int8 VALUE '2147483646'.
    CONSTANTS range_int_check_lo_nzik0zk TYPE int8 VALUE '-2147483648'.
    DATA(t1) = i_offset.
    DATA(t2) = VALUE i( ).
    DATA(t3) = VALUE i( ).
    DATA(t4) = t1.
    IF t4 < range_int_check_lo_nzik0zk OR t4 > range_int_check_hi_zik0zi.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    t3 = t4.
    t2 = t3.
    DATA t5 TYPE abap_bool.
    DATA(t6) = CONV abap_bool( me->empty_a4a6 ).
    DATA(t7) = abap_true.
    t5 = xsdbool( t6 = t7 ).
    IF t5 = abap_true.
      DATA(t8) = VALUE i( ).
      DATA t9 TYPE abap_bool.
      DATA(t10) = t2.
      DATA(t11) = 0.
      t9 = xsdbool( t10 < t11 ).
      IF t9 = abap_true.
        DATA(t12) = 0.
        t8 = t12.
      ELSE.
        DATA(t13) = t2.
        t8 = t13.
      ENDIF.
      me->start = t8.
      DATA(t14) = abap_false.
      me->empty_a4a6 = t14.
    ENDIF.
    DATA t15 TYPE i.
    DATA(t16) = t2.
    DATA(t17) = 1.
    t15 = t16 + t17.
    me->end = t15.
  ENDMETHOD.
  METHOD get_db65.
    DATA(t1) = VALUE string( ).
    DATA(t2) = CONV string( me->raw ).
    DATA(t3) = CONV i( me->start ).
    DATA(t4) = CONV i( me->end ).
    DATA(t5) = strlen( t2 ).
    t3 = COND i( WHEN t3 < 0 THEN 0 WHEN t3 > t5 THEN t5 ELSE t3 ).
    t4 = COND i( WHEN t4 < 0 THEN 0 WHEN t4 > t5 THEN t5 ELSE t4 ).
    IF t3 > t4.
      t5 = t3.
      t3 = t4.
      t4 = t5.
    ENDIF.
    t5 = t4 - t3.
    t1 = t2+t3(t5).
    result = t1.
    
  ENDMETHOD.
  METHOD length.
    CONSTANTS range_int8_bound_max TYPE int8 VALUE '9007199254740991'.
    CONSTANTS range_int8_bound_min TYPE int8 VALUE '-9007199254740991'.
    DATA t1 TYPE int8.
    DATA t2 TYPE int8.
    DATA(t3) = CONV i( me->end ).
    t2 = t3.
    DATA t4 TYPE int8.
    DATA(t5) = CONV i( me->start ).
    t4 = t5.
    t1 = t2 - t4.
    IF t1 < range_int8_bound_min OR t1 > range_int8_bound_max.
      RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
    ENDIF.
    result = t1.
    
  ENDMETHOD.
  METHOD clear_feba.
    DATA(t1) = 0.
    me->start = t1.
    DATA(t2) = 0.
    me->end = t2.
    DATA(t3) = abap_true.
    me->empty_a4a6 = t3.
  ENDMETHOD.
  METHOD count_is_even.
    CONSTANTS range_int8_bound_max TYPE int8 VALUE '9007199254740991'.
    CONSTANTS range_int8_bound_min TYPE int8 VALUE '-9007199254740991'.
    DATA(t1) = i_char.
    DATA t2 TYPE int8.
    DATA(t3) = CONV int8( 0 ).
    t2 = t3.
    DATA t4 TYPE i.
    DATA(t5) = CONV i( me->start ).
    t4 = t5.
    DO.
      DATA t6 TYPE abap_bool.
      DATA(t7) = t4.
      DATA(t8) = CONV i( me->end ).
      t6 = xsdbool( t7 < t8 ).
      IF t6 = abap_false.
        EXIT.
      ENDIF.
      DATA(t9) = VALUE abap_bool( ).
      DATA(t10) = VALUE int8( ).
      DATA(t11) = VALUE i( ).
      DATA(t12) = CONV string( me->raw ).
      DATA(t13) = t4.
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
        IF zlnt_builtin_code_c83088ceb759 IS NOT BOUND.
          zlnt_builtin_code_c83088ceb759 = cl_abap_conv_out_ce=>create( encoding = '4103' ).
        ENDIF.
        zlnt_builtin_code_c83088ceb759->convert( EXPORTING data = t15 IMPORTING buffer = t17 ).
        t18 = t17(1).
        t19 = t17+1(1).
        t11 = t18.
        t20 = t19.
        t11 = t11 + t20 * 256.
      ENDIF.
      t10 = t11.
      DATA(t21) = t1.
      t9 = xsdbool( t10 = t21 ).
      IF t9 = abap_true.
        DATA t22 TYPE int8.
        DATA(t23) = t2.
        DATA(t24) = CONV int8( 1 ).
        t22 = t23 + t24.
        IF t22 < range_int8_bound_min OR t22 > range_int8_bound_max.
          RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
        ENDIF.
        t2 = t22.
      ENDIF.
      DATA t25 TYPE i.
      DATA(t26) = t4.
      DATA(t27) = 1.
      t25 = t26 + t27.
      t4 = t25.
    ENDDO.
    DATA(t28) = VALUE abap_bool( ).
    DATA t29 TYPE int8.
    DATA(t30) = t2.
    t29 = t30 MOD 2.
    IF t30 < 0 AND t29 <> 0.
      t29 = t29 - 2.
    ENDIF.
    DATA(t31) = CONV int8( 0 ).
    t28 = xsdbool( t29 = t31 ).
    result = t28.
    
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d10_bae92c470a3031.
  ENDMETHOD.
ENDCLASS.
