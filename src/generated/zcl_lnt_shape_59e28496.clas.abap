* TS: src/abap/5_syntax/_current_scope.ts:315:50 shape.8be9717b12261eaefd5fff3c1c6a0c4aa2e119e9950e5a0639f9bfef1226eae9
CLASS zcl_lnt_shape_59e28496 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA id TYPE REF TO zcl_lnt_fi_identifier.
    DATA oo_type TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA rtti_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS constructor IMPORTING i_id TYPE REF TO zcl_lnt_fi_identifier OPTIONAL i_oo_type TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_rtti_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_59e28496 IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zcl_lnt_fi_identifier( i_id ).
    DATA(t2) = CAST zlnt_runtime_opti_4ba3bdccd169( i_oo_type ).
    DATA(t3) = CAST zlnt_runtime_opti_4ba3bdccd169( i_rtti_name ).
    DATA(t4) = CAST zcl_lnt_fi_identifier( t1 ).
    me->id = t4.
    DATA(t5) = CAST zlnt_runtime_opti_4ba3bdccd169( t2 ).
    me->oo_type = t5.
    DATA(t6) = CAST zlnt_runtime_opti_4ba3bdccd169( t3 ).
    me->rtti_name = t6.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1748_4da847978c11.
  ENDMETHOD.
ENDCLASS.
