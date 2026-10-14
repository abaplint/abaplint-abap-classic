* TS: src/objects/maintenance_and_transport_object.ts:9:22 shape.24eb79e274b1fb1b18ea33ed5a3c4d8ce78b1f2ecd26ba439fdfca3b16659fe3
CLASS zcl_lnt_shape_cda19f43 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA area TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA object_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA object_type TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS constructor IMPORTING i_area TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_object_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_object_type TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_cda19f43 IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zlnt_runtime_opti_4ba3bdccd169( i_area ).
    DATA(t2) = CAST zlnt_runtime_opti_4ba3bdccd169( i_object_name ).
    DATA(t3) = CAST zlnt_runtime_opti_4ba3bdccd169( i_object_type ).
    DATA(t4) = CAST zlnt_runtime_opti_4ba3bdccd169( t1 ).
    me->area = t4.
    DATA(t5) = CAST zlnt_runtime_opti_4ba3bdccd169( t2 ).
    me->object_name = t5.
    DATA(t6) = CAST zlnt_runtime_opti_4ba3bdccd169( t3 ).
    me->object_type = t6.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1796_9050757ea7f7.
  ENDMETHOD.
ENDCLASS.
