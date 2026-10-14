* TS: src/abap/artifacts.ts:13:1 List
CLASS zcl_lnt_list DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA words TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS constructor.
    METHODS add_51c1 IMPORTING i_keywords TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0 i_source_75cf TYPE string.
    METHODS get_db65 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS find_8f95 IMPORTING i_keyword TYPE string RETURNING VALUE(result) TYPE int8.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_list IMPLEMENTATION.
  METHOD constructor.
    DATA t1 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t1.
    me->words = t1.
  ENDMETHOD.

  METHOD add_51c1.
    DATA(t1) = CAST zlnt_runtime_arra_8ecd6afe19e0( i_keywords ).
    DATA(t2) = i_source_75cf.
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/abap/artifacts.ts:20|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.

  METHOD get_db65.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/artifacts.ts:31|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD find_8f95.
    DATA(t1) = i_keyword.
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/abap/artifacts.ts:35|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d981_b3c34f191785.
  ENDMETHOD.
ENDCLASS.
