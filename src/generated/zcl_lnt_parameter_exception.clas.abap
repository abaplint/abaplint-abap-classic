* TS: src/abap/2_statements/expressions/parameter_exception.ts:6:1 ParameterException
CLASS zcl_lnt_parameter_exception DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_parameter_exception IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = |OTHERS|.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t8 TYPE REF TO zif_lnt_statement_runnable.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t11) = zlnt_runtime_desc_78196487750d=>zlnt_member_d197_2722e982b84a.
    IF t11 IS BOUND.
      CREATE OBJECT t10.
      t10->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t10->cval = t11.
    ENDIF.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t14 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t15) = zlnt_runtime_desc_78196487750d=>zlnt_member_d22_cfdc313f209817.
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
    DATA t18 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t18.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t22) = zlnt_runtime_desc_78196487750d=>zlnt_member_d100_553f73368b64.
    IF t22 IS BOUND.
      CREATE OBJECT t21.
      t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t21->cval = t22.
    ENDIF.
    t18->load( ).
    APPEND t21 TO t18->items.
    t18->save( ).
    t8 = zcl_lnt_st_combi_module=>seq( i_first = t10 i_second = t13 i_rest = t18 ).
    IF t8 IS BOUND.
      DATA t27 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t28 TYPE REF TO object.
      t28 = t8.
      TRY.
          t7 ?= t28.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t7 IS NOT BOUND.
        TRY.
            t27 ?= t8.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t27 IS BOUND.
          t7 = t27->source( ).
        ENDIF.
        IF t7 IS NOT BOUND.
          CREATE OBJECT t7.
          t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t7->oval = t8.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t29 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t29.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t33) = zlnt_runtime_desc_78196487750d=>zlnt_member_d197_2722e982b84a.
    IF t33 IS BOUND.
      CREATE OBJECT t32.
      t32->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t32->cval = t33.
    ENDIF.
    t29->load( ).
    APPEND t32 TO t29->items.
    t29->save( ).
    t1 = zcl_lnt_st_combi_module=>alt_prio( i_first = t4 i_second = t7 i_rest = t29 ).
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t42 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t43 TYPE REF TO object.
      t43 = t1.
      TRY.
          t40 ?= t43.
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
    DATA t46 TYPE REF TO zif_lnt_statement_runnable.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t48 TYPE REF TO zif_lnt_statement_runnable.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t50.
    t50->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t50->sval = |=|.
    DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t54 TYPE REF TO zif_lnt_statement_runnable.
    DATA t56 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t57) = zlnt_runtime_desc_78196487750d=>zlnt_member_d108_ef0500b17c81.
    IF t57 IS BOUND.
      CREATE OBJECT t56.
      t56->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t56->cval = t57.
    ENDIF.
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t60) = zlnt_runtime_desc_78196487750d=>zlnt_member_d141_e96a425f6743.
    IF t60 IS BOUND.
      CREATE OBJECT t59.
      t59->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t59->cval = t60.
    ENDIF.
    DATA t62 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t62.
    t54 = zcl_lnt_st_combi_module=>alt_prio( i_first = t56 i_second = t59 i_rest = t62 ).
    IF t54 IS BOUND.
      DATA t67 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t68 TYPE REF TO object.
      t68 = t54.
      TRY.
          t53 ?= t68.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t53 IS NOT BOUND.
        TRY.
            t67 ?= t54.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t67 IS BOUND.
          t53 = t67->source( ).
        ENDIF.
        IF t53 IS NOT BOUND.
          CREATE OBJECT t53.
          t53->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t53->oval = t54.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t69 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t69.
    DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t73 TYPE REF TO zif_lnt_statement_runnable.
    DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t75 TYPE REF TO zif_lnt_statement_runnable.
    DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t77.
    t77->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t77->sval = |MESSAGE|.
    DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t81) = zlnt_runtime_desc_78196487750d=>zlnt_member_d210_764baa705494.
    IF t81 IS BOUND.
      CREATE OBJECT t80.
      t80->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t80->cval = t81.
    ENDIF.
    DATA t83 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t83.
    t75 = zcl_lnt_st_combi_module=>seq( i_first = t77 i_second = t80 i_rest = t83 ).
    IF t75 IS BOUND.
      DATA t88 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t89 TYPE REF TO object.
      t89 = t75.
      TRY.
          t74 ?= t89.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t74 IS NOT BOUND.
        TRY.
            t88 ?= t75.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t88 IS BOUND.
          t74 = t88->source( ).
        ENDIF.
        IF t74 IS NOT BOUND.
          CREATE OBJECT t74.
          t74->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t74->oval = t75.
        ENDIF.
      ENDIF.
    ENDIF.
    t73 = zcl_lnt_st_combi_module=>opt_prio( i_first = t74 ).
    IF t73 IS BOUND.
      DATA t90 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t91 TYPE REF TO object.
      t91 = t73.
      TRY.
          t72 ?= t91.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t72 IS NOT BOUND.
        TRY.
            t90 ?= t73.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t90 IS BOUND.
          t72 = t90->source( ).
        ENDIF.
        IF t72 IS NOT BOUND.
          CREATE OBJECT t72.
          t72->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t72->oval = t73.
        ENDIF.
      ENDIF.
    ENDIF.
    t69->load( ).
    APPEND t72 TO t69->items.
    t69->save( ).
    t48 = zcl_lnt_st_combi_module=>seq( i_first = t50 i_second = t53 i_rest = t69 ).
    IF t48 IS BOUND.
      DATA t96 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t97 TYPE REF TO object.
      t97 = t48.
      TRY.
          t47 ?= t97.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t47 IS NOT BOUND.
        TRY.
            t96 ?= t48.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t96 IS BOUND.
          t47 = t96->source( ).
        ENDIF.
        IF t47 IS NOT BOUND.
          CREATE OBJECT t47.
          t47->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t47->oval = t48.
        ENDIF.
      ENDIF.
    ENDIF.
    t46 = zcl_lnt_st_combi_module=>opt_prio( i_first = t47 ).
    IF t46 IS BOUND.
      DATA t98 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t99 TYPE REF TO object.
      t99 = t46.
      TRY.
          t45 ?= t99.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t45 IS NOT BOUND.
        TRY.
            t98 ?= t46.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t98 IS BOUND.
          t45 = t98->source( ).
        ENDIF.
        IF t45 IS NOT BOUND.
          CREATE OBJECT t45.
          t45->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t45->oval = t46.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t101 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t101.
    result = zcl_lnt_st_combi_module=>seq( i_first = t40 i_second = t45 i_rest = t101 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d241_133545949f95.
  ENDMETHOD.
ENDCLASS.
