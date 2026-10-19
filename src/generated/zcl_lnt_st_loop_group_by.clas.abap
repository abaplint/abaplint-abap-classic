* TS: src/abap/2_statements/expressions/loop_group_by.ts:8:1 LoopGroupBy
CLASS zcl_lnt_st_loop_group_by DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_loop_group_by IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t5 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d53_2a2dc81ca7ec77.
    t5 = zcl_lnt_st_combi_module=>tok( i_t = t6 ).
    IF t5 IS BOUND.
      DATA t7 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t8 TYPE REF TO object.
      t8 = t5.
      TRY.
          t4 ?= t8.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t4 IS NOT BOUND.
        TRY.
            t7 ?= t5.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t7 IS BOUND.
          t4 = t7->source( ).
        ENDIF.
        IF t4 IS NOT BOUND.
          CREATE OBJECT t4.
          t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t4->oval = t5.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t11 TYPE REF TO zif_lnt_statement_runnable.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t13) = zlnt_runtime_desc_78196487750d=>zlnt_member_d179_7cc7b9e87931.
    IF t13 IS BOUND.
      CREATE OBJECT t12.
      t12->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t12->cval = t13.
    ENDIF.
    t11 = zcl_lnt_st_combi_module=>plus( i_first = t12 ).
    IF t11 IS BOUND.
      DATA t14 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t15 TYPE REF TO object.
      t15 = t11.
      TRY.
          t10 ?= t15.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t10 IS NOT BOUND.
        TRY.
            t14 ?= t11.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t14 IS BOUND.
          t10 = t14->source( ).
        ENDIF.
        IF t10 IS NOT BOUND.
          CREATE OBJECT t10.
          t10->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t10->oval = t11.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t16 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t16.
    DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t20 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t21) = zlnt_runtime_desc_78196487750d=>zlnt_member_d55_6610642b610c97.
    t20 = zcl_lnt_st_combi_module=>tok( i_t = t21 ).
    IF t20 IS BOUND.
      DATA t22 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t23 TYPE REF TO object.
      t23 = t20.
      TRY.
          t19 ?= t23.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t19 IS NOT BOUND.
        TRY.
            t22 ?= t20.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t22 IS BOUND.
          t19 = t22->source( ).
        ENDIF.
        IF t19 IS NOT BOUND.
          CREATE OBJECT t19.
          t19->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t19->oval = t20.
        ENDIF.
      ENDIF.
    ENDIF.
    t16->load( ).
    APPEND t19 TO t16->items.
    t16->save( ).
    t1 = zcl_lnt_st_combi_module=>seq( i_first = t4 i_second = t10 i_rest = t16 ).
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t32 TYPE REF TO zif_lnt_statement_runnable.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t35) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t35 IS BOUND.
      CREATE OBJECT t34.
      t34->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t34->cval = t35.
    ENDIF.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t39 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t40 TYPE REF TO object.
      t40 = t1.
      TRY.
          t37 ?= t40.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t37 IS NOT BOUND.
        TRY.
            t39 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t39 IS BOUND.
          t37 = t39->source( ).
        ENDIF.
        IF t37 IS NOT BOUND.
          CREATE OBJECT t37.
          t37->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t37->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t42 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t42.
    t32 = zcl_lnt_st_combi_module=>alt( i_first = t34 i_second = t37 i_rest = t42 ).
    IF t32 IS BOUND.
      DATA t47 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t48 TYPE REF TO object.
      t48 = t32.
      TRY.
          t31 ?= t48.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t31 IS NOT BOUND.
        TRY.
            t47 ?= t32.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t47 IS BOUND.
          t31 = t47->source( ).
        ENDIF.
        IF t31 IS NOT BOUND.
          CREATE OBJECT t31.
          t31->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t31->oval = t32.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t51 TYPE REF TO zif_lnt_statement_runnable.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t52.
    t52->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t52->sval = |ASCENDING|.
    t51 = zcl_lnt_st_combi_module=>opt_prio( i_first = t52 ).
    IF t51 IS BOUND.
      DATA t54 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t55 TYPE REF TO object.
      t55 = t51.
      TRY.
          t50 ?= t55.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t50 IS NOT BOUND.
        TRY.
            t54 ?= t51.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t54 IS BOUND.
          t50 = t54->source( ).
        ENDIF.
        IF t50 IS NOT BOUND.
          CREATE OBJECT t50.
          t50->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t50->oval = t51.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t56 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t56.
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t60 TYPE REF TO zif_lnt_statement_runnable.
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t61.
    t61->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t61->sval = |WITHOUT MEMBERS|.
    t60 = zcl_lnt_st_combi_module=>opt_prio( i_first = t61 ).
    IF t60 IS BOUND.
      DATA t63 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t64 TYPE REF TO object.
      t64 = t60.
      TRY.
          t59 ?= t64.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t59 IS NOT BOUND.
        TRY.
            t63 ?= t60.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t63 IS BOUND.
          t59 = t63->source( ).
        ENDIF.
        IF t59 IS NOT BOUND.
          CREATE OBJECT t59.
          t59->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t59->oval = t60.
        ENDIF.
      ENDIF.
    ENDIF.
    t56->load( ).
    APPEND t59 TO t56->items.
    t56->save( ).
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t67) = zlnt_runtime_desc_78196487750d=>zlnt_member_d208_929ff50f586d.
    IF t67 IS BOUND.
      CREATE OBJECT t66.
      t66->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t66->cval = t67.
    ENDIF.
    t56->load( ).
    APPEND t66 TO t56->items.
    t56->save( ).
    result = zcl_lnt_st_combi_module=>seq( i_first = t31 i_second = t50 i_rest = t56 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d209_c21e0d8a3b4e.
  ENDMETHOD.
ENDCLASS.
