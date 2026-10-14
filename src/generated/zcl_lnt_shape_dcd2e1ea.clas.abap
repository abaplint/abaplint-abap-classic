* TS: src/objects/data_element.ts:14:22 shape.d7262d2c4a49cced07fd6bf34dd385987b433e7bdc221b387876c69238930036
CLASS zcl_lnt_shape_dcd2e1ea DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA language TYPE string.
    DATA description TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA short TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA medium TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA long TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA heading TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS constructor IMPORTING i_language TYPE string i_description TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_short TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_medium TYPE REF TO zlnt_runtime_opti_4ba3bdccd169
    OPTIONAL i_long TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_heading TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_dcd2e1ea IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_language.
    DATA(t2) = CAST zlnt_runtime_opti_4ba3bdccd169( i_description ).
    DATA(t3) = CAST zlnt_runtime_opti_4ba3bdccd169( i_short ).
    DATA(t4) = CAST zlnt_runtime_opti_4ba3bdccd169( i_medium ).
    DATA(t5) = CAST zlnt_runtime_opti_4ba3bdccd169( i_long ).
    DATA(t6) = CAST zlnt_runtime_opti_4ba3bdccd169( i_heading ).
    DATA(t7) = t1.
    me->language = t7.
    DATA(t8) = CAST zlnt_runtime_opti_4ba3bdccd169( t2 ).
    me->description = t8.
    DATA(t9) = CAST zlnt_runtime_opti_4ba3bdccd169( t3 ).
    me->short = t9.
    DATA(t10) = CAST zlnt_runtime_opti_4ba3bdccd169( t4 ).
    me->medium = t10.
    DATA(t11) = CAST zlnt_runtime_opti_4ba3bdccd169( t5 ).
    me->long = t11.
    DATA(t12) = CAST zlnt_runtime_opti_4ba3bdccd169( t6 ).
    me->heading = t12.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1784_c5395b0abb53.
  ENDMETHOD.
ENDCLASS.
