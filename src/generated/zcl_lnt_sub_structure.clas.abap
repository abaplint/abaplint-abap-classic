* TS: src/abap/3_structures/structures/_combi.ts:260:1 SubStructure
CLASS zcl_lnt_sub_structure DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_structure_runnable.
    DATA s TYPE REF TO zif_lnt_structure.
    DATA matcher TYPE REF TO zif_lnt_structure_runnable.
    METHODS constructor IMPORTING i_s TYPE REF TO zif_lnt_structure.
    METHODS to_railroad RETURNING VALUE(result) TYPE string.
    METHODS get_using RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS first RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS setup_matcher.
    METHODS run IMPORTING i_statements TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_parent TYPE REF TO zif_lnt_node RETURNING VALUE(result) TYPE REF TO zcl_lnt_imatch.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sub_structure IMPLEMENTATION.
  METHOD constructor.
    me->s = i_s.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `s`.
  ENDMETHOD.

  METHOD to_railroad.
    DATA t2 TYPE string.
    DATA t3 TYPE string.
    DATA t4 TYPE string.
    DATA(t5) = |Railroad.NonTerminal('|.
    DATA t6 TYPE string.
    t6 = me->s->zlnt_builtin_clas_3f891b097658( )->name.
    DATA(t9) = strlen( t5 ).
    t4 = |{ t5 }{ t6 }|.
    DATA(t11) = strlen( t4 ).
    t3 = |{ t4 }{ |', \{href: '#/structure/| }|.
    DATA t12 TYPE string.
    t12 = me->s->zlnt_builtin_clas_3f891b097658( )->name.
    DATA(t15) = strlen( t3 ).
    t2 = |{ t3 }{ t12 }|.
    DATA(t17) = strlen( t2 ).
    result = |{ t2 }{ |'\})| }|.

  ENDMETHOD.

  METHOD get_using.
    DATA t2 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t2.
    DATA t5 TYPE string.
    DATA(t6) = |structure/|.
    DATA t7 TYPE string.
    t7 = me->s->zlnt_builtin_clas_3f891b097658( )->name.
    DATA(t10) = strlen( t6 ).
    t5 = |{ t6 }{ t7 }|.
    t2->load( ).
    APPEND t5 TO t2->items.
    t2->save( ).
    result = t2.

  ENDMETHOD.

  METHOD first.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( me->matcher IS INITIAL ) = abap_true.
      me->matcher = me->s->get_matcher( ).
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `matcher`.
    ENDIF.
    result = me->matcher->first( ).

  ENDMETHOD.

  METHOD setup_matcher.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( me->matcher IS INITIAL ) = abap_true.
      me->matcher = me->s->get_matcher( ).
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `matcher`.
    ENDIF.
  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_statements.
    DATA(t2) = i_parent.
    DATA t3 TYPE REF TO zcl_lnt_structure_node.
    DATA(t5) = me->s.
    t3 = NEW zcl_lnt_structure_node( i_structure = t5 ).
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( me->matcher IS INITIAL ) = abap_true.
      me->matcher = me->s->get_matcher( ).
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `matcher`.
    ENDIF.
    DATA t15 TYPE REF TO zcl_lnt_imatch.
    t15 = me->matcher->run( i_statements = t1 i_parent = t3 ).
    DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t22 = t15->matched.
    t22->load( ).
    IF xsdbool( lines( t22->items ) = 0 ) = abap_true.
      DATA(t29) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t29->has = abap_true.
      t29->value = abap_true.
      t15->error = t29.
      DELETE t15->zlnt_record_delet_0597644d88b4 WHERE table_line = `error`.
      DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t15->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t15->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `error` p1 = t31 ).
      ENDIF.
      DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t15->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t15->zlnt_json_ownkeys_70e5fd461788->put( p0 = |error| p1 = t33 ).
      ENDIF.
    ELSE.
      t2->add_child( i_n_0c97 = t3 ).
    ENDIF.
    result = t15.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d693_4914f643f9e8.
  ENDMETHOD.

  METHOD zif_lnt_structure_runnable~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_structure_runnable~to_railroad.
    result = me->to_railroad( ).
  ENDMETHOD.

  METHOD zif_lnt_structure_runnable~get_using.
    result = me->get_using( ).
  ENDMETHOD.

  METHOD zif_lnt_structure_runnable~run.
    result = me->run( i_statements = i_statements i_parent = i_parent ).
  ENDMETHOD.

  METHOD zif_lnt_structure_runnable~first.
    result = me->first( ).
  ENDMETHOD.
ENDCLASS.
