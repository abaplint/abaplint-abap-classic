* TS: src/registry.ts:21:27 shape.d184d639b396286a74f614f4fc726acfc24441b4971c69640385ddf95d828f31
CLASS zcl_lnt_shape_c89a2931 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA runtime TYPE int8.
    DATA name TYPE string.
    DATA extra TYPE string.
    METHODS constructor IMPORTING i_runtime TYPE int8 i_name TYPE string i_extra TYPE string.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_c89a2931 IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_runtime.
    DATA(t2) = i_name.
    DATA(t3) = i_extra.
    DATA(t4) = t1.
    me->runtime = t4.
    DATA(t5) = t2.
    me->name = t5.
    DATA(t6) = t3.
    me->extra = t6.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1815_33b2a5f6f2d4.
  ENDMETHOD.
ENDCLASS.
