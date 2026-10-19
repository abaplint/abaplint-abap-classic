* TS: src/abap/2_statements/expressions/corresponding_body_mapping.ts:5:1 CorrespondingBodyMapping
CLASS zcl_lnt_crrspndng_bdy_mppng DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_crrspndng_bdy_mppng IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = |MAPPING|.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t8 TYPE REF TO zif_lnt_statement_runnable.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t10 TYPE REF TO zif_lnt_statement_runnable.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t13) = zlnt_runtime_desc_78196487750d=>zlnt_member_d100_553f73368b64.
    IF t13 IS BOUND.
      CREATE OBJECT t12.
      t12->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t12->cval = t13.
    ENDIF.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t15.
    t15->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t15->sval = |=|.
    DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t17.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t21) = zlnt_runtime_desc_78196487750d=>zlnt_member_d126_c330c74d8713.
    IF t21 IS BOUND.
      CREATE OBJECT t20.
      t20->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t20->cval = t21.
    ENDIF.
    t17->load( ).
    APPEND t20 TO t17->items.
    t17->save( ).
    t10 = zcl_lnt_st_combi_module=>seq( i_first = t12 i_second = t15 i_rest = t17 ).
    IF t10 IS BOUND.
      DATA t26 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t27 TYPE REF TO object.
      t27 = t10.
      TRY.
          t9 ?= t27.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t9 IS NOT BOUND.
        TRY.
            t26 ?= t10.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t26 IS BOUND.
          t9 = t26->source( ).
        ENDIF.
        IF t9 IS NOT BOUND.
          CREATE OBJECT t9.
          t9->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t9->oval = t10.
        ENDIF.
      ENDIF.
    ENDIF.
    t8 = zcl_lnt_st_combi_module=>plus( i_first = t9 ).
    IF t8 IS BOUND.
      DATA t28 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t29 TYPE REF TO object.
      t29 = t8.
      TRY.
          t7 ?= t29.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t7 IS NOT BOUND.
        TRY.
            t28 ?= t8.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t28 IS BOUND.
          t7 = t28->source( ).
        ENDIF.
        IF t7 IS NOT BOUND.
          CREATE OBJECT t7.
          t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t7->oval = t8.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t31 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t31.
    result = zcl_lnt_st_combi_module=>seq( i_first = t4 i_second = t7 i_rest = t31 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d145_fbc450f30e9d.
  ENDMETHOD.
ENDCLASS.
