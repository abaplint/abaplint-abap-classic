* TS: src/objects/data_element.ts:14:22 shape.f4321bd402692a2cf6d27d1380e54045a40ada63100c1cb26e475d8d72e93b2f
CLASS zcl_lnt_shape_66add1d1 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA short TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA medium TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA long TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA heading TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS constructor IMPORTING i_short TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_medium TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_long TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_heading TYPE REF TO
    zlnt_runtime_opti_4ba3bdccd169 OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_66add1d1 IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_short.
    DATA(t2) = i_medium.
    DATA(t3) = i_long.
    DATA(t4) = i_heading.
    DATA(t5) = t1.
    me->short = t5.
    DATA(t6) = t2.
    me->medium = t6.
    DATA(t7) = t3.
    me->long = t7.
    DATA(t8) = t4.
    me->heading = t8.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1783_636a501dcf61.
  ENDMETHOD.
ENDCLASS.
