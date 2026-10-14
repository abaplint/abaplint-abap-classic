* TS: src/objects/icf_service.ts:5:22 shape.832b9cbc8fa5072c1a7843576d196de6952cf3e6ff1351f95c1fff7633c0e54e
CLASS zcl_lnt_shape_c9bc8812 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA url_01ab TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA handlers TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    METHODS constructor IMPORTING i_url_8ce1 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_handlers TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0 OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_c9bc8812 IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zlnt_runtime_opti_4ba3bdccd169( i_url_8ce1 ).
    DATA(t2) = CAST zlnt_runtime_arra_8ecd6afe19e0( i_handlers ).
    DATA(t3) = CAST zlnt_runtime_opti_4ba3bdccd169( t1 ).
    me->url_01ab = t3.
    DATA(t4) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    me->handlers = t4.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1792_ae27b34ec309.
  ENDMETHOD.
ENDCLASS.
