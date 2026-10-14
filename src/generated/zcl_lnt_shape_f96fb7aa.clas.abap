* TS: src/objects/number_range.ts:4:22 shape.eba279bb16aa0fc7980b20d35bff4b2f025752dc0dc0ea77e37716953d6f70c6
CLASS zcl_lnt_shape_f96fb7aa DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA description TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA domain TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA percentage TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
    METHODS constructor IMPORTING i_description TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_domain TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_percentage TYPE REF TO zlnt_runtime_opti_4a236cd5714d OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_f96fb7aa IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zlnt_runtime_opti_4ba3bdccd169( i_description ).
    DATA(t2) = CAST zlnt_runtime_opti_4ba3bdccd169( i_domain ).
    DATA(t3) = CAST zlnt_runtime_opti_4a236cd5714d( i_percentage ).
    DATA(t4) = CAST zlnt_runtime_opti_4ba3bdccd169( t1 ).
    me->description = t4.
    DATA(t5) = CAST zlnt_runtime_opti_4ba3bdccd169( t2 ).
    me->domain = t5.
    DATA(t6) = CAST zlnt_runtime_opti_4a236cd5714d( t3 ).
    me->percentage = t6.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1800_86e28033e13e.
  ENDMETHOD.
ENDCLASS.
