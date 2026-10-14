* TS: src/abap/2_statements/combi.ts:259:1 LangVersNot
CLASS zcl_lnt_lang_vers_not DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_lang_vers_not IMPLEMENTATION.
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
    DATA(t2) = |src/abap/2_statements/combi.ts:269|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD get_using.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/2_statements/combi.ts:273|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD run.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( i_r_f634 ).
    DATA t2 TYPE abap_bool.
    DATA t3 TYPE i.
    DATA(t4) = CONV string( zcl_lnt_combi=>get_language_version(  ) ).
    t3 = zcl_lnt_st_combi_module=>lang_version_ordinal( i_v = t4 ).
    DATA t5 TYPE i.
    DATA(t6) = CONV string( me->lang_version ).
    t5 = zcl_lnt_st_combi_module=>lang_version_ordinal( i_v = t6 ).
    t2 = xsdbool( t3 > t5 ).
    IF t2 = abap_true.
      DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t8) = CAST zif_lnt_statement_runnable( me->runnable ).
      DATA(t9) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
      t7 = t8->run( i_r_f634 = t9 ).
      result = t7.
      RETURN.
    ELSE.
      DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t10.
      result = t10.
      
    ENDIF.
  ENDMETHOD.
  METHOD railroad.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/2_statements/combi.ts:285|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD to_str.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/2_statements/combi.ts:293|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD first.
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t2) = CAST zif_lnt_statement_runnable( me->runnable ).
    t1 = t2->first(  ).
    result = t1.
    
  ENDMETHOD.
  METHOD run_one.
    DATA(t1) = CAST zcl_lnt_st_result( i_x ).
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t6.
    t5 = t6.
    DATA(t7) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    DATA(t8) = CAST zcl_lnt_st_result( t1 ).
    APPEND t8 TO t7->items.
    DATA(t9) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
    t4 = t9.
    t3 = t4.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t10.
    DATA t11 TYPE abap_bool.
    DATA t12 TYPE i.
    DATA(t13) = CONV string( zcl_lnt_combi=>get_language_version(  ) ).
    t12 = zcl_lnt_st_combi_module=>lang_version_ordinal( i_v = t13 ).
    DATA t14 TYPE i.
    DATA(t15) = CONV string( me->lang_version ).
    t14 = zcl_lnt_st_combi_module=>lang_version_ordinal( i_v = t15 ).
    t11 = xsdbool( t12 > t14 ).
    IF t11 = abap_true.
      DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t17) = CAST zif_lnt_statement_runnable( me->runnable ).
      DATA(t18) = CAST zlnt_runtime_arra_c22708faf2e3( t3 ).
      t16 = t17->run( i_r_f634 = t18 ).
      t10 = t16.
    ELSE.
      DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t19.
      t10 = t19.
    ENDIF.
    t2 = t10.
    result = t2.
    
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d65_014472caf12315.
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
