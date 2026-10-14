* TS: src/rules/align_parameters.ts:17:1 IParameterData
CLASS zcl_lnt_iparameter_data DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA left TYPE REF TO zif_lnt_node.
    DATA eq TYPE REF TO zcl_lnt_position.
    DATA right TYPE REF TO zif_lnt_node.
    METHODS constructor IMPORTING i_left TYPE REF TO zif_lnt_node i_eq TYPE REF TO zcl_lnt_position i_right TYPE REF TO zif_lnt_node.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_iparameter_data IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zif_lnt_node( i_left ).
    DATA(t2) = CAST zcl_lnt_position( i_eq ).
    DATA(t3) = CAST zif_lnt_node( i_right ).
    DATA(t4) = CAST zif_lnt_node( t1 ).
    me->left = t4.
    DATA(t5) = CAST zcl_lnt_position( t2 ).
    me->eq = t5.
    DATA(t6) = CAST zif_lnt_node( t3 ).
    me->right = t6.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1293_774dfd74fbd2.
  ENDMETHOD.
ENDCLASS.
