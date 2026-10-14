* TS: src/position.ts:2:1 Position
CLASS zcl_lnt_position DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA row TYPE int8.
    DATA col TYPE int8.
    METHODS constructor IMPORTING i_row TYPE int8 i_col TYPE int8.
    METHODS get_col RETURNING VALUE(result) TYPE int8.
    METHODS get_row RETURNING VALUE(result) TYPE int8.
    METHODS is_after IMPORTING i_p TYPE REF TO zcl_lnt_position RETURNING VALUE(result) TYPE abap_bool.
    METHODS equals IMPORTING i_p TYPE REF TO zcl_lnt_position RETURNING VALUE(result) TYPE abap_bool.
    METHODS is_before IMPORTING i_p TYPE REF TO zcl_lnt_position RETURNING VALUE(result) TYPE abap_bool.
    METHODS is_between IMPORTING i_p1 TYPE REF TO zcl_lnt_position i_p2 TYPE REF TO zcl_lnt_position RETURNING VALUE(result) TYPE abap_bool.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_position IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_row.
    DATA(t2) = i_col.
    DATA(t3) = t1.
    me->row = t3.
    DATA(t4) = t2.
    me->col = t4.
  ENDMETHOD.

  METHOD get_col.
    DATA(t1) = CONV int8( me->col ).
    result = t1.

  ENDMETHOD.

  METHOD get_row.
    DATA(t1) = CONV int8( me->row ).
    result = t1.

  ENDMETHOD.

  METHOD is_after.
    DATA(t1) = i_p.
    DATA t2 TYPE abap_bool.
    DATA t3 TYPE abap_bool.
    DATA(t4) = CONV int8( me->row ).
    DATA t5 TYPE int8.
    DATA(t6) = t1.
    t5 = t6->row.
    t3 = xsdbool( t4 > t5 ).
    t2 = t3.
    IF t3 = abap_false.
      DATA t7 TYPE abap_bool.
      DATA t8 TYPE abap_bool.
      DATA(t9) = CONV int8( me->row ).
      DATA t10 TYPE int8.
      DATA(t11) = t1.
      t10 = t11->row.
      t8 = xsdbool( t9 = t10 ).
      t7 = t8.
      IF t8 = abap_true.
        DATA t12 TYPE abap_bool.
        DATA(t13) = CONV int8( me->col ).
        DATA t14 TYPE int8.
        DATA(t15) = t1.
        t14 = t15->col.
        t12 = xsdbool( t13 >= t14 ).
        t7 = t12.
      ENDIF.
      t2 = t7.
    ENDIF.
    result = t2.

  ENDMETHOD.

  METHOD equals.
    DATA(t1) = i_p.
    DATA t2 TYPE abap_bool.
    DATA t3 TYPE abap_bool.
    DATA(t4) = CONV int8( me->row ).
    DATA t5 TYPE int8.
    DATA t6 TYPE REF TO zcl_lnt_position.
    DATA(t7) = t1.
    t6 = t7.
    DATA t8 TYPE int8.
    DATA(t9) = t6.
    t8 = t9->row.
    t5 = t8.
    t3 = xsdbool( t4 = t5 ).
    t2 = t3.
    IF t3 = abap_true.
      DATA t10 TYPE abap_bool.
      DATA(t11) = CONV int8( me->col ).
      DATA t12 TYPE int8.
      DATA t13 TYPE REF TO zcl_lnt_position.
      DATA(t14) = t1.
      t13 = t14.
      DATA t15 TYPE int8.
      DATA(t16) = t13.
      t15 = t16->col.
      t12 = t15.
      t10 = xsdbool( t11 = t12 ).
      t2 = t10.
    ENDIF.
    result = t2.

  ENDMETHOD.

  METHOD is_before.
    DATA(t1) = i_p.
    DATA t2 TYPE abap_bool.
    DATA t3 TYPE abap_bool.
    DATA(t4) = CONV int8( me->row ).
    DATA t5 TYPE int8.
    DATA(t6) = t1.
    t5 = t6->row.
    t3 = xsdbool( t4 < t5 ).
    t2 = t3.
    IF t3 = abap_false.
      DATA t7 TYPE abap_bool.
      DATA t8 TYPE abap_bool.
      DATA(t9) = CONV int8( me->row ).
      DATA t10 TYPE int8.
      DATA(t11) = t1.
      t10 = t11->row.
      t8 = xsdbool( t9 = t10 ).
      t7 = t8.
      IF t8 = abap_true.
        DATA t12 TYPE abap_bool.
        DATA(t13) = CONV int8( me->col ).
        DATA t14 TYPE int8.
        DATA(t15) = t1.
        t14 = t15->col.
        t12 = xsdbool( t13 < t14 ).
        t7 = t12.
      ENDIF.
      t2 = t7.
    ENDIF.
    result = t2.

  ENDMETHOD.

  METHOD is_between.
    DATA(t1) = i_p1.
    DATA(t2) = i_p2.
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/position.ts:31|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1273_9a1e1d42ce7e.
  ENDMETHOD.
ENDCLASS.
