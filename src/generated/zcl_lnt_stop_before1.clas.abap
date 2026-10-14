* TS: src/abap/2_statements/combi.ts:1240:1 StopBefore1
CLASS zcl_lnt_stop_before1 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement_runnable.
    INTERFACES zif_lnt_union_daf022d4.
    DATA words TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS constructor IMPORTING i_words TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
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
CLASS zcl_lnt_stop_before1 IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zlnt_runtime_arra_8ecd6afe19e0( i_words ).
    DATA t2 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t4 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t4.
    t3 = t4.
    DATA(t5) = CAST zlnt_runtime_arra_8ecd6afe19e0( t1 ).
    DATA(t6) = VALUE string( ).
    LOOP AT t5->items INTO t6.
      DATA(t7) = CAST zlnt_runtime_arra_8ecd6afe19e0( t3 ).
      DATA t8 TYPE string.
      DATA(t9) = t6.
      DATA(t10) = strlen( t9 ).
      t8 = t9.
      IF t8 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t8 TO UPPER CASE.
      ELSE.
        t8 = zlnt_runtime_uppe_91169605024d=>full( t8 ).
      ENDIF.
      APPEND t8 TO t7->items.
    ENDLOOP.
    DATA(t11) = CAST zlnt_runtime_arra_8ecd6afe19e0( t3 ).
    t2 = t11.
    me->words = t2.
  ENDMETHOD.
  METHOD list_keywords.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/2_statements/combi.ts:1243|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD get_using.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/2_statements/combi.ts:1244|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD run.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( i_r_f634 ).
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA(t4) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA t5 TYPE REF TO zcl_lnt_st_result.
    CLEAR t5.
    DATA t6 TYPE REF TO object.
    CLEAR t6.
    LOOP AT t4->items INTO t6.
      t5 ?= t6.
      DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t7.
      DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t8.
      DATA t9 TYPE REF TO zcl_lnt_abstract_token.
      DATA t10 TYPE REF TO zcl_lnt_abstract_token.
      DATA t11 TYPE REF TO zcl_lnt_st_result.
      DATA(t12) = CAST zcl_lnt_st_result( t5 ).
      t11 = t12.
      DATA t13 TYPE REF TO zcl_lnt_abstract_token.
      DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t15) = CAST zcl_lnt_st_result( t11 ).
      t14 = t15->tokens.
      DATA t16 TYPE i.
      DATA(t17) = CAST zcl_lnt_st_result( t11 ).
      t16 = t17->token_index.
      t16 = t16 + 1.
      DATA t18 TYPE REF TO object.
      CLEAR t18.
      READ TABLE t14->items INDEX t16 INTO t18.
      t13 ?= t18.
      t10 = t13.
      t9 = t10.
      DATA t19 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t19.
      DATA(t20) = VALUE abap_bool( ).
      DATA(t21) = CAST zcl_lnt_abstract_token( t9 ).
      IF t21 IS INITIAL.
        t20 = abap_true.
      ENDIF.
      IF t20 = abap_true.
        DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t22.
        t19 = t22.
      ELSE.
        DATA t23 TYPE string.
        DATA t24 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t25) = CAST zcl_lnt_abstract_token( t9 ).
        t24 = t25.
        DATA t26 TYPE string.
        DATA(t27) = CAST zcl_lnt_abstract_token( t24 ).
        t26 = t27->str_upper.
        t23 = t26.
        DATA(t28) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t28->has = abap_true.
        t28->value = t23.
        t19 = t28.
      ENDIF.
      t8 = t19.
      t7 = t8.
      DATA(t29) = VALUE abap_bool( ).
      DATA(t30) = VALUE abap_bool( ).
      DATA t31 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t32) = CAST zlnt_runtime_opti_4ba3bdccd169( t7 ).
      t31 = t32.
      DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t34.
      t33 = t34.
      DATA(t35) = VALUE abap_bool( ).
      DATA(t36) = VALUE abap_bool( ).
      DATA(t37) = CAST zlnt_runtime_opti_4ba3bdccd169( t31 ).
      IF t37 IS INITIAL.
        t36 = abap_true.
      ELSEIF t37->has = abap_false.
        t36 = abap_true.
      ENDIF.
      t35 = xsdbool( t36 = abap_false ).
      t30 = t35.
      t29 = t30.
      IF t30 = abap_true.
        DATA t38 TYPE abap_bool.
        DATA(t39) = CAST zlnt_runtime_arra_8ecd6afe19e0( me->words ).
        DATA t40 TYPE string.
        DATA(t41) = CAST zlnt_runtime_opti_4ba3bdccd169( t7 ).
        t40 = t41->value.
        t38 = t39->includes( p0 = t40 ).
        t29 = t38.
      ENDIF.
      IF t29 = abap_true.
        CONTINUE.
      ENDIF.
      DATA(t42) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
      DATA(t43) = CAST zcl_lnt_st_result( t5 ).
      APPEND t43 TO t42->items.
    ENDLOOP.
    DATA(t44) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
    result = t44.
    
  ENDMETHOD.
  METHOD railroad.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/2_statements/combi.ts:1254|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD to_str.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/2_statements/combi.ts:1255|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD first.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/2_statements/combi.ts:1256|.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d81_45b735890b6abd.
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
