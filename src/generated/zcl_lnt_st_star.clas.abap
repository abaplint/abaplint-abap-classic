* TS: src/abap/2_statements/combi.ts:395:1 Star
CLASS zcl_lnt_st_star DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_st_star IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zif_lnt_statement_runnable( i_sta ).
    DATA(t2) = CAST zif_lnt_statement_runnable( t1 ).
    me->sta = t2.
  ENDMETHOD.
  METHOD list_keywords.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/2_statements/combi.ts:403|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD get_using.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/2_statements/combi.ts:407|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD run.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( i_r_f634 ).
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t2.
    DATA(t3) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
    CLEAR t4.
    TRY.
        DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t5.
        DATA(t6) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
        t5 = t6.
        DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t7.
        DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CLEAR t8.
        CREATE OBJECT t8.
        t7 = t8.
        DO.
          DATA(t9) = abap_true.
          IF t9 = abap_false.
            EXIT.
          ENDIF.
          DATA(t10) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
          t7 = t10.
          DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t11.
          DATA(t12) = CAST zif_lnt_statement_runnable( me->sta ).
          DATA(t13) = CAST zlnt_runtime_arra_c22708faf2e3( t7 ).
          t11 = t12->run( i_r_f634 = t13 ).
          t5 = t11.
          DATA(t14) = VALUE abap_bool( ).
          DATA(t15) = VALUE i( ).
          DATA(t16) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
          t15 = lines( t16->items ).
          DATA(t17) = 0.
          t14 = xsdbool( t15 = t17 ).
          IF t14 = abap_true.
            EXIT.
          ENDIF.
          DATA(t18) = VALUE abap_bool( ).
          DATA(t19) = VALUE i( ).
          DATA(t20) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
          t19 = lines( t20->items ).
          DATA(t21) = 1000.
          t18 = xsdbool( t19 > t21 ).
          IF t18 = abap_true.
            DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            CLEAR t22.
            DATA(t23) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
            DATA(t24) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
            t22 = t23->concat( p0 = t24 ).
            t2 = t22.
          ELSE.
            DATA(t25) = VALUE abap_bool( ).
            DATA(t26) = VALUE i( ).
            DATA(t27) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
            t26 = lines( t27->items ).
            DATA(t28) = 1.
            t25 = xsdbool( t26 = t28 ).
            IF t25 = abap_true.
              DATA(t29) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
              DATA t30 TYPE REF TO zcl_lnt_st_result.
              CLEAR t30.
              DATA(t31) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
              DATA t32 TYPE REF TO object.
              CLEAR t32.
              READ TABLE t31->items INDEX 1 INTO t32.
              t30 ?= t32.
              APPEND t30 TO t29->items.
            ELSE.
              DATA(t33) = VALUE i( ).
              DATA(t34) = CAST zlnt_runtime_arra_c22708faf2e3( t5 ).
              DATA t35 TYPE REF TO zcl_lnt_st_result.
              CLEAR t35.
              DATA t36 TYPE REF TO object.
              CLEAR t36.
              LOOP AT t34->items INTO t36.
                t35 ?= t36.
                DATA(t37) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
                DATA(t38) = CAST zcl_lnt_st_result( t35 ).
                APPEND t38 TO t37->items.
              ENDLOOP.
              DATA(t39) = VALUE i( ).
              DATA(t40) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
              t39 = lines( t40->items ).
              t33 = t39.
            ENDIF.
          ENDIF.
        ENDDO.
      CATCH zlnt_exception_cl_30eec8e8805d INTO t4.
        DATA(t41) = CAST zcl_lnt_builtin_e8b3bd7e( t4->payload ).
        DATA(t42) = VALUE abap_bool( ).
        DATA(t43) = CAST zcl_lnt_builtin_e8b3bd7e( t41 ).
        t42 = xsdbool( t43 IS BOUND AND t43 IS INSTANCE OF zcx_lnt_fail_star_error ).
        IF t42 = abap_true.
          DATA(t44) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
          result = t44.
          RETURN.
        ENDIF.
        DATA t45 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
        CLEAR t45.
        DATA(t46) = CAST zcl_lnt_builtin_e8b3bd7e( t41 ).
        t45 = NEW #( ).
        t45->payload = t46.
        RAISE EXCEPTION t45.
    ENDTRY.
    DATA(t47) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
    result = t47.

  ENDMETHOD.
  METHOD railroad.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/2_statements/combi.ts:444|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD to_str.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/2_statements/combi.ts:448|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD first.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/2_statements/combi.ts:452|.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d68_74cc3058560819.
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
