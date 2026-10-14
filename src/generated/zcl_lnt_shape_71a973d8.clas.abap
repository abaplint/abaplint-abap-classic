* TS: src/objects/interface.ts:9:22 shape.d446a0afab0751a700b14b75bd78fdef616a0f87d076311d552de4fb1539bd5a
CLASS zcl_lnt_shape_71a973d8 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA description TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS constructor IMPORTING i_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_description TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_71a973d8 IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zlnt_runtime_opti_4ba3bdccd169( i_name ).
    DATA(t2) = CAST zlnt_runtime_opti_4ba3bdccd169( i_description ).
    DATA(t3) = CAST zlnt_runtime_opti_4ba3bdccd169( t1 ).
    me->name = t3.
    DATA(t4) = CAST zlnt_runtime_opti_4ba3bdccd169( t2 ).
    me->description = t4.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1793_06169b4295d2.
  ENDMETHOD.
ENDCLASS.
