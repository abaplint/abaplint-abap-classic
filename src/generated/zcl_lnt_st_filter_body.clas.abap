* TS: src/abap/2_statements/expressions/filter_body.ts:5:1 FilterBody
CLASS zcl_lnt_st_filter_body DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_filter_body IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = |IN|.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t8 IS BOUND.
      CREATE OBJECT t7.
      t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t7->cval = t8.
    ENDIF.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t10.
    t1 = zcl_lnt_st_combi_module=>seq( i_first = t4 i_second = t7 i_rest = t10 ).
    DATA t15 TYPE REF TO zif_lnt_statement_runnable.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t18.
    t18->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t18->sval = |USING KEY|.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t22) = zlnt_runtime_desc_78196487750d=>zlnt_member_d173_fd387289a527.
    IF t22 IS BOUND.
      CREATE OBJECT t21.
      t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t21->cval = t22.
    ENDIF.
    DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t24.
    t15 = zcl_lnt_st_combi_module=>seq( i_first = t18 i_second = t21 i_rest = t24 ).
    DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t32) = zlnt_runtime_desc_78196487750d=>zlnt_member_d95_8e6c9823a7c185.
    IF t32 IS BOUND.
      CREATE OBJECT t31.
      t31->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t31->cval = t32.
    ENDIF.
    DATA t34 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t35 TYPE REF TO zif_lnt_statement_runnable.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t36.
    t36->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t36->sval = |EXCEPT|.
    t35 = zcl_lnt_st_combi_module=>opt_prio( i_first = t36 ).
    IF t35 IS BOUND.
      DATA t38 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t39 TYPE REF TO object.
      t39 = t35.
      TRY.
          t34 ?= t39.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t34 IS NOT BOUND.
        TRY.
            t38 ?= t35.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t38 IS BOUND.
          t34 = t38->source( ).
        ENDIF.
        IF t34 IS NOT BOUND.
          CREATE OBJECT t34.
          t34->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t34->oval = t35.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t40 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t40.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t44 TYPE REF TO zif_lnt_statement_runnable.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t46 TYPE REF TO zif_lnt_statement_runnable.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t50 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t51 TYPE REF TO object.
      t51 = t1.
      TRY.
          t48 ?= t51.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t48 IS NOT BOUND.
        TRY.
            t50 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t50 IS BOUND.
          t48 = t50->source( ).
        ENDIF.
        IF t48 IS NOT BOUND.
          CREATE OBJECT t48.
          t48->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t48->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t15 IS BOUND.
      DATA t55 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t56 TYPE REF TO object.
      t56 = t15.
      TRY.
          t53 ?= t56.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t53 IS NOT BOUND.
        TRY.
            t55 ?= t15.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t55 IS BOUND.
          t53 = t55->source( ).
        ENDIF.
        IF t53 IS NOT BOUND.
          CREATE OBJECT t53.
          t53->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t53->oval = t15.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t58 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t58.
    t46 = zcl_lnt_st_combi_module=>per( i_first = t48 i_second = t53 i_rest = t58 ).
    IF t46 IS BOUND.
      DATA t63 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t64 TYPE REF TO object.
      t64 = t46.
      TRY.
          t45 ?= t64.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t45 IS NOT BOUND.
        TRY.
            t63 ?= t46.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t63 IS BOUND.
          t45 = t63->source( ).
        ENDIF.
        IF t45 IS NOT BOUND.
          CREATE OBJECT t45.
          t45->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t45->oval = t46.
        ENDIF.
      ENDIF.
    ENDIF.
    t44 = zcl_lnt_st_combi_module=>opt_prio( i_first = t45 ).
    IF t44 IS BOUND.
      DATA t65 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t66 TYPE REF TO object.
      t66 = t44.
      TRY.
          t43 ?= t66.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t43 IS NOT BOUND.
        TRY.
            t65 ?= t44.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t65 IS BOUND.
          t43 = t65->source( ).
        ENDIF.
        IF t43 IS NOT BOUND.
          CREATE OBJECT t43.
          t43->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t43->oval = t44.
        ENDIF.
      ENDIF.
    ENDIF.
    t40->load( ).
    APPEND t43 TO t40->items.
    t40->save( ).
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t69 TYPE REF TO zif_lnt_statement_runnable.
    DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t71.
    t71->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t71->sval = |WHERE|.
    DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t75) = zlnt_runtime_desc_78196487750d=>zlnt_member_d133_716522bf3a6a.
    IF t75 IS BOUND.
      CREATE OBJECT t74.
      t74->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t74->cval = t75.
    ENDIF.
    DATA t77 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t77.
    t69 = zcl_lnt_st_combi_module=>seq( i_first = t71 i_second = t74 i_rest = t77 ).
    IF t69 IS BOUND.
      DATA t82 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t83 TYPE REF TO object.
      t83 = t69.
      TRY.
          t68 ?= t83.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t68 IS NOT BOUND.
        TRY.
            t82 ?= t69.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t82 IS BOUND.
          t68 = t82->source( ).
        ENDIF.
        IF t68 IS NOT BOUND.
          CREATE OBJECT t68.
          t68->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t68->oval = t69.
        ENDIF.
      ENDIF.
    ENDIF.
    t40->load( ).
    APPEND t68 TO t40->items.
    t40->save( ).
    result = zcl_lnt_st_combi_module=>seq( i_first = t31 i_second = t34 i_rest = t40 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d174_c8ac82068417.
  ENDMETHOD.
ENDCLASS.
