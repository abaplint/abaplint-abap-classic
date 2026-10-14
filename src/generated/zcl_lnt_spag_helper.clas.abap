* TS: src/rules/downport.ts:49:1 SpagHelper
CLASS zcl_lnt_spag_helper DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA spag TYPE REF TO zif_lnt_spaghetti_scope_node.
    METHODS constructor IMPORTING i_spag TYPE REF TO zif_lnt_spaghetti_scope_node.
    METHODS rename_variable IMPORTING i_old_name TYPE string i_pos TYPE REF TO zcl_lnt_position i_low_file TYPE REF TO zcl_lnt_abap_file i_new_name TYPE string RETURNING VALUE(result) TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    METHODS find_references IMPORTING i_name TYPE string i_pos TYPE REF TO zcl_lnt_position RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS find_recursive_duplicate IMPORTING i_name TYPE string i_skip_34cc TYPE REF TO zcl_lnt_position RETURNING VALUE(result) TYPE REF TO zcl_lnt_typed_identifier.
    METHODS is_duplicate_name IMPORTING i_name TYPE string i_pos TYPE REF TO zcl_lnt_position RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_spag_helper IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zif_lnt_spaghetti_scope_node( i_spag ).
    DATA(t2) = CAST zif_lnt_spaghetti_scope_node( t1 ).
    me->spag = t2.
  ENDMETHOD.
  METHOD rename_variable.
    DATA(t1) = i_old_name.
    DATA(t2) = CAST zcl_lnt_position( i_pos ).
    DATA(t3) = CAST zcl_lnt_abap_file( i_low_file ).
    DATA(t4) = i_new_name.
    DATA(t5) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t6) = |src/rules/downport.ts:56|.
    t5->source_location = t6.
    RAISE EXCEPTION t5.
  ENDMETHOD.
  METHOD find_references.
    DATA(t1) = i_name.
    DATA(t2) = CAST zcl_lnt_position( i_pos ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/rules/downport.ts:79|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.
  METHOD find_recursive_duplicate.
    DATA(t1) = i_name.
    DATA(t2) = CAST zcl_lnt_position( i_skip_34cc ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/rules/downport.ts:108|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.
  METHOD is_duplicate_name.
    DATA(t1) = i_name.
    DATA(t2) = CAST zcl_lnt_position( i_pos ).
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/rules/downport.ts:124|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1384_636375e1f14c.
  ENDMETHOD.
ENDCLASS.
