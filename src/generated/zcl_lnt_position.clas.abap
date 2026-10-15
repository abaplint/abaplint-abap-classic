* TS: src/position.ts:2:1 Position
CLASS zcl_lnt_position DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA row TYPE f.
    DATA col TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    METHODS constructor IMPORTING i_row TYPE f i_col TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a OPTIONAL.
    METHODS get_col RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    METHODS get_row RETURNING VALUE(result) TYPE f.
    METHODS is_after IMPORTING i_p TYPE REF TO zcl_lnt_position RETURNING VALUE(result) TYPE abap_bool.
    METHODS equals IMPORTING i_p TYPE REF TO zcl_lnt_position RETURNING VALUE(result) TYPE abap_bool.
    METHODS is_before IMPORTING i_p TYPE REF TO zcl_lnt_position RETURNING VALUE(result) TYPE abap_bool.
    METHODS is_between IMPORTING i_p1 TYPE REF TO zcl_lnt_position i_p2 TYPE REF TO zcl_lnt_position RETURNING VALUE(result) TYPE abap_bool.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_position IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_row.
    DATA(t2) = i_col.
    DATA(t3) = t1.
    me->row = t3.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `row`.
    DATA(t4) = t2.
    me->col = t4.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `col`.
  ENDMETHOD.

  METHOD get_col.
    DATA(t1) = me->col.
    result = t1.

  ENDMETHOD.

  METHOD get_row.
    DATA(t1) = CONV f( me->row ).
    result = t1.

  ENDMETHOD.

  METHOD is_after.
    DATA(t1) = i_p.
    DATA t2 TYPE abap_bool.
    DATA t3 TYPE abap_bool.
    DATA(t4) = CONV f( me->row ).
    DATA t5 TYPE f.
    DATA(t6) = t1.
    t5 = t6->row.
    t3 = xsdbool( t4 > t5 ).
    t2 = t3.
    IF t3 = abap_false.
      DATA t7 TYPE abap_bool.
      DATA t8 TYPE abap_bool.
      DATA(t9) = CONV f( me->row ).
      DATA t10 TYPE f.
      DATA(t11) = t1.
      t10 = t11->row.
      t8 = xsdbool( t9 = t10 ).
      t7 = t8.
      IF t8 = abap_true.
        DATA t12 TYPE abap_bool.
        DATA(t13) = me->col.
        DATA t14 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t15) = t1.
        t14 = t15->col.
        t12 = zlnt_runtime_numb_290eb04a9758=>compare( left = t13 right = t14 op = `>=` ).
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
    DATA(t4) = CONV f( me->row ).
    DATA t5 TYPE f.
    DATA t6 TYPE REF TO zcl_lnt_position.
    DATA(t7) = t1.
    t6 = t7.
    DATA t8 TYPE f.
    DATA(t9) = t6.
    t8 = t9->row.
    t5 = t8.
    t3 = xsdbool( t4 = t5 ).
    t2 = t3.
    IF t3 = abap_true.
      DATA t10 TYPE abap_bool.
      DATA(t11) = me->col.
      DATA t12 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t13 TYPE REF TO zcl_lnt_position.
      DATA(t14) = t1.
      t13 = t14.
      DATA t15 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA(t16) = t13.
      t15 = t16->col.
      t12 = t15.
      t10 = zlnt_runtime_numb_290eb04a9758=>compare( left = t11 right = t12 op = `==` ).
      t2 = t10.
    ENDIF.
    result = t2.

  ENDMETHOD.

  METHOD is_before.
    DATA(t1) = i_p.
    DATA t2 TYPE abap_bool.
    DATA t3 TYPE abap_bool.
    DATA(t4) = CONV f( me->row ).
    DATA t5 TYPE f.
    DATA(t6) = t1.
    t5 = t6->row.
    t3 = xsdbool( t4 < t5 ).
    t2 = t3.
    IF t3 = abap_false.
      DATA t7 TYPE abap_bool.
      DATA t8 TYPE abap_bool.
      DATA(t9) = CONV f( me->row ).
      DATA t10 TYPE f.
      DATA(t11) = t1.
      t10 = t11->row.
      t8 = xsdbool( t9 = t10 ).
      t7 = t8.
      IF t8 = abap_true.
        DATA t12 TYPE abap_bool.
        DATA(t13) = me->col.
        DATA t14 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA(t15) = t1.
        t14 = t15->col.
        t12 = zlnt_runtime_numb_290eb04a9758=>compare( left = t13 right = t14 op = `<` ).
        t7 = t12.
      ENDIF.
      t2 = t7.
    ENDIF.
    result = t2.

  ENDMETHOD.

  METHOD is_between.
    DATA(t1) = i_p1.
    DATA(t2) = i_p2.
    DATA t3 TYPE abap_bool.
    DATA t4 TYPE abap_bool.
    DATA(t5) = t1.
    t4 = me->is_after( i_p = t5 ).
    t3 = t4.
    IF t4 = abap_true.
      DATA(t6) = VALUE abap_bool( ).
      DATA t7 TYPE REF TO zcl_lnt_position.
      DATA(t8) = t2.
      t7 = t8.
      DATA t9 TYPE abap_bool.
      DATA t10 TYPE abap_bool.
      DATA(t11) = CONV f( me->row ).
      DATA t12 TYPE f.
      DATA(t13) = t7.
      t12 = t13->row.
      t10 = xsdbool( t11 < t12 ).
      t9 = t10.
      IF t10 = abap_false.
        DATA t14 TYPE abap_bool.
        DATA t15 TYPE abap_bool.
        DATA(t16) = CONV f( me->row ).
        DATA t17 TYPE f.
        DATA(t18) = t7.
        t17 = t18->row.
        t15 = xsdbool( t16 = t17 ).
        t14 = t15.
        IF t15 = abap_true.
          DATA t19 TYPE abap_bool.
          DATA(t20) = me->col.
          DATA t21 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          DATA(t22) = t7.
          t21 = t22->col.
          t19 = zlnt_runtime_numb_290eb04a9758=>compare( left = t20 right = t21 op = `<` ).
          t14 = t19.
        ENDIF.
        t9 = t14.
      ENDIF.
      t6 = t9.
      t3 = t6.
    ENDIF.
    result = t3.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1371_b8b727ff42ab.
  ENDMETHOD.
ENDCLASS.
