* TS: src/abap/2_statements/combi.ts:153:1 IVerOptions
CLASS zcl_lnt_iver_options DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA also TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS constructor IMPORTING i_also TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_iver_options IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_also.
    DATA(t2) = t1.
    me->also = t2.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d62_7621bdf0536f01.
  ENDMETHOD.
ENDCLASS.
