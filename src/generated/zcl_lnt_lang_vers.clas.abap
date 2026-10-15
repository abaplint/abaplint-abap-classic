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
    DATA(t1) = i_lang_version.
    DATA(t2) = i_runnable.
    DATA(t3) = t1.
    me->lang_version = t3.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `langVersion`.
    DATA(t4) = t2.
    me->runnable = t4.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `runnable`.
  ENDMETHOD.

  METHOD list_keywords.
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t2) = me->runnable.
    t1 = t2->list_keywords( ).
    result = t1.

  ENDMETHOD.

  METHOD get_using.
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t2) = me->runnable.
    t1 = t2->get_using( ).
    result = t1.

  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_r_f634.
    DATA t2 TYPE abap_bool.
    DATA t3 TYPE i.
    DATA(t4) = CONV string( zcl_lnt_combi=>get_language_version( ) ).
    t3 = zcl_lnt_st_combi_module=>lang_version_ordinal( i_v = t4 ).
    DATA t5 TYPE i.
    DATA(t6) = CONV string( me->lang_version ).
    t5 = zcl_lnt_st_combi_module=>lang_version_ordinal( i_v = t6 ).
    t2 = xsdbool( t3 <= t5 ).
    IF t2 = abap_true.
      DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t8) = me->runnable.
      DATA(t9) = t1.
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
    DATA t1 TYPE string.
    DATA t2 TYPE string.
    DATA t3 TYPE string.
    DATA t4 TYPE string.
    DATA(t5) = |Railroad.Sequence(Railroad.Comment("langver=|.
    DATA(t6) = CONV string( me->lang_version ).
    DATA(t7) = strlen( t5 ).
    t4 = |{ t5 }{ t6 }|.
    DATA(t8) = |", \{\}), |.
    DATA(t9) = strlen( t4 ).
    t3 = |{ t4 }{ t8 }|.
    DATA t10 TYPE string.
    DATA(t11) = me->runnable.
    t10 = t11->railroad( ).
    DATA(t12) = strlen( t3 ).
    t2 = |{ t3 }{ t10 }|.
    DATA(t13) = |)|.
    DATA(t14) = strlen( t2 ).
    t1 = |{ t2 }{ t13 }|.
    result = t1.

  ENDMETHOD.

  METHOD to_str.
    DATA t1 TYPE string.
    DATA t2 TYPE string.
    DATA(t3) = |LangVersion(|.
    DATA t4 TYPE string.
    DATA(t5) = me->runnable.
    t4 = t5->to_str( ).
    DATA(t6) = strlen( t3 ).
    t2 = |{ t3 }{ t4 }|.
    DATA(t7) = |)|.
    DATA(t8) = strlen( t2 ).
    t1 = |{ t2 }{ t7 }|.
    result = t1.

  ENDMETHOD.

  METHOD first.
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t2) = me->runnable.
    t1 = t2->first( ).
    result = t1.

  ENDMETHOD.

  METHOD run_one.
    DATA(t1) = i_x.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t6.
    t5 = t6.
    DATA(t7) = t5.
    DATA(t8) = t1.
    t7->load( ).
    APPEND t8 TO t7->items.
    t7->save( ).
    DATA(t9) = t5.
    t4 = t9.
    t3 = t4.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t10.
    DATA t11 TYPE abap_bool.
    DATA t12 TYPE i.
    DATA(t13) = CONV string( zcl_lnt_combi=>get_language_version( ) ).
    t12 = zcl_lnt_st_combi_module=>lang_version_ordinal( i_v = t13 ).
    DATA t14 TYPE i.
    DATA(t15) = CONV string( me->lang_version ).
    t14 = zcl_lnt_st_combi_module=>lang_version_ordinal( i_v = t15 ).
    t11 = xsdbool( t12 <= t14 ).
    IF t11 = abap_true.
      DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t17) = me->runnable.
      DATA(t18) = t3.
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
