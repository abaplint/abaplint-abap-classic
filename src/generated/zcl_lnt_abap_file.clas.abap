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
    DATA(t7) = t1.
    t6 = t7->get_filename( ).
    super->constructor( i_filename = t6 ).
    DATA(t8) = t1.
    me->file = t8.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `file`.
    DATA(t9) = t2.
    me->tokens = t9.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `tokens`.
    DATA(t10) = t3.
    me->statements = t10.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `statements`.
    DATA(t11) = t4.
    me->structure = t11.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `structure`.
    DATA(t12) = t5.
    me->info = t12.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `info`.
  ENDMETHOD.

  METHOD get_raw.
    DATA t1 TYPE string.
    DATA(t2) = me->file.
    t1 = t2->get_raw( ).
    result = t1.

  ENDMETHOD.

  METHOD get_raw_rows.
    DATA t1 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t2) = me->file.
    t1 = t2->get_raw_rows( ).
    result = t1.

  ENDMETHOD.

  METHOD get_info.
    DATA(t1) = me->info.
    result = t1.

  ENDMETHOD.

  METHOD get_structure.
    DATA(t1) = me->structure.
    result = t1.

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
    DATA(t11) = t1.
    t10 = t11->value.
    DATA(t12) = abap_true.
    t9 = xsdbool( t10 = t12 ).
    IF t9 = abap_true.
      DATA(t13) = me->tokens.
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
      DATA(t18) = me->tokens.
      t17 = t18.
      DATA t19 TYPE i.
      DATA t20 TYPE i.
      DATA(t21) = t17.
      t21->load( ).
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
        CLEAR t27.
        DATA t28 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t28.
        DATA t29 TYPE REF TO zcl_lnt_abstract_token.
        CLEAR t29.
        DATA(t30) = t17.
        DATA(t31) = t22.
        DATA t32 TYPE REF TO object.
        t32 = t30->get( p0 = t31 ).
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
        t28 = t29.
        t27 = t28.
        DATA t35 TYPE abap_bool.
        DATA t36 TYPE abap_bool.
        DATA(t37) = t27.
        t36 = xsdbool( t37 IS BOUND AND t37 IS INSTANCE OF zcl_lnt_pragma ).
        t35 = xsdbool( t36 = abap_false ).
        IF t35 = abap_true.
          DATA(t38) = t14.
          DATA(t39) = t27.
          t38->load( ).
          APPEND t39 TO t38->items.
          t38->save( ).
        ENDIF.
        DATA t40 TYPE i.
        DATA(t41) = t22.
        DATA(t42) = 1.
        t40 = t41 + t42.
        t22 = t40.
      ENDDO.
      DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t43.
      t16 = t43.
      DATA(t44) = t14.
      result = t44.

    ENDIF.
  ENDMETHOD.

  METHOD get_statements.
    DATA(t1) = me->statements.
    result = t1.

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
