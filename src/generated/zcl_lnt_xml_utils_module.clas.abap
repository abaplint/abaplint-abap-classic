* TS: src/xml_utils.ts.module module
CLASS zcl_lnt_xml_utils_module DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-METHODS xml_to_array IMPORTING i_data_dc02 TYPE REF TO zlnt_runtime_dyna_a429568d5be8 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLASS-METHODS unescape IMPORTING i_str TYPE REF TO zlnt_runtime_dyna_a429568d5be8 RETURNING VALUE(result) TYPE string.
    CLASS-DATA zlnt_builtin_init_e23a8274c2ff TYPE abap_bool.
    CLASS-METHODS zlnt_builtin_init_92a4db672ef8.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_xml_utils_module IMPLEMENTATION.
  METHOD xml_to_array.
    DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( i_data_dc02 ).
    DATA(t2) = VALUE abap_bool( ).
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t3.
    DATA(t4) = CAST zlnt_runtime_dyna_a429568d5be8( t1 ).
    t3 = t4.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t5.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t6.
    t5 = t6.
    DATA(t7) = VALUE abap_bool( ).
    DATA(t8) = CAST zlnt_runtime_dyna_a429568d5be8( t3 ).
    IF t8 IS INITIAL.
      t7 = abap_true.
    ENDIF.
    t2 = t7.
    IF t2 = abap_true.
      DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t9.
      CREATE OBJECT t9.
      result = t9.
      RETURN.
    ELSE.
      DATA(t10) = VALUE abap_bool( ).
      DATA(t11) = CAST zlnt_runtime_dyna_a429568d5be8( t1 ).
      t10 = abap_false.
      IF t11 IS BOUND.
        IF t11->tag = zlnt_runtime_dyna_a429568d5be8=>tag_array.
          t10 = abap_true.
        ELSEIF t11->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref AND t11->oval IS BOUND.
          DATA t12 TYPE REF TO zlnt_runtime_arra_6c31174d6e02.
          CLEAR t12.
          TRY.
              t12 ?= t11->oval.
              t10 = abap_true.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
        ENDIF.
      ENDIF.
      IF t10 = abap_true.
        DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t13.
        DATA(t14) = CAST zlnt_runtime_dyna_a429568d5be8( t1 ).
        DATA t15 TYPE REF TO object.
        CLEAR t15.
        t15 = t14->as_ref( ).
        t13 ?= t15.
        result = t13.
        RETURN.
      ELSE.
        DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t16.
        DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t17.
        DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t18.
        CREATE OBJECT t18.
        t17 = t18.
        DATA(t19) = CAST zlnt_runtime_arra_c22708faf2e3( t17 ).
        DATA(t20) = CAST zlnt_runtime_dyna_a429568d5be8( t1 ).
        APPEND t20 TO t19->items.
        DATA(t21) = CAST zlnt_runtime_arra_c22708faf2e3( t17 ).
        t16 = t21.
        result = t16.
        RETURN.
      ENDIF.
    ENDIF.
  ENDMETHOD.
  METHOD unescape.
    DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( i_str ).
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = VALUE abap_bool( ).
    DATA(t4) = VALUE string( ).
    DATA(t5) = CAST zlnt_runtime_dyna_a429568d5be8( t1 ).
    IF t5 IS BOUND.
      t4 = t5->type_of( ).
    ELSE.
      t4 = `undefined`.
    ENDIF.
    DATA(t6) = |string|.
    t3 = xsdbool( t4 = t6 ).
    t2 = xsdbool( t3 = abap_false ).
    IF t2 = abap_true.
      DATA(t7) = ||.
      result = t7.
      RETURN.
    ENDIF.
    DATA t8 TYPE string.
    DATA t9 TYPE string.
    DATA t10 TYPE string.
    DATA(t11) = CAST zlnt_runtime_dyna_a429568d5be8( t1 ).
    t10 = t11->as_string( ).
    DATA t12 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t12.
    DATA(t13) = |&amp;|.
    DATA(t14) = |g|.
    CREATE OBJECT t12 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t13 flags = t14.
    DATA(t15) = |&|.
    DATA(t16) = strlen( t10 ).
    t9 = t12->replace( p0 = t10 p1 = t15 ).
    t8 = t9.
    DATA t17 TYPE string.
    DATA(t18) = t8.
    DATA t19 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t19.
    DATA(t20) = |&gt;|.
    DATA(t21) = |g|.
    CREATE OBJECT t19 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t20 flags = t21.
    DATA(t22) = |>|.
    DATA(t23) = strlen( t18 ).
    t17 = t19->replace( p0 = t18 p1 = t22 ).
    t8 = t17.
    DATA t24 TYPE string.
    DATA(t25) = t8.
    DATA t26 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t26.
    DATA(t27) = |&lt;|.
    DATA(t28) = |g|.
    CREATE OBJECT t26 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t27 flags = t28.
    DATA(t29) = |<|.
    DATA(t30) = strlen( t25 ).
    t24 = t26->replace( p0 = t25 p1 = t29 ).
    t8 = t24.
    DATA t31 TYPE string.
    DATA(t32) = t8.
    DATA t33 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t33.
    DATA(t34) = |&quot;|.
    DATA(t35) = |g|.
    CREATE OBJECT t33 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t34 flags = t35.
    DATA(t36) = |"|.
    DATA(t37) = strlen( t32 ).
    t31 = t33->replace( p0 = t32 p1 = t36 ).
    t8 = t31.
    DATA t38 TYPE string.
    DATA(t39) = t8.
    DATA t40 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CLEAR t40.
    DATA(t41) = |&apos;|.
    DATA(t42) = |g|.
    CREATE OBJECT t40 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t41 flags = t42.
    DATA(t43) = |'|.
    DATA(t44) = strlen( t39 ).
    t38 = t40->replace( p0 = t39 p1 = t43 ).
    t8 = t38.
    DATA(t45) = t8.
    result = t45.
    
  ENDMETHOD.
  METHOD zlnt_builtin_init_92a4db672ef8.
    IF zlnt_builtin_init_e23a8274c2ff = abap_true.
      RETURN.
    ENDIF.
    zlnt_builtin_init_e23a8274c2ff = abap_true.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1841_b888deee9f72.
  ENDMETHOD.
ENDCLASS.
