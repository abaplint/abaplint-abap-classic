* TS: src/files/memory_file.ts:3:1 MemoryFile
CLASS zcl_lnt_memory_file DEFINITION PUBLIC INHERITING FROM zcl_lnt_abstract_file CREATE PUBLIC.
  PUBLIC SECTION.
    DATA raw TYPE string.
    METHODS constructor IMPORTING i_filename TYPE string i_raw TYPE string.
    METHODS get_raw REDEFINITION.
    METHODS get_raw_rows REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
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
  ENDMETHOD.
  METHOD get_raw.
    DATA(t1) = CONV string( me->raw ).
    result = t1.
    
  ENDMETHOD.
  METHOD get_raw_rows.
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t2) = CONV string( me->raw ).
    DATA(t3) = ||.
    DATA t4 TYPE c LENGTH 1.
    CLEAR t4.
    t4 = cl_abap_conv_in_ce=>uccpi( 10 ).
    CONCATENATE t3 t4 INTO t3 RESPECTING BLANKS.
    DATA(t5) = strlen( t2 ).
    DATA t6 TYPE i.
    DATA(t7) = VALUE i( ).
    DATA(t8) = VALUE i( ).
    DATA t9 TYPE i.
    DATA(t10) = VALUE string( ).
    CREATE OBJECT t1.
    t9 = strlen( t3 ).
    t6 = 0.
    IF t9 = 0.
      WHILE t6 < t5.
        t10 = t2+t6(1).
        APPEND t10 TO t1->items.
        t6 = t6 + 1.
      ENDWHILE.
    ELSE.
      WHILE t6 <= t5.
        FIND FIRST OCCURRENCE OF t3 IN SECTION OFFSET t6 OF t2 MATCH OFFSET t7.
        IF sy-subrc = 0.
          t8 = t7 - t6.
        ELSE.
          t7 = -1.
          t8 = t5 - t6.
        ENDIF.
        CLEAR t10.
        IF t8 > 0.
          t10 = t2+t6(t8).
        ENDIF.
        APPEND t10 TO t1->items.
        IF t7 < 0.
          EXIT.
        ENDIF.
        t6 = t7 + t9.
      ENDWHILE.
    ENDIF.
    result = t1.
    
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1059_bee82e1d812f.
  ENDMETHOD.
ENDCLASS.
