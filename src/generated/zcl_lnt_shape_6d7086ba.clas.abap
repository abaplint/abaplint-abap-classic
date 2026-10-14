* TS: src/lsp/code_lens.ts:25:91 shape.ff8ca164851d78ec3ccf30c0832e17dd0e1698f6de2f1c10fa400daff17c9477
CLASS zcl_lnt_shape_6d7086ba DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA title TYPE string.
    DATA tooltip TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA command TYPE string.
    DATA arguments TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS constructor IMPORTING i_title TYPE string i_tooltip TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_command TYPE string i_arguments TYPE REF TO zlnt_runtime_arra_c22708faf2e3 OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_6d7086ba IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_title.
    DATA(t2) = i_tooltip.
    DATA(t3) = i_command.
    DATA(t4) = i_arguments.
    DATA(t5) = t1.
    me->title = t5.
    DATA(t6) = t2.
    me->tooltip = t6.
    DATA(t7) = t3.
    me->command = t7.
    DATA(t8) = t4.
    me->arguments = t8.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1763_92963a7b9a59.
  ENDMETHOD.
ENDCLASS.
