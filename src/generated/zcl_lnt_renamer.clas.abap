* TS: src/objects/rename/renamer.ts:21:1 Renamer
CLASS zcl_lnt_renamer DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA reg TYPE REF TO zif_lnt_registry.
    METHODS constructor IMPORTING i_reg_f149 TYPE REF TO zif_lnt_registry.
    METHODS rename IMPORTING i_type_9913 TYPE string i_old_name TYPE string i_new_name TYPE string RETURNING VALUE(result) TYPE REF TO zcl_lnt_irename_result.
    METHODS build_edits IMPORTING i_type_9913 TYPE string i_old_name TYPE string i_new_name TYPE string RETURNING VALUE(result) TYPE REF TO object.
    METHODS factory IMPORTING i_type_9913 TYPE string RETURNING VALUE(result) TYPE REF TO zif_lnt_object_renamer.
    METHODS apply IMPORTING i_edits TYPE REF TO object RETURNING VALUE(result) TYPE REF TO zcl_lnt_irename_result.
    METHODS apply_edit IMPORTING i_dc TYPE REF TO object.
    METHODS apply_renames IMPORTING i_renames TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_renamer IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zif_lnt_registry( i_reg_f149 ).
    DATA(t2) = CAST zif_lnt_registry( t1 ).
    me->reg = t2.
  ENDMETHOD.
  METHOD rename.
    DATA(t1) = i_type_9913.
    DATA(t2) = i_old_name.
    DATA(t3) = i_new_name.
    DATA(t4) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t5) = |src/objects/rename/renamer.ts:30|.
    t4->source_location = t5.
    RAISE EXCEPTION t4.
  ENDMETHOD.
  METHOD build_edits.
    DATA(t1) = i_type_9913.
    DATA(t2) = i_old_name.
    DATA(t3) = i_new_name.
    DATA(t4) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t5) = |src/objects/rename/renamer.ts:45|.
    t4->source_location = t5.
    RAISE EXCEPTION t4.
  ENDMETHOD.
  METHOD factory.
    DATA(t1) = i_type_9913.
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/objects/rename/renamer.ts:68|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD apply.
    DATA t1 TYPE REF TO object.
    t1 = i_edits.
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/objects/rename/renamer.ts:93|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD apply_edit.
    DATA t1 TYPE REF TO object.
    t1 = i_dc.
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/objects/rename/renamer.ts:125|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD apply_renames.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( i_renames ).
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/objects/rename/renamer.ts:147|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1240_a62b67eb4190.
  ENDMETHOD.
ENDCLASS.
