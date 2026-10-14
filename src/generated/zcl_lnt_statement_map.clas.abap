* TS: src/abap/2_statements/statement_parser.ts:23:1 StatementMap
CLASS zcl_lnt_statement_map DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA map TYPE REF TO zlnt_runtime_map__7946c121f0e1.
    METHODS constructor.
    METHODS lookup IMPORTING i_str TYPE string RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_statement_map IMPLEMENTATION.
  METHOD constructor.
    DATA t1 TYPE REF TO zlnt_runtime_map__7946c121f0e1.
    DATA t2 TYPE REF TO zlnt_runtime_map__7946c121f0e1.
    DATA(t3) = NEW zlnt_runtime_map__7946c121f0e1( ).
    t2 = t3.
    DATA(t4) = t2.
    t1 = t4.
    me->map = t1.
    DATA(t5) = CAST zlnt_runtime_arra_c22708faf2e3( zcl_lnt_artifacts_abap=>get_statements( ) ).
    DATA t6 TYPE REF TO zif_lnt_statement.
    CLEAR t6.
    DATA t7 TYPE REF TO object.
    CLEAR t7.
    LOOP AT t5->items INTO t7.
      t6 ?= t7.
      DATA t8 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t9 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t10 TYPE REF TO zif_lnt_statement_runnable.
      DATA(t11) = t6.
      t10 = t11->get_matcher( ).
      t9 = t10->first( ).
      t8 = t9.
      DATA t12 TYPE abap_bool.
      DATA t13 TYPE i.
      DATA(t14) = t8.
      t13 = lines( t14->items ).
      DATA(t15) = 0.
      t12 = xsdbool( t13 = t15 ).
      IF t12 = abap_true.
        DATA t16 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
        CLEAR t16.
        DATA t17 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
        CLEAR t17.
        DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t18.
        DATA(t19) = abap_true.
        IF t19 = abap_true.
          DATA(t20) = |StatementMap, first must have contents|.
          DATA(t21) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t21->has = abap_true.
          t21->value = t20.
          t18 = t21.
        ELSE.
          DATA t22 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          CLEAR t22.
          t18 = t22.
        ENDIF.
        t17 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t18 ).
        t16 = NEW #( ).
        t16->payload = t17.
        RAISE EXCEPTION t16.
      ENDIF.
      DATA(t23) = t8.
      DATA(t24) = VALUE string( ).
      LOOP AT t23->items INTO t24.
        DATA t25 TYPE abap_bool.
        DATA t26 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA(t27) = me->map.
        DATA(t28) = t24.
        t26 = t27->get( p0 = t28 ).
        t25 = xsdbool( t26 IS BOUND ).
        IF t25 = abap_true.
          DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA(t31) = me->map.
          DATA(t32) = t24.
          t30 = t31->get( p0 = t32 ).
          t29 = t30.
          DATA t33 TYPE REF TO zcl_lnt_shape_1adc9d0c.
          CLEAR t33.
          DATA t34 TYPE REF TO zif_lnt_statement.
          CLEAR t34.
          DATA(t35) = abap_true.
          IF t35 = abap_true.
            DATA(t36) = t6.
            t34 = t36.
          ELSE.
            DATA t37 TYPE REF TO zif_lnt_statement.
            CLEAR t37.
            t34 = t37.
          ENDIF.
          DATA t38 TYPE REF TO zif_lnt_statement_runnable.
          CLEAR t38.
          t33 = NEW zcl_lnt_shape_1adc9d0c( i_statement = t34 i_matcher = t38 ).
          APPEND t33 TO t29->items.
        ELSE.
          DATA t39 TYPE REF TO zlnt_runtime_map__7946c121f0e1.
          CLEAR t39.
          DATA(t40) = me->map.
          DATA(t41) = t24.
          DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CLEAR t42.
          DATA t43 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          DATA t44 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          CREATE OBJECT t44.
          t43 = t44.
          DATA(t45) = t43.
          DATA t46 TYPE REF TO zcl_lnt_shape_1adc9d0c.
          CLEAR t46.
          DATA t47 TYPE REF TO zif_lnt_statement.
          CLEAR t47.
          DATA(t48) = abap_true.
          IF t48 = abap_true.
            DATA(t49) = t6.
            t47 = t49.
          ELSE.
            DATA t50 TYPE REF TO zif_lnt_statement.
            CLEAR t50.
            t47 = t50.
          ENDIF.
          DATA t51 TYPE REF TO zif_lnt_statement_runnable.
          CLEAR t51.
          t46 = NEW zcl_lnt_shape_1adc9d0c( i_statement = t47 i_matcher = t51 ).
          APPEND t46 TO t45->items.
          DATA(t52) = t43.
          t42 = t52.
          t39 = t40->set( p0 = t41 p1 = t42 ).
        ENDIF.
      ENDLOOP.
    ENDLOOP.
  ENDMETHOD.

  METHOD lookup.
    DATA(t1) = i_str.
    DATA t2 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t3.
    DATA(t4) = me->map.
    DATA t5 TYPE string.
    DATA(t6) = t1.
    DATA(t7) = strlen( t6 ).
    t5 = t6.
    IF t5 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t5 TO UPPER CASE.
    ELSE.
      t5 = zlnt_runtime_uppe_91169605024d=>full( t5 ).
    ENDIF.
    t3 = t4->get( p0 = t5 ).
    t2 = t3.
    DATA(t8) = VALUE abap_bool( ).
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t10) = t2.
    t9 = t10.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t12.
    t11 = t12.
    DATA(t13) = VALUE abap_bool( ).
    DATA(t14) = t9.
    IF t14 IS INITIAL.
      t13 = abap_true.
    ENDIF.
    t8 = t13.
    IF t8 = abap_true.
      DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t15.
      result = t15.
      RETURN.
    ENDIF.
    DATA(t16) = VALUE abap_bool( ).
    DATA t17 TYPE REF TO zif_lnt_statement_runnable.
    DATA t18 TYPE REF TO zif_lnt_statement_runnable.
    DATA t19 TYPE REF TO zcl_lnt_shape_1adc9d0c.
    DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t21) = t2.
    t20 = t21.
    DATA t22 TYPE REF TO object.
    CLEAR t22.
    READ TABLE t20->items INDEX 1 INTO t22.
    t19 ?= t22.
    t18 = t19->matcher.
    t17 = t18.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t24.
    t23 = t24.
    DATA(t25) = VALUE abap_bool( ).
    DATA(t26) = t17.
    IF t26 IS INITIAL.
      t25 = abap_true.
    ENDIF.
    t16 = t25.
    IF t16 = abap_true.
      DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t28) = t2.
      t27 = t28.
      DATA t29 TYPE REF TO zcl_lnt_shape_1adc9d0c.
      CLEAR t29.
      DATA t30 TYPE REF TO object.
      CLEAR t30.
      LOOP AT t27->items INTO t30.
        t29 ?= t30.
        DATA(t31) = t29.
        DATA t32 TYPE REF TO zif_lnt_statement_runnable.
        CLEAR t32.
        DATA(t33) = abap_true.
        IF t33 = abap_true.
          DATA t34 TYPE REF TO zif_lnt_statement_runnable.
          DATA t35 TYPE REF TO zif_lnt_statement.
          DATA(t36) = t29.
          t35 = t36->statement.
          t34 = t35->get_matcher( ).
          t32 = t34.
        ELSE.
          DATA t37 TYPE REF TO zif_lnt_statement_runnable.
          CLEAR t37.
          t32 = t37.
        ENDIF.
        t31->matcher = t32.
      ENDLOOP.
    ENDIF.
    DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t39) = t2.
    t38 = t39.
    result = t38.

  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d342_e6333b069746.
  ENDMETHOD.
ENDCLASS.
