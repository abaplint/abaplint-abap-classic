* TS: src/abap/2_statements/expressions/method_parameters.ts:5:1 MethodParameters
CLASS zcl_lnt_st_method_parameters DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_st_method_parameters IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = |EXPORTING|.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d225_0eec1dcc9b8a.
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
    t18->sval = |IMPORTING|.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t22) = zlnt_runtime_desc_78196487750d=>zlnt_member_d199_07bab553574b.
    IF t22 IS BOUND.
      CREATE OBJECT t21.
      t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t21->cval = t22.
    ENDIF.
    DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t24.
    t15 = zcl_lnt_st_combi_module=>seq( i_first = t18 i_second = t21 i_rest = t24 ).
    DATA t29 TYPE REF TO zif_lnt_statement_runnable.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t32.
    t32->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t32->sval = |CHANGING|.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t36) = zlnt_runtime_desc_78196487750d=>zlnt_member_d199_07bab553574b.
    IF t36 IS BOUND.
      CREATE OBJECT t35.
      t35->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t35->cval = t36.
    ENDIF.
    DATA t38 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t38.
    t29 = zcl_lnt_st_combi_module=>seq( i_first = t32 i_second = t35 i_rest = t38 ).
    DATA t43 TYPE REF TO zif_lnt_statement_runnable.
    DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t46.
    t46->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t46->sval = |RECEIVING|.
    DATA t49 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t50) = zlnt_runtime_desc_78196487750d=>zlnt_member_d236_e9f6471ae6bb.
    IF t50 IS BOUND.
      CREATE OBJECT t49.
      t49->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t49->cval = t50.
    ENDIF.
    DATA t52 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t52.
    t43 = zcl_lnt_st_combi_module=>seq( i_first = t46 i_second = t49 i_rest = t52 ).
    DATA t57 TYPE REF TO zif_lnt_statement_runnable.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t60.
    t60->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t60->sval = |EXCEPTIONS|.
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t64) = zlnt_runtime_desc_78196487750d=>zlnt_member_d200_9c08cf3762d0.
    IF t64 IS BOUND.
      CREATE OBJECT t63.
      t63->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t63->cval = t64.
    ENDIF.
    DATA t66 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t66.
    t57 = zcl_lnt_st_combi_module=>seq( i_first = t60 i_second = t63 i_rest = t66 ).
    DATA t74 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t75 TYPE REF TO zif_lnt_statement_runnable.
    DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t78 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t79 TYPE REF TO object.
      t79 = t1.
      TRY.
          t76 ?= t79.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t76 IS NOT BOUND.
        TRY.
            t78 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t78 IS BOUND.
          t76 = t78->source( ).
        ENDIF.
        IF t76 IS NOT BOUND.
          CREATE OBJECT t76.
          t76->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t76->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    t75 = zcl_lnt_st_combi_module=>opt_prio( i_first = t76 ).
    IF t75 IS BOUND.
      DATA t80 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t81 TYPE REF TO object.
      t81 = t75.
      TRY.
          t74 ?= t81.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t74 IS NOT BOUND.
        TRY.
            t80 ?= t75.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t80 IS BOUND.
          t74 = t80->source( ).
        ENDIF.
        IF t74 IS NOT BOUND.
          CREATE OBJECT t74.
          t74->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t74->oval = t75.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t84 TYPE REF TO zif_lnt_statement_runnable.
    DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t15 IS BOUND.
      DATA t87 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t88 TYPE REF TO object.
      t88 = t15.
      TRY.
          t85 ?= t88.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t85 IS NOT BOUND.
        TRY.
            t87 ?= t15.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t87 IS BOUND.
          t85 = t87->source( ).
        ENDIF.
        IF t85 IS NOT BOUND.
          CREATE OBJECT t85.
          t85->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t85->oval = t15.
        ENDIF.
      ENDIF.
    ENDIF.
    t84 = zcl_lnt_st_combi_module=>opt_prio( i_first = t85 ).
    IF t84 IS BOUND.
      DATA t89 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t90 TYPE REF TO object.
      t90 = t84.
      TRY.
          t83 ?= t90.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t83 IS NOT BOUND.
        TRY.
            t89 ?= t84.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t89 IS BOUND.
          t83 = t89->source( ).
        ENDIF.
        IF t83 IS NOT BOUND.
          CREATE OBJECT t83.
          t83->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t83->oval = t84.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t91 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t91.
    DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t95 TYPE REF TO zif_lnt_statement_runnable.
    DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t29 IS BOUND.
      DATA t98 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t99 TYPE REF TO object.
      t99 = t29.
      TRY.
          t96 ?= t99.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t96 IS NOT BOUND.
        TRY.
            t98 ?= t29.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t98 IS BOUND.
          t96 = t98->source( ).
        ENDIF.
        IF t96 IS NOT BOUND.
          CREATE OBJECT t96.
          t96->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t96->oval = t29.
        ENDIF.
      ENDIF.
    ENDIF.
    t95 = zcl_lnt_st_combi_module=>opt_prio( i_first = t96 ).
    IF t95 IS BOUND.
      DATA t100 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t101 TYPE REF TO object.
      t101 = t95.
      TRY.
          t94 ?= t101.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t94 IS NOT BOUND.
        TRY.
            t100 ?= t95.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t100 IS BOUND.
          t94 = t100->source( ).
        ENDIF.
        IF t94 IS NOT BOUND.
          CREATE OBJECT t94.
          t94->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t94->oval = t95.
        ENDIF.
      ENDIF.
    ENDIF.
    t91->load( ).
    APPEND t94 TO t91->items.
    t91->save( ).
    DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t104 TYPE REF TO zif_lnt_statement_runnable.
    DATA t105 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t43 IS BOUND.
      DATA t107 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t108 TYPE REF TO object.
      t108 = t43.
      TRY.
          t105 ?= t108.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t105 IS NOT BOUND.
        TRY.
            t107 ?= t43.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t107 IS BOUND.
          t105 = t107->source( ).
        ENDIF.
        IF t105 IS NOT BOUND.
          CREATE OBJECT t105.
          t105->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t105->oval = t43.
        ENDIF.
      ENDIF.
    ENDIF.
    t104 = zcl_lnt_st_combi_module=>opt_prio( i_first = t105 ).
    IF t104 IS BOUND.
      DATA t109 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t110 TYPE REF TO object.
      t110 = t104.
      TRY.
          t103 ?= t110.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t103 IS NOT BOUND.
        TRY.
            t109 ?= t104.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t109 IS BOUND.
          t103 = t109->source( ).
        ENDIF.
        IF t103 IS NOT BOUND.
          CREATE OBJECT t103.
          t103->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t103->oval = t104.
        ENDIF.
      ENDIF.
    ENDIF.
    t91->load( ).
    APPEND t103 TO t91->items.
    t91->save( ).
    DATA t112 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t113 TYPE REF TO zif_lnt_statement_runnable.
    DATA t114 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t57 IS BOUND.
      DATA t116 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t117 TYPE REF TO object.
      t117 = t57.
      TRY.
          t114 ?= t117.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t114 IS NOT BOUND.
        TRY.
            t116 ?= t57.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t116 IS BOUND.
          t114 = t116->source( ).
        ENDIF.
        IF t114 IS NOT BOUND.
          CREATE OBJECT t114.
          t114->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t114->oval = t57.
        ENDIF.
      ENDIF.
    ENDIF.
    t113 = zcl_lnt_st_combi_module=>opt_prio( i_first = t114 ).
    IF t113 IS BOUND.
      DATA t118 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t119 TYPE REF TO object.
      t119 = t113.
      TRY.
          t112 ?= t119.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t112 IS NOT BOUND.
        TRY.
            t118 ?= t113.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t118 IS BOUND.
          t112 = t118->source( ).
        ENDIF.
        IF t112 IS NOT BOUND.
          CREATE OBJECT t112.
          t112->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t112->oval = t113.
        ENDIF.
      ENDIF.
    ENDIF.
    t91->load( ).
    APPEND t112 TO t91->items.
    t91->save( ).
    result = zcl_lnt_st_combi_module=>seq( i_first = t74 i_second = t83 i_rest = t91 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d222_4f064a8e9470.
  ENDMETHOD.
ENDCLASS.
