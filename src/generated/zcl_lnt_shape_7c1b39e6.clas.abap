* TS: src/_iddic_references.ts:16:32 shape.579d8e7c65abdbd91061ac54815a210af5a5eab8e42a49cb0785a38e014e6a12
CLASS zcl_lnt_shape_7c1b39e6 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA type_cba0 TYPE string.
    DATA name TYPE string.
    DATA token TYPE REF TO zcl_lnt_abstract_token.
    DATA filename TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS constructor IMPORTING i_type_9913 TYPE string i_name TYPE string i_token TYPE REF TO zcl_lnt_abstract_token OPTIONAL i_filename TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_7c1b39e6 IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_type_9913.
    DATA(t2) = i_name.
    DATA(t3) = CAST zcl_lnt_abstract_token( i_token ).
    DATA(t4) = CAST zlnt_runtime_opti_4ba3bdccd169( i_filename ).
    DATA(t5) = t1.
    me->type_cba0 = t5.
    DATA(t6) = t2.
    me->name = t6.
    DATA(t7) = CAST zcl_lnt_abstract_token( t3 ).
    me->token = t7.
    DATA(t8) = CAST zlnt_runtime_opti_4ba3bdccd169( t4 ).
    me->filename = t8.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1725_9afcd684bf08.
  ENDMETHOD.
ENDCLASS.
