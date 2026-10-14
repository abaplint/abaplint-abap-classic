* TS: src/edit_helper.ts:23:1 EditDraft
CLASS zcl_lnt_edit_draft DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA start TYPE REF TO zcl_lnt_position.
    DATA end TYPE REF TO zcl_lnt_position.
    DATA rows TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA file TYPE REF TO zif_lnt_file.
    METHODS constructor IMPORTING i_file TYPE REF TO zif_lnt_file.
    METHODS replace_128a IMPORTING i_pos TYPE REF TO zcl_lnt_position i_value TYPE string.
    METHODS to_edit RETURNING VALUE(result) TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_edit_draft IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zif_lnt_file( i_file ).
    DATA t2 TYPE REF TO zcl_lnt_position.
    CLEAR t2.
    me->start = t2.
    DATA t3 TYPE REF TO zcl_lnt_position.
    CLEAR t3.
    me->end = t3.
    DATA t4 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t5) = CAST zif_lnt_file( t1 ).
    t4 = t5->get_raw_rows( ).
    me->rows = t4.
    DATA(t6) = CAST zif_lnt_file( t1 ).
    me->file = t6.
  ENDMETHOD.

  METHOD replace_128a.
    DATA(t1) = CAST zcl_lnt_position( i_pos ).
    DATA(t2) = i_value.
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/edit_helper.ts:35|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.

  METHOD to_edit.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/edit_helper.ts:48|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1056_72dc81e49d9c.
  ENDMETHOD.
ENDCLASS.
