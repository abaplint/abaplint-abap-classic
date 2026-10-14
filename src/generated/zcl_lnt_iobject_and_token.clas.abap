* TS: src/_iddic_references.ts:4:1 IObjectAndToken
CLASS zcl_lnt_iobject_and_token DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA object_a393 TYPE REF TO zif_lnt_object.
    DATA token TYPE REF TO zcl_lnt_abstract_token.
    DATA filename TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS constructor IMPORTING i_object_19cd TYPE REF TO zif_lnt_object OPTIONAL i_token TYPE REF TO zcl_lnt_abstract_token OPTIONAL i_filename TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_iobject_and_token IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_object_19cd.
    DATA(t2) = i_token.
    DATA(t3) = i_filename.
    DATA(t4) = t1.
    me->object_a393 = t4.
    DATA(t5) = t2.
    me->token = t5.
    DATA(t6) = t3.
    me->filename = t6.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d6_5c37d88667ed48.
  ENDMETHOD.
ENDCLASS.
