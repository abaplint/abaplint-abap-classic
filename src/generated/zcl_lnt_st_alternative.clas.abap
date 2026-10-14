* TS: src/abap/2_statements/combi.ts:877:1 Alternative
CLASS zcl_lnt_st_alternative DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement_runnable.
    INTERFACES zif_lnt_union_daf022d4.
    DATA list TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS constructor IMPORTING i_list TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
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
CLASS zcl_lnt_st_alternative IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( i_list ).
    DATA t2 TYPE abap_bool.
    DATA t3 TYPE i.
    DATA(t4) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    t3 = lines( t4->items ).
    DATA(t5) = 2.
    t2 = xsdbool( t3 < t5 ).
    IF t2 = abap_true.
      DATA t6 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      CLEAR t6.
      DATA t7 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      CLEAR t7.
      DATA t8 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t8.
      DATA(t9) = abap_true.
      IF t9 = abap_true.
        DATA(t10) = |Alternative, length error|.
        DATA(t11) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t11->has = abap_true.
        t11->value = t10.
        t8 = t11.
      ELSE.
        DATA t12 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t12.
        t8 = t12.
      ENDIF.
      t7 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t8 ).
      t6 = NEW #( ).
      t6->payload = t7.
      RAISE EXCEPTION t6.
    ENDIF.
    DATA(t13) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    me->list = t13.
  ENDMETHOD.
  METHOD list_keywords.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/2_statements/combi.ts:887|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD get_using.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/2_statements/combi.ts:895|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD run.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( i_r_f634 ).
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA(t4) = CAST zlnt_runtime_arra_c22708faf2e3( me->list ).
    DATA t5 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t5.
    DATA t6 TYPE REF TO object.
    CLEAR t6.
    LOOP AT t4->items INTO t6.
      t5 ?= t6.
      DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t9) = CAST zif_lnt_statement_runnable( t5 ).
      DATA(t10) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
      t8 = t9->run( i_r_f634 = t10 ).
      t7 = t8.
      DATA t11 TYPE abap_bool.
      DATA t12 TYPE i.
      DATA(t13) = CAST zlnt_runtime_arra_c22708faf2e3( t7 ).
      t12 = lines( t13->items ).
      DATA(t14) = 1.
      t11 = xsdbool( t12 = t14 ).
      IF t11 = abap_true.
        DATA(t15) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
        DATA t16 TYPE REF TO zcl_lnt_st_result.
        DATA(t17) = CAST zlnt_runtime_arra_c22708faf2e3( t7 ).
        DATA t18 TYPE REF TO object.
        CLEAR t18.
        READ TABLE t17->items INDEX 1 INTO t18.
        t16 ?= t18.
        APPEND t16 TO t15->items.
      ELSE.
        DATA(t19) = VALUE i( ).
        DATA(t20) = CAST zlnt_runtime_arra_c22708faf2e3( t7 ).
        DATA t21 TYPE REF TO zcl_lnt_st_result.
        CLEAR t21.
        DATA t22 TYPE REF TO object.
        CLEAR t22.
        LOOP AT t20->items INTO t22.
          t21 ?= t22.
          DATA(t23) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
          DATA(t24) = CAST zcl_lnt_st_result( t21 ).
          APPEND t24 TO t23->items.
        ENDLOOP.
        DATA t25 TYPE i.
        DATA(t26) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
        t25 = lines( t26->items ).
        t19 = t25.
      ENDIF.
    ENDLOOP.
    DATA(t27) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
    result = t27.

  ENDMETHOD.
  METHOD railroad.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/2_statements/combi.ts:914|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD to_str.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/2_statements/combi.ts:919|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD first.
    DATA t1 TYPE abap_bool.
    DATA t2 TYPE i.
    DATA(t3) = CAST zlnt_runtime_arra_c22708faf2e3( me->list ).
    t2 = lines( t3->items ).
    DATA(t4) = 2.
    t1 = xsdbool( t2 <> t4 ).
    IF t1 = abap_true.
      DATA t5 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t6 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t7 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t7.
      t6 = t7.
      DATA(t8) = CAST zlnt_runtime_arra_8ecd6afe19e0( t6 ).
      DATA(t9) = ||.
      APPEND t9 TO t8->items.
      DATA(t10) = CAST zlnt_runtime_arra_8ecd6afe19e0( t6 ).
      t5 = t10.
      result = t5.
      RETURN.
    ENDIF.
    DATA t11 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t12 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t13 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t14) = CAST zlnt_runtime_arra_c22708faf2e3( me->list ).
    DATA t15 TYPE REF TO object.
    CLEAR t15.
    READ TABLE t14->items INDEX 1 INTO t15.
    t13 ?= t15.
    t12 = t13->first( ).
    t11 = t12.
    DATA t16 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t17 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t18 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t19) = CAST zlnt_runtime_arra_c22708faf2e3( me->list ).
    DATA t20 TYPE REF TO object.
    CLEAR t20.
    READ TABLE t19->items INDEX 2 INTO t20.
    t18 ?= t20.
    t17 = t18->first( ).
    t16 = t17.
    DATA t21 TYPE abap_bool.
    DATA t22 TYPE abap_bool.
    DATA t23 TYPE i.
    DATA(t24) = CAST zlnt_runtime_arra_8ecd6afe19e0( t11 ).
    t23 = lines( t24->items ).
    DATA(t25) = 1.
    t22 = xsdbool( t23 = t25 ).
    t21 = t22.
    IF t22 = abap_true.
      DATA t26 TYPE abap_bool.
      DATA(t27) = VALUE string( ).
      DATA(t28) = CAST zlnt_runtime_arra_8ecd6afe19e0( t11 ).
      READ TABLE t28->items INDEX 1 INTO t27.
      DATA(t29) = ||.
      t26 = xsdbool( t27 = t29 ).
      t21 = t26.
    ENDIF.
    IF t21 = abap_true.
      DATA(t30) = CAST zlnt_runtime_arra_8ecd6afe19e0( t11 ).
      result = t30.
      RETURN.
    ENDIF.
    DATA t31 TYPE abap_bool.
    DATA t32 TYPE abap_bool.
    DATA t33 TYPE i.
    DATA(t34) = CAST zlnt_runtime_arra_8ecd6afe19e0( t16 ).
    t33 = lines( t34->items ).
    DATA(t35) = 1.
    t32 = xsdbool( t33 = t35 ).
    t31 = t32.
    IF t32 = abap_true.
      DATA t36 TYPE abap_bool.
      DATA(t37) = VALUE string( ).
      DATA(t38) = CAST zlnt_runtime_arra_8ecd6afe19e0( t16 ).
      READ TABLE t38->items INDEX 1 INTO t37.
      DATA(t39) = ||.
      t36 = xsdbool( t37 = t39 ).
      t31 = t36.
    ENDIF.
    IF t31 = abap_true.
      DATA(t40) = CAST zlnt_runtime_arra_8ecd6afe19e0( t16 ).
      result = t40.
      RETURN.
    ENDIF.
    DATA(t41) = VALUE abap_bool( ).
    DATA t42 TYPE abap_bool.
    DATA t43 TYPE abap_bool.
    DATA t44 TYPE i.
    DATA(t45) = CAST zlnt_runtime_arra_8ecd6afe19e0( t11 ).
    t44 = lines( t45->items ).
    DATA(t46) = 1.
    t43 = xsdbool( t44 = t46 ).
    t42 = t43.
    IF t43 = abap_true.
      DATA t47 TYPE abap_bool.
      DATA t48 TYPE i.
      DATA(t49) = CAST zlnt_runtime_arra_8ecd6afe19e0( t16 ).
      t48 = lines( t49->items ).
      DATA(t50) = 1.
      t47 = xsdbool( t48 = t50 ).
      t42 = t47.
    ENDIF.
    t41 = t42.
    IF t42 = abap_true.
      DATA t51 TYPE abap_bool.
      DATA(t52) = VALUE string( ).
      DATA(t53) = CAST zlnt_runtime_arra_8ecd6afe19e0( t11 ).
      READ TABLE t53->items INDEX 1 INTO t52.
      DATA(t54) = VALUE string( ).
      DATA(t55) = CAST zlnt_runtime_arra_8ecd6afe19e0( t16 ).
      READ TABLE t55->items INDEX 1 INTO t54.
      t51 = xsdbool( t52 = t54 ).
      t41 = t51.
    ENDIF.
    IF t41 = abap_true.
      DATA(t56) = CAST zlnt_runtime_arra_8ecd6afe19e0( t11 ).
      result = t56.
      RETURN.
    ENDIF.
    DATA(t57) = VALUE i( ).
    DATA(t58) = CAST zlnt_runtime_arra_8ecd6afe19e0( t16 ).
    DATA(t59) = VALUE string( ).
    LOOP AT t58->items INTO t59.
      DATA(t60) = CAST zlnt_runtime_arra_8ecd6afe19e0( t11 ).
      DATA(t61) = t59.
      APPEND t61 TO t60->items.
    ENDLOOP.
    DATA t62 TYPE i.
    DATA(t63) = CAST zlnt_runtime_arra_8ecd6afe19e0( t11 ).
    t62 = lines( t63->items ).
    t57 = t62.
    DATA(t64) = CAST zlnt_runtime_arra_8ecd6afe19e0( t11 ).
    result = t64.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d77_d30e6c784021e6.
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
