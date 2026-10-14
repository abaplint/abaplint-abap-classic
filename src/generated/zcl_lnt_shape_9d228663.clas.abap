* TS: src/abap/2_statements/expand_macros.ts:19:46 shape.914989d586a100cd4e45b9f2aa4877c232c971d77187843ba85048a4aaf4450c
CLASS zcl_lnt_shape_9d228663 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA statements TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA filename TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS constructor IMPORTING i_statements TYPE REF TO zlnt_runtime_arra_c22708faf2e3 OPTIONAL i_filename TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_9d228663 IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( i_statements ).
    DATA(t2) = CAST zlnt_runtime_opti_4ba3bdccd169( i_filename ).
    DATA t3 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t4) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    t3 = t4.
    me->statements = t3.
    DATA(t5) = CAST zlnt_runtime_opti_4ba3bdccd169( t2 ).
    me->filename = t5.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1742_357e9d8cda6c.
  ENDMETHOD.
ENDCLASS.
