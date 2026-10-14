* TS: src/lsp/inlay_hints.ts:22:116 shape.02852a7f4246688b3f14697008cf69c06cf781cdc4ffd9ca59d21f90a03488b9
CLASS zcl_lnt_shape_16a9d8b6 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA position_7b94 TYPE REF TO zcl_lnt_shape_38f98ddf.
    DATA label TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA kind TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
    DATA text_edits TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA tooltip TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA padding_left TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA padding_right TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA data_56cc TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    METHODS constructor IMPORTING i_position_a3fd TYPE REF TO zcl_lnt_shape_38f98ddf OPTIONAL i_label TYPE REF TO zlnt_runtime_dyna_a429568d5be8 OPTIONAL i_kind TYPE REF TO zlnt_runtime_opti_4a236cd5714d OPTIONAL i_text_edits TYPE REF TO
    zlnt_runtime_arra_c22708faf2e3 OPTIONAL i_tooltip TYPE REF TO zlnt_runtime_dyna_a429568d5be8 OPTIONAL i_padding_left TYPE REF TO zlnt_runtime_opti_7f2541396f43 OPTIONAL i_padding_right TYPE REF TO zlnt_runtime_opti_7f2541396f43 OPTIONAL
    i_data_dc02 TYPE REF TO zlnt_runtime_dyna_a429568d5be8 OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_16a9d8b6 IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zcl_lnt_shape_38f98ddf( i_position_a3fd ).
    DATA(t2) = CAST zlnt_runtime_dyna_a429568d5be8( i_label ).
    DATA(t3) = CAST zlnt_runtime_opti_4a236cd5714d( i_kind ).
    DATA(t4) = CAST zlnt_runtime_arra_c22708faf2e3( i_text_edits ).
    DATA(t5) = CAST zlnt_runtime_dyna_a429568d5be8( i_tooltip ).
    DATA(t6) = CAST zlnt_runtime_opti_7f2541396f43( i_padding_left ).
    DATA(t7) = CAST zlnt_runtime_opti_7f2541396f43( i_padding_right ).
    DATA(t8) = CAST zlnt_runtime_dyna_a429568d5be8( i_data_dc02 ).
    DATA t9 TYPE REF TO zcl_lnt_shape_38f98ddf.
    DATA(t10) = CAST zcl_lnt_shape_38f98ddf( t1 ).
    t9 = t10.
    me->position_7b94 = t9.
    DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t12) = CAST zlnt_runtime_dyna_a429568d5be8( t2 ).
    t11 = t12.
    me->label = t11.
    DATA(t13) = CAST zlnt_runtime_opti_4a236cd5714d( t3 ).
    me->kind = t13.
    DATA(t14) = CAST zlnt_runtime_arra_c22708faf2e3( t4 ).
    me->text_edits = t14.
    DATA(t15) = CAST zlnt_runtime_dyna_a429568d5be8( t5 ).
    me->tooltip = t15.
    DATA(t16) = CAST zlnt_runtime_opti_7f2541396f43( t6 ).
    me->padding_left = t16.
    DATA(t17) = CAST zlnt_runtime_opti_7f2541396f43( t7 ).
    me->padding_right = t17.
    DATA(t18) = CAST zlnt_runtime_dyna_a429568d5be8( t8 ).
    me->data_56cc = t18.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1767_38064ac4390b.
  ENDMETHOD.
ENDCLASS.
