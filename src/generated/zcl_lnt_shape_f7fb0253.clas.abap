* TS: src/objects/rename/_object_renamer.ts:5:63 shape.ca53682cbb6e9609875f806749ab7205def07a6baffef6de381be5a77b7f6b1d
CLASS zcl_lnt_shape_f7fb0253 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA overwrite TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA ignore_if_exists TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    METHODS constructor IMPORTING i_overwrite TYPE REF TO zlnt_runtime_opti_7f2541396f43 OPTIONAL i_ignore_if_exists TYPE REF TO zlnt_runtime_opti_7f2541396f43 OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_f7fb0253 IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zlnt_runtime_opti_7f2541396f43( i_overwrite ).
    DATA(t2) = CAST zlnt_runtime_opti_7f2541396f43( i_ignore_if_exists ).
    DATA(t3) = CAST zlnt_runtime_opti_7f2541396f43( t1 ).
    me->overwrite = t3.
    DATA(t4) = CAST zlnt_runtime_opti_7f2541396f43( t2 ).
    me->ignore_if_exists = t4.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1731_b22df1ab181e.
  ENDMETHOD.
ENDCLASS.
