CLASS zcl_lnt_generator_7e7dc2c1 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_generator_8f73cd1c.
    DATA array TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA index TYPE f.
    DATA closed TYPE abap_bool.
    METHODS constructor IMPORTING i_array TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS next RETURNING VALUE(result) TYPE REF TO zcl_lnt_generator_17955b8b.
    METHODS close.
    METHODS iterate RETURNING VALUE(result) TYPE REF TO zif_lnt_generator_8f73cd1c.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_generator_7e7dc2c1 IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_array.
    DATA(t2) = t1.
    me->array = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `array`.
  ENDMETHOD.

  METHOD next.
    CONSTANTS range_i32_lower TYPE f VALUE '-2147483648'.
    CONSTANTS range_i32_upper TYPE f VALUE '2147483647'.
    DATA(t1) = CONV abap_bool( me->closed ).
    IF t1 = abap_true.
      DATA t2 TYPE REF TO zcl_lnt_generator_17955b8b.
      DATA(t3) = abap_true.
      DATA t4 TYPE REF TO zif_lnt_object.
      CLEAR t4.
      t2 = NEW zcl_lnt_generator_17955b8b( i_done = t3 i_value = t4 ).
      result = t2.
      RETURN.
    ENDIF.
    DATA t5 TYPE abap_bool.
    DATA(t6) = CONV f( me->index ).
    DATA t7 TYPE f.
    DATA t8 TYPE i.
    DATA(t9) = me->array.
    t9->load( ).
    t8 = lines( t9->items ).
    t7 = t8.
    t5 = xsdbool( t6 >= t7 ).
    IF t5 = abap_true.
      DATA(t10) = abap_true.
      me->closed = t10.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `closed`.
      DATA t11 TYPE REF TO zcl_lnt_generator_17955b8b.
      DATA(t12) = abap_true.
      DATA t13 TYPE REF TO zif_lnt_object.
      CLEAR t13.
      t11 = NEW zcl_lnt_generator_17955b8b( i_done = t12 i_value = t13 ).
      result = t11.
      RETURN.
    ENDIF.
    DATA t14 TYPE REF TO zif_lnt_object.
    CLEAR t14.
    DATA t15 TYPE REF TO zif_lnt_object.
    CLEAR t15.
    DATA(t16) = me->array.
    DATA(t17) = VALUE i( ).
    DATA(t18) = CONV f( me->index ).
    IF t18 > range_i32_upper.
      t17 = range_i32_upper.
    ELSEIF t18 < range_i32_lower.
      t17 = range_i32_lower.
    ELSE.
      t17 = trunc( t18 ).
    ENDIF.
    DATA t19 TYPE REF TO object.
    t19 = t16->get( p0 = t17 ).
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    CLEAR t15.
    IF t19 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t20 ?= t19.
      DATA t21 TYPE REF TO object.
      t21 = t20->as_ref( ).
      t15 ?= t21.
    ELSE.
      t15 ?= t19.
    ENDIF.
    t14 = t15.
    DATA t22 TYPE f.
    DATA(t23) = CONV f( me->index ).
    DATA(t24) = CONV f( 1 ).
    t22 = t23 + t24.
    me->index = t22.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `index`.
    DATA t25 TYPE REF TO zcl_lnt_generator_17955b8b.
    DATA(t26) = abap_false.
    DATA(t27) = t14.
    t25 = NEW zcl_lnt_generator_17955b8b( i_done = t26 i_value = t27 ).
    result = t25.

  ENDMETHOD.

  METHOD close.
    DATA(t1) = abap_true.
    me->closed = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `closed`.
  ENDMETHOD.

  METHOD iterate.
    DATA t1 TYPE REF TO zif_lnt_generator_8f73cd1c.
    DATA t2 TYPE REF TO zcl_lnt_generator_7e7dc2c1.
    DATA(t3) = me->array.
    t2 = NEW zcl_lnt_generator_7e7dc2c1( i_array = t3 ).
    t1 ?= t2.
    result = t1.

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
    result = zlnt_runtime_desc_c8762dfcc211=>zlnt_member_d7_82881b26b0f5bb.
  ENDMETHOD.

  METHOD zif_lnt_generator_8f73cd1c~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_generator_8f73cd1c~next.
    result = me->next( ).
  ENDMETHOD.

  METHOD zif_lnt_generator_8f73cd1c~close.
    me->close( ).
  ENDMETHOD.

  METHOD zif_lnt_generator_8f73cd1c~iterate.
    result = me->iterate( ).
  ENDMETHOD.
ENDCLASS.
