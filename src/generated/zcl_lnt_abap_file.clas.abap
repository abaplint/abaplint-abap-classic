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
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_abap_file IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zif_lnt_file( i_file ).
    DATA(t2) = CAST zlnt_runtime_arra_c22708faf2e3( i_tokens ).
    DATA(t3) = CAST zlnt_runtime_arra_c22708faf2e3( i_statements ).
    DATA(t4) = CAST zcl_lnt_structure_node( i_structure ).
    DATA(t5) = CAST zif_lnt_abap_file_information( i_info ).
    DATA t6 TYPE string.
    DATA(t7) = CAST zif_lnt_file( t1 ).
    t6 = t7->get_filename( ).
    super->constructor( i_filename = t6 ).
    DATA(t8) = CAST zif_lnt_file( t1 ).
    me->file = t8.
    DATA(t9) = CAST zlnt_runtime_arra_c22708faf2e3( t2 ).
    me->tokens = t9.
    DATA(t10) = CAST zlnt_runtime_arra_c22708faf2e3( t3 ).
    me->statements = t10.
    DATA(t11) = CAST zcl_lnt_structure_node( t4 ).
    me->structure = t11.
    DATA(t12) = CAST zif_lnt_abap_file_information( t5 ).
    me->info = t12.
  ENDMETHOD.

  METHOD get_raw.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/abap_file.ts:30|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD get_raw_rows.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/abap/abap_file.ts:34|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.

  METHOD get_info.
    DATA(t1) = CAST zif_lnt_abap_file_information( me->info ).
    result = t1.

  ENDMETHOD.

  METHOD get_structure.
    DATA(t1) = CAST zcl_lnt_structure_node( me->structure ).
    result = t1.

  ENDMETHOD.

  METHOD get_tokens.
    DATA(t1) = CAST zlnt_runtime_opti_7f2541396f43( i_with_pragmas ).
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = CAST zlnt_runtime_opti_7f2541396f43( t1 ).
    IF t3 IS INITIAL.
      t2 = abap_true.
    ELSEIF t3->has = abap_false.
      t2 = abap_true.
    ENDIF.
    IF t2 = abap_true.
      DATA t4 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t4.
      DATA(t5) = abap_true.
      IF t5 = abap_true.
        DATA(t6) = abap_true.
        DATA(t7) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t7->has = abap_true.
        t7->value = t6.
        t4 = t7.
      ELSE.
        DATA t8 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        CLEAR t8.
        t4 = t8.
      ENDIF.
      t1 = t4.
    ENDIF.
    DATA t9 TYPE abap_bool.
    DATA t10 TYPE abap_bool.
    DATA(t11) = CAST zlnt_runtime_opti_7f2541396f43( t1 ).
    t10 = t11->value.
    DATA(t12) = abap_true.
    t9 = xsdbool( t10 = t12 ).
    IF t9 = abap_true.
      DATA(t13) = CAST zlnt_runtime_arra_c22708faf2e3( me->tokens ).
      result = t13.
      RETURN.
    ELSE.
      DATA t14 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t15 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CREATE OBJECT t15.
      t14 = t15.
      DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t16.
      DATA t17 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA(t18) = CAST zlnt_runtime_arra_c22708faf2e3( me->tokens ).
      t17 = t18.
      DATA t19 TYPE i.
      DATA t20 TYPE i.
      DATA(t21) = CAST zlnt_runtime_arra_c22708faf2e3( t17 ).
      t20 = lines( t21->items ).
      t19 = t20.
      DATA t22 TYPE i.
      DATA(t23) = 0.
      t22 = t23.
      DO.
        DATA t24 TYPE abap_bool.
        DATA(t25) = t22.
        DATA(t26) = t19.
        t24 = xsdbool( t25 < t26 ).
        IF t24 = abap_false.
          EXIT.
        ENDIF.
        DATA t27 TYPE REF TO zcl_lnt_abstract_token.
        DATA t28 TYPE REF TO zcl_lnt_abstract_token.
        DATA t29 TYPE REF TO zcl_lnt_abstract_token.
        DATA(t30) = CAST zlnt_runtime_arra_c22708faf2e3( t17 ).
        DATA(t31) = t22.
        DATA t32 TYPE REF TO object.
        t32 = t30->get( p0 = t31 ).
        t29 ?= t32.
        t28 = t29.
        t27 = t28.
        DATA t33 TYPE abap_bool.
        DATA t34 TYPE abap_bool.
        DATA(t35) = CAST zcl_lnt_abstract_token( t27 ).
        t34 = xsdbool( t35 IS BOUND AND t35 IS INSTANCE OF zcl_lnt_pragma ).
        t33 = xsdbool( t34 = abap_false ).
        IF t33 = abap_true.
          DATA(t36) = CAST zlnt_runtime_arra_c22708faf2e3( t14 ).
          DATA(t37) = CAST zcl_lnt_abstract_token( t27 ).
          APPEND t37 TO t36->items.
        ENDIF.
        DATA t38 TYPE i.
        DATA(t39) = t22.
        DATA(t40) = 1.
        t38 = t39 + t40.
        t22 = t38.
      ENDDO.
      DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t41.
      t16 = t41.
      DATA(t42) = CAST zlnt_runtime_arra_c22708faf2e3( t14 ).
      result = t42.

    ENDIF.
  ENDMETHOD.

  METHOD get_statements.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( me->statements ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d976_a184b6551780.
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
