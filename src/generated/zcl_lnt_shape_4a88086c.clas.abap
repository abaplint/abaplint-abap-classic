* TS: src/ddic.ts:353:28 shape.7243dfca51cf8c5dec40cbf1591a94c7ad402e62a1b95a78c81781f8edae8c67
CLASS zcl_lnt_shape_4a88086c DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA text TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA length TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA decimals_29bf TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA info_text TYPE string.
    DATA qualified_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA conversion_exit TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA ddic_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA description TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS constructor IMPORTING i_text TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_length TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_decimals_2eed TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_info_text TYPE
    string i_qualified_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_conversion_exit TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_ddic_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_description TYPE REF TO
    zlnt_runtime_opti_4ba3bdccd169 OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_4a88086c IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zlnt_runtime_opti_4ba3bdccd169( i_text ).
    DATA(t2) = CAST zlnt_runtime_opti_4ba3bdccd169( i_length ).
    DATA(t3) = CAST zlnt_runtime_opti_4ba3bdccd169( i_decimals_2eed ).
    DATA(t4) = i_info_text.
    DATA(t5) = CAST zlnt_runtime_opti_4ba3bdccd169( i_qualified_name ).
    DATA(t6) = CAST zlnt_runtime_opti_4ba3bdccd169( i_conversion_exit ).
    DATA(t7) = CAST zlnt_runtime_opti_4ba3bdccd169( i_ddic_name ).
    DATA(t8) = CAST zlnt_runtime_opti_4ba3bdccd169( i_description ).
    DATA(t9) = CAST zlnt_runtime_opti_4ba3bdccd169( t1 ).
    me->text = t9.
    DATA(t10) = CAST zlnt_runtime_opti_4ba3bdccd169( t2 ).
    me->length = t10.
    DATA(t11) = CAST zlnt_runtime_opti_4ba3bdccd169( t3 ).
    me->decimals_29bf = t11.
    DATA(t12) = t4.
    me->info_text = t12.
    DATA(t13) = CAST zlnt_runtime_opti_4ba3bdccd169( t5 ).
    me->qualified_name = t13.
    DATA(t14) = CAST zlnt_runtime_opti_4ba3bdccd169( t6 ).
    me->conversion_exit = t14.
    DATA(t15) = CAST zlnt_runtime_opti_4ba3bdccd169( t7 ).
    me->ddic_name = t15.
    DATA(t16) = CAST zlnt_runtime_opti_4ba3bdccd169( t8 ).
    me->description = t16.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1761_f3fa19572310.
  ENDMETHOD.
ENDCLASS.
