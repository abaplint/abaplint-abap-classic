* TS: src/_imacro_references.ts:4:1 IFilenameAndToken
CLASS zcl_lnt_ifilename_and_token DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA filename TYPE string.
    DATA token TYPE REF TO zcl_lnt_abstract_token.
    METHODS constructor IMPORTING i_filename TYPE string i_token TYPE REF TO zcl_lnt_abstract_token.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_ifilename_and_token IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_filename.
    DATA(t2) = i_token.
    DATA(t3) = t1.
    me->filename = t3.
    DATA(t4) = t2.
    me->token = t4.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d7_82881b26b0f5bb.
  ENDMETHOD.
ENDCLASS.
