* TS: src/abap/5_syntax/_object_oriented.ts:93:3 shape.0bf37657bc57c1c867edeb0b021b417db30eaaba8b53fbdff01b4281526683c3
CLASS zcl_lnt_shape_a38e878f DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA method TYPE REF TO zif_lnt_method_definition.
    DATA def TYPE REF TO zif_lnt_interface_definition.
    METHODS constructor IMPORTING i_method TYPE REF TO zif_lnt_method_definition OPTIONAL i_def TYPE REF TO zif_lnt_interface_definition OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_a38e878f IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_method.
    DATA(t2) = i_def.
    DATA t3 TYPE REF TO zif_lnt_method_definition.
    DATA(t4) = t1.
    t3 = t4.
    me->method = t3.
    DATA t5 TYPE REF TO zif_lnt_interface_definition.
    DATA(t6) = t2.
    t5 = t6.
    me->def = t5.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1749_6b2f472d641d.
  ENDMETHOD.
ENDCLASS.
