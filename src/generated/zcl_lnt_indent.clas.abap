* TS: src/pretty_printer/indent.ts:11:1 Indent
CLASS zcl_lnt_indent DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA options TYPE REF TO zcl_lnt_iindentation_options.
    DATA global_classes TYPE REF TO zlnt_runtime_set__1827558fd4c7.
    METHODS constructor IMPORTING i_options TYPE REF TO zcl_lnt_iindentation_options OPTIONAL.
    METHODS execute IMPORTING i_original TYPE REF TO zcl_lnt_abap_file i_modified TYPE string RETURNING VALUE(result) TYPE string.
    METHODS get_expected_indents IMPORTING i_file TYPE REF TO zcl_lnt_abap_file RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_f39560c658f8.
    METHODS skip_indent_for_global_class IMPORTING i_statement TYPE REF TO zcl_lnt_statement_node RETURNING VALUE(result) TYPE abap_bool.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_indent IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_options.
    DATA(t2) = NEW zlnt_runtime_set__1827558fd4c7( ).
    me->global_classes = t2.
    DATA t3 TYPE REF TO zcl_lnt_iindentation_options.
    CLEAR t3.
    DATA t4 TYPE REF TO zcl_lnt_iindentation_options.
    DATA(t5) = t1.
    t4 = t5.
    DATA t6 TYPE REF TO zcl_lnt_iindentation_options.
    CLEAR t6.
    DATA t7 TYPE abap_bool.
    DATA(t8) = t4.
    t7 = xsdbool( t8 IS BOUND ).
    IF t7 = abap_true.
      DATA t9 TYPE REF TO zcl_lnt_iindentation_options.
      DATA(t10) = t4.
      t9 = t10.
      t6 = t9.
    ELSE.
      DATA t11 TYPE REF TO zcl_lnt_iindentation_options.
      DATA t12 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t12.
      DATA t13 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t13.
      DATA t14 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t14.
      t11 = NEW zcl_lnt_iindentation_options( i_align_try_catch = t12 i_slctn_scrn_blck_indnttn = t13 i_global_class_skip_first = t14 ).
      t6 = t11.
    ENDIF.
    t3 = t6.
    me->options = t3.
  ENDMETHOD.

  METHOD execute.
    DATA(t1) = i_original.
    DATA(t2) = i_modified.
    DATA(t3) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t4) = |src/pretty_printer/indent.ts:19|.
    t3->source_location = t4.
    RAISE EXCEPTION t3.
  ENDMETHOD.

  METHOD get_expected_indents.
    DATA(t1) = i_file.
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/pretty_printer/indent.ts:44|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD skip_indent_for_global_class.
    DATA(t1) = i_statement.
    DATA(t2) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t3) = |src/pretty_printer/indent.ts:202|.
    t2->source_location = t3.
    RAISE EXCEPTION t2.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1275_494180b4d1bd.
  ENDMETHOD.
ENDCLASS.
