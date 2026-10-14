* TS: src/objects/extension_index.ts:3:1 ExtensionIndex
CLASS zcl_lnt_extension_index DEFINITION PUBLIC INHERITING FROM zcl_lnt_abstract_object CREATE PUBLIC.
  PUBLIC SECTION.
    DATA parsed_xml TYPE REF TO zcl_lnt_shape_0b343cf6.
    METHODS constructor IMPORTING i_name TYPE string.
    METHODS get_type REDEFINITION.
    METHODS get_allowed_naming REDEFINITION.
    METHODS set_dirty REDEFINITION.
    METHODS get_description REDEFINITION.
    METHODS get_table_name RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS pr_in_sr_ob_ext_ind_ts_ext_ind RETURNING VALUE(result) TYPE REF TO zcl_lnt_iparse_result.
    METHODS parse REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_extension_index IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_name.
    DATA(t2) = t1.
    super->constructor( i_name = t2 ).
    DATA t3 TYPE REF TO zcl_lnt_shape_0b343cf6.
    CLEAR t3.
    me->parsed_xml = t3.
  ENDMETHOD.
  METHOD get_type.
    DATA(t1) = |XINX|.
    result = t1.

  ENDMETHOD.
  METHOD get_allowed_naming.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/objects/extension_index.ts:13|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD set_dirty.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/objects/extension_index.ts:20|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD get_description.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/objects/extension_index.ts:25|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD get_table_name.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/objects/extension_index.ts:30|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD pr_in_sr_ob_ext_ind_ts_ext_ind.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/objects/extension_index.ts:35|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD parse.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->pr_in_sr_ob_ext_ind_ts_ext_ind(  ) ).
    result = t1.

  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1156_19642bfee660.
  ENDMETHOD.
ENDCLASS.
