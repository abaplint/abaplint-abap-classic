* TS: src/abap/2_statements/expressions/value_body_line.ts:7:1 ValueBodyLine
CLASS zcl_lnt_value_body_line DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_value_body_line IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t5 TYPE REF TO zif_lnt_statement_runnable.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t8 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t9) = zlnt_runtime_desc_78196487750d=>zlnt_member_d53_2a2dc81ca7ec77.
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
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t14 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t15) = zlnt_runtime_desc_78196487750d=>zlnt_member_d52_2e425786555090.
    t14 = zcl_lnt_st_combi_module=>tok( i_t = t15 ).
    IF t14 IS BOUND.
      DATA t16 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t17 TYPE REF TO object.
      t17 = t14.
      TRY.
          t13 ?= t17.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t13 IS NOT BOUND.
        TRY.
            t16 ?= t14.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t16 IS BOUND.
          t13 = t16->source( ).
        ENDIF.
        IF t13 IS NOT BOUND.
          CREATE OBJECT t13.
          t13->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t13->oval = t14.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t19.
    t5 = zcl_lnt_st_combi_module=>alt_prio( i_first = t7 i_second = t13 i_rest = t19 ).
    IF t5 IS BOUND.
      DATA t24 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t25 TYPE REF TO object.
      t25 = t5.
      TRY.
          t4 ?= t25.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t4 IS NOT BOUND.
        TRY.
            t24 ?= t5.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t24 IS BOUND.
          t4 = t24->source( ).
        ENDIF.
        IF t4 IS NOT BOUND.
          CREATE OBJECT t4.
          t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t4->oval = t5.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t28 TYPE REF TO zif_lnt_statement_runnable.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t30 TYPE REF TO zif_lnt_statement_runnable.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t33 TYPE REF TO zif_lnt_statement_runnable.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t35) = zlnt_runtime_desc_78196487750d=>zlnt_member_d168_9f6549d76396.
    IF t35 IS BOUND.
      CREATE OBJECT t34.
      t34->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t34->cval = t35.
    ENDIF.
    t33 = zcl_lnt_st_combi_module=>plus_prio( i_first = t34 ).
    IF t33 IS BOUND.
      DATA t36 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t37 TYPE REF TO object.
      t37 = t33.
      TRY.
          t32 ?= t37.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t32 IS NOT BOUND.
        TRY.
            t36 ?= t33.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t36 IS BOUND.
          t32 = t36->source( ).
        ENDIF.
        IF t32 IS NOT BOUND.
          CREATE OBJECT t32.
          t32->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t32->oval = t33.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t40) = zlnt_runtime_desc_78196487750d=>zlnt_member_d356_3218bf7cfc33.
    IF t40 IS BOUND.
      CREATE OBJECT t39.
      t39->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t39->cval = t40.
    ENDIF.
    DATA t41 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t41.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t45) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t45 IS BOUND.
      CREATE OBJECT t44.
      t44->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t44->cval = t45.
    ENDIF.
    t41->load( ).
    APPEND t44 TO t41->items.
    t41->save( ).
    t30 = zcl_lnt_st_combi_module=>alt_prio( i_first = t32 i_second = t39 i_rest = t41 ).
    IF t30 IS BOUND.
      DATA t50 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t51 TYPE REF TO object.
      t51 = t30.
      TRY.
          t29 ?= t51.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t29 IS NOT BOUND.
        TRY.
            t50 ?= t30.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t50 IS BOUND.
          t29 = t50->source( ).
        ENDIF.
        IF t29 IS NOT BOUND.
          CREATE OBJECT t29.
          t29->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t29->oval = t30.
        ENDIF.
      ENDIF.
    ENDIF.
    t28 = zcl_lnt_st_combi_module=>opt_prio( i_first = t29 ).
    IF t28 IS BOUND.
      DATA t52 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t53 TYPE REF TO object.
      t53 = t28.
      TRY.
          t27 ?= t53.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t27 IS NOT BOUND.
        TRY.
            t52 ?= t28.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t52 IS BOUND.
          t27 = t52->source( ).
        ENDIF.
        IF t27 IS NOT BOUND.
          CREATE OBJECT t27.
          t27->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t27->oval = t28.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t54 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t54.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t58 TYPE REF TO zif_lnt_statement_runnable.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t61 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t62) = zlnt_runtime_desc_78196487750d=>zlnt_member_d55_6610642b610c97.
    t61 = zcl_lnt_st_combi_module=>tok( i_t = t62 ).
    IF t61 IS BOUND.
      DATA t63 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t64 TYPE REF TO object.
      t64 = t61.
      TRY.
          t60 ?= t64.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t60 IS NOT BOUND.
        TRY.
            t63 ?= t61.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t63 IS BOUND.
          t60 = t63->source( ).
        ENDIF.
        IF t60 IS NOT BOUND.
          CREATE OBJECT t60.
          t60->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t60->oval = t61.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t67 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t68) = zlnt_runtime_desc_78196487750d=>zlnt_member_d30_2f4abb22e3612e.
    t67 = zcl_lnt_st_combi_module=>tok( i_t = t68 ).
    IF t67 IS BOUND.
      DATA t69 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t70 TYPE REF TO object.
      t70 = t67.
      TRY.
          t66 ?= t70.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t66 IS NOT BOUND.
        TRY.
            t69 ?= t67.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t69 IS BOUND.
          t66 = t69->source( ).
        ENDIF.
        IF t66 IS NOT BOUND.
          CREATE OBJECT t66.
          t66->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t66->oval = t67.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t72 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t72.
    t58 = zcl_lnt_st_combi_module=>alt_prio( i_first = t60 i_second = t66 i_rest = t72 ).
    IF t58 IS BOUND.
      DATA t77 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t78 TYPE REF TO object.
      t78 = t58.
      TRY.
          t57 ?= t78.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t57 IS NOT BOUND.
        TRY.
            t77 ?= t58.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t77 IS BOUND.
          t57 = t77->source( ).
        ENDIF.
        IF t57 IS NOT BOUND.
          CREATE OBJECT t57.
          t57->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t57->oval = t58.
        ENDIF.
      ENDIF.
    ENDIF.
    t54->load( ).
    APPEND t57 TO t54->items.
    t54->save( ).
    result = zcl_lnt_st_combi_module=>seq( i_first = t4 i_second = t27 i_rest = t54 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d355_f5f8042a98ef.
  ENDMETHOD.
ENDCLASS.
