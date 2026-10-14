* TS: src/objects/domain.ts:24:22 shape.40c6b74800e68c619558e3d39bd8558bb3e030360fdfa8b92f9d1138f819969a
CLASS zcl_lnt_shape_b346f020 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA description TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA datatype_2b0f TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA length TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA decimals_29bf TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA conversion_exit TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA values TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA values_translations TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS constructor IMPORTING i_description TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_datatype_9e1e TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_length TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL
    i_decimals_2eed TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_conversion_exit TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_values TYPE REF TO zlnt_runtime_arra_c22708faf2e3 OPTIONAL i_values_translations TYPE REF TO
    zlnt_runtime_arra_c22708faf2e3 OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_b346f020 IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_description.
    DATA(t2) = i_datatype_9e1e.
    DATA(t3) = i_length.
    DATA(t4) = i_decimals_2eed.
    DATA(t5) = i_conversion_exit.
    DATA(t6) = i_values.
    DATA(t7) = i_values_translations.
    DATA(t8) = t1.
    me->description = t8.
    DATA(t9) = t2.
    me->datatype_2b0f = t9.
    DATA(t10) = t3.
    me->length = t10.
    DATA(t11) = t4.
    me->decimals_29bf = t11.
    DATA(t12) = t5.
    me->conversion_exit = t12.
    DATA(t13) = t6.
    me->values = t13.
    DATA(t14) = t7.
    me->values_translations = t14.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1786_ba71b957d789.
  ENDMETHOD.
ENDCLASS.
