* TS: src/abap/abap_file.ts:9:1 ABAPFile
CLASS zcl_lnt_abap_file DEFINITION PUBLIC INHERITING FROM zcl_lnt_abstract_file CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_abap_file.
    DATA tokens TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA statements TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA structure TYPE REF TO zcl_lnt_structure_node.
    DATA file TYPE REF TO zif_lnt_file.
    DATA info TYPE REF TO zif_lnt_abap_file_information.
    METHODS constructor IMPORTING i_file TYPE REF TO zif_lnt_file i_tokens TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_statements TYPE REF TO zlnt_runtime_arra_c22708faf2e3 i_structure TYPE REF TO zcl_lnt_structure_node OPTIONAL i_info
    TYPE REF TO zif_lnt_abap_file_information.
    METHODS get_raw REDEFINITION.
    METHODS get_raw_rows REDEFINITION.
    METHODS get_info RETURNING VALUE(result) TYPE REF TO zif_lnt_abap_file_information.
    METHODS get_structure RETURNING VALUE(result) TYPE REF TO zcl_lnt_structure_node.
    METHODS get_tokens IMPORTING i_with_pragmas TYPE REF TO zlnt_runtime_opti_7f2541396f43 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS get_statements RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
    METHODS zlnt_builtin_nati_72359f490bf2 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_abap_file IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_file.
    DATA(t2) = i_tokens.
    DATA(t3) = i_statements.
    DATA(t4) = i_structure.
    DATA(t5) = i_info.
    DATA t6 TYPE string.
    t6 = t1->get_filename( ).
    super->constructor( i_filename = t6 ).
    me->file = t1.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `file`.
    me->tokens = t2.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `tokens`.
    me->statements = t3.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `statements`.
    me->structure = t4.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `structure`.
    me->info = t5.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `info`.
  ENDMETHOD.

  METHOD get_raw.
    result = me->file->get_raw( ).

  ENDMETHOD.

  METHOD get_raw_rows.
    result = me->file->get_raw_rows( ).

  ENDMETHOD.

  METHOD get_info.
    result = me->info.

  ENDMETHOD.

  METHOD get_structure.
    result = me->structure.

  ENDMETHOD.

  METHOD get_tokens.
    DATA(t1) = i_with_pragmas.
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = t1.
    IF t3 IS INITIAL.
      t2 = abap_true.
    ELSEIF t3->has = abap_false.
      t2 = abap_true.
    ENDIF.
    IF t2 = abap_true.
      DATA(t7) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t7->has = abap_true.
      t7->value = abap_true.
      t1 = t7.
    ENDIF.
    IF xsdbool( t1->value = abap_true ) = abap_true.
      result = me->tokens.
      RETURN.
    ELSE.
      DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t14.
      DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t17 = me->tokens.
      DATA t19 TYPE i.
      t17->load( ).
      t19 = lines( t17->items ).
      DATA t22 TYPE i.
      t22 = 0.
      DO.
        IF xsdbool( t22 < t19 ) = abap_false.
          EXIT.
        ENDIF.
        DATA t27 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t27.
        DATA t29 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t29.
        DATA t32 TYPE REF TO object.
        t32 = t17->get( p0 = t22 ).
        DATA t33 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t33.
        CLEAR t29.
        IF t32 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t33 ?= t32.
          DATA t34 TYPE REF TO object.
          t34 = t33->as_ref( ).
          t29 ?= t34.
        ELSE.
          t29 ?= t32.
        ENDIF.
        t27 = t29.
        IF xsdbool( xsdbool( t27 IS BOUND AND t27 IS INSTANCE OF zcl_lnt_pragma ) = abap_false ) = abap_true.
          t14->load( ).
          APPEND t27 TO t14->items.
          t14->save( ).
        ENDIF.
        DATA(t42) = 1.
        t22 = t22 + t42.
      ENDDO.
      result = t14.

    ENDIF.
  ENDMETHOD.

  METHOD get_statements.
    result = me->statements.

  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d998_c657229a4dca.
  ENDMETHOD.

  METHOD zif_lnt_abap_file~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_abap_file~get_info.
    result = me->get_info( ).
  ENDMETHOD.

  METHOD zif_lnt_abap_file~get_structure.
    result = me->get_structure( ).
  ENDMETHOD.

  METHOD zif_lnt_abap_file~get_tokens.
    result = me->get_tokens( i_with_pragmas = i_with_pragmas ).
  ENDMETHOD.

  METHOD zif_lnt_abap_file~get_statements.
    result = me->get_statements( ).
  ENDMETHOD.
ENDCLASS.
