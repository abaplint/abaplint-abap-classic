* TS: src/objects/class.ts:17:22 shape.b5844dd56837b6b6faa2f9ff13358727c542f959ffa48ab366fbbc16cfaa3d3b
CLASS zcl_lnt_shape_e272b380 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA description TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA category TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS constructor IMPORTING i_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_description TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_category TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_e272b380 IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zlnt_runtime_opti_4ba3bdccd169( i_name ).
    DATA(t2) = CAST zlnt_runtime_opti_4ba3bdccd169( i_description ).
    DATA(t3) = CAST zlnt_runtime_opti_4ba3bdccd169( i_category ).
    DATA(t4) = CAST zlnt_runtime_opti_4ba3bdccd169( t1 ).
    me->name = t4.
    DATA(t5) = CAST zlnt_runtime_opti_4ba3bdccd169( t2 ).
    me->description = t5.
    DATA(t6) = CAST zlnt_runtime_opti_4ba3bdccd169( t3 ).
    me->category = t6.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1779_f72fd60a552a.
  ENDMETHOD.
ENDCLASS.
