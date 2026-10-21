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
    me->array = i_array.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `array`.
  ENDMETHOD.

  METHOD next.
    CONSTANTS range_i32_lower TYPE f VALUE '-2147483648'.
    CONSTANTS range_i32_upper TYPE f VALUE '2147483647'.
    DATA(t1) = CONV abap_bool( me->closed ).
    IF t1 = abap_true.
      DATA t4 TYPE REF TO zif_lnt_object.
      result = NEW zcl_lnt_generator_17955b8b( i_done = abap_true i_value = t4 ).
      RETURN.
    ENDIF.
    DATA(t6) = CONV f( me->index ).
    DATA t7 TYPE f.
    DATA(t9) = me->array.
    t9->load( ).
    t7 = lines( t9->items ).
    IF xsdbool( t6 >= t7 ) = abap_true.
      me->closed = abap_true.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `closed`.
      DATA t13 TYPE REF TO zif_lnt_object.
      result = NEW zcl_lnt_generator_17955b8b( i_done = abap_true i_value = t13 ).
      RETURN.
    ENDIF.
    DATA t15 TYPE REF TO zif_lnt_object.
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
    t19 = me->array->get( p0 = t17 ).
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t19 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t20 ?= t19.
      DATA t21 TYPE REF TO object.
      t21 = t20->as_ref( ).
      t15 ?= t21.
    ELSE.
      t15 ?= t19.
    ENDIF.
    DATA(t23) = CONV f( me->index ).
    DATA(t24) = CONV f( 1 ).
    me->index = t23 + t24.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `index`.
    result = NEW zcl_lnt_generator_17955b8b( i_done = abap_false i_value = t15 ).

  ENDMETHOD.

  METHOD close.
    me->closed = abap_true.
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
