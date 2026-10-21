* TS: src/utils/excludeHelper.ts:1:1 ExcludeHelper
CLASS zcl_lnt_exclude_helper DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-METHODS is_excluded IMPORTING i_filename TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 i_exclude_patterns TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE abap_bool.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_exclude_helper IMPLEMENTATION.
  METHOD is_excluded.
    DATA(t1) = i_filename.
    DATA(t2) = i_exclude_patterns.
    DATA t4 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    DATA t5 TYPE REF TO object.
    DATA(t6) = VALUE i( ).
    DO.
      t2->load( ).
      IF t6 >= lines( t2->items ).
        EXIT.
      ENDIF.
      CLEAR t5.
      READ TABLE t2->items INDEX t6 + 1 INTO t5.
      t6 = t6 + 1.
      DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t7.
      CLEAR t4.
      IF t5 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t7 ?= t5.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveUnbox: slot has no exact unbox ABI`.
      ENDIF.
      t4 ?= t5.

      DATA t11 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t11 = t1.
      DATA(t13) = VALUE string( ).
      DATA(t14) = VALUE abap_bool( ).
      IF t11 IS INITIAL.
        t14 = abap_true.
      ELSEIF t11->has = abap_false.
        t14 = abap_true.
      ENDIF.
      IF t14 = abap_true.
        t13 = |undefined|.
      ELSE.
        t13 = t11->value.
      ENDIF.
      IF t4->test( p0 = t13 ) = abap_true.
        result = abap_true.
        RETURN.
      ENDIF.
    ENDDO.
    result = abap_false.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1787_427d323a3283.
  ENDMETHOD.
ENDCLASS.
