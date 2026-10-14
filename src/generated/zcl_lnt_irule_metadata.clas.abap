* TS: src/rules/_irule.ts:23:1 IRuleMetadata
CLASS zcl_lnt_irule_metadata DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA key TYPE string.
    DATA title TYPE string.
    DATA short_description TYPE string.
    DATA bad_example TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA good_example TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA extended_information TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA tags TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA pragma TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA pseudo_comment TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS constructor IMPORTING i_key TYPE string i_title TYPE string i_short_description TYPE string i_bad_example TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_good_example TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL
    i_extended_information TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_tags TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0 OPTIONAL i_pragma TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_pseudo_comment TYPE REF TO
    zlnt_runtime_opti_4ba3bdccd169 OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_irule_metadata IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_key.
    DATA(t2) = i_title.
    DATA(t3) = i_short_description.
    DATA(t4) = i_bad_example.
    DATA(t5) = i_good_example.
    DATA(t6) = i_extended_information.
    DATA(t7) = i_tags.
    DATA(t8) = i_pragma.
    DATA(t9) = i_pseudo_comment.
    DATA(t10) = t1.
    me->key = t10.
    DATA(t11) = t2.
    me->title = t11.
    DATA(t12) = t3.
    me->short_description = t12.
    DATA(t13) = t4.
    me->bad_example = t13.
    DATA(t14) = t5.
    me->good_example = t14.
    DATA(t15) = t6.
    me->extended_information = t15.
    DATA(t16) = t7.
    me->tags = t16.
    DATA(t17) = t8.
    me->pragma = t17.
    DATA(t18) = t9.
    me->pseudo_comment = t18.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1284_126cb3f90cd0.
  ENDMETHOD.
ENDCLASS.
