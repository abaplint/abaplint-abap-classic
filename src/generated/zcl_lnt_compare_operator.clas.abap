* TS: src/abap/2_statements/expressions/compare_operator.ts:4:1 CompareOperator
CLASS zcl_lnt_compare_operator DEFINITION PUBLIC INHERITING FROM zcl_lnt_expression CREATE PUBLIC.
  PUBLIC SECTION.
    METHODS constructor.
    METHODS get_runnable REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_compare_operator IMPLEMENTATION.
  METHOD constructor.
    super->constructor( ).
  ENDMETHOD.

  METHOD get_runnable.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t4.
    t4->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t4->sval = |=|.
    DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t7.
    t7->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t7->sval = |<>|.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t9.
    DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t12.
    t12->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t12->sval = |><|.
    t9->load( ).
    APPEND t12 TO t9->items.
    t9->save( ).
    DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t15.
    t15->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t15->sval = |<|.
    t9->load( ).
    APPEND t15 TO t9->items.
    t9->save( ).
    DATA t18 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t18.
    t18->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t18->sval = |>|.
    t9->load( ).
    APPEND t18 TO t9->items.
    t9->save( ).
    DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t21.
    t21->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t21->sval = |<=|.
    t9->load( ).
    APPEND t21 TO t9->items.
    t9->save( ).
    DATA t24 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t24.
    t24->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t24->sval = |>=|.
    t9->load( ).
    APPEND t24 TO t9->items.
    t9->save( ).
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t27.
    t27->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t27->sval = |=>|.
    t9->load( ).
    APPEND t27 TO t9->items.
    t9->save( ).
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t30.
    t30->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t30->sval = |=<|.
    t9->load( ).
    APPEND t30 TO t9->items.
    t9->save( ).
    DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t33.
    t33->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t33->sval = |CA|.
    t9->load( ).
    APPEND t33 TO t9->items.
    t9->save( ).
    DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t36.
    t36->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t36->sval = |CO|.
    t9->load( ).
    APPEND t36 TO t9->items.
    t9->save( ).
    DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t39.
    t39->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t39->sval = |CP|.
    t9->load( ).
    APPEND t39 TO t9->items.
    t9->save( ).
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t42.
    t42->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t42->sval = |EQ|.
    t9->load( ).
    APPEND t42 TO t9->items.
    t9->save( ).
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t45.
    t45->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t45->sval = |NE|.
    t9->load( ).
    APPEND t45 TO t9->items.
    t9->save( ).
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t48.
    t48->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t48->sval = |CN|.
    t9->load( ).
    APPEND t48 TO t9->items.
    t9->save( ).
    DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t51.
    t51->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t51->sval = |GE|.
    t9->load( ).
    APPEND t51 TO t9->items.
    t9->save( ).
    DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t54.
    t54->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t54->sval = |GT|.
    t9->load( ).
    APPEND t54 TO t9->items.
    t9->save( ).
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t57.
    t57->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t57->sval = |LT|.
    t9->load( ).
    APPEND t57 TO t9->items.
    t9->save( ).
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t60.
    t60->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t60->sval = |LE|.
    t9->load( ).
    APPEND t60 TO t9->items.
    t9->save( ).
    DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t63.
    t63->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t63->sval = |CS|.
    t9->load( ).
    APPEND t63 TO t9->items.
    t9->save( ).
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t66.
    t66->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t66->sval = |NS|.
    t9->load( ).
    APPEND t66 TO t9->items.
    t9->save( ).
    DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t69.
    t69->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t69->sval = |NA|.
    t9->load( ).
    APPEND t69 TO t9->items.
    t9->save( ).
    DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t72.
    t72->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t72->sval = |NP|.
    t9->load( ).
    APPEND t72 TO t9->items.
    t9->save( ).
    DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t75.
    t75->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t75->sval = |BYTE-CO|.
    t9->load( ).
    APPEND t75 TO t9->items.
    t9->save( ).
    DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t78.
    t78->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t78->sval = |BYTE-CA|.
    t9->load( ).
    APPEND t78 TO t9->items.
    t9->save( ).
    DATA t81 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t81.
    t81->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t81->sval = |BYTE-CS|.
    t9->load( ).
    APPEND t81 TO t9->items.
    t9->save( ).
    DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t84.
    t84->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t84->sval = |BYTE-CN|.
    t9->load( ).
    APPEND t84 TO t9->items.
    t9->save( ).
    DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t87.
    t87->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t87->sval = |BYTE-NA|.
    t9->load( ).
    APPEND t87 TO t9->items.
    t9->save( ).
    DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t90.
    t90->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t90->sval = |BYTE-NS|.
    t9->load( ).
    APPEND t90 TO t9->items.
    t9->save( ).
    DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t93.
    t93->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t93->sval = |O|.
    t9->load( ).
    APPEND t93 TO t9->items.
    t9->save( ).
    DATA t96 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t96.
    t96->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t96->sval = |Z|.
    t9->load( ).
    APPEND t96 TO t9->items.
    t9->save( ).
    DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CREATE OBJECT t99.
    t99->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
    t99->sval = |M|.
    t9->load( ).
    APPEND t99 TO t9->items.
    t9->save( ).
    result = zcl_lnt_st_combi_module=>alt_prio( i_first = t4 i_second = t7 i_rest = t9 ).

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d123_b66c920b623e.
  ENDMETHOD.
ENDCLASS.
