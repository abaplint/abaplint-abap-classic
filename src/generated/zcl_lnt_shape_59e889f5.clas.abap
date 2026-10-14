* TS: src/objects/transaction.ts:5:22 shape.3c6632fbdbb7d02ac091f045d01797f4262039744b33c8be2e2dcb021fffe38a
CLASS zcl_lnt_shape_59e889f5 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA description TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA program_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA cinfo TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA texts_translations TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS constructor IMPORTING i_description TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_program_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_cinfo TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL
    i_texts_translations TYPE REF TO zlnt_runtime_arra_c22708faf2e3 OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_59e889f5 IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zlnt_runtime_opti_4ba3bdccd169( i_description ).
    DATA(t2) = CAST zlnt_runtime_opti_4ba3bdccd169( i_program_name ).
    DATA(t3) = CAST zlnt_runtime_opti_4ba3bdccd169( i_cinfo ).
    DATA(t4) = CAST zlnt_runtime_arra_c22708faf2e3( i_texts_translations ).
    DATA(t5) = CAST zlnt_runtime_opti_4ba3bdccd169( t1 ).
    me->description = t5.
    DATA(t6) = CAST zlnt_runtime_opti_4ba3bdccd169( t2 ).
    me->program_name = t6.
    DATA(t7) = CAST zlnt_runtime_opti_4ba3bdccd169( t3 ).
    me->cinfo = t7.
    DATA(t8) = CAST zlnt_runtime_arra_c22708faf2e3( t4 ).
    me->texts_translations = t8.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1809_1022b4564cd2.
  ENDMETHOD.
ENDCLASS.
