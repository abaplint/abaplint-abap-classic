* TS: src/abap/2_statements/expressions/method_def_raising.ts:6:1 MethodDefRaising
CLASS zcl_lnt_method_def_raising DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_method_def_raising IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = |RESUMABLE|.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t8 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t9) = zlnt_runtime_desc_78196487750d=>zlnt_member_d27_96f129ab7f18e4.
    t8 = zcl_lnt_st_combi_module=>tok( i_t = t9 ).
    IF t8 IS BOUND.
      DATA t10 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t11 TYPE REF TO object.
      t11 = t8.
      TRY.
          t7 ?= t11.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t7 IS NOT BOUND.
        TRY.
            t10 ?= t8.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t10 IS BOUND.
          t7 = t10->source( ).
        ENDIF.
        IF t7 IS NOT BOUND.
          CREATE OBJECT t7.
          t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t7->oval = t8.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t12 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t12.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t16) = zlnt_runtime_desc_78196487750d=>zlnt_member_d116_84f27914b88c.
    IF t16 IS BOUND.
      CREATE OBJECT t15.
      t15->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t15->cval = t16.
    ENDIF.
    t12->load( ).
    APPEND t15 TO t12->items.
    t12->save( ).
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t19 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t20) = zlnt_runtime_desc_78196487750d=>zlnt_member_d30_2f4abb22e3612e.
    t19 = zcl_lnt_st_combi_module=>tok( i_t = t20 ).
    IF t19 IS BOUND.
      DATA t21 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t22 TYPE REF TO object.
      t22 = t19.
      TRY.
          t18 ?= t22.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t18 IS NOT BOUND.
        TRY.
            t21 ?= t19.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t21 IS BOUND.
          t18 = t21->source( ).
        ENDIF.
        IF t18 IS NOT BOUND.
          CREATE OBJECT t18.
          t18->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t18->oval = t19.
        ENDIF.
      ENDIF.
    ENDIF.
    t12->load( ).
    APPEND t18 TO t12->items.
    t12->save( ).
    t1 = zcl_lnt_st_combi_module=>seq( i_first = t4 i_second = t7 i_rest = t12 ).
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t30.
    t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t30->sval = |RAISING|.
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
    DATA(t44) = zlnt_runtime_desc_78196487750d=>zlnt_member_d116_84f27914b88c.
    IF t44 IS BOUND.
      CREATE OBJECT t43.
      t43->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t43->cval = t44.
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t46.
    t36 = zcl_lnt_st_combi_module=>alt_prio( i_first = t38 i_second = t43 i_rest = t46 ).
    IF t36 IS BOUND.
      DATA t51 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t52 TYPE REF TO object.
      t52 = t36.
      TRY.
          t35 ?= t52.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t35 IS NOT BOUND.
        TRY.
            t51 ?= t36.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t51 IS BOUND.
          t35 = t51->source( ).
        ENDIF.
        IF t35 IS NOT BOUND.
          CREATE OBJECT t35.
          t35->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t35->oval = t36.
        ENDIF.
      ENDIF.
    ENDIF.
    t34 = zcl_lnt_st_combi_module=>plus( i_first = t35 ).
    IF t34 IS BOUND.
      DATA t53 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t54 TYPE REF TO object.
      t54 = t34.
      TRY.
          t33 ?= t54.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t33 IS NOT BOUND.
        TRY.
            t53 ?= t34.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t53 IS BOUND.
          t33 = t53->source( ).
        ENDIF.
        IF t33 IS NOT BOUND.
          CREATE OBJECT t33.
          t33->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t33->oval = t34.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t56 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t56.
    result = zcl_lnt_st_combi_module=>seq( i_first = t30 i_second = t33 i_rest = t56 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d233_66b4b8df8ddb.
  ENDMETHOD.
ENDCLASS.
