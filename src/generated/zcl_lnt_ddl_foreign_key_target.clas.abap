* TS: src/ddl/expressions/ddl_clauses.ts:7:1 DDLForeignKeyTarget
CLASS zcl_lnt_ddl_foreign_key_target DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_ddl_foreign_key_target IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = |[|.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1133_fb80fe4177d4.
    IF t8 IS BOUND.
      CREATE OBJECT t7.
      t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t7->cval = t8.
    ENDIF.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t9.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t12.
    t12->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t12->sval = |.|.
    t9->load( ).
    APPEND t12 TO t9->items.
    t9->save( ).
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t15.
    t15->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t15->sval = |.|.
    t9->load( ).
    APPEND t15 TO t9->items.
    t9->save( ).
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t19) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1133_fb80fe4177d4.
    IF t19 IS BOUND.
      CREATE OBJECT t18.
      t18->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t18->cval = t19.
    ENDIF.
    t9->load( ).
    APPEND t18 TO t9->items.
    t9->save( ).
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t22 TYPE REF TO zif_lnt_statement_runnable.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t24 TYPE REF TO zif_lnt_statement_runnable.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t26.
    t26->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t26->sval = |,|.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t30) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1133_fb80fe4177d4.
    IF t30 IS BOUND.
      CREATE OBJECT t29.
      t29->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t29->cval = t30.
    ENDIF.
    DATA t32 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t32.
    t24 = zcl_lnt_st_combi_module=>seq( i_first = t26 i_second = t29 i_rest = t32 ).
    IF t24 IS BOUND.
      DATA t37 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t38 TYPE REF TO object.
      t38 = t24.
      TRY.
          t23 ?= t38.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t23 IS NOT BOUND.
        TRY.
            t37 ?= t24.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t37 IS BOUND.
          t23 = t37->source( ).
        ENDIF.
        IF t23 IS NOT BOUND.
          CREATE OBJECT t23.
          t23->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t23->oval = t24.
        ENDIF.
      ENDIF.
    ENDIF.
    t22 = zcl_lnt_st_combi_module=>opt_prio( i_first = t23 ).
    IF t22 IS BOUND.
      DATA t39 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t40 TYPE REF TO object.
      t40 = t22.
      TRY.
          t21 ?= t40.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t21 IS NOT BOUND.
        TRY.
            t39 ?= t22.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t39 IS BOUND.
          t21 = t39->source( ).
        ENDIF.
        IF t21 IS NOT BOUND.
          CREATE OBJECT t21.
          t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t21->oval = t22.
        ENDIF.
      ENDIF.
    ENDIF.
    t9->load( ).
    APPEND t21 TO t9->items.
    t9->save( ).
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t42.
    t42->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t42->sval = |]|.
    t9->load( ).
    APPEND t42 TO t9->items.
    t9->save( ).
    t1 = zcl_lnt_st_combi_module=>seq( i_first = t4 i_second = t7 i_rest = t9 ).
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t51 TYPE REF TO zif_lnt_statement_runnable.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t54 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t55 TYPE REF TO object.
      t55 = t1.
      TRY.
          t52 ?= t55.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t52 IS NOT BOUND.
        TRY.
            t54 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t54 IS BOUND.
          t52 = t54->source( ).
        ENDIF.
        IF t52 IS NOT BOUND.
          CREATE OBJECT t52.
          t52->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t52->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    t51 = zcl_lnt_st_combi_module=>opt_prio( i_first = t52 ).
    IF t51 IS BOUND.
      DATA t56 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t57 TYPE REF TO object.
      t57 = t51.
      TRY.
          t50 ?= t57.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t50 IS NOT BOUND.
        TRY.
            t56 ?= t51.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t56 IS BOUND.
          t50 = t56->source( ).
        ENDIF.
        IF t50 IS NOT BOUND.
          CREATE OBJECT t50.
          t50->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t50->oval = t51.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t60) = zlnt_runtime_desc_78196487750d=>zlnt_member_d1125_a1255dd94435.
    IF t60 IS BOUND.
      CREATE OBJECT t59.
      t59->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t59->cval = t60.
    ENDIF.
    DATA t62 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t62.
    result = zcl_lnt_st_combi_module=>seq( i_first = t50 i_second = t59 i_rest = t62 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1134_731934654bc5.
  ENDMETHOD.
ENDCLASS.
