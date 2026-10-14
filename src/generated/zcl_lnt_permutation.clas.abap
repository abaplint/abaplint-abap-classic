* TS: src/abap/2_statements/combi.ts:755:1 Permutation
CLASS zcl_lnt_permutation DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_permutation IMPLEMENTATION.
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
        DATA t10 TYPE string.
        DATA(t11) = |Permutation, length error, got |.
        DATA t12 TYPE string.
        DATA t13 TYPE i.
        DATA(t14) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
        t13 = lines( t14->items ).
        t12 = |{ t13 }|.
        DATA(t15) = strlen( t11 ).
        t10 = |{ t11 }{ t12 }|.
        DATA(t16) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t16->has = abap_true.
        t16->value = t10.
        t8 = t16.
      ELSE.
        DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t17.
        t8 = t17.
      ENDIF.
      t7 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t8 ).
      t6 = NEW #( ).
      t6->payload = t7.
      RAISE EXCEPTION t6.
    ENDIF.
    DATA(t18) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    me->list = t18.
  ENDMETHOD.

  METHOD list_keywords.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/2_statements/combi.ts:765|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD get_using.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/2_statements/combi.ts:773|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD run.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( i_r_f634 ).
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t6) = CAST zlnt_runtime_arra_c22708faf2e3( me->list ).
    t5 = t6->slice0( ).
    t4 = t5.
    DATA t7 TYPE i.
    DATA(t8) = 0.
    t7 = t8.
    DO.
      DATA t9 TYPE abap_bool.
      DATA(t10) = t7.
      DATA t11 TYPE i.
      DATA(t12) = CAST zlnt_runtime_arra_c22708faf2e3( me->list ).
      t11 = lines( t12->items ).
      t9 = xsdbool( t10 < t11 ).
      IF t9 = abap_false.
        EXIT.
      ENDIF.
      DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t15 TYPE REF TO zif_lnt_statement_runnable.
      DATA(t16) = CAST zlnt_runtime_arra_c22708faf2e3( me->list ).
      DATA(t17) = t7.
      t17 = t17 + 1.
      DATA t18 TYPE REF TO object.
      CLEAR t18.
      READ TABLE t16->items INDEX t17 INTO t18.
      t15 ?= t18.
      DATA(t19) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
      t14 = t15->run( i_r_f634 = t19 ).
      t13 = t14.
      DATA t20 TYPE abap_bool.
      DATA t21 TYPE i.
      DATA(t22) = CAST zlnt_runtime_arra_c22708faf2e3( t13 ).
      t21 = lines( t22->items ).
      DATA(t23) = 0.
      t20 = xsdbool( t21 <> t23 ).
      IF t20 = abap_true.
        DATA(t24) = VALUE i( ).
        DATA(t25) = CAST zlnt_runtime_arra_c22708faf2e3( t13 ).
        DATA t26 TYPE REF TO zcl_lnt_st_result.
        CLEAR t26.
        DATA t27 TYPE REF TO object.
        CLEAR t27.
        LOOP AT t25->items INTO t27.
          t26 ?= t27.
          DATA(t28) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
          DATA(t29) = CAST zcl_lnt_st_result( t26 ).
          APPEND t29 TO t28->items.
        ENDLOOP.
        DATA t30 TYPE i.
        DATA(t31) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
        t30 = lines( t31->items ).
        t24 = t30.
        DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t33) = CAST zlnt_runtime_arra_c22708faf2e3( t4 ).
        t32 = t33.
        DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t35) = CAST zlnt_runtime_arra_c22708faf2e3( t32 ).
        DATA(t36) = t7.
        DATA(t37) = 1.
        t34 = t35->splice2( p0 = t36 p1 = t37 ).
        DATA t38 TYPE abap_bool.
        DATA t39 TYPE i.
        DATA(t40) = CAST zlnt_runtime_arra_c22708faf2e3( t32 ).
        t39 = lines( t40->items ).
        DATA(t41) = 1.
        t38 = xsdbool( t39 = t41 ).
        IF t38 = abap_true.
          DATA(t42) = VALUE i( ).
          DATA t43 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t44 TYPE REF TO zif_lnt_statement_runnable.
          DATA(t45) = CAST zlnt_runtime_arra_c22708faf2e3( t32 ).
          DATA t46 TYPE REF TO object.
          CLEAR t46.
          READ TABLE t45->items INDEX 1 INTO t46.
          t44 ?= t46.
          DATA(t47) = CAST zlnt_runtime_arra_c22708faf2e3( t13 ).
          t43 = t44->run( i_r_f634 = t47 ).
          DATA t48 TYPE REF TO zcl_lnt_st_result.
          CLEAR t48.
          DATA t49 TYPE REF TO object.
          CLEAR t49.
          LOOP AT t43->items INTO t49.
            t48 ?= t49.
            DATA(t50) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
            DATA(t51) = CAST zcl_lnt_st_result( t48 ).
            APPEND t51 TO t50->items.
          ENDLOOP.
          DATA t52 TYPE i.
          DATA(t53) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
          t52 = lines( t53->items ).
          t42 = t52.
        ELSE.
          DATA(t54) = VALUE i( ).
          DATA t55 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t56 TYPE REF TO zcl_lnt_permutation.
          DATA(t57) = CAST zlnt_runtime_arra_c22708faf2e3( t32 ).
          t56 = NEW zcl_lnt_permutation( i_list = t57 ).
          DATA(t58) = CAST zlnt_runtime_arra_c22708faf2e3( t13 ).
          t55 = t56->run( i_r_f634 = t58 ).
          DATA t59 TYPE REF TO zcl_lnt_st_result.
          CLEAR t59.
          DATA t60 TYPE REF TO object.
          CLEAR t60.
          LOOP AT t55->items INTO t60.
            t59 ?= t60.
            DATA(t61) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
            DATA(t62) = CAST zcl_lnt_st_result( t59 ).
            APPEND t62 TO t61->items.
          ENDLOOP.
          DATA t63 TYPE i.
          DATA(t64) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
          t63 = lines( t64->items ).
          t54 = t63.
        ENDIF.
      ENDIF.
      DATA t65 TYPE i.
      DATA(t66) = t7.
      DATA(t67) = 1.
      t65 = t66 + t67.
      t7 = t65.
    ENDDO.
    DATA(t68) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
    result = t68.

  ENDMETHOD.

  METHOD railroad.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/2_statements/combi.ts:799|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD to_str.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/2_statements/combi.ts:804|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD first.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/2_statements/combi.ts:809|.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d75_5cf64e981af6e8.
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
