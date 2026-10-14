* TS: src/lsp/_interfaces.ts:17:12 shape.cc2b695581659623e924161c8df8ce8d129ee97f428a2bd0b6d8ebbe5beb9126
CLASS zcl_lnt_shape_c44ae6d7 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA range TYPE REF TO zcl_lnt_shape_9ead17bd.
    DATA severity TYPE REF TO zlnt_runtime_opti_4a236cd5714d.
    DATA code TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA code_description TYPE REF TO zcl_lnt_shape_88ee2c6c.
    DATA source TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA message_25cb TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA tags TYPE REF TO zlnt_runtime_arra_f39560c658f8.
    DATA related_information TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA data_56cc TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    METHODS constructor IMPORTING i_range TYPE REF TO zcl_lnt_shape_9ead17bd OPTIONAL i_severity TYPE REF TO zlnt_runtime_opti_4a236cd5714d OPTIONAL i_code TYPE REF TO zlnt_runtime_dyna_a429568d5be8 OPTIONAL i_code_description TYPE REF TO
    zcl_lnt_shape_88ee2c6c OPTIONAL i_source_75cf TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_message_26cb TYPE REF TO zlnt_runtime_dyna_a429568d5be8 OPTIONAL i_tags TYPE REF TO zlnt_runtime_arra_f39560c658f8 OPTIONAL
    i_related_information TYPE REF TO zlnt_runtime_arra_c22708faf2e3 OPTIONAL i_data_dc02 TYPE REF TO zlnt_runtime_dyna_a429568d5be8 OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_c44ae6d7 IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zcl_lnt_shape_9ead17bd( i_range ).
    DATA(t2) = CAST zlnt_runtime_opti_4a236cd5714d( i_severity ).
    DATA(t3) = CAST zlnt_runtime_dyna_a429568d5be8( i_code ).
    DATA(t4) = CAST zcl_lnt_shape_88ee2c6c( i_code_description ).
    DATA(t5) = CAST zlnt_runtime_opti_4ba3bdccd169( i_source_75cf ).
    DATA(t6) = CAST zlnt_runtime_dyna_a429568d5be8( i_message_26cb ).
    DATA(t7) = CAST zlnt_runtime_arra_f39560c658f8( i_tags ).
    DATA(t8) = CAST zlnt_runtime_arra_c22708faf2e3( i_related_information ).
    DATA(t9) = CAST zlnt_runtime_dyna_a429568d5be8( i_data_dc02 ).
    DATA t10 TYPE REF TO zcl_lnt_shape_9ead17bd.
    DATA(t11) = CAST zcl_lnt_shape_9ead17bd( t1 ).
    t10 = t11.
    me->range = t10.
    DATA(t12) = CAST zlnt_runtime_opti_4a236cd5714d( t2 ).
    me->severity = t12.
    DATA(t13) = CAST zlnt_runtime_dyna_a429568d5be8( t3 ).
    me->code = t13.
    DATA(t14) = CAST zcl_lnt_shape_88ee2c6c( t4 ).
    me->code_description = t14.
    DATA(t15) = CAST zlnt_runtime_opti_4ba3bdccd169( t5 ).
    me->source = t15.
    DATA t16 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t17) = CAST zlnt_runtime_dyna_a429568d5be8( t6 ).
    t16 = t17.
    me->message_25cb = t16.
    DATA(t18) = CAST zlnt_runtime_arra_f39560c658f8( t7 ).
    me->tags = t18.
    DATA(t19) = CAST zlnt_runtime_arra_c22708faf2e3( t8 ).
    me->related_information = t19.
    DATA(t20) = CAST zlnt_runtime_dyna_a429568d5be8( t9 ).
    me->data_56cc = t20.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1722_d48601ff42b1.
  ENDMETHOD.
ENDCLASS.
