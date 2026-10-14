* TS: src/abap/2_statements/combi.ts:216:1 LangVers
CLASS zcl_lnt_lang_vers DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement_runnable.
    INTERFACES zif_lnt_union_daf022d4.
    DATA lang_version TYPE string.
    DATA runnable TYPE REF TO zif_lnt_statement_runnable.
    METHODS constructor IMPORTING i_lang_version TYPE string i_runnable TYPE REF TO zif_lnt_statement_runnable.
    METHODS list_keywords RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS get_using RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS run IMPORTING i_r_f634 TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS railroad RETURNING VALUE(result) TYPE string.
    METHODS to_str RETURNING VALUE(result) TYPE string.
    METHODS first RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS run_one IMPORTING i_x TYPE REF TO zcl_lnt_st_result RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_lang_vers IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_lang_version.
    DATA(t2) = CAST zif_lnt_statement_runnable( i_runnable ).
    DATA(t3) = t1.
    me->lang_version = t3.
    DATA(t4) = CAST zif_lnt_statement_runnable( t2 ).
    me->runnable = t4.
  ENDMETHOD.
  METHOD list_keywords.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/2_statements/combi.ts:226|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD get_using.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/2_statements/combi.ts:230|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD run.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( i_r_f634 ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/abap/2_statements/combi.ts:234|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD railroad.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/2_statements/combi.ts:242|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD to_str.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/2_statements/combi.ts:250|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD first.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/2_statements/combi.ts:254|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD run_one.
    DATA(t1) = CAST zcl_lnt_st_result( i_x ).
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t5.
    t4 = t5.
    DATA(t6) = CAST zlnt_runtime_arra_c22708faf2e3( t4 ).
    DATA(t7) = CAST zcl_lnt_st_result( t1 ).
    APPEND t7 TO t6->items.
    DATA(t8) = CAST zlnt_runtime_arra_c22708faf2e3( t4 ).
    t3 = t8.
    t2 = me->run( i_r_f634 = t3 ).
    result = t2.

  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d64_ac3530979ec5e5.
  ENDMETHOD.
  METHOD zif_lnt_statement_runnable~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zif_lnt_statement_runnable~run.
    result = me->run(  i_r_f634 = i_r_f634 ).
  ENDMETHOD.
  METHOD zif_lnt_statement_runnable~railroad.
    result = me->railroad(  ).
  ENDMETHOD.
  METHOD zif_lnt_statement_runnable~to_str.
    result = me->to_str(  ).
  ENDMETHOD.
  METHOD zif_lnt_statement_runnable~get_using.
    result = me->get_using(  ).
  ENDMETHOD.
  METHOD zif_lnt_statement_runnable~list_keywords.
    result = me->list_keywords(  ).
  ENDMETHOD.
  METHOD zif_lnt_statement_runnable~first.
    result = me->first(  ).
  ENDMETHOD.
  METHOD zif_lnt_statement_runnable~run_one.
    result = me->run_one(  i_x = i_x ).
  ENDMETHOD.
  METHOD zif_lnt_union_daf022d4~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
ENDCLASS.
