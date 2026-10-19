* TS: src/abap/2_statements/expressions/method_def_exporting.ts:5:1 MethodDefExporting
CLASS zcl_lnt_method_def_exporting DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_method_def_exporting IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t3.
    t3->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t3->sval = |EXPORTING|.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t7 TYPE REF TO zif_lnt_statement_runnable.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t9) = zlnt_runtime_desc_78196487750d=>zlnt_member_d230_9e8d73de9f81.
    IF t9 IS BOUND.
      CREATE OBJECT t8.
      t8->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t8->cval = t9.
    ENDIF.
    t7 = zcl_lnt_st_combi_module=>plus( i_first = t8 ).
    IF t7 IS BOUND.
      DATA t10 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t11 TYPE REF TO object.
      t11 = t7.
      TRY.
          t6 ?= t11.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t6 IS NOT BOUND.
        TRY.
            t10 ?= t7.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t10 IS BOUND.
          t6 = t10->source( ).
        ENDIF.
        IF t6 IS NOT BOUND.
          CREATE OBJECT t6.
          t6->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t6->oval = t7.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t13 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t13.
    result = zcl_lnt_st_combi_module=>seq( i_first = t3 i_second = t6 i_rest = t13 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d231_5616e0c1afc0.
  ENDMETHOD.
ENDCLASS.
