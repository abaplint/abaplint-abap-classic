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
    DATA(t2) = i_col.
    me->row = i_row.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `row`.
    me->col = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `col`.
  ENDMETHOD.

  METHOD get_col.
    result = me->col.

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
    t3 = xsdbool( t4 > t1->row ).
    t2 = t3.
    IF t3 = abap_false.
      DATA t7 TYPE abap_bool.
      DATA t8 TYPE abap_bool.
      DATA(t9) = CONV f( me->row ).
      t8 = xsdbool( t9 = t1->row ).
      t7 = t8.
      IF t8 = abap_true.
        DATA(t13) = me->col.
        DATA t14 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t14 = t1->col.
        t7 = zlnt_runtime_numb_290eb04a9758=>compare( left = t13 right = t14 op = `>=` ).
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
    t3 = xsdbool( t4 = t1->row ).
    t2 = t3.
    IF t3 = abap_true.
      DATA(t11) = me->col.
      DATA t12 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      t12 = t1->col.
      t2 = zlnt_runtime_numb_290eb04a9758=>compare( left = t11 right = t12 op = `==` ).
    ENDIF.
    result = t2.

  ENDMETHOD.

  METHOD is_before.
    DATA(t1) = i_p.
    DATA t2 TYPE abap_bool.
    DATA t3 TYPE abap_bool.
    DATA(t4) = CONV f( me->row ).
    t3 = xsdbool( t4 < t1->row ).
    t2 = t3.
    IF t3 = abap_false.
      DATA t7 TYPE abap_bool.
      DATA t8 TYPE abap_bool.
      DATA(t9) = CONV f( me->row ).
      t8 = xsdbool( t9 = t1->row ).
      t7 = t8.
      IF t8 = abap_true.
        DATA(t13) = me->col.
        DATA t14 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        t14 = t1->col.
        t7 = zlnt_runtime_numb_290eb04a9758=>compare( left = t13 right = t14 op = `<` ).
      ENDIF.
      t2 = t7.
    ENDIF.
    result = t2.

  ENDMETHOD.

  METHOD is_between.
    DATA(t2) = i_p2.
    DATA t3 TYPE abap_bool.
    DATA t4 TYPE abap_bool.
    DATA(t5) = i_p1.
    t4 = me->is_after( i_p = t5 ).
    t3 = t4.
    IF t4 = abap_true.
      DATA t7 TYPE REF TO zcl_lnt_position.
      t7 = t2.
      DATA t9 TYPE abap_bool.
      DATA t10 TYPE abap_bool.
      DATA(t11) = CONV f( me->row ).
      t10 = xsdbool( t11 < t7->row ).
      t9 = t10.
      IF t10 = abap_false.
        DATA t14 TYPE abap_bool.
        DATA t15 TYPE abap_bool.
        DATA(t16) = CONV f( me->row ).
        t15 = xsdbool( t16 = t7->row ).
        t14 = t15.
        IF t15 = abap_true.
          DATA(t20) = me->col.
          DATA t21 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
          t21 = t7->col.
          t14 = zlnt_runtime_numb_290eb04a9758=>compare( left = t20 right = t21 op = `<` ).
        ENDIF.
        t9 = t14.
      ENDIF.
      t3 = t9.
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
