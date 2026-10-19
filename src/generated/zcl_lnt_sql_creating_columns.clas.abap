* TS: src/abap/2_statements/expressions/sql_creating_columns.ts:5:1 SQLCreatingColumns
CLASS zcl_lnt_sql_creating_columns DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sql_creating_columns IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t5 TYPE REF TO zif_lnt_statement_runnable.
    t5 = zcl_lnt_st_combi_module=>stop_before( i_t1 = |LOCATOR| i_t2 = |FOR| ).
    IF t5 IS BOUND.
      DATA t8 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t9 TYPE REF TO object.
      t9 = t5.
      TRY.
          t4 ?= t9.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t4 IS NOT BOUND.
        TRY.
            t8 ?= t5.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t8 IS BOUND.
          t4 = t8->source( ).
        ENDIF.
        IF t4 IS NOT BOUND.
          CREATE OBJECT t4.
          t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t4->oval = t5.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t12 TYPE REF TO zif_lnt_statement_runnable.
    t12 = zcl_lnt_st_combi_module=>stop_before( i_t1 = |READER| i_t2 = |FOR| ).
    IF t12 IS BOUND.
      DATA t15 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t16 TYPE REF TO object.
      t16 = t12.
      TRY.
          t11 ?= t16.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t11 IS NOT BOUND.
        TRY.
            t15 ?= t12.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t15 IS BOUND.
          t11 = t15->source( ).
        ENDIF.
        IF t11 IS NOT BOUND.
          CREATE OBJECT t11.
          t11->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t11->oval = t12.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t18.
    t1 = zcl_lnt_st_combi_module=>seq( i_first = t4 i_second = t11 i_rest = t18 ).
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t25.
    t25->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t25->sval = |COLUMNS|.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t29) = zlnt_runtime_desc_78196487750d=>zlnt_member_d282_f7a860018d26.
    IF t29 IS BOUND.
      CREATE OBJECT t28.
      t28->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t28->cval = t29.
    ENDIF.
    DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t30.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t34 TYPE REF TO zif_lnt_statement_runnable.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t36 TYPE REF TO zif_lnt_statement_runnable.
    DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t40 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t41 TYPE REF TO object.
      t41 = t1.
      TRY.
          t38 ?= t41.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t38 IS NOT BOUND.
        TRY.
            t40 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t40 IS BOUND.
          t38 = t40->source( ).
        ENDIF.
        IF t38 IS NOT BOUND.
          CREATE OBJECT t38.
          t38->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t38->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t44 TYPE REF TO zif_lnt_statement_runnable.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t45.
    t45->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t45->sval = |,|.
    t44 = zcl_lnt_st_combi_module=>opt_prio( i_first = t45 ).
    IF t44 IS BOUND.
      DATA t47 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t48 TYPE REF TO object.
      t48 = t44.
      TRY.
          t43 ?= t48.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t43 IS NOT BOUND.
        TRY.
            t47 ?= t44.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t47 IS BOUND.
          t43 = t47->source( ).
        ENDIF.
        IF t43 IS NOT BOUND.
          CREATE OBJECT t43.
          t43->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t43->oval = t44.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t49 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t49.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t53) = zlnt_runtime_desc_78196487750d=>zlnt_member_d282_f7a860018d26.
    IF t53 IS BOUND.
      CREATE OBJECT t52.
      t52->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t52->cval = t53.
    ENDIF.
    t49->load( ).
    APPEND t52 TO t49->items.
    t49->save( ).
    t36 = zcl_lnt_st_combi_module=>seq( i_first = t38 i_second = t43 i_rest = t49 ).
    IF t36 IS BOUND.
      DATA t58 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t59 TYPE REF TO object.
      t59 = t36.
      TRY.
          t35 ?= t59.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t35 IS NOT BOUND.
        TRY.
            t58 ?= t36.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t58 IS BOUND.
          t35 = t58->source( ).
        ENDIF.
        IF t35 IS NOT BOUND.
          CREATE OBJECT t35.
          t35->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t35->oval = t36.
        ENDIF.
      ENDIF.
    ENDIF.
    t34 = zcl_lnt_st_combi_module=>star_prio( i_first = t35 ).
    IF t34 IS BOUND.
      DATA t60 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t61 TYPE REF TO object.
      t61 = t34.
      TRY.
          t33 ?= t61.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t33 IS NOT BOUND.
        TRY.
            t60 ?= t34.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t60 IS BOUND.
          t33 = t60->source( ).
        ENDIF.
        IF t33 IS NOT BOUND.
          CREATE OBJECT t33.
          t33->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t33->oval = t34.
        ENDIF.
      ENDIF.
    ENDIF.
    t30->load( ).
    APPEND t33 TO t30->items.
    t30->save( ).
    result = zcl_lnt_st_combi_module=>seq( i_first = t25 i_second = t28 i_rest = t30 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d304_37e1cb13dad0.
  ENDMETHOD.
ENDCLASS.
