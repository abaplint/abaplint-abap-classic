* TS: src/objects/lock_object.ts:11:22 shape.c41b7491225505bc1de20777f7e89571cd56cd4c4c6efa031f2f1afc14e9a1e0
CLASS zcl_lnt_shape_1726940b DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA viewfield TYPE string.
    DATA tabname TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA fieldname TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS constructor IMPORTING i_viewfield TYPE string i_tabname TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_fieldname TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_1726940b IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_viewfield.
    DATA(t2) = CAST zlnt_runtime_opti_4ba3bdccd169( i_tabname ).
    DATA(t3) = CAST zlnt_runtime_opti_4ba3bdccd169( i_fieldname ).
    DATA(t4) = t1.
    me->viewfield = t4.
    DATA(t5) = CAST zlnt_runtime_opti_4ba3bdccd169( t2 ).
    me->tabname = t5.
    DATA(t6) = CAST zlnt_runtime_opti_4ba3bdccd169( t3 ).
    me->fieldname = t6.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1794_d2bc4af83ba3.
  ENDMETHOD.
ENDCLASS.
