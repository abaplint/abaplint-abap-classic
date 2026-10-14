* TS: src/objects/data_definition.ts:16:12 shape.98af2be8ec00ffea2ce4f8f894a6ccab6eeec900282ac0f45951da0218529bfd
CLASS zcl_lnt_shape_35310764 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA name TYPE string.
    DATA as TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS constructor IMPORTING i_name TYPE string i_as TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_35310764 IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_name.
    DATA(t2) = CAST zlnt_runtime_opti_4ba3bdccd169( i_as ).
    DATA(t3) = t1.
    me->name = t3.
    DATA(t4) = CAST zlnt_runtime_opti_4ba3bdccd169( t2 ).
    me->as = t4.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1781_033e6836392a.
  ENDMETHOD.
ENDCLASS.
