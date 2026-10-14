* TS: src/objects/authorization_check_field.ts:9:22 shape.980acc1b89ef1f111e876d7a6bba3860e6f01e91eae6001981a9a9b8b99b9b42
CLASS zcl_lnt_shape_90553f00 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA rollname_3628 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS constructor IMPORTING i_rollname_aa57 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_90553f00 IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_rollname_aa57.
    DATA(t2) = t1.
    me->rollname_3628 = t2.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1775_3893ddd080c9.
  ENDMETHOD.
ENDCLASS.
