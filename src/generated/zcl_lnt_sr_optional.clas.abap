* TS: src/abap/3_structures/structures/_combi.ts:166:1 Optional
CLASS zcl_lnt_sr_optional DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_structure_runnable.
    DATA obj TYPE REF TO zif_lnt_structure_runnable.
    METHODS constructor IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_structure_runnable.
    METHODS to_railroad RETURNING VALUE(result) TYPE string.
    METHODS get_using RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS run IMPORTING i_statements TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_parent TYPE REF TO zif_lnt_node RETURNING VALUE(result) TYPE REF TO zcl_lnt_imatch.
    METHODS first RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sr_optional IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_obj_1ed0.
    DATA(t2) = t1.
    me->obj = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `obj`.
  ENDMETHOD.

  METHOD to_railroad.
    DATA t1 TYPE string.
    DATA t2 TYPE string.
    DATA(t3) = |Railroad.Optional(|.
    DATA t4 TYPE string.
    DATA(t5) = me->obj.
    t4 = t5->to_railroad( ).
    DATA(t6) = strlen( t3 ).
    t2 = |{ t3 }{ t4 }|.
    DATA(t7) = |)|.
    DATA(t8) = strlen( t2 ).
    t1 = |{ t2 }{ t7 }|.
    result = t1.

  ENDMETHOD.

  METHOD get_using.
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t2) = me->obj.
    t1 = t2->get_using( ).
    result = t1.

  ENDMETHOD.

  METHOD run.
    DATA(t1) = i_statements.
    DATA(t2) = i_parent.
    DATA t3 TYPE REF TO zcl_lnt_imatch.
    DATA t4 TYPE REF TO zcl_lnt_imatch.
    DATA(t5) = me->obj.
    DATA(t6) = t1.
    DATA(t7) = t2.
    t4 = t5->run( i_statements = t6 i_parent = t7 ).
    t3 = t4.
    DATA(t8) = t3.
    DATA t9 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    CLEAR t9.
    DATA(t10) = abap_true.
    IF t10 = abap_true.
      DATA(t11) = abap_false.
      DATA(t12) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t12->has = abap_true.
      t12->value = t11.
      t9 = t12.
    ELSE.
      DATA t13 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t13.
      t9 = t13.
    ENDIF.
    t8->error = t9.
    DELETE t8->zlnt_record_delet_0597644d88b4 WHERE table_line = `error`.
    DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t14.
    IF t8->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t8->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `error` p1 = t14 ).
    ENDIF.
    DATA(t15) = |error|.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t16.
    IF t8->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t8->zlnt_json_ownkeys_70e5fd461788->put( p0 = t15 p1 = t16 ).
    ENDIF.
    DATA(t17) = t3.
    result = t17.

  ENDMETHOD.

  METHOD first.
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t2 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t3 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t3.
    t2 = t3.
    DATA(t4) = t2.
    DATA(t5) = ||.
    t4->load( ).
    APPEND t5 TO t4->items.
    t4->save( ).
    DATA(t6) = t2.
    t1 = t6.
    result = t1.

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d691_9e043ef75c16.
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
