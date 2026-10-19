* TS: src/abap/2_statements/expressions/form_param.ts:5:1 FormParam
CLASS zcl_lnt_st_form_param DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_form_param IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = |STRUCTURE|.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d141_e96a425f6743.
    IF t8 IS BOUND.
      CREATE OBJECT t7.
      t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t7->cval = t8.
    ENDIF.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t10.
    t1 = zcl_lnt_st_combi_module=>seq( i_first = t4 i_second = t7 i_rest = t10 ).
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t19 TYPE REF TO zif_lnt_statement_runnable.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t22) = zlnt_runtime_desc_78196487750d=>zlnt_member_d186_713e1678710c.
    IF t22 IS BOUND.
      CREATE OBJECT t21.
      t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t21->cval = t22.
    ENDIF.
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t25) = zlnt_runtime_desc_78196487750d=>zlnt_member_d187_ac8768b55725.
    IF t25 IS BOUND.
      CREATE OBJECT t24.
      t24->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t24->cval = t25.
    ENDIF.
    DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t27.
    t19 = zcl_lnt_st_combi_module=>alt_prio( i_first = t21 i_second = t24 i_rest = t27 ).
    IF t19 IS BOUND.
      DATA t32 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t33 TYPE REF TO object.
      t33 = t19.
      TRY.
          t18 ?= t33.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t18 IS NOT BOUND.
        TRY.
            t32 ?= t19.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t32 IS BOUND.
          t18 = t32->source( ).
        ENDIF.
        IF t18 IS NOT BOUND.
          CREATE OBJECT t18.
          t18->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t18->oval = t19.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t36 TYPE REF TO zif_lnt_statement_runnable.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t38 TYPE REF TO zif_lnt_statement_runnable.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t41) = zlnt_runtime_desc_78196487750d=>zlnt_member_d188_0b071dbb03a9.
    IF t41 IS BOUND.
      CREATE OBJECT t40.
      t40->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t40->cval = t41.
    ENDIF.
    DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t45 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t46 TYPE REF TO object.
      t46 = t1.
      TRY.
          t43 ?= t46.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t43 IS NOT BOUND.
        TRY.
            t45 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t45 IS BOUND.
          t43 = t45->source( ).
        ENDIF.
        IF t43 IS NOT BOUND.
          CREATE OBJECT t43.
          t43->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t43->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t48.
    t38 = zcl_lnt_st_combi_module=>alt_prio( i_first = t40 i_second = t43 i_rest = t48 ).
    IF t38 IS BOUND.
      DATA t53 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t54 TYPE REF TO object.
      t54 = t38.
      TRY.
          t37 ?= t54.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t37 IS NOT BOUND.
        TRY.
            t53 ?= t38.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t53 IS BOUND.
          t37 = t53->source( ).
        ENDIF.
        IF t37 IS NOT BOUND.
          CREATE OBJECT t37.
          t37->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t37->oval = t38.
        ENDIF.
      ENDIF.
    ENDIF.
    t36 = zcl_lnt_st_combi_module=>opt_prio( i_first = t37 ).
    IF t36 IS BOUND.
      DATA t55 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t56 TYPE REF TO object.
      t56 = t36.
      TRY.
          t35 ?= t56.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t35 IS NOT BOUND.
        TRY.
            t55 ?= t36.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t55 IS BOUND.
          t35 = t55->source( ).
        ENDIF.
        IF t35 IS NOT BOUND.
          CREATE OBJECT t35.
          t35->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t35->oval = t36.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t58 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t58.
    result = zcl_lnt_st_combi_module=>seq( i_first = t18 i_second = t35 i_rest = t58 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d183_78b4c050195c.
  ENDMETHOD.
ENDCLASS.
