* TS: src/macro_references.ts:5:1 MacroReferences
CLASS zcl_lnt_macro_references DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_macro_references.
    DATA definitions TYPE REF TO zlnt_runtime_map__a8db3647ad44.
    DATA references TYPE REF TO zlnt_runtime_map__68aa8717233d.
    METHODS constructor.
    METHODS add_definition IMPORTING i_ref TYPE REF TO zcl_lnt_ifilename_and_token i_start TYPE REF TO zcl_lnt_position i_end TYPE REF TO zcl_lnt_position.
    METHODS get_definition_range IMPORTING i_filename TYPE string i_token TYPE REF TO zcl_lnt_abstract_token RETURNING VALUE(result) TYPE REF TO zcl_lnt_irange.
    METHODS add_reference IMPORTING i_ref TYPE REF TO zcl_lnt_ifilename_and_token.
    METHODS list_definitions_by_file IMPORTING i_filename TYPE string RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS list_usagesby_macro IMPORTING i_filename TYPE string i_token TYPE REF TO zcl_lnt_abstract_token RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS clear_feba IMPORTING i_filename TYPE string.
    METHODS find_definition_by_usage IMPORTING i_filename TYPE string i_token TYPE REF TO zcl_lnt_abstract_token RETURNING VALUE(result) TYPE REF TO zcl_lnt_ifilename_and_token.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_macro_references IMPLEMENTATION.
  METHOD constructor.
    DATA t1 TYPE REF TO zlnt_runtime_map__a8db3647ad44.
    DATA t2 TYPE REF TO zlnt_runtime_map__a8db3647ad44.
    DATA(t3) = NEW zlnt_runtime_map__a8db3647ad44( ).
    t2 = t3.
    DATA(t4) = CAST zlnt_runtime_map__a8db3647ad44( t2 ).
    t1 = t4.
    me->definitions = t1.
    DATA t5 TYPE REF TO zlnt_runtime_map__68aa8717233d.
    DATA t6 TYPE REF TO zlnt_runtime_map__68aa8717233d.
    DATA(t7) = NEW zlnt_runtime_map__68aa8717233d( ).
    t6 = t7.
    DATA(t8) = CAST zlnt_runtime_map__68aa8717233d( t6 ).
    t5 = t8.
    me->references = t5.
  ENDMETHOD.

  METHOD add_definition.
    DATA(t1) = CAST zcl_lnt_ifilename_and_token( i_ref ).
    DATA(t2) = CAST zcl_lnt_position( i_start ).
    DATA(t3) = CAST zcl_lnt_position( i_end ).
    DATA(t4) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t5) = |src/macro_references.ts:14|.
    t4->source_location = t5.
    RAISE EXCEPTION t4.
  ENDMETHOD.

  METHOD get_definition_range.
    DATA(t1) = i_filename.
    DATA(t2) = CAST zcl_lnt_abstract_token( i_token ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/macro_references.ts:23|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.

  METHOD add_reference.
    DATA(t1) = CAST zcl_lnt_ifilename_and_token( i_ref ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/macro_references.ts:32|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD list_definitions_by_file.
    DATA(t1) = i_filename.
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/macro_references.ts:39|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD list_usagesby_macro.
    DATA(t1) = i_filename.
    DATA(t2) = CAST zcl_lnt_abstract_token( i_token ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/macro_references.ts:47|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.

  METHOD clear_feba.
    DATA(t1) = i_filename.
    DATA t2 TYPE abap_bool.
    DATA(t3) = CAST zlnt_runtime_map__a8db3647ad44( me->definitions ).
    DATA(t4) = t1.
    DELETE t3->entries WHERE k = t4.
    t2 = abap_true.
    DATA t5 TYPE abap_bool.
    DATA(t6) = CAST zlnt_runtime_map__68aa8717233d( me->references ).
    DATA(t7) = t1.
    DELETE t6->entries WHERE k = t7.
    t5 = abap_true.
  ENDMETHOD.

  METHOD find_definition_by_usage.
    DATA(t1) = i_filename.
    DATA(t2) = CAST zcl_lnt_abstract_token( i_token ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/macro_references.ts:64|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1082_85bdbd2fee48.
  ENDMETHOD.

  METHOD zif_lnt_macro_references~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_macro_references~add_definition.
    me->add_definition( i_ref = i_ref i_start = i_start i_end = i_end ).
  ENDMETHOD.

  METHOD zif_lnt_macro_references~add_reference.
    me->add_reference( i_ref = i_ref ).
  ENDMETHOD.

  METHOD zif_lnt_macro_references~list_definitions_by_file.
    result = me->list_definitions_by_file( i_filename = i_filename ).
  ENDMETHOD.

  METHOD zif_lnt_macro_references~list_usagesby_macro.
    result = me->list_usagesby_macro( i_filename = i_filename i_token = i_token ).
  ENDMETHOD.

  METHOD zif_lnt_macro_references~get_definition_range.
    result = me->get_definition_range( i_filename = i_filename i_token = i_token ).
  ENDMETHOD.

  METHOD zif_lnt_macro_references~find_definition_by_usage.
    result = me->find_definition_by_usage( i_filename = i_filename i_token = i_token ).
  ENDMETHOD.

  METHOD zif_lnt_macro_references~clear_feba.
    me->clear_feba( i_filename = i_filename ).
  ENDMETHOD.
ENDCLASS.
