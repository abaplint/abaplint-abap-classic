* TS: src/abap/2_statements/expressions/sql_from_body.ts:7:1 SQLFromBody
CLASS zcl_lnt_sql_from_body DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sql_from_body IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t4 TYPE REF TO zif_lnt_statement_runnable.
    DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t7 TYPE REF TO zif_lnt_statement_runnable.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t9 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t10) = zlnt_runtime_desc_78196487750d=>zlnt_member_d55_6610642b610c97.
    t9 = zcl_lnt_st_combi_module=>tok( i_t = t10 ).
    IF t9 IS BOUND.
      DATA t11 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t12 TYPE REF TO object.
      t12 = t9.
      TRY.
          t8 ?= t12.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t8 IS NOT BOUND.
        TRY.
            t11 ?= t9.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t11 IS BOUND.
          t8 = t11->source( ).
        ENDIF.
        IF t8 IS NOT BOUND.
          CREATE OBJECT t8.
          t8->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t8->oval = t9.
        ENDIF.
      ENDIF.
    ENDIF.
    t7 = zcl_lnt_st_combi_module=>opt_prio( i_first = t8 ).
    IF t7 IS BOUND.
      DATA t13 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t14 TYPE REF TO object.
      t14 = t7.
      TRY.
          t6 ?= t14.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t6 IS NOT BOUND.
        TRY.
            t13 ?= t7.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t13 IS BOUND.
          t6 = t13->source( ).
        ENDIF.
        IF t6 IS NOT BOUND.
          CREATE OBJECT t6.
          t6->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t6->oval = t7.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t17) = zlnt_runtime_desc_78196487750d=>zlnt_member_d320_7be18f722ddf.
    IF t17 IS BOUND.
      CREATE OBJECT t16.
      t16->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t16->cval = t17.
    ENDIF.
    DATA t19 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t19.
    t4 = zcl_lnt_st_combi_module=>seq( i_first = t6 i_second = t16 i_rest = t19 ).
    IF t4 IS BOUND.
      DATA t24 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t25 TYPE REF TO object.
      t25 = t4.
      TRY.
          t3 ?= t25.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t3 IS NOT BOUND.
        TRY.
            t24 ?= t4.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t24 IS BOUND.
          t3 = t24->source( ).
        ENDIF.
        IF t3 IS NOT BOUND.
          CREATE OBJECT t3.
          t3->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t3->oval = t4.
        ENDIF.
      ENDIF.
    ENDIF.
    t1 = zcl_lnt_st_combi_module=>star_prio( i_first = t3 ).
    DATA t26 TYPE REF TO zif_lnt_statement_runnable.
    DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t30) = zlnt_runtime_desc_78196487750d=>zlnt_member_d321_17502cdda795.
    IF t30 IS BOUND.
      CREATE OBJECT t29.
      t29->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t29->cval = t30.
    ENDIF.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t34 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t35 TYPE REF TO object.
      t35 = t1.
      TRY.
          t32 ?= t35.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t32 IS NOT BOUND.
        TRY.
            t34 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t34 IS BOUND.
          t32 = t34->source( ).
        ENDIF.
        IF t32 IS NOT BOUND.
          CREATE OBJECT t32.
          t32->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t32->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t37 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t37.
    t26 = zcl_lnt_st_combi_module=>seq( i_first = t29 i_second = t32 i_rest = t37 ).
    DATA t42 TYPE REF TO zif_lnt_statement_runnable.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t46 TYPE REF TO zif_lnt_statement_runnable.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t49 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t50) = zlnt_runtime_desc_78196487750d=>zlnt_member_d53_2a2dc81ca7ec77.
    t49 = zcl_lnt_st_combi_module=>tok( i_t = t50 ).
    IF t49 IS BOUND.
      DATA t51 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t52 TYPE REF TO object.
      t52 = t49.
      TRY.
          t48 ?= t52.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t48 IS NOT BOUND.
        TRY.
            t51 ?= t49.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t51 IS BOUND.
          t48 = t51->source( ).
        ENDIF.
        IF t48 IS NOT BOUND.
          CREATE OBJECT t48.
          t48->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t48->oval = t49.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t55) = zlnt_runtime_desc_78196487750d=>zlnt_member_d322_c628df08c7dc.
    IF t55 IS BOUND.
      CREATE OBJECT t54.
      t54->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t54->cval = t55.
    ENDIF.
    DATA t56 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t56.
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t60 TYPE REF TO zif_lnt_statement_runnable.
    DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t62 TYPE REF TO zif_lnt_statement_runnable.
    DATA(t63) = zlnt_runtime_desc_78196487750d=>zlnt_member_d55_6610642b610c97.
    t62 = zcl_lnt_st_combi_module=>tok( i_t = t63 ).
    IF t62 IS BOUND.
      DATA t64 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t65 TYPE REF TO object.
      t65 = t62.
      TRY.
          t61 ?= t65.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t61 IS NOT BOUND.
        TRY.
            t64 ?= t62.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t64 IS BOUND.
          t61 = t64->source( ).
        ENDIF.
        IF t61 IS NOT BOUND.
          CREATE OBJECT t61.
          t61->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t61->oval = t62.
        ENDIF.
      ENDIF.
    ENDIF.
    t60 = zcl_lnt_st_combi_module=>opt_prio( i_first = t61 ).
    IF t60 IS BOUND.
      DATA t66 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t67 TYPE REF TO object.
      t67 = t60.
      TRY.
          t59 ?= t67.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t59 IS NOT BOUND.
        TRY.
            t66 ?= t60.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t66 IS BOUND.
          t59 = t66->source( ).
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
    DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t71 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t72 TYPE REF TO object.
      t72 = t1.
      TRY.
          t69 ?= t72.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t69 IS NOT BOUND.
        TRY.
            t71 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t71 IS BOUND.
          t69 = t71->source( ).
        ENDIF.
        IF t69 IS NOT BOUND.
          CREATE OBJECT t69.
          t69->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t69->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    t56->load( ).
    APPEND t69 TO t56->items.
    t56->save( ).
    t46 = zcl_lnt_st_combi_module=>seq( i_first = t48 i_second = t54 i_rest = t56 ).
    IF t46 IS BOUND.
      DATA t77 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t78 TYPE REF TO object.
      t78 = t46.
      TRY.
          t45 ?= t78.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t45 IS NOT BOUND.
        TRY.
            t77 ?= t46.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t77 IS BOUND.
          t45 = t77->source( ).
        ENDIF.
        IF t45 IS NOT BOUND.
          CREATE OBJECT t45.
          t45->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t45->oval = t46.
        ENDIF.
      ENDIF.
    ENDIF.
    t42 = zcl_lnt_st_combi_module=>ver_not_lang( i_lang_version = |KeyUser| i_first = t45 ).
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t42 IS BOUND.
      DATA t83 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t84 TYPE REF TO object.
      t84 = t42.
      TRY.
          t81 ?= t84.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t81 IS NOT BOUND.
        TRY.
            t83 ?= t42.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t83 IS BOUND.
          t81 = t83->source( ).
        ENDIF.
        IF t81 IS NOT BOUND.
          CREATE OBJECT t81.
          t81->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t81->oval = t42.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t26 IS BOUND.
      DATA t88 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t89 TYPE REF TO object.
      t89 = t26.
      TRY.
          t86 ?= t89.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t86 IS NOT BOUND.
        TRY.
            t88 ?= t26.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t88 IS BOUND.
          t86 = t88->source( ).
        ENDIF.
        IF t86 IS NOT BOUND.
          CREATE OBJECT t86.
          t86->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t86->oval = t26.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t91 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t91.
    result = zcl_lnt_st_combi_module=>alt_prio( i_first = t81 i_second = t86 i_rest = t91 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d322_c628df08c7dc.
  ENDMETHOD.
ENDCLASS.
