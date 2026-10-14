* TS: src/abap/2_statements/combi.ts.module module
CLASS zcl_lnt_st_combi_module DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    CLASS-DATA expression_singletons TYPE REF TO zlnt_runtime_map__be9b74e2658e.
    CLASS-DATA string_singletons TYPE REF TO zlnt_runtime_map__e0d0c31d82d4.
    CLASS-DATA also_in_namespace TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLASS-METHODS lang_version_ordinal IMPORTING i_v TYPE string RETURNING VALUE(result) TYPE i.
    CLASS-METHODS str IMPORTING i_s TYPE string RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    CLASS-METHODS regex IMPORTING i_r_f634 TYPE REF TO zlnt_runtime_rege_5a210f82384e RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    CLASS-METHODS tok IMPORTING i_t TYPE REF TO zlnt_runtime_clas_a39833db3295 RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    CLASS-METHODS map_input IMPORTING i_s TYPE REF TO zlnt_runtime_dyna_a429568d5be8 RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    CLASS-METHODS seq IMPORTING i_first TYPE REF TO zlnt_runtime_dyna_a429568d5be8 i_second TYPE REF TO zlnt_runtime_dyna_a429568d5be8 i_rest TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    CLASS-METHODS alt IMPORTING i_first TYPE REF TO zlnt_runtime_dyna_a429568d5be8 i_second TYPE REF TO zlnt_runtime_dyna_a429568d5be8 i_rest TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    CLASS-METHODS alt_prio IMPORTING i_first TYPE REF TO zlnt_runtime_dyna_a429568d5be8 i_second TYPE REF TO zlnt_runtime_dyna_a429568d5be8 i_rest TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    CLASS-METHODS opt IMPORTING i_first TYPE REF TO zlnt_runtime_dyna_a429568d5be8 RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    CLASS-METHODS opt_prio IMPORTING i_first TYPE REF TO zlnt_runtime_dyna_a429568d5be8 RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    CLASS-METHODS per IMPORTING i_first TYPE REF TO zlnt_runtime_dyna_a429568d5be8 i_second TYPE REF TO zlnt_runtime_dyna_a429568d5be8 i_rest TYPE REF TO zlnt_runtime_arra_c22708faf2e3 RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    CLASS-METHODS star IMPORTING i_first TYPE REF TO zlnt_runtime_dyna_a429568d5be8 RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    CLASS-METHODS star_prio IMPORTING i_first TYPE REF TO zlnt_runtime_dyna_a429568d5be8 RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    CLASS-METHODS plus IMPORTING i_first TYPE REF TO zlnt_runtime_dyna_a429568d5be8 RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    CLASS-METHODS plus_prio IMPORTING i_first TYPE REF TO zlnt_runtime_dyna_a429568d5be8 RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    CLASS-METHODS input_to_release IMPORTING i_version_or_release TYPE REF TO zlnt_runtime_dyna_a429568d5be8 RETURNING VALUE(result) TYPE REF TO zcl_lnt_abap_release.
    CLASS-METHODS ver IMPORTING i_version_or_release TYPE REF TO zlnt_runtime_dyna_a429568d5be8 i_first TYPE REF TO zlnt_runtime_dyna_a429568d5be8 i_opts TYPE REF TO zcl_lnt_iver_options RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    CLASS-METHODS ver_lang IMPORTING i_lang_version TYPE string i_first TYPE REF TO zlnt_runtime_dyna_a429568d5be8 RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    CLASS-METHODS ver_not_lang IMPORTING i_lang_version TYPE string i_first TYPE REF TO zlnt_runtime_dyna_a429568d5be8 RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    CLASS-METHODS fail_combinator RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    CLASS-METHODS stop_before IMPORTING i_t1 TYPE string i_t2 TYPE string RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    CLASS-METHODS stop_before1 IMPORTING i_words TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0 RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    CLASS-DATA zlnt_builtin_init_212d0955f1c7 TYPE abap_bool.
    CLASS-METHODS zlnt_builtin_init_7149bffa9f66.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_combi_module IMPLEMENTATION.
  METHOD lang_version_ordinal.
    IF zcl_lnt_st_combi_module=>zlnt_builtin_init_212d0955f1c7 = abap_false.
      zcl_lnt_st_combi_module=>zlnt_builtin_init_7149bffa9f66( ).
    ENDIF.
    DATA(t1) = i_v.
    DATA t2 TYPE abap_bool.
    DATA(t3) = t1.
    DATA(t4) = |KeyUser|.
    t2 = xsdbool( t3 = t4 ).
    IF t2 = abap_true.
      DATA(t5) = 0.
      result = t5.
      RETURN.
    ELSE.
      DATA t6 TYPE abap_bool.
      DATA(t7) = t1.
      DATA(t8) = |Cloud|.
      t6 = xsdbool( t7 = t8 ).
      IF t6 = abap_true.
        DATA(t9) = 1.
        result = t9.
        RETURN.
      ELSE.
        DATA t10 TYPE abap_bool.
        DATA(t11) = t1.
        DATA(t12) = |Normal|.
        t10 = xsdbool( t11 = t12 ).
        IF t10 = abap_true.
          DATA(t13) = 2.
          result = t13.
          RETURN.
        ELSE.
          DATA(t14) = 2.
          result = t14.
          RETURN.
        ENDIF.
      ENDIF.
    ENDIF.
  ENDMETHOD.
  METHOD str.
    IF zcl_lnt_st_combi_module=>zlnt_builtin_init_212d0955f1c7 = abap_false.
      zcl_lnt_st_combi_module=>zlnt_builtin_init_7149bffa9f66( ).
    ENDIF.
    DATA(t1) = i_s.
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = VALUE abap_bool( ).
    DATA(t4) = VALUE i( ).
    DATA(t5) = t1.
    DATA(t6) = | |.
    DATA(t7) = strlen( t5 ).
    IF t6 IS INITIAL.
      t4 = 0.
    ELSE.
      FIND t6 IN t5 MATCH OFFSET t4.
      IF sy-subrc <> 0.
        t4 = -1.
      ENDIF.
    ENDIF.
    DATA(t8) = 0.
    t3 = xsdbool( t4 > t8 ).
    t2 = t3.
    IF t3 = abap_false.
      DATA(t9) = VALUE abap_bool( ).
      DATA(t10) = VALUE i( ).
      DATA(t11) = t1.
      DATA(t12) = |-|.
      DATA(t13) = strlen( t11 ).
      IF t12 IS INITIAL.
        t10 = 0.
      ELSE.
        FIND t12 IN t11 MATCH OFFSET t10.
        IF sy-subrc <> 0.
          t10 = -1.
        ENDIF.
      ENDIF.
      DATA(t14) = 0.
      t9 = xsdbool( t10 > t14 ).
      t2 = t9.
    ENDIF.
    IF t2 = abap_true.
      DATA t15 TYPE REF TO zcl_lnt_word_sequence.
      DATA(t16) = t1.
      t15 = NEW zcl_lnt_word_sequence( i_stri = t16 ).
      result = t15.
      RETURN.
    ELSE.
      DATA t17 TYPE REF TO zcl_lnt_word.
      DATA(t18) = t1.
      t17 = NEW zcl_lnt_word( i_s = t18 ).
      result = t17.

    ENDIF.
  ENDMETHOD.
  METHOD regex.
    IF zcl_lnt_st_combi_module=>zlnt_builtin_init_212d0955f1c7 = abap_false.
      zcl_lnt_st_combi_module=>zlnt_builtin_init_7149bffa9f66( ).
    ENDIF.
    DATA(t1) = CAST zlnt_runtime_rege_5a210f82384e( i_r_f634 ).
    DATA t2 TYPE REF TO zcl_lnt_regex.
    DATA(t3) = CAST zlnt_runtime_rege_5a210f82384e( t1 ).
    t2 = NEW zcl_lnt_regex( i_r_f634 = t3 ).
    result = t2.

  ENDMETHOD.
  METHOD tok.
    IF zcl_lnt_st_combi_module=>zlnt_builtin_init_212d0955f1c7 = abap_false.
      zcl_lnt_st_combi_module=>zlnt_builtin_init_7149bffa9f66( ).
    ENDIF.
    DATA(t1) = CAST zlnt_runtime_clas_a39833db3295( i_t ).
    DATA t2 TYPE REF TO zcl_lnt_st_token.
    DATA(t3) = CAST zlnt_runtime_clas_a39833db3295( t1 ).
    t2 = NEW zcl_lnt_st_token( i_t = t3 ).
    result = t2.

  ENDMETHOD.
  METHOD map_input.
    IF zcl_lnt_st_combi_module=>zlnt_builtin_init_212d0955f1c7 = abap_false.
      zcl_lnt_st_combi_module=>zlnt_builtin_init_7149bffa9f66( ).
    ENDIF.
    DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( i_s ).
    DATA(t2) = VALUE string( ).
    DATA(t3) = VALUE string( ).
    DATA(t4) = CAST zlnt_runtime_dyna_a429568d5be8( t1 ).
    IF t4 IS BOUND.
      t3 = t4->type_of( ).
    ELSE.
      t3 = `undefined`.
    ENDIF.
    t2 = t3.
    DATA t5 TYPE abap_bool.
    DATA(t6) = t2.
    DATA(t7) = |string|.
    t5 = xsdbool( t6 = t7 ).
    IF t5 = abap_true.
      DATA(t8) = VALUE abap_bool( ).
      DATA t9 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t9.
      DATA t10 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t10.
      DATA t11 TYPE REF TO zlnt_runtime_map__e0d0c31d82d4.
      CLEAR t11.
      IF zcl_lnt_st_combi_module=>zlnt_builtin_init_212d0955f1c7 = abap_false.
        zcl_lnt_st_combi_module=>zlnt_builtin_init_7149bffa9f66( ).
      ENDIF.
      t11 = zcl_lnt_st_combi_module=>string_singletons.
      DATA t12 TYPE string.
      DATA(t13) = CAST zlnt_runtime_dyna_a429568d5be8( t1 ).
      t12 = t13->as_string( ).
      t10 = t11->get( p0 = t12 ).
      t9 = t10.
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t15.
      t14 = t15.
      DATA(t16) = VALUE abap_bool( ).
      DATA(t17) = CAST zif_lnt_statement_runnable( t9 ).
      IF t17 IS INITIAL.
        t16 = abap_true.
      ENDIF.
      t8 = t16.
      IF t8 = abap_true.
        DATA t18 TYPE REF TO zlnt_runtime_map__e0d0c31d82d4.
        CLEAR t18.
        DATA t19 TYPE REF TO zlnt_runtime_map__e0d0c31d82d4.
        CLEAR t19.
        IF zcl_lnt_st_combi_module=>zlnt_builtin_init_212d0955f1c7 = abap_false.
          zcl_lnt_st_combi_module=>zlnt_builtin_init_7149bffa9f66( ).
        ENDIF.
        t19 = zcl_lnt_st_combi_module=>string_singletons.
        DATA t20 TYPE string.
        DATA(t21) = CAST zlnt_runtime_dyna_a429568d5be8( t1 ).
        t20 = t21->as_string( ).
        DATA t22 TYPE REF TO zif_lnt_statement_runnable.
        DATA t23 TYPE string.
        DATA(t24) = CAST zlnt_runtime_dyna_a429568d5be8( t1 ).
        t23 = t24->as_string( ).
        t22 = zcl_lnt_st_combi_module=>str( i_s = t23 ).
        t18 = t19->set( p0 = t20 p1 = t22 ).
      ENDIF.
      DATA t25 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t25.
      DATA t26 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t26.
      DATA t27 TYPE REF TO zlnt_runtime_map__e0d0c31d82d4.
      CLEAR t27.
      IF zcl_lnt_st_combi_module=>zlnt_builtin_init_212d0955f1c7 = abap_false.
        zcl_lnt_st_combi_module=>zlnt_builtin_init_7149bffa9f66( ).
      ENDIF.
      t27 = zcl_lnt_st_combi_module=>string_singletons.
      DATA t28 TYPE string.
      DATA(t29) = CAST zlnt_runtime_dyna_a429568d5be8( t1 ).
      t28 = t29->as_string( ).
      t26 = t27->get( p0 = t28 ).
      t25 = t26.
      result = t25.
      RETURN.
    ELSE.
      DATA t30 TYPE abap_bool.
      DATA(t31) = t2.
      DATA(t32) = |function|.
      t30 = xsdbool( t31 = t32 ).
      IF t30 = abap_true.
        DATA t33 TYPE string.
        DATA t34 TYPE string.
        DATA t35 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        DATA(t36) = CAST zlnt_runtime_dyna_a429568d5be8( t1 ).
        t35 = t36->as_classvalue( ).
        t34 = t35->name.
        t33 = t34.
        DATA(t37) = VALUE abap_bool( ).
        DATA t38 TYPE REF TO zcl_lnt_expression.
        CLEAR t38.
        DATA t39 TYPE REF TO zcl_lnt_expression.
        CLEAR t39.
        DATA t40 TYPE REF TO zlnt_runtime_map__be9b74e2658e.
        CLEAR t40.
        IF zcl_lnt_st_combi_module=>zlnt_builtin_init_212d0955f1c7 = abap_false.
          zcl_lnt_st_combi_module=>zlnt_builtin_init_7149bffa9f66( ).
        ENDIF.
        t40 = zcl_lnt_st_combi_module=>expression_singletons.
        DATA(t41) = t33.
        t39 = t40->get( p0 = t41 ).
        t38 = t39.
        DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t43.
        t42 = t43.
        DATA(t44) = VALUE abap_bool( ).
        DATA(t45) = CAST zcl_lnt_expression( t38 ).
        IF t45 IS INITIAL.
          t44 = abap_true.
        ENDIF.
        t37 = t44.
        IF t37 = abap_true.
          DATA t46 TYPE REF TO zlnt_runtime_map__be9b74e2658e.
          CLEAR t46.
          DATA t47 TYPE REF TO zlnt_runtime_map__be9b74e2658e.
          CLEAR t47.
          IF zcl_lnt_st_combi_module=>zlnt_builtin_init_212d0955f1c7 = abap_false.
            zcl_lnt_st_combi_module=>zlnt_builtin_init_7149bffa9f66( ).
          ENDIF.
          t47 = zcl_lnt_st_combi_module=>expression_singletons.
          DATA(t48) = t33.
          DATA t49 TYPE REF TO zcl_lnt_expression.
          DATA t50 TYPE REF TO zlnt_runtime_clas_a39833db3295.
          DATA(t51) = CAST zlnt_runtime_dyna_a429568d5be8( t1 ).
          t50 = t51->as_classvalue( ).
          DATA t52 TYPE REF TO object.
          t52 = zlnt_runtime_clas_c216c6067abd=>new( p0 = t50 ).
          t49 ?= t52.
          t46 = t47->set( p0 = t48 p1 = t49 ).
        ENDIF.
        DATA t53 TYPE REF TO zcl_lnt_expression.
        CLEAR t53.
        DATA t54 TYPE REF TO zcl_lnt_expression.
        CLEAR t54.
        DATA t55 TYPE REF TO zlnt_runtime_map__be9b74e2658e.
        CLEAR t55.
        IF zcl_lnt_st_combi_module=>zlnt_builtin_init_212d0955f1c7 = abap_false.
          zcl_lnt_st_combi_module=>zlnt_builtin_init_7149bffa9f66( ).
        ENDIF.
        t55 = zcl_lnt_st_combi_module=>expression_singletons.
        DATA(t56) = t33.
        t54 = t55->get( p0 = t56 ).
        t53 = t54.
        result = t53.
        RETURN.
      ELSE.
        DATA t57 TYPE REF TO zif_lnt_statement_runnable.
        DATA(t58) = CAST zlnt_runtime_dyna_a429568d5be8( t1 ).
        DATA t59 TYPE REF TO object.
        t59 = t58->as_ref( ).
        t57 ?= t59.
        result = t57.
        RETURN.
      ENDIF.
    ENDIF.
  ENDMETHOD.
  METHOD seq.
    IF zcl_lnt_st_combi_module=>zlnt_builtin_init_212d0955f1c7 = abap_false.
      zcl_lnt_st_combi_module=>zlnt_builtin_init_7149bffa9f66( ).
    ENDIF.
    DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( i_first ).
    DATA(t2) = CAST zlnt_runtime_dyna_a429568d5be8( i_second ).
    DATA(t3) = CAST zlnt_runtime_arra_c22708faf2e3( i_rest ).
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t7.
    t6 = t7.
    DATA(t8) = CAST zlnt_runtime_arra_c22708faf2e3( t6 ).
    DATA t9 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t10) = CAST zlnt_runtime_dyna_a429568d5be8( t1 ).
    t9 = zcl_lnt_st_combi_module=>map_input( i_s = t10 ).
    APPEND t9 TO t8->items.
    DATA(t11) = CAST zlnt_runtime_arra_c22708faf2e3( t6 ).
    DATA t12 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t13) = CAST zlnt_runtime_dyna_a429568d5be8( t2 ).
    t12 = zcl_lnt_st_combi_module=>map_input( i_s = t13 ).
    APPEND t12 TO t11->items.
    DATA(t14) = CAST zlnt_runtime_arra_c22708faf2e3( t6 ).
    t5 = t14.
    t4 = t5.
    DATA(t15) = VALUE i( ).
    DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t16.
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t18.
    t17 = t18.
    DATA(t19) = CAST zlnt_runtime_arra_c22708faf2e3( t3 ).
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    DATA t21 TYPE REF TO object.
    CLEAR t21.
    LOOP AT t19->items INTO t21.
      t20 ?= t21.
      DATA(t22) = CAST zlnt_runtime_arra_c22708faf2e3( t17 ).
      DATA t23 TYPE REF TO zif_lnt_statement_runnable.
      DATA(t24) = CAST zlnt_runtime_dyna_a429568d5be8( t20 ).
      t23 = zcl_lnt_st_combi_module=>map_input( i_s = t24 ).
      APPEND t23 TO t22->items.
    ENDLOOP.
    DATA(t25) = CAST zlnt_runtime_arra_c22708faf2e3( t17 ).
    t16 = t25.
    DATA t26 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t26.
    DATA t27 TYPE REF TO object.
    CLEAR t27.
    LOOP AT t16->items INTO t27.
      t26 ?= t27.
      DATA(t28) = CAST zlnt_runtime_arra_c22708faf2e3( t4 ).
      DATA(t29) = CAST zif_lnt_statement_runnable( t26 ).
      APPEND t29 TO t28->items.
    ENDLOOP.
    DATA t30 TYPE i.
    DATA(t31) = CAST zlnt_runtime_arra_c22708faf2e3( t4 ).
    t30 = lines( t31->items ).
    t15 = t30.
    DATA t32 TYPE REF TO zcl_lnt_st_sequence.
    DATA(t33) = CAST zlnt_runtime_arra_c22708faf2e3( t4 ).
    t32 = NEW zcl_lnt_st_sequence( i_list = t33 ).
    result = t32.

  ENDMETHOD.
  METHOD alt.
    IF zcl_lnt_st_combi_module=>zlnt_builtin_init_212d0955f1c7 = abap_false.
      zcl_lnt_st_combi_module=>zlnt_builtin_init_7149bffa9f66( ).
    ENDIF.
    DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( i_first ).
    DATA(t2) = CAST zlnt_runtime_dyna_a429568d5be8( i_second ).
    DATA(t3) = CAST zlnt_runtime_arra_c22708faf2e3( i_rest ).
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t7.
    t6 = t7.
    DATA(t8) = CAST zlnt_runtime_arra_c22708faf2e3( t6 ).
    DATA t9 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t10) = CAST zlnt_runtime_dyna_a429568d5be8( t1 ).
    t9 = zcl_lnt_st_combi_module=>map_input( i_s = t10 ).
    APPEND t9 TO t8->items.
    DATA(t11) = CAST zlnt_runtime_arra_c22708faf2e3( t6 ).
    DATA t12 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t13) = CAST zlnt_runtime_dyna_a429568d5be8( t2 ).
    t12 = zcl_lnt_st_combi_module=>map_input( i_s = t13 ).
    APPEND t12 TO t11->items.
    DATA(t14) = CAST zlnt_runtime_arra_c22708faf2e3( t6 ).
    t5 = t14.
    t4 = t5.
    DATA(t15) = VALUE i( ).
    DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t16.
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t18.
    t17 = t18.
    DATA(t19) = CAST zlnt_runtime_arra_c22708faf2e3( t3 ).
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    DATA t21 TYPE REF TO object.
    CLEAR t21.
    LOOP AT t19->items INTO t21.
      t20 ?= t21.
      DATA(t22) = CAST zlnt_runtime_arra_c22708faf2e3( t17 ).
      DATA t23 TYPE REF TO zif_lnt_statement_runnable.
      DATA(t24) = CAST zlnt_runtime_dyna_a429568d5be8( t20 ).
      t23 = zcl_lnt_st_combi_module=>map_input( i_s = t24 ).
      APPEND t23 TO t22->items.
    ENDLOOP.
    DATA(t25) = CAST zlnt_runtime_arra_c22708faf2e3( t17 ).
    t16 = t25.
    DATA t26 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t26.
    DATA t27 TYPE REF TO object.
    CLEAR t27.
    LOOP AT t16->items INTO t27.
      t26 ?= t27.
      DATA(t28) = CAST zlnt_runtime_arra_c22708faf2e3( t4 ).
      DATA(t29) = CAST zif_lnt_statement_runnable( t26 ).
      APPEND t29 TO t28->items.
    ENDLOOP.
    DATA t30 TYPE i.
    DATA(t31) = CAST zlnt_runtime_arra_c22708faf2e3( t4 ).
    t30 = lines( t31->items ).
    t15 = t30.
    DATA t32 TYPE REF TO zcl_lnt_st_alternative.
    DATA(t33) = CAST zlnt_runtime_arra_c22708faf2e3( t4 ).
    t32 = NEW zcl_lnt_st_alternative( i_list = t33 ).
    result = t32.

  ENDMETHOD.
  METHOD alt_prio.
    IF zcl_lnt_st_combi_module=>zlnt_builtin_init_212d0955f1c7 = abap_false.
      zcl_lnt_st_combi_module=>zlnt_builtin_init_7149bffa9f66( ).
    ENDIF.
    DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( i_first ).
    DATA(t2) = CAST zlnt_runtime_dyna_a429568d5be8( i_second ).
    DATA(t3) = CAST zlnt_runtime_arra_c22708faf2e3( i_rest ).
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t7.
    t6 = t7.
    DATA(t8) = CAST zlnt_runtime_arra_c22708faf2e3( t6 ).
    DATA t9 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t10) = CAST zlnt_runtime_dyna_a429568d5be8( t1 ).
    t9 = zcl_lnt_st_combi_module=>map_input( i_s = t10 ).
    APPEND t9 TO t8->items.
    DATA(t11) = CAST zlnt_runtime_arra_c22708faf2e3( t6 ).
    DATA t12 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t13) = CAST zlnt_runtime_dyna_a429568d5be8( t2 ).
    t12 = zcl_lnt_st_combi_module=>map_input( i_s = t13 ).
    APPEND t12 TO t11->items.
    DATA(t14) = CAST zlnt_runtime_arra_c22708faf2e3( t6 ).
    t5 = t14.
    t4 = t5.
    DATA(t15) = VALUE i( ).
    DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t16.
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t18.
    t17 = t18.
    DATA(t19) = CAST zlnt_runtime_arra_c22708faf2e3( t3 ).
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    DATA t21 TYPE REF TO object.
    CLEAR t21.
    LOOP AT t19->items INTO t21.
      t20 ?= t21.
      DATA(t22) = CAST zlnt_runtime_arra_c22708faf2e3( t17 ).
      DATA t23 TYPE REF TO zif_lnt_statement_runnable.
      DATA(t24) = CAST zlnt_runtime_dyna_a429568d5be8( t20 ).
      t23 = zcl_lnt_st_combi_module=>map_input( i_s = t24 ).
      APPEND t23 TO t22->items.
    ENDLOOP.
    DATA(t25) = CAST zlnt_runtime_arra_c22708faf2e3( t17 ).
    t16 = t25.
    DATA t26 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t26.
    DATA t27 TYPE REF TO object.
    CLEAR t27.
    LOOP AT t16->items INTO t27.
      t26 ?= t27.
      DATA(t28) = CAST zlnt_runtime_arra_c22708faf2e3( t4 ).
      DATA(t29) = CAST zif_lnt_statement_runnable( t26 ).
      APPEND t29 TO t28->items.
    ENDLOOP.
    DATA t30 TYPE i.
    DATA(t31) = CAST zlnt_runtime_arra_c22708faf2e3( t4 ).
    t30 = lines( t31->items ).
    t15 = t30.
    DATA t32 TYPE REF TO zcl_lnt_alternative_priority.
    DATA(t33) = CAST zlnt_runtime_arra_c22708faf2e3( t4 ).
    t32 = NEW zcl_lnt_alternative_priority( i_list = t33 ).
    result = t32.

  ENDMETHOD.
  METHOD opt.
    IF zcl_lnt_st_combi_module=>zlnt_builtin_init_212d0955f1c7 = abap_false.
      zcl_lnt_st_combi_module=>zlnt_builtin_init_7149bffa9f66( ).
    ENDIF.
    DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( i_first ).
    DATA t2 TYPE REF TO zcl_lnt_st_optional.
    DATA t3 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t4) = CAST zlnt_runtime_dyna_a429568d5be8( t1 ).
    t3 = zcl_lnt_st_combi_module=>map_input( i_s = t4 ).
    t2 = NEW zcl_lnt_st_optional( i_optional = t3 ).
    result = t2.

  ENDMETHOD.
  METHOD opt_prio.
    IF zcl_lnt_st_combi_module=>zlnt_builtin_init_212d0955f1c7 = abap_false.
      zcl_lnt_st_combi_module=>zlnt_builtin_init_7149bffa9f66( ).
    ENDIF.
    DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( i_first ).
    DATA t2 TYPE REF TO zcl_lnt_optional_priority.
    DATA t3 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t4) = CAST zlnt_runtime_dyna_a429568d5be8( t1 ).
    t3 = zcl_lnt_st_combi_module=>map_input( i_s = t4 ).
    t2 = NEW zcl_lnt_optional_priority( i_optional = t3 ).
    result = t2.

  ENDMETHOD.
  METHOD per.
    IF zcl_lnt_st_combi_module=>zlnt_builtin_init_212d0955f1c7 = abap_false.
      zcl_lnt_st_combi_module=>zlnt_builtin_init_7149bffa9f66( ).
    ENDIF.
    DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( i_first ).
    DATA(t2) = CAST zlnt_runtime_dyna_a429568d5be8( i_second ).
    DATA(t3) = CAST zlnt_runtime_arra_c22708faf2e3( i_rest ).
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t5 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t7.
    t6 = t7.
    DATA(t8) = CAST zlnt_runtime_arra_c22708faf2e3( t6 ).
    DATA t9 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t10) = CAST zlnt_runtime_dyna_a429568d5be8( t1 ).
    t9 = zcl_lnt_st_combi_module=>map_input( i_s = t10 ).
    APPEND t9 TO t8->items.
    DATA(t11) = CAST zlnt_runtime_arra_c22708faf2e3( t6 ).
    DATA t12 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t13) = CAST zlnt_runtime_dyna_a429568d5be8( t2 ).
    t12 = zcl_lnt_st_combi_module=>map_input( i_s = t13 ).
    APPEND t12 TO t11->items.
    DATA(t14) = CAST zlnt_runtime_arra_c22708faf2e3( t6 ).
    t5 = t14.
    t4 = t5.
    DATA(t15) = VALUE i( ).
    DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CLEAR t16.
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t18.
    t17 = t18.
    DATA(t19) = CAST zlnt_runtime_arra_c22708faf2e3( t3 ).
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    DATA t21 TYPE REF TO object.
    CLEAR t21.
    LOOP AT t19->items INTO t21.
      t20 ?= t21.
      DATA(t22) = CAST zlnt_runtime_arra_c22708faf2e3( t17 ).
      DATA t23 TYPE REF TO zif_lnt_statement_runnable.
      DATA(t24) = CAST zlnt_runtime_dyna_a429568d5be8( t20 ).
      t23 = zcl_lnt_st_combi_module=>map_input( i_s = t24 ).
      APPEND t23 TO t22->items.
    ENDLOOP.
    DATA(t25) = CAST zlnt_runtime_arra_c22708faf2e3( t17 ).
    t16 = t25.
    DATA t26 TYPE REF TO zif_lnt_statement_runnable.
    CLEAR t26.
    DATA t27 TYPE REF TO object.
    CLEAR t27.
    LOOP AT t16->items INTO t27.
      t26 ?= t27.
      DATA(t28) = CAST zlnt_runtime_arra_c22708faf2e3( t4 ).
      DATA(t29) = CAST zif_lnt_statement_runnable( t26 ).
      APPEND t29 TO t28->items.
    ENDLOOP.
    DATA t30 TYPE i.
    DATA(t31) = CAST zlnt_runtime_arra_c22708faf2e3( t4 ).
    t30 = lines( t31->items ).
    t15 = t30.
    DATA t32 TYPE REF TO zcl_lnt_permutation.
    DATA(t33) = CAST zlnt_runtime_arra_c22708faf2e3( t4 ).
    t32 = NEW zcl_lnt_permutation( i_list = t33 ).
    result = t32.

  ENDMETHOD.
  METHOD star.
    IF zcl_lnt_st_combi_module=>zlnt_builtin_init_212d0955f1c7 = abap_false.
      zcl_lnt_st_combi_module=>zlnt_builtin_init_7149bffa9f66( ).
    ENDIF.
    DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( i_first ).
    DATA t2 TYPE REF TO zcl_lnt_st_star.
    DATA t3 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t4) = CAST zlnt_runtime_dyna_a429568d5be8( t1 ).
    t3 = zcl_lnt_st_combi_module=>map_input( i_s = t4 ).
    t2 = NEW zcl_lnt_st_star( i_sta = t3 ).
    result = t2.

  ENDMETHOD.
  METHOD star_prio.
    IF zcl_lnt_st_combi_module=>zlnt_builtin_init_212d0955f1c7 = abap_false.
      zcl_lnt_st_combi_module=>zlnt_builtin_init_7149bffa9f66( ).
    ENDIF.
    DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( i_first ).
    DATA t2 TYPE REF TO zcl_lnt_star_priority.
    DATA t3 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t4) = CAST zlnt_runtime_dyna_a429568d5be8( t1 ).
    t3 = zcl_lnt_st_combi_module=>map_input( i_s = t4 ).
    t2 = NEW zcl_lnt_star_priority( i_sta = t3 ).
    result = t2.

  ENDMETHOD.
  METHOD plus.
    IF zcl_lnt_st_combi_module=>zlnt_builtin_init_212d0955f1c7 = abap_false.
      zcl_lnt_st_combi_module=>zlnt_builtin_init_7149bffa9f66( ).
    ENDIF.
    DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( i_first ).
    DATA t2 TYPE REF TO zcl_lnt_st_plus.
    DATA t3 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t4) = CAST zlnt_runtime_dyna_a429568d5be8( t1 ).
    t3 = zcl_lnt_st_combi_module=>map_input( i_s = t4 ).
    t2 = NEW zcl_lnt_st_plus( i_plu = t3 ).
    result = t2.

  ENDMETHOD.
  METHOD plus_prio.
    IF zcl_lnt_st_combi_module=>zlnt_builtin_init_212d0955f1c7 = abap_false.
      zcl_lnt_st_combi_module=>zlnt_builtin_init_7149bffa9f66( ).
    ENDIF.
    DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( i_first ).
    DATA t2 TYPE REF TO zcl_lnt_plus_priority.
    DATA t3 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t4) = CAST zlnt_runtime_dyna_a429568d5be8( t1 ).
    t3 = zcl_lnt_st_combi_module=>map_input( i_s = t4 ).
    t2 = NEW zcl_lnt_plus_priority( i_plu = t3 ).
    result = t2.

  ENDMETHOD.
  METHOD input_to_release.
    IF zcl_lnt_st_combi_module=>zlnt_builtin_init_212d0955f1c7 = abap_false.
      zcl_lnt_st_combi_module=>zlnt_builtin_init_7149bffa9f66( ).
    ENDIF.
    DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( i_version_or_release ).
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = VALUE string( ).
    DATA(t4) = CAST zlnt_runtime_dyna_a429568d5be8( t1 ).
    IF t4 IS BOUND.
      t3 = t4->type_of( ).
    ELSE.
      t3 = `undefined`.
    ENDIF.
    DATA(t5) = |string|.
    t2 = xsdbool( t3 = t5 ).
    IF t2 = abap_true.
      DATA t6 TYPE REF TO zcl_lnt_abap_release.
      DATA t7 TYPE string.
      DATA(t8) = CAST zlnt_runtime_dyna_a429568d5be8( t1 ).
      t7 = t8->as_string( ).
      t6 = zcl_lnt_version_module=>version_to_abap_release( i_v = t7 ).
      result = t6.
      RETURN.
    ENDIF.
    DATA t9 TYPE REF TO zcl_lnt_abap_release.
    DATA(t10) = CAST zlnt_runtime_dyna_a429568d5be8( t1 ).
    DATA t11 TYPE REF TO object.
    t11 = t10->as_ref( ).
    t9 ?= t11.
    result = t9.

  ENDMETHOD.
  METHOD ver.
    IF zcl_lnt_st_combi_module=>zlnt_builtin_init_212d0955f1c7 = abap_false.
      zcl_lnt_st_combi_module=>zlnt_builtin_init_7149bffa9f66( ).
    ENDIF.
    DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( i_version_or_release ).
    DATA(t2) = CAST zlnt_runtime_dyna_a429568d5be8( i_first ).
    DATA(t3) = CAST zcl_lnt_iver_options( i_opts ).
    DATA(t4) = VALUE abap_bool( ).
    DATA(t5) = CAST zcl_lnt_iver_options( t3 ).
    IF t5 IS INITIAL.
      t4 = abap_true.
    ENDIF.
    IF t4 = abap_true.
      DATA t6 TYPE REF TO zcl_lnt_iver_options.
      CLEAR t6.
      DATA(t7) = abap_true.
      IF t7 = abap_true.
        DATA t8 TYPE REF TO zcl_lnt_iver_options.
        DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t9.
        t8 = NEW zcl_lnt_iver_options( i_also = t9 ).
        t6 = t8.
      ELSE.
        DATA t10 TYPE REF TO zcl_lnt_iver_options.
        CLEAR t10.
        t6 = t10.
      ENDIF.
      t3 = t6.
    ENDIF.
    DATA t11 TYPE REF TO zcl_lnt_vers.
    DATA t12 TYPE REF TO zcl_lnt_abap_release.
    DATA(t13) = CAST zlnt_runtime_dyna_a429568d5be8( t1 ).
    t12 = zcl_lnt_st_combi_module=>input_to_release( i_version_or_release = t13 ).
    DATA t14 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t15) = CAST zlnt_runtime_dyna_a429568d5be8( t2 ).
    t14 = zcl_lnt_st_combi_module=>map_input( i_s = t15 ).
    DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t17 TYPE REF TO zcl_lnt_iver_options.
    DATA(t18) = CAST zcl_lnt_iver_options( t3 ).
    t17 = t18.
    t16 = t17->also.
    t11 = NEW zcl_lnt_vers( i_release_7928 = t12 i_runnable = t14 i_also = t16 ).
    result = t11.

  ENDMETHOD.
  METHOD ver_lang.
    IF zcl_lnt_st_combi_module=>zlnt_builtin_init_212d0955f1c7 = abap_false.
      zcl_lnt_st_combi_module=>zlnt_builtin_init_7149bffa9f66( ).
    ENDIF.
    DATA(t1) = i_lang_version.
    DATA(t2) = CAST zlnt_runtime_dyna_a429568d5be8( i_first ).
    DATA t3 TYPE REF TO zcl_lnt_lang_vers.
    DATA(t4) = t1.
    DATA t5 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t6) = CAST zlnt_runtime_dyna_a429568d5be8( t2 ).
    t5 = zcl_lnt_st_combi_module=>map_input( i_s = t6 ).
    t3 = NEW zcl_lnt_lang_vers( i_lang_version = t4 i_runnable = t5 ).
    result = t3.

  ENDMETHOD.
  METHOD ver_not_lang.
    IF zcl_lnt_st_combi_module=>zlnt_builtin_init_212d0955f1c7 = abap_false.
      zcl_lnt_st_combi_module=>zlnt_builtin_init_7149bffa9f66( ).
    ENDIF.
    DATA(t1) = i_lang_version.
    DATA(t2) = CAST zlnt_runtime_dyna_a429568d5be8( i_first ).
    DATA t3 TYPE REF TO zcl_lnt_lang_vers_not.
    DATA(t4) = t1.
    DATA t5 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t6) = CAST zlnt_runtime_dyna_a429568d5be8( t2 ).
    t5 = zcl_lnt_st_combi_module=>map_input( i_s = t6 ).
    t3 = NEW zcl_lnt_lang_vers_not( i_lang_version = t4 i_runnable = t5 ).
    result = t3.

  ENDMETHOD.
  METHOD fail_combinator.
    IF zcl_lnt_st_combi_module=>zlnt_builtin_init_212d0955f1c7 = abap_false.
      zcl_lnt_st_combi_module=>zlnt_builtin_init_7149bffa9f66( ).
    ENDIF.
    DATA(t1) = NEW zcl_lnt_fail_combinator( ).
    result = t1.

  ENDMETHOD.
  METHOD stop_before.
    IF zcl_lnt_st_combi_module=>zlnt_builtin_init_212d0955f1c7 = abap_false.
      zcl_lnt_st_combi_module=>zlnt_builtin_init_7149bffa9f66( ).
    ENDIF.
    DATA(t1) = i_t1.
    DATA(t2) = i_t2.
    DATA t3 TYPE REF TO zcl_lnt_stop_before2.
    DATA(t4) = t1.
    DATA(t5) = t2.
    t3 = NEW zcl_lnt_stop_before2( i_t1 = t4 i_t2 = t5 ).
    result = t3.

  ENDMETHOD.
  METHOD stop_before1.
    IF zcl_lnt_st_combi_module=>zlnt_builtin_init_212d0955f1c7 = abap_false.
      zcl_lnt_st_combi_module=>zlnt_builtin_init_7149bffa9f66( ).
    ENDIF.
    DATA(t1) = CAST zlnt_runtime_arra_8ecd6afe19e0( i_words ).
    DATA t2 TYPE REF TO zcl_lnt_stop_before1.
    DATA(t3) = CAST zlnt_runtime_arra_8ecd6afe19e0( t1 ).
    t2 = NEW zcl_lnt_stop_before1( i_words = t3 ).
    result = t2.

  ENDMETHOD.
  METHOD zlnt_builtin_init_7149bffa9f66.
    IF zlnt_builtin_init_212d0955f1c7 = abap_true.
      RETURN.
    ENDIF.
    zlnt_builtin_init_212d0955f1c7 = abap_true.
    IF zcl_lnt_st_combi_module=>zlnt_builtin_init_212d0955f1c7 = abap_false.
      zcl_lnt_st_combi_module=>zlnt_builtin_init_7149bffa9f66( ).
    ENDIF.
    DATA(t1) = NEW zlnt_runtime_map__a1006b231250( ).
    zcl_lnt_st_combi_module=>also_in_namespace = t1.
    DATA t2 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_map__a1006b231250.
    CLEAR t3.
    IF zcl_lnt_st_combi_module=>zlnt_builtin_init_212d0955f1c7 = abap_false.
      zcl_lnt_st_combi_module=>zlnt_builtin_init_7149bffa9f66( ).
    ENDIF.
    t3 = zcl_lnt_st_combi_module=>also_in_namespace.
    DATA(t4) = |OpenABAP|.
    DATA(t5) = |OpenABAP|.
    t2 = t3->set( p0 = t4 p1 = t5 ).
    IF zcl_lnt_st_combi_module=>zlnt_builtin_init_212d0955f1c7 = abap_false.
      zcl_lnt_st_combi_module=>zlnt_builtin_init_7149bffa9f66( ).
    ENDIF.
    DATA t6 TYPE REF TO zlnt_runtime_map__be9b74e2658e.
    DATA t7 TYPE REF TO zlnt_runtime_map__be9b74e2658e.
    DATA(t8) = NEW zlnt_runtime_map__be9b74e2658e( ).
    t7 = t8.
    DATA(t9) = CAST zlnt_runtime_map__be9b74e2658e( t7 ).
    t6 = t9.
    zcl_lnt_st_combi_module=>expression_singletons = t6.
    IF zcl_lnt_st_combi_module=>zlnt_builtin_init_212d0955f1c7 = abap_false.
      zcl_lnt_st_combi_module=>zlnt_builtin_init_7149bffa9f66( ).
    ENDIF.
    DATA t10 TYPE REF TO zlnt_runtime_map__e0d0c31d82d4.
    DATA t11 TYPE REF TO zlnt_runtime_map__e0d0c31d82d4.
    DATA(t12) = NEW zlnt_runtime_map__e0d0c31d82d4( ).
    t11 = t12.
    DATA(t13) = CAST zlnt_runtime_map__e0d0c31d82d4( t11 ).
    t10 = t13.
    zcl_lnt_st_combi_module=>string_singletons = t10.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1828_71dc50980f14.
  ENDMETHOD.
ENDCLASS.
