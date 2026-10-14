* TS: src/rules/prefix_is_current_class.ts:151:70 shape.1151944adac9f18a8849f542a5c47c372b7f92aca79cd05aecd892bffd63ed2b
CLASS zcl_lnt_shape_5bd99ac8 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA pos TYPE REF TO zcl_lnt_position.
    DATA member TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS constructor IMPORTING i_pos TYPE REF TO zcl_lnt_position OPTIONAL i_member TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_5bd99ac8 IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zcl_lnt_position( i_pos ).
    DATA(t2) = CAST zlnt_runtime_opti_4ba3bdccd169( i_member ).
    DATA t3 TYPE REF TO zcl_lnt_position.
    DATA(t4) = CAST zcl_lnt_position( t1 ).
    t3 = t4.
    me->pos = t3.
    DATA(t5) = CAST zlnt_runtime_opti_4ba3bdccd169( t2 ).
    me->member = t5.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1823_793af3839684.
  ENDMETHOD.
ENDCLASS.
