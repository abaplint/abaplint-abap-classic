* TS: src/abap/3_structures/structures/_combi.ts:260:1 SubStructure
CLASS zcl_lnt_sub_structure DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
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
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sub_structure IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zif_lnt_structure( i_s ).
    DATA(t2) = CAST zif_lnt_structure( t1 ).
    me->s = t2.
  ENDMETHOD.
  METHOD to_railroad.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/3_structures/structures/_combi.ts:268|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD get_using.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/3_structures/structures/_combi.ts:272|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD first.
    DATA(t1) = VALUE abap_bool( ).
    DATA t2 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t3) = CAST zif_lnt_structure_runnable( me->matcher ).
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t5.
    t4 = t5.
    DATA(t6) = VALUE abap_bool( ).
    DATA(t7) = CAST zif_lnt_structure_runnable( t2 ).
    IF t7 IS INITIAL.
      t6 = abap_true.
    ENDIF.
    t1 = t6.
    IF t1 = abap_true.
      DATA t8 TYPE REF TO zif_lnt_structure_runnable.
      DATA(t9) = CAST zif_lnt_structure( me->s ).
      t8 = t9->get_matcher(  ).
      me->matcher = t8.
    ENDIF.
    DATA t10 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t11) = CAST zif_lnt_structure_runnable( me->matcher ).
    t10 = t11->first(  ).
    result = t10.

  ENDMETHOD.
  METHOD setup_matcher.
    DATA(t1) = VALUE abap_bool( ).
    DATA t2 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t3) = CAST zif_lnt_structure_runnable( me->matcher ).
    t2 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t5.
    t4 = t5.
    DATA(t6) = VALUE abap_bool( ).
    DATA(t7) = CAST zif_lnt_structure_runnable( t2 ).
    IF t7 IS INITIAL.
      t6 = abap_true.
    ENDIF.
    t1 = t6.
    IF t1 = abap_true.
      DATA t8 TYPE REF TO zif_lnt_structure_runnable.
      DATA(t9) = CAST zif_lnt_structure( me->s ).
      t8 = t9->get_matcher(  ).
      me->matcher = t8.
    ENDIF.
  ENDMETHOD.
  METHOD run.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( i_statements ).
    DATA(t2) = CAST zif_lnt_node( i_parent ).
    DATA t3 TYPE REF TO zcl_lnt_structure_node.
    DATA t4 TYPE REF TO zcl_lnt_structure_node.
    DATA(t5) = CAST zif_lnt_structure( me->s ).
    t4 = NEW zcl_lnt_structure_node( i_structure = t5 ).
    t3 = t4.
    DATA(t6) = VALUE abap_bool( ).
    DATA t7 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t8) = CAST zif_lnt_structure_runnable( me->matcher ).
    t7 = t8.
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t10.
    t9 = t10.
    DATA(t11) = VALUE abap_bool( ).
    DATA(t12) = CAST zif_lnt_structure_runnable( t7 ).
    IF t12 IS INITIAL.
      t11 = abap_true.
    ENDIF.
    t6 = t11.
    IF t6 = abap_true.
      DATA t13 TYPE REF TO zif_lnt_structure_runnable.
      DATA(t14) = CAST zif_lnt_structure( me->s ).
      t13 = t14->get_matcher(  ).
      me->matcher = t13.
    ENDIF.
    DATA t15 TYPE REF TO zcl_lnt_imatch.
    DATA t16 TYPE REF TO zcl_lnt_imatch.
    DATA(t17) = CAST zif_lnt_structure_runnable( me->matcher ).
    DATA(t18) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA(t19) = CAST zcl_lnt_structure_node( t3 ).
    t16 = t17->run( i_statements = t18 i_parent = t19 ).
    t15 = t16.
    DATA t20 TYPE abap_bool.
    DATA t21 TYPE i.
    DATA t22 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t23) = CAST zcl_lnt_imatch( t15 ).
    t22 = t23->matched.
    t21 = lines( t22->items ).
    DATA(t24) = 0.
    t20 = xsdbool( t21 = t24 ).
    IF t20 = abap_true.
      DATA(t25) = CAST zcl_lnt_imatch( t15 ).
      DATA(t26) = abap_true.
      t25->error = t26.
    ELSE.
      DATA(t27) = CAST zif_lnt_node( t2 ).
      DATA(t28) = CAST zcl_lnt_structure_node( t3 ).
      t27->add_child( i_n_0c97 = t28 ).
    ENDIF.
    DATA(t29) = CAST zcl_lnt_imatch( t15 ).
    result = t29.

  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d676_4264b2ce5dbc.
  ENDMETHOD.
  METHOD zif_lnt_structure_runnable~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zif_lnt_structure_runnable~to_railroad.
    result = me->to_railroad(  ).
  ENDMETHOD.
  METHOD zif_lnt_structure_runnable~get_using.
    result = me->get_using(  ).
  ENDMETHOD.
  METHOD zif_lnt_structure_runnable~run.
    result = me->run(  i_statements = i_statements i_parent = i_parent ).
  ENDMETHOD.
  METHOD zif_lnt_structure_runnable~first.
    result = me->first(  ).
  ENDMETHOD.
ENDCLASS.
