* TS: src/abap/5_syntax/statements/perform.ts:15:1 Parameter
CLASS zcl_lnt_sy_perform_parameter DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA node TYPE REF TO zcl_lnt_expression_node.
    DATA type_cba0 TYPE REF TO zcl_lnt_abstract_type.
    METHODS constructor IMPORTING i_node TYPE REF TO zcl_lnt_expression_node i_type_9913 TYPE REF TO zcl_lnt_abstract_type OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sy_perform_parameter IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zcl_lnt_expression_node( i_node ).
    DATA(t2) = CAST zcl_lnt_abstract_type( i_type_9913 ).
    DATA(t3) = CAST zcl_lnt_expression_node( t1 ).
    me->node = t3.
    DATA(t4) = CAST zcl_lnt_abstract_type( t2 ).
    me->type_cba0 = t4.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1756_5ec04d8fea6e.
  ENDMETHOD.
ENDCLASS.
