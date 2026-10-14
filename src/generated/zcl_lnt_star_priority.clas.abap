* TS: src/abap/2_statements/combi.ts:457:1 StarPriority
CLASS zcl_lnt_star_priority DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_statement_runnable.
    INTERFACES zif_lnt_union_daf022d4.
    DATA sta TYPE REF TO zif_lnt_statement_runnable.
    METHODS constructor IMPORTING i_sta TYPE REF TO zif_lnt_statement_runnable.
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
CLASS zcl_lnt_star_priority IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zif_lnt_statement_runnable( i_sta ).
    DATA(t2) = CAST zif_lnt_statement_runnable( t1 ).
    me->sta = t2.
  ENDMETHOD.

  METHOD list_keywords.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/2_statements/combi.ts:465|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD get_using.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/2_statements/combi.ts:469|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD run.
    CONSTANTS range_int8_bound_max TYPE int8 VALUE '9007199254740991'.
    CONSTANTS range_int8_bound_min TYPE int8 VALUE '-9007199254740991'.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( i_r_f634 ).
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t3) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t5) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t6.
    DO.
      DATA(t7) = abap_true.
      IF t7 = abap_false.
        EXIT.
      ENDIF.
      DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t9) = CAST zif_lnt_statement_runnable( me->sta ).
      DATA(t10) = CAST zlnt_runtime_arra_c22708faf2e3( t4 ).
      t8 = t9->run( i_r_f634 = t10 ).
      t4 = t8.
      DATA t11 TYPE abap_bool.
      DATA t12 TYPE i.
      DATA(t13) = CAST zlnt_runtime_arra_c22708faf2e3( t4 ).
      t12 = lines( t13->items ).
      DATA(t14) = 0.
      t11 = xsdbool( t12 = t14 ).
      IF t11 = abap_true.
        DATA(t15) = VALUE abap_bool( ).
        DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t17) = CAST zlnt_runtime_arra_c22708faf2e3( t6 ).
        t16 = t17.
        DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t19.
        t18 = t19.
        DATA(t20) = VALUE abap_bool( ).
        DATA(t21) = VALUE abap_bool( ).
        DATA(t22) = CAST zlnt_runtime_arra_c22708faf2e3( t16 ).
        IF t22 IS INITIAL.
          t21 = abap_true.
        ENDIF.
        t20 = xsdbool( t21 = abap_false ).
        t15 = t20.
        IF t15 = abap_true.
          DATA t23 TYPE int8.
          DATA(t24) = CONV int8( 2147483647 ).
          t23 = t24.
          DATA t25 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t26) = CAST zlnt_runtime_arra_c22708faf2e3( t6 ).
          t25 = t26.
          DATA t27 TYPE REF TO zcl_lnt_st_result.
          CLEAR t27.
          DATA t28 TYPE REF TO object.
          CLEAR t28.
          LOOP AT t25->items INTO t28.
            t27 ?= t28.
            DATA(t29) = VALUE abap_bool( ).
            DATA(t30) = VALUE int8( ).
            DATA t31 TYPE REF TO zcl_lnt_st_result.
            DATA(t32) = CAST zcl_lnt_st_result( t27 ).
            t31 = t32.
            DATA t33 TYPE int8.
            DATA t34 TYPE int8.
            DATA t35 TYPE i.
            DATA t36 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA(t37) = CAST zcl_lnt_st_result( t31 ).
            t36 = t37->tokens.
            t35 = lines( t36->items ).
            t34 = t35.
            DATA t38 TYPE int8.
            DATA t39 TYPE i.
            DATA(t40) = CAST zcl_lnt_st_result( t31 ).
            t39 = t40->token_index.
            t38 = t39.
            t33 = t34 - t38.
            IF t33 < range_int8_bound_min OR t33 > range_int8_bound_max.
              RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
            ENDIF.
            t30 = t33.
            DATA(t41) = t23.
            t29 = xsdbool( t30 < t41 ).
            IF t29 = abap_true.
              DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA t43 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA t44 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CREATE OBJECT t44.
              t43 = t44.
              DATA(t45) = CAST zlnt_runtime_arra_c22708faf2e3( t43 ).
              DATA(t46) = CAST zcl_lnt_st_result( t27 ).
              APPEND t46 TO t45->items.
              DATA(t47) = CAST zlnt_runtime_arra_c22708faf2e3( t43 ).
              t42 = t47.
              t2 = t42.
              DATA(t48) = VALUE int8( ).
              DATA t49 TYPE REF TO zcl_lnt_st_result.
              DATA(t50) = CAST zcl_lnt_st_result( t27 ).
              t49 = t50.
              DATA t51 TYPE int8.
              DATA t52 TYPE int8.
              DATA t53 TYPE i.
              DATA t54 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              DATA(t55) = CAST zcl_lnt_st_result( t49 ).
              t54 = t55->tokens.
              t53 = lines( t54->items ).
              t52 = t53.
              DATA t56 TYPE int8.
              DATA t57 TYPE i.
              DATA(t58) = CAST zcl_lnt_st_result( t49 ).
              t57 = t58->token_index.
              t56 = t57.
              t51 = t52 - t56.
              IF t51 < range_int8_bound_min OR t51 > range_int8_bound_max.
                RAISE EXCEPTION TYPE cx_sy_arithmetic_overflow.
              ENDIF.
              t48 = t51.
              t23 = t48.
            ENDIF.
          ENDLOOP.
        ENDIF.
        EXIT.
      ENDIF.
      DATA t59 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t59.
      DATA(t60) = abap_true.
      IF t60 = abap_true.
        DATA(t61) = CAST zlnt_runtime_arra_c22708faf2e3( t4 ).
        t59 = t61.
      ELSE.
        DATA t62 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t62.
        t59 = t62.
      ENDIF.
      t6 = t59.
    ENDDO.
    DATA(t63) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
    result = t63.

  ENDMETHOD.

  METHOD railroad.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/2_statements/combi.ts:503|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD to_str.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/2_statements/combi.ts:507|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD first.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/2_statements/combi.ts:511|.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d69_562b368758b545.
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
