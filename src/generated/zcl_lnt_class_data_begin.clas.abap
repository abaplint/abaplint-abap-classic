* TS: src/abap/2_statements/statements/class_data_begin.ts:6:1 ClassDataBegin
CLASS zcl_lnt_class_data_begin DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_statement.
    INTERFACES zif_lnt_union_dc0fb493.
    METHODS get_matcher RETURNING VALUE(result) TYPE REF TO zif_lnt_statement_runnable.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_class_data_begin IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_statement_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = |OCCURS|.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d108_ef0500b17c81.
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
    t18->sval = |BEGIN OF|.
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t22 TYPE REF TO zif_lnt_statement_runnable.
    DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t23.
    t23->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t23->sval = |COMMON PART|.
    t22 = zcl_lnt_st_combi_module=>opt_prio( i_first = t23 ).
    IF t22 IS BOUND.
      DATA t25 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t26 TYPE REF TO object.
      t26 = t22.
      TRY.
          t21 ?= t26.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t21 IS NOT BOUND.
        TRY.
            t25 ?= t22.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t25 IS BOUND.
          t21 = t25->source( ).
        ENDIF.
        IF t21 IS NOT BOUND.
          CREATE OBJECT t21.
          t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t21->oval = t22.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t27 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t27.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t31) = zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429.
    IF t31 IS BOUND.
      CREATE OBJECT t30.
      t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_class.
      t30->cval = t31.
    ENDIF.
    t27->load( ).
    APPEND t30 TO t27->items.
    t27->save( ).
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t34 TYPE REF TO zif_lnt_statement_runnable.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t35.
    t35->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t35->sval = |READ-ONLY|.
    t34 = zcl_lnt_st_combi_module=>opt_prio( i_first = t35 ).
    IF t34 IS BOUND.
      DATA t37 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t38 TYPE REF TO object.
      t38 = t34.
      TRY.
          t33 ?= t38.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t33 IS NOT BOUND.
        TRY.
            t37 ?= t34.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t37 IS BOUND.
          t33 = t37->source( ).
        ENDIF.
        IF t33 IS NOT BOUND.
          CREATE OBJECT t33.
          t33->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t33->oval = t34.
        ENDIF.
      ENDIF.
    ENDIF.
    t27->load( ).
    APPEND t33 TO t27->items.
    t27->save( ).
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t41 TYPE REF TO zif_lnt_statement_runnable.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t1 IS BOUND.
      DATA t44 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t45 TYPE REF TO object.
      t45 = t1.
      TRY.
          t42 ?= t45.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t42 IS NOT BOUND.
        TRY.
            t44 ?= t1.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t44 IS BOUND.
          t42 = t44->source( ).
        ENDIF.
        IF t42 IS NOT BOUND.
          CREATE OBJECT t42.
          t42->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t42->oval = t1.
        ENDIF.
      ENDIF.
    ENDIF.
    t41 = zcl_lnt_st_combi_module=>opt_prio( i_first = t42 ).
    IF t41 IS BOUND.
      DATA t46 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t47 TYPE REF TO object.
      t47 = t41.
      TRY.
          t40 ?= t47.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t40 IS NOT BOUND.
        TRY.
            t46 ?= t41.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t46 IS BOUND.
          t40 = t46->source( ).
        ENDIF.
        IF t40 IS NOT BOUND.
          CREATE OBJECT t40.
          t40->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t40->oval = t41.
        ENDIF.
      ENDIF.
    ENDIF.
    t27->load( ).
    APPEND t40 TO t27->items.
    t27->save( ).
    t15 = zcl_lnt_st_combi_module=>seq( i_first = t18 i_second = t21 i_rest = t27 ).
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t54.
    t54->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t54->sval = |CLASS-DATA|.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t15 IS BOUND.
      DATA t59 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t60 TYPE REF TO object.
      t60 = t15.
      TRY.
          t57 ?= t60.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t57 IS NOT BOUND.
        TRY.
            t59 ?= t15.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t59 IS BOUND.
          t57 = t59->source( ).
        ENDIF.
        IF t57 IS NOT BOUND.
          CREATE OBJECT t57.
          t57->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t57->oval = t15.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t62 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t62.
    result = zcl_lnt_st_combi_module=>seq( i_first = t54 i_second = t57 i_rest = t62 ).

  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_nati_72359f490bf2( ).
  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d408_ad3db4ea5b7e.
  ENDMETHOD.

  METHOD zif_lnt_statement~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_statement~get_matcher.
    result = me->get_matcher( ).
  ENDMETHOD.

  METHOD zif_lnt_union_dc0fb493~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
ENDCLASS.
