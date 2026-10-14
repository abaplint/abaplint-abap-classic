* TS: src/lsp/_interfaces.ts:17:12 shape.7ffb6f0128d8a05a3c4a9ad495aa62d3d170d6869cad523f38eaaf44bb8cfbcb
CLASS zcl_lnt_shape_be772522 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA diagnostics TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA only TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA trigger_kind TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
    METHODS constructor IMPORTING i_diagnostics TYPE REF TO zlnt_runtime_arra_c22708faf2e3 OPTIONAL i_only TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0 OPTIONAL i_trigger_kind TYPE REF TO zlnt_runtime_opti_4a236cd5714d OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_be772522 IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zlnt_runtime_arra_c22708faf2e3( i_diagnostics ).
    DATA(t2) = CAST zlnt_runtime_arra_8ecd6afe19e0( i_only ).
    DATA(t3) = CAST zlnt_runtime_opti_4a236cd5714d( i_trigger_kind ).
    DATA t4 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t5) = CAST zlnt_runtime_arra_c22708faf2e3( t1 ).
    t4 = t5.
    me->diagnostics = t4.
    DATA(t6) = CAST zlnt_runtime_arra_8ecd6afe19e0( t2 ).
    me->only = t6.
    DATA(t7) = CAST zlnt_runtime_opti_4a236cd5714d( t3 ).
    me->trigger_kind = t7.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1723_a5a125071b14.
  ENDMETHOD.
ENDCLASS.
