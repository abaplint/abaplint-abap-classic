* TS: src/cds/expressions/cds_string.ts:4:1 CDSString
CLASS zcl_lnt_cds_string DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_cds_string IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t3 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t3 TYPE zlnt_runtime_rege_8d1cc1058680 EXPORTING pattern = `^'(?:[^'\\]|''|\\'|\\\\|\\(?!'))*'$` flags = || checked = abap_true.
    t1 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t3 ).
    DATA t6 TYPE REF TO zif_lnt_statement_runnable.
    DATA t8 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    DATA(t9) = |^(?:int[1-9]\|int8\|sstring\|sstr\|char\|numc\|dats\|datn\|tims\|timn|.
    t9 = t9 && `|utcl|utclong|fltp|decfloat\d+|dec|string|rawstring|rstr|raw`.
    t9 = t9 && |\|xstring\|clnt\|lang\|unit\|cuky\|curr\|quan\|geom_ewkb\|d34n\|d16n\|d|.
    t9 = t9 && |34d\|d16d\|d34s\|d16s\|d34r\|d16r\|d\|t\|p\|n\|c\|x\|f)$|.
    DATA(t10) = |^(?:int[1-9]\|int8\|sstring\|sstr\|char\|numc\|dats\|datn\|tims\|timn|.
    t10 = t10 && |\|utcl\|utclong\|fltp\|decfloat[0-9]+\|dec\|string\|rawstring\|rstr\||.
    t10 = t10 && |raw\|xstring\|clnt\|lang\|unit\|cuky\|curr\|quan\|geom_ewkb\|d34n\|d16|.
    t10 = t10 && |n\|d34d\|d16d\|d34s\|d16s\|d34r\|d16r\|d\|t\|p\|n\|c\|x\|f)$|.
    CREATE OBJECT t8 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = t10 flags = |i|.
    t8->source = t9.
    t6 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t8 ).
    DATA t12 TYPE REF TO zif_lnt_statement_runnable.
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t15.
    t15->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t15->sval = |abap|.
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t18.
    t18->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t18->sval = |.|.
    DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t20.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t6 IS BOUND.
      DATA t25 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t23 ?= t6.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t23 IS NOT BOUND.
        TRY.
            t25 ?= t6.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t25 IS BOUND.
          t23 = t25->source( ).
        ENDIF.
        IF t23 IS NOT BOUND.
          CREATE OBJECT t23.
          t23->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t23->oval = t6.
        ENDIF.
      ENDIF.
    ENDIF.
    t20->load( ).
    APPEND t23 TO t20->items.
    t20->save( ).
    DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t29 TYPE REF TO zif_lnt_statement_runnable.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t31 TYPE REF TO zif_lnt_statement_runnable.
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t33.
    t33->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t33->sval = |(|.
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t37 TYPE REF TO zif_lnt_statement_runnable.
    DATA t38 TYPE REF TO zlnt_runtime_rege_5a210f82384e.
    CREATE OBJECT t38 TYPE zlnt_runtime_rege_5a210f82384e EXPORTING pattern = |^[0-9]+$| flags = ||.
    t38->source = `^\d+$`.
    t37 = zcl_lnt_st_combi_module=>regex( i_r_f634 = t38 ).
    IF t37 IS BOUND.
      DATA t42 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t36 ?= t37.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t36 IS NOT BOUND.
        TRY.
            t42 ?= t37.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t42 IS BOUND.
          t36 = t42->source( ).
        ENDIF.
        IF t36 IS NOT BOUND.
          CREATE OBJECT t36.
          t36->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t36->oval = t37.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t44 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t44.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t47.
    t47->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t47->sval = |)|.
    t44->load( ).
    APPEND t47 TO t44->items.
    t44->save( ).
    t31 = zcl_lnt_st_combi_module=>seq( i_first = t33 i_second = t36 i_rest = t44 ).
    IF t31 IS BOUND.
      DATA t53 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t30 ?= t31.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t30 IS NOT BOUND.
        TRY.
            t53 ?= t31.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t53 IS BOUND.
          t30 = t53->source( ).
        ENDIF.
        IF t30 IS NOT BOUND.
          CREATE OBJECT t30.
          t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t30->oval = t31.
        ENDIF.
      ENDIF.
    ENDIF.
    t29 = zcl_lnt_st_combi_module=>opt_prio( i_first = t30 ).
    IF t29 IS BOUND.
      DATA t55 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t28 ?= t29.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t28 IS NOT BOUND.
        TRY.
            t55 ?= t29.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t55 IS BOUND.
          t28 = t55->source( ).
        ENDIF.
        IF t28 IS NOT BOUND.
          CREATE OBJECT t28.
          t28->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t28->oval = t29.
        ENDIF.
      ENDIF.
    ENDIF.
    t20->load( ).
    APPEND t28 TO t20->items.
    t20->save( ).
    DATA t58 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t60 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t58 ?= t1.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t58 IS NOT BOUND.
        TRY.
            t60 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t60 IS BOUND.
          t58 = t60->source( ).
        ENDIF.
        IF t58 IS NOT BOUND.
          CREATE OBJECT t58.
          t58->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t58->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    t20->load( ).
    APPEND t58 TO t20->items.
    t20->save( ).
    t12 = zcl_lnt_st_combi_module=>seq( i_first = t15 i_second = t18 i_rest = t20 ).
    DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t12 IS BOUND.
      DATA t70 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t68 ?= t12.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t68 IS NOT BOUND.
        TRY.
            t70 ?= t12.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t70 IS BOUND.
          t68 = t70->source( ).
        ENDIF.
        IF t68 IS NOT BOUND.
          CREATE OBJECT t68.
          t68->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t68->oval = t12.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t73 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t75 TYPE REF TO zlnt_view_storage_74017ca272ac.
      TRY.
          t73 ?= t1.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t73 IS NOT BOUND.
        TRY.
            t75 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t75 IS BOUND.
          t73 = t75->source( ).
        ENDIF.
        IF t73 IS NOT BOUND.
          CREATE OBJECT t73.
          t73->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t73->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t78 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t78.
    result = zcl_lnt_st_combi_module=>alt_prio( i_first = t68 i_second = t73 i_rest = t78 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1081_610575257010.
  ENDMETHOD.
ENDCLASS.
