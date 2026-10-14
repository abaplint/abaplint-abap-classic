* TS: src/lsp/inlay_hints.ts:22:116 shape.fe4b847db3eb1c35e279b8ea91e82f722b4a6ad0811c66929cd1622c4b15b503
CLASS zcl_lnt_shape_099057c5 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA value TYPE string.
    DATA tooltip TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA location TYPE REF TO zcl_lnt_shape_eed5a04f.
    DATA command TYPE REF TO zcl_lnt_shape_6d7086ba.
    METHODS constructor IMPORTING i_value TYPE string i_tooltip TYPE REF TO zlnt_runtime_dyna_a429568d5be8 OPTIONAL i_location TYPE REF TO zcl_lnt_shape_eed5a04f OPTIONAL i_command TYPE REF TO zcl_lnt_shape_6d7086ba OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_099057c5 IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_value.
    DATA(t2) = CAST zlnt_runtime_dyna_a429568d5be8( i_tooltip ).
    DATA(t3) = CAST zcl_lnt_shape_eed5a04f( i_location ).
    DATA(t4) = CAST zcl_lnt_shape_6d7086ba( i_command ).
    DATA(t5) = t1.
    me->value = t5.
    DATA(t6) = CAST zlnt_runtime_dyna_a429568d5be8( t2 ).
    me->tooltip = t6.
    DATA(t7) = CAST zcl_lnt_shape_eed5a04f( t3 ).
    me->location = t7.
    DATA(t8) = CAST zcl_lnt_shape_6d7086ba( t4 ).
    me->command = t8.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1766_6356a142bf32.
  ENDMETHOD.
ENDCLASS.
