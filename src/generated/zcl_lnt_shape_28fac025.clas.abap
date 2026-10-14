* TS: src/abap/5_syntax/structures/constants.ts:14:3 shape.0c839f00091d0c113280fc22bb590b9d0a90786eb5748dad7ae030ab8ea5f555
CLASS zcl_lnt_shape_28fac025 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA type_cba0 TYPE REF TO zcl_lnt_typed_identifier.
    DATA values TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
    METHODS constructor IMPORTING i_type_9913 TYPE REF TO zcl_lnt_typed_identifier OPTIONAL i_values TYPE REF TO zlnt_runtime_map__abd6fd794ffb OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_28fac025 IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zcl_lnt_typed_identifier( i_type_9913 ).
    DATA(t2) = CAST zlnt_runtime_map__abd6fd794ffb( i_values ).
    DATA(t3) = CAST zcl_lnt_typed_identifier( t1 ).
    me->type_cba0 = t3.
    DATA t4 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
    DATA(t5) = CAST zlnt_runtime_map__abd6fd794ffb( t2 ).
    t4 = t5.
    me->values = t4.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1757_3c6dff8656e0.
  ENDMETHOD.
ENDCLASS.
