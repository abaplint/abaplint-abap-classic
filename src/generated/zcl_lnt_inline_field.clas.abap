* TS: src/abap/2_statements/expressions/inline_field.ts:6:1 InlineField
CLASS zcl_lnt_inline_field DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_inline_field IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t4) = zlnt_runtime_desc_78196487750d=>zlnt_member_d97_d1013c30597947.
    IF t4 IS BOUND.
      CREATE OBJECT t3.
      t3->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t3->cval = t4.
    ENDIF.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t7 TYPE REF TO zif_lnt_statement_runnable.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t9 TYPE REF TO zif_lnt_statement_runnable.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t12 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t13) = zlnt_runtime_desc_78196487750d=>zlnt_member_d22_cfdc313f209817.
    t12 = zcl_lnt_st_combi_module=>tok( i_t = t13 ).
    IF t12 IS BOUND.
      DATA t14 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t15 TYPE REF TO object.
      t15 = t12.
      TRY.
          t11 ?= t15.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t11 IS NOT BOUND.
        TRY.
            t14 ?= t12.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t14 IS BOUND.
          t11 = t14->source( ).
        ENDIF.
        IF t11 IS NOT BOUND.
          CREATE OBJECT t11.
          t11->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t11->oval = t12.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t17 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t18) = zlnt_runtime_desc_78196487750d=>zlnt_member_d167_3c4543cf3a18.
    IF t18 IS BOUND.
      CREATE OBJECT t17.
      t17->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t17->cval = t18.
    ENDIF.
    DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t20.
    t9 = zcl_lnt_st_combi_module=>seq( i_first = t11 i_second = t17 i_rest = t20 ).
    IF t9 IS BOUND.
      DATA t25 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t26 TYPE REF TO object.
      t26 = t9.
      TRY.
          t8 ?= t26.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t8 IS NOT BOUND.
        TRY.
            t25 ?= t9.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t25 IS BOUND.
          t8 = t25->source( ).
        ENDIF.
        IF t8 IS NOT BOUND.
          CREATE OBJECT t8.
          t8->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t8->oval = t9.
        ENDIF.
      ENDIF.
    ENDIF.
    t7 = zcl_lnt_st_combi_module=>star_prio( i_first = t8 ).
    IF t7 IS BOUND.
      DATA t27 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t28 TYPE REF TO object.
      t28 = t7.
      TRY.
          t6 ?= t28.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t6 IS NOT BOUND.
        TRY.
            t27 ?= t7.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t27 IS BOUND.
          t6 = t27->source( ).
        ENDIF.
        IF t6 IS NOT BOUND.
          CREATE OBJECT t6.
          t6->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t6->oval = t7.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t30 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t30.
    result = zcl_lnt_st_combi_module=>seq( i_first = t3 i_second = t6 i_rest = t30 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d202_7173b1c44604.
  ENDMETHOD.
ENDCLASS.
