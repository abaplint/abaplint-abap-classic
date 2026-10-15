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
    DATA(t1) = i_s.
    DATA(t2) = t1.
    me->s = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `s`.
  ENDMETHOD.

  METHOD to_railroad.
    DATA t1 TYPE string.
    DATA t2 TYPE string.
    DATA t3 TYPE string.
    DATA t4 TYPE string.
    DATA(t5) = |Railroad.NonTerminal('|.
    DATA t6 TYPE string.
    DATA t7 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA(t8) = me->s.
    t7 = t8->zlnt_builtin_clas_3f891b097658( ).
    t6 = t7->name.
    DATA(t9) = strlen( t5 ).
    t4 = |{ t5 }{ t6 }|.
    DATA(t10) = |', \{href: '#/structure/|.
    DATA(t11) = strlen( t4 ).
    t3 = |{ t4 }{ t10 }|.
    DATA t12 TYPE string.
    DATA t13 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA(t14) = me->s.
    t13 = t14->zlnt_builtin_clas_3f891b097658( ).
    t12 = t13->name.
    DATA(t15) = strlen( t3 ).
    t2 = |{ t3 }{ t12 }|.
    DATA(t16) = |'\})|.
    DATA(t17) = strlen( t2 ).
    t1 = |{ t2 }{ t16 }|.
    result = t1.

  ENDMETHOD.

  METHOD get_using.
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t2 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t3.
    t2 = t3.
    DATA(t4) = t2.
    DATA t5 TYPE string.
    DATA(t6) = |structure/|.
    DATA t7 TYPE string.
    DATA t8 TYPE REF TO zlnt_runtime_clas_a39833db3295.
    DATA(t9) = me->s.
    t8 = t9->zlnt_builtin_clas_3f891b097658( ).
    t7 = t8->name.
    DATA(t10) = strlen( t6 ).
    t5 = |{ t6 }{ t7 }|.
    t4->load( ).
    APPEND t5 TO t4->items.
    t4->save( ).
    DATA(t11) = t2.
    t1 = t11.
    result = t1.

  ENDMETHOD.

  METHOD first.
    DATA(t1) = VALUE abap_bool( ).
    DATA t2 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t3) = me->matcher.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t5.
    t4 = t5.
    DATA(t6) = VALUE abap_bool( ).
    DATA(t7) = t2.
    IF t7 IS INITIAL.
      t6 = abap_true.
    ENDIF.
    t1 = t6.
    IF t1 = abap_true.
      DATA t8 TYPE REF TO zif_lnt_structure_runnable.
      DATA(t9) = me->s.
      t8 = t9->get_matcher( ).
      me->matcher = t8.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `matcher`.
    ENDIF.
    DATA t10 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t11) = me->matcher.
    t10 = t11->first( ).
    result = t10.

  ENDMETHOD.

  METHOD setup_matcher.
    DATA(t1) = VALUE abap_bool( ).
    DATA t2 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t3) = me->matcher.
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t5.
    t4 = t5.
    DATA(t6) = VALUE abap_bool( ).
    DATA(t7) = t2.
    IF t7 IS INITIAL.
      t6 = abap_true.
    ENDIF.
    t1 = t6.
    IF t1 = abap_true.
      DATA t8 TYPE REF TO zif_lnt_structure_runnable.
      DATA(t9) = me->s.
      t8 = t9->get_matcher( ).
      me->matcher = t8.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `matcher`.
    ENDIF.
  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_statements.
    DATA(t2) = i_parent.
    DATA t3 TYPE REF TO zcl_lnt_structure_node.
    DATA t4 TYPE REF TO zcl_lnt_structure_node.
    DATA(t5) = me->s.
    t4 = NEW zcl_lnt_structure_node( i_structure = t5 ).
    t3 = t4.
    DATA(t6) = VALUE abap_bool( ).
    DATA t7 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t8) = me->matcher.
    t7 = t8.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t10.
    t9 = t10.
    DATA(t11) = VALUE abap_bool( ).
    DATA(t12) = t7.
    IF t12 IS INITIAL.
      t11 = abap_true.
    ENDIF.
    t6 = t11.
    IF t6 = abap_true.
      DATA t13 TYPE REF TO zif_lnt_structure_runnable.
      DATA(t14) = me->s.
      t13 = t14->get_matcher( ).
      me->matcher = t13.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `matcher`.
    ENDIF.
    DATA t15 TYPE REF TO zcl_lnt_imatch.
    DATA t16 TYPE REF TO zcl_lnt_imatch.
    DATA(t17) = me->matcher.
    DATA(t18) = t1.
    DATA(t19) = t3.
    t16 = t17->run( i_statements = t18 i_parent = t19 ).
    t15 = t16.
    DATA t20 TYPE abap_bool.
    DATA t21 TYPE i.
    DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t23) = t15.
    t22 = t23->matched.
    t22->load( ).
    t21 = lines( t22->items ).
    DATA(t24) = 0.
    t20 = xsdbool( t21 = t24 ).
    IF t20 = abap_true.
      DATA(t25) = t15.
      DATA t26 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t26.
      DATA(t27) = abap_true.
      IF t27 = abap_true.
        DATA(t28) = abap_true.
        DATA(t29) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t29->has = abap_true.
        t29->value = t28.
        t26 = t29.
      ELSE.
        DATA t30 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t30.
        t26 = t30.
      ENDIF.
      t25->error = t26.
      DELETE t25->zlnt_record_delet_0597644d88b4 WHERE table_line = `error`.
      DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t31.
      IF t25->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t25->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `error` p1 = t31 ).
      ENDIF.
      DATA(t32) = |error|.
      DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t33.
      IF t25->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t25->zlnt_json_ownkeys_70e5fd461788->put( p0 = t32 p1 = t33 ).
      ENDIF.
    ELSE.
      DATA(t34) = t2.
      DATA(t35) = t3.
      t34->add_child( i_n_0c97 = t35 ).
    ENDIF.
    DATA(t36) = t15.
    result = t36.

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
