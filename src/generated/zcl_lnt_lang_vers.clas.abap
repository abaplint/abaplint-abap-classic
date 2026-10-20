* TS: src/abap/2_statements/combi.ts:216:1 LangVers
CLASS zcl_lnt_lang_vers DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
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
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_lang_vers IMPLEMENTATION.
  METHOD constructor.
    DATA(t2) = i_runnable.
    me->lang_version = i_lang_version.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `langVersion`.
    me->runnable = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `runnable`.
  ENDMETHOD.

  METHOD list_keywords.
    result = me->runnable->list_keywords( ).

  ENDMETHOD.

  METHOD get_using.
    result = me->runnable->get_using( ).

  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_r_f634.
    DATA t3 TYPE i.
    DATA(t4) = CONV string( zcl_lnt_combi=>get_language_version( ) ).
    t3 = zcl_lnt_st_combi_module=>lang_version_ordinal( i_v = t4 ).
    DATA(t6) = CONV string( me->lang_version ).
    IF xsdbool( t3 <= zcl_lnt_st_combi_module=>lang_version_ordinal( i_v = t6 ) ) = abap_true.
      result = me->runnable->run( i_r_f634 = t1 ).
      RETURN.
    ENDIF.
    CREATE OBJECT result.


  ENDMETHOD.

  METHOD railroad.
    DATA t2 TYPE string.
    DATA t3 TYPE string.
    DATA t4 TYPE string.
    DATA(t5) = |Railroad.Sequence(Railroad.Comment("langver=|.
    DATA(t6) = CONV string( me->lang_version ).
    DATA(t7) = strlen( t5 ).
    t4 = |{ t5 }{ t6 }|.
    DATA(t9) = strlen( t4 ).
    t3 = |{ t4 }{ |", \{\}), | }|.
    DATA t10 TYPE string.
    t10 = me->runnable->railroad( ).
    DATA(t12) = strlen( t3 ).
    t2 = |{ t3 }{ t10 }|.
    DATA(t14) = strlen( t2 ).
    result = |{ t2 }{ |)| }|.

  ENDMETHOD.

  METHOD to_str.
    DATA t2 TYPE string.
    DATA(t3) = |LangVersion(|.
    DATA t4 TYPE string.
    t4 = me->runnable->to_str( ).
    DATA(t6) = strlen( t3 ).
    t2 = |{ t3 }{ t4 }|.
    DATA(t8) = strlen( t2 ).
    result = |{ t2 }{ |)| }|.

  ENDMETHOD.

  METHOD first.
    result = me->runnable->first( ).

  ENDMETHOD.

  METHOD run_one.
    DATA(t1) = i_x.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t5.
    t5->load( ).
    APPEND t1 TO t5->items.
    t5->save( ).
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t12 TYPE i.
    DATA(t13) = CONV string( zcl_lnt_combi=>get_language_version( ) ).
    t12 = zcl_lnt_st_combi_module=>lang_version_ordinal( i_v = t13 ).
    DATA(t15) = CONV string( me->lang_version ).
    IF xsdbool( t12 <= zcl_lnt_st_combi_module=>lang_version_ordinal( i_v = t15 ) ) = abap_true.
      t10 = me->runnable->run( i_r_f634 = t5 ).
    ELSE.
      CREATE OBJECT t10.
    ENDIF.
    result = t10.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d65_014472caf12315.
  ENDMETHOD.

  METHOD zif_lnt_statement_runnable~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_runnable~run.
    result = me->run( i_r_f634 = i_r_f634 ).
  ENDMETHOD.

  METHOD zif_lnt_statement_runnable~railroad.
    result = me->railroad( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_runnable~to_str.
    result = me->to_str( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_runnable~get_using.
    result = me->get_using( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_runnable~list_keywords.
    result = me->list_keywords( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_runnable~first.
    result = me->first( ).
  ENDMETHOD.

  METHOD zif_lnt_statement_runnable~run_one.
    result = me->run_one( i_x = i_x ).
  ENDMETHOD.

  METHOD zif_lnt_union_daf022d4~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
ENDCLASS.
