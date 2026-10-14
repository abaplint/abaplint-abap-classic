* TS: src/objects/data_element.ts:14:22 shape.4dd6831e75631668f4bdd43cb6d79876f9cc6bb1d0188c22c4a25ddae11b7310
CLASS zcl_lnt_shape_01c562b5 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA description TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA refkind TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA domname TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA datatype_2b0f TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA leng_e82a TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA texts TYPE REF TO zcl_lnt_shape_66add1d1.
    DATA text_max_lengths TYPE REF TO zcl_lnt_shape_66add1d1.
    DATA texts_translations TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA decimals_29bf TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA dtelmaster TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA aff_category TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS constructor IMPORTING i_description TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_refkind TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_domname TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_datatype_9e1e
    TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_leng_b7d5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_texts TYPE REF TO zcl_lnt_shape_66add1d1 OPTIONAL i_text_max_lengths TYPE REF TO zcl_lnt_shape_66add1d1 OPTIONAL
    i_texts_translations TYPE REF TO zlnt_runtime_arra_c22708faf2e3 OPTIONAL i_decimals_2eed TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_dtelmaster TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_aff_category TYPE REF TO
    zlnt_runtime_opti_4ba3bdccd169 OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_01c562b5 IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_description.
    DATA(t2) = i_refkind.
    DATA(t3) = i_domname.
    DATA(t4) = i_datatype_9e1e.
    DATA(t5) = i_leng_b7d5.
    DATA(t6) = i_texts.
    DATA(t7) = i_text_max_lengths.
    DATA(t8) = i_texts_translations.
    DATA(t9) = i_decimals_2eed.
    DATA(t10) = i_dtelmaster.
    DATA(t11) = i_aff_category.
    DATA(t12) = t1.
    me->description = t12.
    DATA(t13) = t2.
    me->refkind = t13.
    DATA(t14) = t3.
    me->domname = t14.
    DATA(t15) = t4.
    me->datatype_2b0f = t15.
    DATA(t16) = t5.
    me->leng_e82a = t16.
    DATA(t17) = t6.
    me->texts = t17.
    DATA(t18) = t7.
    me->text_max_lengths = t18.
    DATA(t19) = t8.
    me->texts_translations = t19.
    DATA(t20) = t9.
    me->decimals_29bf = t20.
    DATA(t21) = t10.
    me->dtelmaster = t21.
    DATA(t22) = t11.
    me->aff_category = t22.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1785_341f9ad0a626.
  ENDMETHOD.
ENDCLASS.
