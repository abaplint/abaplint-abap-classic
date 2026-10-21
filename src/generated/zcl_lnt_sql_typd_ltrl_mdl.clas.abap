* TS: src/abap/2_statements/expressions/sql_typed_literal.ts.module module
CLASS zcl_lnt_sql_typd_ltrl_mdl DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    CLASS-DATA typed_literal_types TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CLASS-DATA zlnt_builtin_init_e2b55c8dcc51 TYPE abap_bool.
    CLASS-METHODS zlnt_builtin_init_527ecce2c635.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sql_typd_ltrl_mdl IMPLEMENTATION.
  METHOD zlnt_builtin_init_527ecce2c635.
    IF zlnt_builtin_init_e2b55c8dcc51 = abap_true.
      RETURN.
    ENDIF.
    zlnt_builtin_init_e2b55c8dcc51 = abap_true.
    IF zcl_lnt_sql_typd_ltrl_mdl=>zlnt_builtin_init_e2b55c8dcc51 = abap_false.
      zcl_lnt_sql_typd_ltrl_mdl=>zlnt_builtin_init_527ecce2c635( ).
    ENDIF.
    DATA t2 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t2.
    t2->load( ).
    APPEND |CHAR| TO t2->items.
    t2->save( ).
    t2->load( ).
    APPEND |CLNT| TO t2->items.
    t2->save( ).
    t2->load( ).
    APPEND |CUKY| TO t2->items.
    t2->save( ).
    t2->load( ).
    APPEND |CURR| TO t2->items.
    t2->save( ).
    t2->load( ).
    APPEND |DATN| TO t2->items.
    t2->save( ).
    t2->load( ).
    APPEND |DATS| TO t2->items.
    t2->save( ).
    t2->load( ).
    APPEND |DEC| TO t2->items.
    t2->save( ).
    t2->load( ).
    APPEND |DECFLOAT16| TO t2->items.
    t2->save( ).
    t2->load( ).
    APPEND |DECFLOAT34| TO t2->items.
    t2->save( ).
    t2->load( ).
    APPEND |D16N| TO t2->items.
    t2->save( ).
    t2->load( ).
    APPEND |D34N| TO t2->items.
    t2->save( ).
    t2->load( ).
    APPEND |D16D| TO t2->items.
    t2->save( ).
    t2->load( ).
    APPEND |D34D| TO t2->items.
    t2->save( ).
    t2->load( ).
    APPEND |D16R| TO t2->items.
    t2->save( ).
    t2->load( ).
    APPEND |D34R| TO t2->items.
    t2->save( ).
    t2->load( ).
    APPEND |FLTP| TO t2->items.
    t2->save( ).
    t2->load( ).
    APPEND |INT1| TO t2->items.
    t2->save( ).
    t2->load( ).
    APPEND |INT2| TO t2->items.
    t2->save( ).
    t2->load( ).
    APPEND |INT4| TO t2->items.
    t2->save( ).
    t2->load( ).
    APPEND |INT8| TO t2->items.
    t2->save( ).
    t2->load( ).
    APPEND |LANG| TO t2->items.
    t2->save( ).
    t2->load( ).
    APPEND |NUMC| TO t2->items.
    t2->save( ).
    t2->load( ).
    APPEND |QUAN| TO t2->items.
    t2->save( ).
    t2->load( ).
    APPEND |RAW| TO t2->items.
    t2->save( ).
    t2->load( ).
    APPEND |RAWSTRING| TO t2->items.
    t2->save( ).
    t2->load( ).
    APPEND |SSTRING| TO t2->items.
    t2->save( ).
    t2->load( ).
    APPEND |STRING| TO t2->items.
    t2->save( ).
    t2->load( ).
    APPEND |TIMN| TO t2->items.
    t2->save( ).
    t2->load( ).
    APPEND |TIMS| TO t2->items.
    t2->save( ).
    t2->load( ).
    APPEND |UNIT| TO t2->items.
    t2->save( ).
    t2->load( ).
    APPEND |UTCLONG| TO t2->items.
    t2->save( ).
    zcl_lnt_sql_typd_ltrl_mdl=>typed_literal_types = t2.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1943_672e300060ea.
  ENDMETHOD.
ENDCLASS.
