* TS: src/abap/2_statements/combi.ts.module module
CLASS zcl_lnt_st_combi_module DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
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
    CLASS-METHODS fail_star RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    CLASS-METHODS stop_before IMPORTING i_t1 TYPE string i_t2 TYPE string RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    CLASS-METHODS stop_before1 IMPORTING i_words TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0 RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    CLASS-DATA zlnt_builtin_init_212d0955f1c7 TYPE abap_bool.
    CLASS-METHODS zlnt_builtin_init_7149bffa9f66.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
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
    DATA(t4) = |KeyUser|.
    t2 = xsdbool( t1 = t4 ).
    IF t2 = abap_true.
      result = 0.
      RETURN.
    ELSE.
      DATA t6 TYPE abap_bool.
      DATA(t8) = |Cloud|.
      t6 = xsdbool( t1 = t8 ).
      IF t6 = abap_true.
        result = 1.
        RETURN.
      ELSE.
        DATA t10 TYPE abap_bool.
        DATA(t12) = |Normal|.
        t10 = xsdbool( t1 = t12 ).
        IF t10 = abap_true.
          result = 2.
          RETURN.
        ELSE.
          result = 2.
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
    DATA(t6) = | |.
    DATA(t7) = strlen( t1 ).
    IF t6 IS INITIAL.
      t4 = 0.
    ELSE.
      FIND t6 IN t1 MATCH OFFSET t4.
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
      DATA(t12) = |-|.
      DATA(t13) = strlen( t1 ).
      IF t12 IS INITIAL.
        t10 = 0.
      ELSE.
        FIND t12 IN t1 MATCH OFFSET t10.
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
      t15 = NEW zcl_lnt_word_sequence( i_stri = t1 ).
      result = t15.
      RETURN.
    ELSE.
      DATA t17 TYPE REF TO zcl_lnt_word.
      t17 = NEW zcl_lnt_word( i_s = t1 ).
      result = t17.

    ENDIF.
  ENDMETHOD.

  METHOD regex.
    IF zcl_lnt_st_combi_module=>zlnt_builtin_init_212d0955f1c7 = abap_false.
      zcl_lnt_st_combi_module=>zlnt_builtin_init_7149bffa9f66( ).
    ENDIF.
    DATA t2 TYPE REF TO zcl_lnt_regex.
    DATA(t3) = i_r_f634.
    t2 = NEW zcl_lnt_regex( i_r_f634 = t3 ).
    result = t2.

  ENDMETHOD.

  METHOD tok.
    IF zcl_lnt_st_combi_module=>zlnt_builtin_init_212d0955f1c7 = abap_false.
      zcl_lnt_st_combi_module=>zlnt_builtin_init_7149bffa9f66( ).
    ENDIF.
    DATA t2 TYPE REF TO zcl_lnt_st_token.
    DATA(t3) = i_t.
    t2 = NEW zcl_lnt_st_token( i_t = t3 ).
    result = t2.

  ENDMETHOD.

  METHOD map_input.
    IF zcl_lnt_st_combi_module=>zlnt_builtin_init_212d0955f1c7 = abap_false.
      zcl_lnt_st_combi_module=>zlnt_builtin_init_7149bffa9f66( ).
    ENDIF.
    DATA(t1) = i_s.
    DATA(t2) = VALUE string( ).
    DATA(t3) = VALUE string( ).
    IF t1 IS BOUND.
      t3 = t1->type_of( ).
      IF t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref AND t1->oval IS INSTANCE OF zlnt_runtime_call_776cb4afcfb7.
        t3 = `function`.
      ENDIF.
    ELSE.
      t3 = `undefined`.
    ENDIF.
    t2 = t3.
    DATA t5 TYPE abap_bool.
    DATA(t7) = |string|.
    t5 = xsdbool( t2 = t7 ).
    IF t5 = abap_true.
      DATA(t8) = VALUE abap_bool( ).
      DATA t10 TYPE REF TO zif_lnt_statement_runnable.
      DATA t11 TYPE REF TO zlnt_runtime_map__e0d0c31d82d4.
      IF zcl_lnt_st_combi_module=>zlnt_builtin_init_212d0955f1c7 = abap_false.
        zcl_lnt_st_combi_module=>zlnt_builtin_init_7149bffa9f66( ).
      ENDIF.
      t11 = zcl_lnt_st_combi_module=>string_singletons.
      DATA t12 TYPE string.
      t12 = t1->as_string( ).
      t10 = t11->get( p0 = t12 ).
      DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t8 = xsdbool( t10 IS INITIAL ).
      IF t8 = abap_true.
        DATA t18 TYPE REF TO zlnt_runtime_map__e0d0c31d82d4.
        DATA t19 TYPE REF TO zlnt_runtime_map__e0d0c31d82d4.
        IF zcl_lnt_st_combi_module=>zlnt_builtin_init_212d0955f1c7 = abap_false.
          zcl_lnt_st_combi_module=>zlnt_builtin_init_7149bffa9f66( ).
        ENDIF.
        t19 = zcl_lnt_st_combi_module=>string_singletons.
        DATA t20 TYPE string.
        t20 = t1->as_string( ).
        DATA t22 TYPE REF TO zif_lnt_statement_runnable.
        DATA t23 TYPE string.
        t23 = t1->as_string( ).
        t22 = zcl_lnt_st_combi_module=>str( i_s = t23 ).
        t18 = t19->set( p0 = t20 p1 = t22 ).
      ENDIF.
      DATA t26 TYPE REF TO zif_lnt_statement_runnable.
      DATA t27 TYPE REF TO zlnt_runtime_map__e0d0c31d82d4.
      IF zcl_lnt_st_combi_module=>zlnt_builtin_init_212d0955f1c7 = abap_false.
        zcl_lnt_st_combi_module=>zlnt_builtin_init_7149bffa9f66( ).
      ENDIF.
      t27 = zcl_lnt_st_combi_module=>string_singletons.
      DATA t28 TYPE string.
      t28 = t1->as_string( ).
      t26 = t27->get( p0 = t28 ).
      result = t26.
      RETURN.
    ELSE.
      DATA t30 TYPE abap_bool.
      DATA(t32) = |function|.
      t30 = xsdbool( t2 = t32 ).
      IF t30 = abap_true.
        DATA t33 TYPE string.
        DATA t34 TYPE string.
        DATA t35 TYPE REF TO zlnt_runtime_clas_a39833db3295.
        t35 = t1->as_classvalue( ).
        t34 = t35->name.
        t33 = t34.
        DATA(t37) = VALUE abap_bool( ).
        DATA t39 TYPE REF TO zcl_lnt_expression.
        DATA t40 TYPE REF TO zlnt_runtime_map__be9b74e2658e.
        IF zcl_lnt_st_combi_module=>zlnt_builtin_init_212d0955f1c7 = abap_false.
          zcl_lnt_st_combi_module=>zlnt_builtin_init_7149bffa9f66( ).
        ENDIF.
        t40 = zcl_lnt_st_combi_module=>expression_singletons.
        t39 = t40->get( p0 = t33 ).
        DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t37 = xsdbool( t39 IS INITIAL ).
        IF t37 = abap_true.
          DATA t46 TYPE REF TO zlnt_runtime_map__be9b74e2658e.
          DATA t47 TYPE REF TO zlnt_runtime_map__be9b74e2658e.
          IF zcl_lnt_st_combi_module=>zlnt_builtin_init_212d0955f1c7 = abap_false.
            zcl_lnt_st_combi_module=>zlnt_builtin_init_7149bffa9f66( ).
          ENDIF.
          t47 = zcl_lnt_st_combi_module=>expression_singletons.
          DATA t49 TYPE REF TO zcl_lnt_expression.
          DATA t50 TYPE REF TO zlnt_runtime_clas_a39833db3295.
          t50 = t1->as_classvalue( ).
          DATA t52 TYPE REF TO object.
          t52 = zlnt_runtime_clas_c216c6067abd=>new( p0 = t50 ).
          t49 ?= t52.
          t46 = t47->set( p0 = t33 p1 = t49 ).
        ENDIF.
        DATA t54 TYPE REF TO zcl_lnt_expression.
        DATA t55 TYPE REF TO zlnt_runtime_map__be9b74e2658e.
        IF zcl_lnt_st_combi_module=>zlnt_builtin_init_212d0955f1c7 = abap_false.
          zcl_lnt_st_combi_module=>zlnt_builtin_init_7149bffa9f66( ).
        ENDIF.
        t55 = zcl_lnt_st_combi_module=>expression_singletons.
        t54 = t55->get( p0 = t33 ).
        result = t54.
        RETURN.
      ELSE.
        DATA t57 TYPE REF TO zif_lnt_statement_runnable.
        DATA t59 TYPE REF TO object.
        t59 = t1->as_ref( ).
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
    DATA(t1) = i_first.
    DATA(t2) = i_second.
    DATA(t3) = i_rest.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t7.
    t6 = t7.
    DATA t9 TYPE REF TO zif_lnt_statement_runnable.
    t9 = zcl_lnt_st_combi_module=>map_input( i_s = t1 ).
    t6->load( ).
    APPEND t9 TO t6->items.
    t6->save( ).
    DATA t12 TYPE REF TO zif_lnt_statement_runnable.
    t12 = zcl_lnt_st_combi_module=>map_input( i_s = t2 ).
    t6->load( ).
    APPEND t12 TO t6->items.
    t6->save( ).
    t4 = t6.
    DATA(t15) = VALUE i( ).
    DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t18.
    t17 = t18.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t21 TYPE REF TO object.
    DATA(t22) = VALUE i( ).
    DO.
      t3->load( ).
      IF t22 >= lines( t3->items ).
        EXIT.
      ENDIF.
      CLEAR t21.
      READ TABLE t3->items INDEX t22 + 1 INTO t21.
      t22 = t22 + 1.
      DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t23.
      CLEAR t20.
      IF t21 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t23 ?= t21.
        t20 = t23.
      ELSE.
        IF t21 IS INSTANCE OF zlnt_runtime_clas_a39833db3295.
          DATA t24 TYPE REF TO zlnt_runtime_clas_a39833db3295.
          CLEAR t24.
          t24 ?= t21.
          CLEAR t20.
          IF t24 IS BOUND.
            CREATE OBJECT t20.
            t20->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
            t20->cval = t24.
          ENDIF.
        ELSE.
          CLEAR t20.
          IF t21 IS BOUND.
            DATA t25 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t25.
            DATA t26 TYPE REF TO object.
            CLEAR t26.
            CLEAR t25.
            t26 = t21.
            TRY.
                t20 ?= t26.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t20 IS NOT BOUND.
              TRY.
                  t25 ?= t21.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t25 IS BOUND.
                t20 = t25->source( ).
              ENDIF.
              IF t20 IS NOT BOUND.
                CREATE OBJECT t20.
                t20->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t20->oval = t21.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t28 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t28.
      t28 = zcl_lnt_st_combi_module=>map_input( i_s = t20 ).
      t17->load( ).
      APPEND t28 TO t17->items.
      t17->save( ).
    ENDDO.
    t16 = t17.
    DATA t31 TYPE REF TO zif_lnt_statement_runnable.
    DATA t32 TYPE REF TO object.
    DATA(t33) = VALUE i( ).
    DO.
      t16->load( ).
      IF t33 >= lines( t16->items ).
        EXIT.
      ENDIF.
      CLEAR t32.
      READ TABLE t16->items INDEX t33 + 1 INTO t32.
      t33 = t33 + 1.
      DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t34.
      CLEAR t31.
      IF t32 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t34 ?= t32.
        DATA t35 TYPE REF TO object.
        CLEAR t35.
        t35 = t34->as_ref( ).
        t31 ?= t35.
      ELSE.
        t31 ?= t32.
      ENDIF.
      t4->load( ).
      APPEND t31 TO t4->items.
      t4->save( ).
    ENDDO.
    DATA(t38) = VALUE i( ).
    t4->load( ).
    t38 = lines( t4->items ).
    t15 = t38.
    DATA t40 TYPE REF TO zcl_lnt_st_sequence.
    t40 = NEW zcl_lnt_st_sequence( i_list = t4 ).
    result = t40.

  ENDMETHOD.

  METHOD alt.
    IF zcl_lnt_st_combi_module=>zlnt_builtin_init_212d0955f1c7 = abap_false.
      zcl_lnt_st_combi_module=>zlnt_builtin_init_7149bffa9f66( ).
    ENDIF.
    DATA(t1) = i_first.
    DATA(t2) = i_second.
    DATA(t3) = i_rest.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t7.
    t6 = t7.
    DATA t9 TYPE REF TO zif_lnt_statement_runnable.
    t9 = zcl_lnt_st_combi_module=>map_input( i_s = t1 ).
    t6->load( ).
    APPEND t9 TO t6->items.
    t6->save( ).
    DATA t12 TYPE REF TO zif_lnt_statement_runnable.
    t12 = zcl_lnt_st_combi_module=>map_input( i_s = t2 ).
    t6->load( ).
    APPEND t12 TO t6->items.
    t6->save( ).
    t4 = t6.
    DATA(t15) = VALUE i( ).
    DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t18.
    t17 = t18.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t21 TYPE REF TO object.
    DATA(t22) = VALUE i( ).
    DO.
      t3->load( ).
      IF t22 >= lines( t3->items ).
        EXIT.
      ENDIF.
      CLEAR t21.
      READ TABLE t3->items INDEX t22 + 1 INTO t21.
      t22 = t22 + 1.
      DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t23.
      CLEAR t20.
      IF t21 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t23 ?= t21.
        t20 = t23.
      ELSE.
        IF t21 IS INSTANCE OF zlnt_runtime_clas_a39833db3295.
          DATA t24 TYPE REF TO zlnt_runtime_clas_a39833db3295.
          CLEAR t24.
          t24 ?= t21.
          CLEAR t20.
          IF t24 IS BOUND.
            CREATE OBJECT t20.
            t20->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
            t20->cval = t24.
          ENDIF.
        ELSE.
          CLEAR t20.
          IF t21 IS BOUND.
            DATA t25 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t25.
            DATA t26 TYPE REF TO object.
            CLEAR t26.
            CLEAR t25.
            t26 = t21.
            TRY.
                t20 ?= t26.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t20 IS NOT BOUND.
              TRY.
                  t25 ?= t21.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t25 IS BOUND.
                t20 = t25->source( ).
              ENDIF.
              IF t20 IS NOT BOUND.
                CREATE OBJECT t20.
                t20->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t20->oval = t21.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t28 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t28.
      t28 = zcl_lnt_st_combi_module=>map_input( i_s = t20 ).
      t17->load( ).
      APPEND t28 TO t17->items.
      t17->save( ).
    ENDDO.
    t16 = t17.
    DATA t31 TYPE REF TO zif_lnt_statement_runnable.
    DATA t32 TYPE REF TO object.
    DATA(t33) = VALUE i( ).
    DO.
      t16->load( ).
      IF t33 >= lines( t16->items ).
        EXIT.
      ENDIF.
      CLEAR t32.
      READ TABLE t16->items INDEX t33 + 1 INTO t32.
      t33 = t33 + 1.
      DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t34.
      CLEAR t31.
      IF t32 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t34 ?= t32.
        DATA t35 TYPE REF TO object.
        CLEAR t35.
        t35 = t34->as_ref( ).
        t31 ?= t35.
      ELSE.
        t31 ?= t32.
      ENDIF.
      t4->load( ).
      APPEND t31 TO t4->items.
      t4->save( ).
    ENDDO.
    DATA(t38) = VALUE i( ).
    t4->load( ).
    t38 = lines( t4->items ).
    t15 = t38.
    DATA t40 TYPE REF TO zcl_lnt_st_alternative.
    t40 = NEW zcl_lnt_st_alternative( i_list = t4 ).
    result = t40.

  ENDMETHOD.

  METHOD alt_prio.
    IF zcl_lnt_st_combi_module=>zlnt_builtin_init_212d0955f1c7 = abap_false.
      zcl_lnt_st_combi_module=>zlnt_builtin_init_7149bffa9f66( ).
    ENDIF.
    DATA(t1) = i_first.
    DATA(t2) = i_second.
    DATA(t3) = i_rest.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t7.
    t6 = t7.
    DATA t9 TYPE REF TO zif_lnt_statement_runnable.
    t9 = zcl_lnt_st_combi_module=>map_input( i_s = t1 ).
    t6->load( ).
    APPEND t9 TO t6->items.
    t6->save( ).
    DATA t12 TYPE REF TO zif_lnt_statement_runnable.
    t12 = zcl_lnt_st_combi_module=>map_input( i_s = t2 ).
    t6->load( ).
    APPEND t12 TO t6->items.
    t6->save( ).
    t4 = t6.
    DATA(t15) = VALUE i( ).
    DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t18.
    t17 = t18.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t21 TYPE REF TO object.
    DATA(t22) = VALUE i( ).
    DO.
      t3->load( ).
      IF t22 >= lines( t3->items ).
        EXIT.
      ENDIF.
      CLEAR t21.
      READ TABLE t3->items INDEX t22 + 1 INTO t21.
      t22 = t22 + 1.
      DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t23.
      CLEAR t20.
      IF t21 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t23 ?= t21.
        t20 = t23.
      ELSE.
        IF t21 IS INSTANCE OF zlnt_runtime_clas_a39833db3295.
          DATA t24 TYPE REF TO zlnt_runtime_clas_a39833db3295.
          CLEAR t24.
          t24 ?= t21.
          CLEAR t20.
          IF t24 IS BOUND.
            CREATE OBJECT t20.
            t20->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
            t20->cval = t24.
          ENDIF.
        ELSE.
          CLEAR t20.
          IF t21 IS BOUND.
            DATA t25 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t25.
            DATA t26 TYPE REF TO object.
            CLEAR t26.
            CLEAR t25.
            t26 = t21.
            TRY.
                t20 ?= t26.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t20 IS NOT BOUND.
              TRY.
                  t25 ?= t21.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t25 IS BOUND.
                t20 = t25->source( ).
              ENDIF.
              IF t20 IS NOT BOUND.
                CREATE OBJECT t20.
                t20->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t20->oval = t21.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t28 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t28.
      t28 = zcl_lnt_st_combi_module=>map_input( i_s = t20 ).
      t17->load( ).
      APPEND t28 TO t17->items.
      t17->save( ).
    ENDDO.
    t16 = t17.
    DATA t31 TYPE REF TO zif_lnt_statement_runnable.
    DATA t32 TYPE REF TO object.
    DATA(t33) = VALUE i( ).
    DO.
      t16->load( ).
      IF t33 >= lines( t16->items ).
        EXIT.
      ENDIF.
      CLEAR t32.
      READ TABLE t16->items INDEX t33 + 1 INTO t32.
      t33 = t33 + 1.
      DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t34.
      CLEAR t31.
      IF t32 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t34 ?= t32.
        DATA t35 TYPE REF TO object.
        CLEAR t35.
        t35 = t34->as_ref( ).
        t31 ?= t35.
      ELSE.
        t31 ?= t32.
      ENDIF.
      t4->load( ).
      APPEND t31 TO t4->items.
      t4->save( ).
    ENDDO.
    DATA(t38) = VALUE i( ).
    t4->load( ).
    t38 = lines( t4->items ).
    t15 = t38.
    DATA t40 TYPE REF TO zcl_lnt_alternative_priority.
    t40 = NEW zcl_lnt_alternative_priority( i_list = t4 ).
    result = t40.

  ENDMETHOD.

  METHOD opt.
    IF zcl_lnt_st_combi_module=>zlnt_builtin_init_212d0955f1c7 = abap_false.
      zcl_lnt_st_combi_module=>zlnt_builtin_init_7149bffa9f66( ).
    ENDIF.
    DATA t2 TYPE REF TO zcl_lnt_st_optional.
    DATA t3 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t4) = i_first.
    t3 = zcl_lnt_st_combi_module=>map_input( i_s = t4 ).
    t2 = NEW zcl_lnt_st_optional( i_optional = t3 ).
    result = t2.

  ENDMETHOD.

  METHOD opt_prio.
    IF zcl_lnt_st_combi_module=>zlnt_builtin_init_212d0955f1c7 = abap_false.
      zcl_lnt_st_combi_module=>zlnt_builtin_init_7149bffa9f66( ).
    ENDIF.
    DATA t2 TYPE REF TO zcl_lnt_optional_priority.
    DATA t3 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t4) = i_first.
    t3 = zcl_lnt_st_combi_module=>map_input( i_s = t4 ).
    t2 = NEW zcl_lnt_optional_priority( i_optional = t3 ).
    result = t2.

  ENDMETHOD.

  METHOD per.
    IF zcl_lnt_st_combi_module=>zlnt_builtin_init_212d0955f1c7 = abap_false.
      zcl_lnt_st_combi_module=>zlnt_builtin_init_7149bffa9f66( ).
    ENDIF.
    DATA(t1) = i_first.
    DATA(t2) = i_second.
    DATA(t3) = i_rest.
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t7.
    t6 = t7.
    DATA t9 TYPE REF TO zif_lnt_statement_runnable.
    t9 = zcl_lnt_st_combi_module=>map_input( i_s = t1 ).
    t6->load( ).
    APPEND t9 TO t6->items.
    t6->save( ).
    DATA t12 TYPE REF TO zif_lnt_statement_runnable.
    t12 = zcl_lnt_st_combi_module=>map_input( i_s = t2 ).
    t6->load( ).
    APPEND t12 TO t6->items.
    t6->save( ).
    t4 = t6.
    DATA(t15) = VALUE i( ).
    DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t18.
    t17 = t18.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t21 TYPE REF TO object.
    DATA(t22) = VALUE i( ).
    DO.
      t3->load( ).
      IF t22 >= lines( t3->items ).
        EXIT.
      ENDIF.
      CLEAR t21.
      READ TABLE t3->items INDEX t22 + 1 INTO t21.
      t22 = t22 + 1.
      DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t23.
      CLEAR t20.
      IF t21 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t23 ?= t21.
        t20 = t23.
      ELSE.
        IF t21 IS INSTANCE OF zlnt_runtime_clas_a39833db3295.
          DATA t24 TYPE REF TO zlnt_runtime_clas_a39833db3295.
          CLEAR t24.
          t24 ?= t21.
          CLEAR t20.
          IF t24 IS BOUND.
            CREATE OBJECT t20.
            t20->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
            t20->cval = t24.
          ENDIF.
        ELSE.
          CLEAR t20.
          IF t21 IS BOUND.
            DATA t25 TYPE REF TO zlnt_view_storage_74017ca272ac.
            CLEAR t25.
            DATA t26 TYPE REF TO object.
            CLEAR t26.
            CLEAR t25.
            t26 = t21.
            TRY.
                t20 ?= t26.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t20 IS NOT BOUND.
              TRY.
                  t25 ?= t21.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t25 IS BOUND.
                t20 = t25->source( ).
              ENDIF.
              IF t20 IS NOT BOUND.
                CREATE OBJECT t20.
                t20->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t20->oval = t21.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t28 TYPE REF TO zif_lnt_statement_runnable.
      CLEAR t28.
      t28 = zcl_lnt_st_combi_module=>map_input( i_s = t20 ).
      t17->load( ).
      APPEND t28 TO t17->items.
      t17->save( ).
    ENDDO.
    t16 = t17.
    DATA t31 TYPE REF TO zif_lnt_statement_runnable.
    DATA t32 TYPE REF TO object.
    DATA(t33) = VALUE i( ).
    DO.
      t16->load( ).
      IF t33 >= lines( t16->items ).
        EXIT.
      ENDIF.
      CLEAR t32.
      READ TABLE t16->items INDEX t33 + 1 INTO t32.
      t33 = t33 + 1.
      DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t34.
      CLEAR t31.
      IF t32 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t34 ?= t32.
        DATA t35 TYPE REF TO object.
        CLEAR t35.
        t35 = t34->as_ref( ).
        t31 ?= t35.
      ELSE.
        t31 ?= t32.
      ENDIF.
      t4->load( ).
      APPEND t31 TO t4->items.
      t4->save( ).
    ENDDO.
    DATA(t38) = VALUE i( ).
    t4->load( ).
    t38 = lines( t4->items ).
    t15 = t38.
    DATA t40 TYPE REF TO zcl_lnt_permutation.
    t40 = NEW zcl_lnt_permutation( i_list = t4 ).
    result = t40.

  ENDMETHOD.

  METHOD star.
    IF zcl_lnt_st_combi_module=>zlnt_builtin_init_212d0955f1c7 = abap_false.
      zcl_lnt_st_combi_module=>zlnt_builtin_init_7149bffa9f66( ).
    ENDIF.
    DATA t2 TYPE REF TO zcl_lnt_st_star.
    DATA t3 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t4) = i_first.
    t3 = zcl_lnt_st_combi_module=>map_input( i_s = t4 ).
    t2 = NEW zcl_lnt_st_star( i_sta = t3 ).
    result = t2.

  ENDMETHOD.

  METHOD star_prio.
    IF zcl_lnt_st_combi_module=>zlnt_builtin_init_212d0955f1c7 = abap_false.
      zcl_lnt_st_combi_module=>zlnt_builtin_init_7149bffa9f66( ).
    ENDIF.
    DATA t2 TYPE REF TO zcl_lnt_star_priority.
    DATA t3 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t4) = i_first.
    t3 = zcl_lnt_st_combi_module=>map_input( i_s = t4 ).
    t2 = NEW zcl_lnt_star_priority( i_sta = t3 ).
    result = t2.

  ENDMETHOD.

  METHOD plus.
    IF zcl_lnt_st_combi_module=>zlnt_builtin_init_212d0955f1c7 = abap_false.
      zcl_lnt_st_combi_module=>zlnt_builtin_init_7149bffa9f66( ).
    ENDIF.
    DATA t2 TYPE REF TO zcl_lnt_st_plus.
    DATA t3 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t4) = i_first.
    t3 = zcl_lnt_st_combi_module=>map_input( i_s = t4 ).
    t2 = NEW zcl_lnt_st_plus( i_plu = t3 ).
    result = t2.

  ENDMETHOD.

  METHOD plus_prio.
    IF zcl_lnt_st_combi_module=>zlnt_builtin_init_212d0955f1c7 = abap_false.
      zcl_lnt_st_combi_module=>zlnt_builtin_init_7149bffa9f66( ).
    ENDIF.
    DATA t2 TYPE REF TO zcl_lnt_plus_priority.
    DATA t3 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t4) = i_first.
    t3 = zcl_lnt_st_combi_module=>map_input( i_s = t4 ).
    t2 = NEW zcl_lnt_plus_priority( i_plu = t3 ).
    result = t2.

  ENDMETHOD.

  METHOD input_to_release.
    IF zcl_lnt_st_combi_module=>zlnt_builtin_init_212d0955f1c7 = abap_false.
      zcl_lnt_st_combi_module=>zlnt_builtin_init_7149bffa9f66( ).
    ENDIF.
    DATA(t1) = i_version_or_release.
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = VALUE string( ).
    IF t1 IS BOUND.
      t3 = t1->type_of( ).
      IF t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref AND t1->oval IS INSTANCE OF zlnt_runtime_call_776cb4afcfb7.
        t3 = `function`.
      ENDIF.
    ELSE.
      t3 = `undefined`.
    ENDIF.
    DATA(t5) = |string|.
    t2 = xsdbool( t3 = t5 ).
    IF t2 = abap_true.
      DATA t6 TYPE REF TO zcl_lnt_abap_release.
      DATA(t7) = VALUE string( ).
      t7 = t1->as_string( ).
      t6 = zcl_lnt_version_module=>version_to_abap_release( i_v = t7 ).
      result = t6.
      RETURN.
    ENDIF.
    DATA t9 TYPE REF TO zcl_lnt_abap_release.
    IF t1 IS BOUND.
      IF t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        TRY.
            t9 ?= t1->oval.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
      ENDIF.
      IF t9 IS NOT BOUND.
        IF t1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t11 TYPE REF TO zlnt_view_storage_74017ca272ac.
          IF t1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
          ENDIF.
          TRY.
              t11 ?= t1->oval.
            CATCH cx_sy_move_cast_error.
              RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
          ENDTRY.
          IF t11->structural( ) <> abap_true.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
          ENDIF.
        ENDIF.
        DATA(t12) = VALUE string( ).
        DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t18) = VALUE f( ).
        t9 = NEW zcl_lnt_abap_release( view_source = t1 i_name = t12 i_abap = t13 i_kernel = t14 i_op = t15 i_cloud_47cd = t16 i_ce = t17 i_ordinal = t18 ).
      ENDIF.
    ENDIF.
    result = t9.

  ENDMETHOD.

  METHOD ver.
    IF zcl_lnt_st_combi_module=>zlnt_builtin_init_212d0955f1c7 = abap_false.
      zcl_lnt_st_combi_module=>zlnt_builtin_init_7149bffa9f66( ).
    ENDIF.
    DATA(t1) = i_version_or_release.
    DATA(t2) = i_first.
    DATA(t3) = i_opts.
    DATA(t4) = xsdbool( t3 IS INITIAL ).
    IF t4 = abap_true.
      DATA t8 TYPE REF TO zcl_lnt_iver_options.
      DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t8 = NEW zcl_lnt_iver_options( i_also = t9 ).
      CREATE OBJECT t8->zlnt_view_ownkeys_b0e8086400eb.
      t8->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      CREATE OBJECT t8->zlnt_json_ownkeys_70e5fd461788.
      t8->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      t3 = t8.
    ENDIF.
    DATA t12 TYPE REF TO zcl_lnt_vers.
    DATA t13 TYPE REF TO zcl_lnt_abap_release.
    t13 = zcl_lnt_st_combi_module=>input_to_release( i_version_or_release = t1 ).
    DATA t15 TYPE REF TO zif_lnt_statement_runnable.
    t15 = zcl_lnt_st_combi_module=>map_input( i_s = t2 ).
    DATA t17 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t18 TYPE REF TO zcl_lnt_iver_options.
    t18 = t3.
    t17 = t18->also.
    t12 = NEW zcl_lnt_vers( i_release_7928 = t13 i_runnable = t15 i_also = t17 ).
    result = t12.

  ENDMETHOD.

  METHOD ver_lang.
    IF zcl_lnt_st_combi_module=>zlnt_builtin_init_212d0955f1c7 = abap_false.
      zcl_lnt_st_combi_module=>zlnt_builtin_init_7149bffa9f66( ).
    ENDIF.
    DATA(t2) = i_first.
    DATA t3 TYPE REF TO zcl_lnt_lang_vers.
    DATA(t4) = i_lang_version.
    DATA t5 TYPE REF TO zif_lnt_statement_runnable.
    t5 = zcl_lnt_st_combi_module=>map_input( i_s = t2 ).
    t3 = NEW zcl_lnt_lang_vers( i_lang_version = t4 i_runnable = t5 ).
    result = t3.

  ENDMETHOD.

  METHOD ver_not_lang.
    IF zcl_lnt_st_combi_module=>zlnt_builtin_init_212d0955f1c7 = abap_false.
      zcl_lnt_st_combi_module=>zlnt_builtin_init_7149bffa9f66( ).
    ENDIF.
    DATA(t2) = i_first.
    DATA t3 TYPE REF TO zcl_lnt_lang_vers_not.
    DATA(t4) = i_lang_version.
    DATA t5 TYPE REF TO zif_lnt_statement_runnable.
    t5 = zcl_lnt_st_combi_module=>map_input( i_s = t2 ).
    t3 = NEW zcl_lnt_lang_vers_not( i_lang_version = t4 i_runnable = t5 ).
    result = t3.

  ENDMETHOD.

  METHOD fail_combinator.
    IF zcl_lnt_st_combi_module=>zlnt_builtin_init_212d0955f1c7 = abap_false.
      zcl_lnt_st_combi_module=>zlnt_builtin_init_7149bffa9f66( ).
    ENDIF.
    result = NEW zcl_lnt_fail_combinator( ).

  ENDMETHOD.

  METHOD fail_star.
    IF zcl_lnt_st_combi_module=>zlnt_builtin_init_212d0955f1c7 = abap_false.
      zcl_lnt_st_combi_module=>zlnt_builtin_init_7149bffa9f66( ).
    ENDIF.
    result = NEW zcl_lnt_fail_star( ).

  ENDMETHOD.

  METHOD stop_before.
    IF zcl_lnt_st_combi_module=>zlnt_builtin_init_212d0955f1c7 = abap_false.
      zcl_lnt_st_combi_module=>zlnt_builtin_init_7149bffa9f66( ).
    ENDIF.
    DATA(t2) = i_t2.
    DATA t3 TYPE REF TO zcl_lnt_stop_before2.
    DATA(t4) = i_t1.
    t3 = NEW zcl_lnt_stop_before2( i_t1 = t4 i_t2 = t2 ).
    result = t3.

  ENDMETHOD.

  METHOD stop_before1.
    IF zcl_lnt_st_combi_module=>zlnt_builtin_init_212d0955f1c7 = abap_false.
      zcl_lnt_st_combi_module=>zlnt_builtin_init_7149bffa9f66( ).
    ENDIF.
    DATA t2 TYPE REF TO zcl_lnt_stop_before1.
    DATA(t3) = i_words.
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
    zcl_lnt_st_combi_module=>also_in_namespace = NEW zlnt_runtime_map__a1006b231250( ).
    DATA t2 TYPE REF TO zlnt_runtime_map__a1006b231250.
    DATA t3 TYPE REF TO zlnt_runtime_map__a1006b231250.
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
    zcl_lnt_st_combi_module=>expression_singletons = NEW zlnt_runtime_map__be9b74e2658e( ).
    IF zcl_lnt_st_combi_module=>zlnt_builtin_init_212d0955f1c7 = abap_false.
      zcl_lnt_st_combi_module=>zlnt_builtin_init_7149bffa9f66( ).
    ENDIF.
    zcl_lnt_st_combi_module=>string_singletons = NEW zlnt_runtime_map__e0d0c31d82d4( ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1920_98a35b5ab67c.
  ENDMETHOD.
ENDCLASS.
