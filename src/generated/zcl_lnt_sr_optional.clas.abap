* TS: src/abap/3_structures/structures/_combi.ts:166:1 Optional
CLASS zcl_lnt_sr_optional DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_structure_runnable.
    DATA obj TYPE REF TO zif_lnt_structure_runnable.
    METHODS constructor IMPORTING i_obj_1ed0 TYPE REF TO zif_lnt_structure_runnable.
    METHODS to_railroad RETURNING VALUE(result) TYPE string.
    METHODS get_using RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS run IMPORTING i_statements TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_parent TYPE REF TO zif_lnt_node RETURNING VALUE(result) TYPE REF TO zcl_lnt_imatch.
    METHODS first RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sr_optional IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zif_lnt_structure_runnable( i_obj_1ed0 ).
    DATA(t2) = CAST zif_lnt_structure_runnable( t1 ).
    me->obj = t2.
  ENDMETHOD.
  METHOD to_railroad.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/3_structures/structures/_combi.ts:173|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD get_using.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/3_structures/structures/_combi.ts:177|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD run.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( i_statements ).
    DATA(t2) = CAST zif_lnt_node( i_parent ).
    DATA t3 TYPE REF TO zcl_lnt_imatch.
    DATA t4 TYPE REF TO zcl_lnt_imatch.
    DATA(t5) = CAST zif_lnt_structure_runnable( me->obj ).
    DATA(t6) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    DATA(t7) = CAST zif_lnt_node( t2 ).
    t4 = t5->run( i_statements = t6 i_parent = t7 ).
    t3 = t4.
    DATA(t8) = CAST zcl_lnt_imatch( t3 ).
    DATA(t9) = abap_false.
    t8->error = t9.
    DATA(t10) = CAST zcl_lnt_imatch( t3 ).
    result = t10.

  ENDMETHOD.
  METHOD first.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/3_structures/structures/_combi.ts:187|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d674_198701244568.
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
