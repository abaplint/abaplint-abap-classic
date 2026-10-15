* TS: src/abap/2_statements/combi.ts:551:1 PlusPriority
CLASS zcl_lnt_plus_priority DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_statement_runnable.
    INTERFACES zif_lnt_union_daf022d4.
    DATA plu TYPE REF TO zif_lnt_statement_runnable.
    DATA sub TYPE REF TO zcl_lnt_st_sequence.
    METHODS constructor IMPORTING i_plu TYPE REF TO zif_lnt_statement_runnable.
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
CLASS zcl_lnt_plus_priority IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_plu.
    DATA(t2) = t1.
    me->plu = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `plu`.
    DATA t3 TYPE REF TO zcl_lnt_st_sequence.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t6.
    t5 = t6.
    DATA(t7) = t5.
    DATA(t8) = me->plu.
    t7->load( ).
    APPEND t8 TO t7->items.
    t7->save( ).
    DATA(t9) = t5.
    DATA t10 TYPE REF TO zcl_lnt_star_priority.
    DATA(t11) = me->plu.
    t10 = NEW zcl_lnt_star_priority( i_sta = t11 ).
    t9->load( ).
    APPEND t10 TO t9->items.
    t9->save( ).
    DATA(t12) = t5.
    t4 = t12.
    t3 = NEW zcl_lnt_st_sequence( i_list = t4 ).
    me->sub = t3.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `sub`.
  ENDMETHOD.

  METHOD list_keywords.
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t2) = me->plu.
    t1 = t2->list_keywords( ).
    result = t1.

  ENDMETHOD.

  METHOD get_using.
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t2) = me->plu.
    t1 = t2->get_using( ).
    result = t1.

  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_r_f634.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t3) = me->sub.
    DATA(t4) = t1.
    t2 = t3->run( i_r_f634 = t4 ).
    result = t2.

  ENDMETHOD.

  METHOD railroad.
    DATA t1 TYPE string.
    DATA t2 TYPE string.
    DATA(t3) = |Railroad.OneOrMore(|.
    DATA t4 TYPE string.
    DATA(t5) = me->plu.
    t4 = t5->railroad( ).
    DATA(t6) = strlen( t3 ).
    t2 = |{ t3 }{ t4 }|.
    DATA(t7) = |)|.
    DATA(t8) = strlen( t2 ).
    t1 = |{ t2 }{ t7 }|.
    result = t1.

  ENDMETHOD.

  METHOD to_str.
    DATA t1 TYPE string.
    DATA t2 TYPE string.
    DATA(t3) = |plus(|.
    DATA t4 TYPE string.
    DATA(t5) = me->plu.
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
    DATA(t2) = me->plu.
    t1 = t2->first( ).
    result = t1.

  ENDMETHOD.

  METHOD run_one.
    DATA(t1) = i_x.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
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
    DATA(t11) = me->sub.
    DATA(t12) = t3.
    t10 = t11->run( i_r_f634 = t12 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d72_ee86dd67fdab30.
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
