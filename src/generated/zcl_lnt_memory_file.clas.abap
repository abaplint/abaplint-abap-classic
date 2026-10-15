* TS: src/files/memory_file.ts:3:1 MemoryFile
CLASS zcl_lnt_memory_file DEFINITION PUBLIC INHERITING FROM zcl_lnt_abstract_file CREATE PUBLIC.
  PUBLIC SECTION.
    DATA raw TYPE string.
    METHODS constructor IMPORTING i_filename TYPE string i_raw TYPE string.
    METHODS get_raw REDEFINITION.
    METHODS get_raw_rows REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_memory_file IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_filename.
    DATA(t2) = i_raw.
    DATA(t3) = t1.
    super->constructor( i_filename = t3 ).
    DATA(t4) = t2.
    me->raw = t4.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `raw`.
  ENDMETHOD.

  METHOD get_raw.
    DATA(t1) = CONV string( me->raw ).
    result = t1.

  ENDMETHOD.

  METHOD get_raw_rows.
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t2) = CONV string( me->raw ).
    DATA(t3) = |\n|.
    DATA(t4) = strlen( t2 ).
    DATA t5 TYPE i.
    DATA(t6) = VALUE i( ).
    DATA(t7) = VALUE i( ).
    DATA t8 TYPE i.
    DATA(t9) = VALUE string( ).
    CREATE OBJECT t1.
    t8 = strlen( t3 ).
    t5 = 0.
    IF t8 = 0.
      WHILE t5 < t4.
        t9 = t2+t5(1).
        APPEND t9 TO t1->items.
        t5 = t5 + 1.
      ENDWHILE.
    ELSE.
      WHILE t5 <= t4.
        FIND FIRST OCCURRENCE OF t3 IN SECTION OFFSET t5 OF t2 MATCH OFFSET t6.
        IF sy-subrc = 0.
          t7 = t6 - t5.
        ELSE.
          t6 = -1.
          t7 = t4 - t5.
        ENDIF.
        CLEAR t9.
        IF t7 > 0.
          t9 = t2+t5(t7).
        ENDIF.
        APPEND t9 TO t1->items.
        IF t6 < 0.
          EXIT.
        ENDIF.
        t5 = t6 + t8.
      ENDWHILE.
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1150_0e2ee585e933.
  ENDMETHOD.
ENDCLASS.
