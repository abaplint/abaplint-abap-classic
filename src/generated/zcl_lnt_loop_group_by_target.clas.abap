* TS: src/abap/2_statements/expressions/loop_group_by_target.ts:6:1 LoopGroupByTarget
CLASS zcl_lnt_loop_group_by_target DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_loop_group_by_target IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t5 TYPE REF TO zif_lnt_statement_runnable.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t6.
    t6->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t6->sval = |REFERENCE|.
    t5 = zcl_lnt_st_combi_module=>opt( i_first = t6 ).
    IF t5 IS BOUND.
      DATA t8 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t4 ?= t5.
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
    CREATE OBJECT t11.
    t11->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t11->sval = |INTO|.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t13.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t17) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t17 IS BOUND.
      CREATE OBJECT t16.
      t16->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t16->cval = t17.
    ENDIF.
    t13->load( ).
    APPEND t16 TO t13->items.
    t13->save( ).
    t1 = zcl_lnt_st_combi_module=>seq( i_first = t4 i_second = t11 i_rest = t13 ).
    DATA t22 TYPE REF TO zif_lnt_statement_runnable.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t25.
    t25->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t25->sval = |ASSIGNING|.
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t29) = zlnt_runtime_desc_78196487750d=>zlnt_member_d194_b8c1a7611ef6.
    IF t29 IS BOUND.
      CREATE OBJECT t28.
      t28->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t28->cval = t29.
    ENDIF.
    DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t31.
    t22 = zcl_lnt_st_combi_module=>seq( i_first = t25 i_second = t28 i_rest = t31 ).
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t38 TYPE REF TO zif_lnt_statement_runnable.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t42 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t40 ?= t1.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t40 IS NOT BOUND.
        TRY.
            t42 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t42 IS BOUND.
          t40 = t42->source( ).
        ENDIF.
        IF t40 IS NOT BOUND.
          CREATE OBJECT t40.
          t40->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t40->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t22 IS BOUND.
      DATA t47 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t45 ?= t22.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t45 IS NOT BOUND.
        TRY.
            t47 ?= t22.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t47 IS BOUND.
          t45 = t47->source( ).
        ENDIF.
        IF t45 IS NOT BOUND.
          CREATE OBJECT t45.
          t45->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t45->oval = t22.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t50 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t50.
    t38 = zcl_lnt_st_combi_module=>alt( i_first = t40 i_second = t45 i_rest = t50 ).
    IF t38 IS BOUND.
      DATA t55 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t37 ?= t38.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t37 IS NOT BOUND.
        TRY.
            t55 ?= t38.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t55 IS BOUND.
          t37 = t55->source( ).
        ENDIF.
        IF t37 IS NOT BOUND.
          CREATE OBJECT t37.
          t37->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t37->oval = t38.
        ENDIF.
      ENDIF.
    ENDIF.
    result = zcl_lnt_st_combi_module=>opt_prio( i_first = t37 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d208_929ff50f586d.
  ENDMETHOD.
ENDCLASS.
