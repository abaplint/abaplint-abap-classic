* TS: src/objects/lock_object.ts:11:22 shape.71956f350808f252d20b5d238acd447efe72f783ad5e27109d06c0a042ca3647
CLASS zcl_lnt_shape_c295e2a7 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA primary_table TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA description TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA parameters TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS constructor IMPORTING i_primary_table TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_description TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_parameters TYPE REF TO zlnt_runtime_arra_c22708faf2e3 OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_c295e2a7 IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zlnt_runtime_opti_4ba3bdccd169( i_primary_table ).
    DATA(t2) = CAST zlnt_runtime_opti_4ba3bdccd169( i_description ).
    DATA(t3) = CAST zlnt_runtime_arra_c22708faf2e3( i_parameters ).
    DATA(t4) = CAST zlnt_runtime_opti_4ba3bdccd169( t1 ).
    me->primary_table = t4.
    DATA(t5) = CAST zlnt_runtime_opti_4ba3bdccd169( t2 ).
    me->description = t5.
    DATA(t6) = CAST zlnt_runtime_arra_c22708faf2e3( t3 ).
    me->parameters = t6.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1795_59c4e6d5bad6.
  ENDMETHOD.
ENDCLASS.
