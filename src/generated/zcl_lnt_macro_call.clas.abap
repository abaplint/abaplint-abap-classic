* TS: src/abap/2_statements/statements/_statement.ts:25:1 MacroCall
CLASS zcl_lnt_macro_call DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_macro_call IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
    CLEAR t1.
    DATA t2 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
    CLEAR t2.
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    CLEAR t3.
    DATA(t4) = abap_true.
    IF t4 = abap_true.
      DATA(t5) = |MacroCall Statement, get_matcher|.
      DATA(t6) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t6->has = abap_true.
      t6->value = t5.
      t3 = t6.
    ELSE.
      DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t7.
      t3 = t7.
    ENDIF.
    t2 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t3 ).
    t1 = NEW #( ).
    t1->payload = t2.
    CLEAR t1->source_value.
    IF t2 IS BOUND.
      DATA t8 TYPE REF TO zlnt_view_storage_74017ca272ac.
      CLEAR t8.
      DATA t9 TYPE REF TO object.
      CLEAR t9.
      CLEAR t8.
      t9 = t2.
      TRY.
          t1->source_value ?= t9.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t1->source_value IS NOT BOUND.
        TRY.
            t8 ?= t2.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t8 IS BOUND.
          t1->source_value = t8->source( ).
        ENDIF.
        IF t1->source_value IS NOT BOUND.
          CREATE OBJECT t1->source_value.
          t1->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t1->source_value->oval = t2.
        ENDIF.
      ENDIF.
    ENDIF.
    RAISE EXCEPTION t1.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d366_6e18e9b47d14.
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
