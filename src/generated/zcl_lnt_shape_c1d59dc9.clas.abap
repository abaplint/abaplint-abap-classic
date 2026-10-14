* TS: src/objects/web_mime.ts:7:22 shape.bd64d5f73bb24bf68bd1745e494fc2b4e14beff2749ecdfb821dd22ce7894987
CLASS zcl_lnt_shape_c1d59dc9 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA description TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA params TYPE REF TO zlnt_runtime_map__a1006b231250.
    METHODS constructor IMPORTING i_description TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_params_4c59 TYPE REF TO zlnt_runtime_map__a1006b231250 OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_c1d59dc9 IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zlnt_runtime_opti_4ba3bdccd169( i_description ).
    DATA(t2) = CAST zlnt_runtime_map__a1006b231250( i_params_4c59 ).
    DATA(t3) = CAST zlnt_runtime_opti_4ba3bdccd169( t1 ).
    me->description = t3.
    DATA t4 TYPE REF TO zlnt_runtime_map__a1006b231250.
    DATA(t5) = CAST zlnt_runtime_map__a1006b231250( t2 ).
    t4 = t5.
    me->params = t4.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1814_b65c88acda4d.
  ENDMETHOD.
ENDCLASS.
