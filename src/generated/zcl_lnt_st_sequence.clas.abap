* TS: src/abap/2_statements/combi.ts:586:1 Sequence
CLASS zcl_lnt_st_sequence DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_st_sequence IMPLEMENTATION.
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
        DATA(t10) = |Sequence, length error|.
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
    DATA(t2) = |src/abap/2_statements/combi.ts:596|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD get_using.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/2_statements/combi.ts:604|.
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
      DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t10.
      t9 = t10.
      DATA(t11) = CAST zlnt_runtime_arra_c22708faf2e3( t9 ).
      DATA(t12) = CAST zcl_lnt_st_result( t5 ).
      APPEND t12 TO t11->items.
      DATA(t13) = CAST zlnt_runtime_arra_c22708faf2e3( t9 ).
      t8 = t13.
      t7 = t8.
      DATA t14 TYPE abap_bool.
      DATA(t15) = abap_true.
      t14 = t15.
      DATA(t16) = CAST zlnt_runtime_arra_c22708faf2e3( me->list ).
      DATA t17 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t17.
      DATA t18 TYPE REF TO object.
      CLEAR t18.
      LOOP AT t16->items INTO t18.
        t17 ?= t18.
        DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t20) = CAST zif_lnt_statement_runnable( t17 ).
        DATA(t21) = CAST zlnt_runtime_arra_c22708faf2e3( t7 ).
        t19 = t20->run( i_r_f634 = t21 ).
        t7 = t19.
        DATA t22 TYPE abap_bool.
        DATA t23 TYPE i.
        DATA(t24) = CAST zlnt_runtime_arra_c22708faf2e3( t7 ).
        t23 = lines( t24->items ).
        DATA(t25) = 0.
        t22 = xsdbool( t23 = t25 ).
        IF t22 = abap_true.
          DATA(t26) = abap_false.
          t14 = t26.
          EXIT.
        ENDIF.
      ENDLOOP.
      DATA t27 TYPE abap_bool.
      DATA(t28) = t14.
      DATA(t29) = abap_true.
      t27 = xsdbool( t28 = t29 ).
      IF t27 = abap_true.
        DATA t30 TYPE abap_bool.
        DATA t31 TYPE i.
        DATA(t32) = CAST zlnt_runtime_arra_c22708faf2e3( t7 ).
        t31 = lines( t32->items ).
        DATA(t33) = 1000.
        t30 = xsdbool( t31 > t33 ).
        IF t30 = abap_true.
          DATA t34 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t35) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
          DATA(t36) = CAST zlnt_runtime_arra_c22708faf2e3( t7 ).
          t34 = t35->concat( p0 = t36 ).
          t2 = t34.
        ELSE.
          DATA t37 TYPE abap_bool.
          DATA t38 TYPE i.
          DATA(t39) = CAST zlnt_runtime_arra_c22708faf2e3( t7 ).
          t38 = lines( t39->items ).
          DATA(t40) = 1.
          t37 = xsdbool( t38 = t40 ).
          IF t37 = abap_true.
            DATA(t41) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
            DATA t42 TYPE REF TO zcl_lnt_st_result.
            DATA(t43) = CAST zlnt_runtime_arra_c22708faf2e3( t7 ).
            DATA t44 TYPE REF TO object.
            CLEAR t44.
            READ TABLE t43->items INDEX 1 INTO t44.
            t42 ?= t44.
            APPEND t42 TO t41->items.
          ELSE.
            DATA(t45) = VALUE i( ).
            DATA(t46) = CAST zlnt_runtime_arra_c22708faf2e3( t7 ).
            DATA t47 TYPE REF TO zcl_lnt_st_result.
            CLEAR t47.
            DATA t48 TYPE REF TO object.
            CLEAR t48.
            LOOP AT t46->items INTO t48.
              t47 ?= t48.
              DATA(t49) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
              DATA(t50) = CAST zcl_lnt_st_result( t47 ).
              APPEND t50 TO t49->items.
            ENDLOOP.
            DATA t51 TYPE i.
            DATA(t52) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
            t51 = lines( t52->items ).
            t45 = t51.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDLOOP.
    DATA(t53) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
    result = t53.
    
  ENDMETHOD.
  METHOD railroad.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/2_statements/combi.ts:637|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD to_str.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/2_statements/combi.ts:642|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD first.
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t2 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t3) = CAST zlnt_runtime_arra_c22708faf2e3( me->list ).
    DATA t4 TYPE REF TO object.
    CLEAR t4.
    READ TABLE t3->items INDEX 1 INTO t4.
    t2 ?= t4.
    t1 = t2->first(  ).
    result = t1.
    
  ENDMETHOD.
  METHOD run_one.
    DATA(t1) = CAST zcl_lnt_st_result( i_x ).
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t3.
    t2 = t3.
    DATA t4 TYPE REF TO zcl_lnt_st_result.
    DATA(t5) = CAST zcl_lnt_st_result( t1 ).
    t4 = t5.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t8 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t9.
    t8 = t9.
    DATA(t10) = CAST zlnt_runtime_arra_c22708faf2e3( t8 ).
    DATA(t11) = CAST zcl_lnt_st_result( t4 ).
    APPEND t11 TO t10->items.
    DATA(t12) = CAST zlnt_runtime_arra_c22708faf2e3( t8 ).
    t7 = t12.
    t6 = t7.
    DATA t13 TYPE abap_bool.
    DATA(t14) = abap_true.
    t13 = t14.
    DATA(t15) = CAST zlnt_runtime_arra_c22708faf2e3( me->list ).
    DATA t16 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t16.
    DATA t17 TYPE REF TO object.
    CLEAR t17.
    LOOP AT t15->items INTO t17.
      t16 ?= t17.
      DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t19) = CAST zif_lnt_statement_runnable( t16 ).
      DATA(t20) = CAST zlnt_runtime_arra_c22708faf2e3( t6 ).
      t18 = t19->run( i_r_f634 = t20 ).
      t6 = t18.
      DATA t21 TYPE abap_bool.
      DATA t22 TYPE i.
      DATA(t23) = CAST zlnt_runtime_arra_c22708faf2e3( t6 ).
      t22 = lines( t23->items ).
      DATA(t24) = 0.
      t21 = xsdbool( t22 = t24 ).
      IF t21 = abap_true.
        DATA(t25) = abap_false.
        t13 = t25.
        EXIT.
      ENDIF.
    ENDLOOP.
    DATA t26 TYPE abap_bool.
    DATA(t27) = t13.
    DATA(t28) = abap_true.
    t26 = xsdbool( t27 = t28 ).
    IF t26 = abap_true.
      DATA t29 TYPE abap_bool.
      DATA t30 TYPE i.
      DATA(t31) = CAST zlnt_runtime_arra_c22708faf2e3( t6 ).
      t30 = lines( t31->items ).
      DATA(t32) = 1000.
      t29 = xsdbool( t30 > t32 ).
      IF t29 = abap_true.
        DATA t33 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t34) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
        DATA(t35) = CAST zlnt_runtime_arra_c22708faf2e3( t6 ).
        t33 = t34->concat( p0 = t35 ).
        t2 = t33.
      ELSE.
        DATA t36 TYPE abap_bool.
        DATA t37 TYPE i.
        DATA(t38) = CAST zlnt_runtime_arra_c22708faf2e3( t6 ).
        t37 = lines( t38->items ).
        DATA(t39) = 1.
        t36 = xsdbool( t37 = t39 ).
        IF t36 = abap_true.
          DATA(t40) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
          DATA t41 TYPE REF TO zcl_lnt_st_result.
          DATA(t42) = CAST zlnt_runtime_arra_c22708faf2e3( t6 ).
          DATA t43 TYPE REF TO object.
          CLEAR t43.
          READ TABLE t42->items INDEX 1 INTO t43.
          t41 ?= t43.
          APPEND t41 TO t40->items.
        ELSE.
          DATA(t44) = VALUE i( ).
          DATA(t45) = CAST zlnt_runtime_arra_c22708faf2e3( t6 ).
          DATA t46 TYPE REF TO zcl_lnt_st_result.
          CLEAR t46.
          DATA t47 TYPE REF TO object.
          CLEAR t47.
          LOOP AT t45->items INTO t47.
            t46 ?= t47.
            DATA(t48) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
            DATA(t49) = CAST zcl_lnt_st_result( t46 ).
            APPEND t49 TO t48->items.
          ENDLOOP.
          DATA t50 TYPE i.
          DATA(t51) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
          t50 = lines( t51->items ).
          t44 = t50.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA(t52) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
    result = t52.
    
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d72_ee86dd67fdab30.
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
