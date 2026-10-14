* TS: src/lsp/language_server.ts:98:67 shape.741665cded50d564a824bb81b6869fb36630b092374ff1337a12e1fd68376bd2
CLASS zcl_lnt_shape_63d7d0d8 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA range TYPE REF TO zcl_lnt_shape_9ead17bd.
    DATA kind TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
    METHODS constructor IMPORTING i_range TYPE REF TO zcl_lnt_shape_9ead17bd OPTIONAL i_kind TYPE REF TO zlnt_runtime_opti_4a236cd5714d OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_63d7d0d8 IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zcl_lnt_shape_9ead17bd( i_range ).
    DATA(t2) = CAST zlnt_runtime_opti_4a236cd5714d( i_kind ).
    DATA t3 TYPE REF TO zcl_lnt_shape_9ead17bd.
    DATA(t4) = CAST zcl_lnt_shape_9ead17bd( t1 ).
    t3 = t4.
    me->range = t3.
    DATA(t5) = CAST zlnt_runtime_opti_4a236cd5714d( t2 ).
    me->kind = t5.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1771_d361ddc4cc26.
  ENDMETHOD.
ENDCLASS.
