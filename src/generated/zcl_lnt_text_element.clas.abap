* TS: src/abap/2_statements/expressions/text_element.ts:6:1 TextElement
CLASS zcl_lnt_text_element DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_text_element IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t3.
    t3->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t3->sval = |TEXT|.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t7 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d22_cfdc313f209817.
    t7 = zcl_lnt_st_combi_module=>tok( i_t = t8 ).
    IF t7 IS BOUND.
      DATA t9 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t10 TYPE REF TO object.
      t10 = t7.
      TRY.
          t6 ?= t10.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t6 IS NOT BOUND.
        TRY.
            t9 ?= t7.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t9 IS BOUND.
          t6 = t9->source( ).
        ENDIF.
        IF t6 IS NOT BOUND.
          CREATE OBJECT t6.
          t6->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t6->oval = t7.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t11 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t11.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t15) = zlnt_runtime_desc_78196487750d=>zlnt_member_d350_60b8c1b06659.
    IF t15 IS BOUND.
      CREATE OBJECT t14.
      t14->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t14->cval = t15.
    ENDIF.
    t11->load( ).
    APPEND t14 TO t11->items.
    t11->save( ).
    result = zcl_lnt_st_combi_module=>seq( i_first = t3 i_second = t6 i_rest = t11 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d157_1c35602cbab5.
  ENDMETHOD.
ENDCLASS.
