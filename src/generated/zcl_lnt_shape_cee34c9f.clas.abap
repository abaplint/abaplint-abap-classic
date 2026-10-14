* TS: src/objects/table.ts:36:23 shape.c0bf7470c0d65134bf2c2bc5006ff32978968e3b9f5cd00ad621be3facd4fa63
CLASS zcl_lnt_shape_cee34c9f DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA fieldname TYPE string.
    DATA rollname_a788 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA comptype TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA precfield TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA leng_0540 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA intlen TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA datatype_2bc5 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA decimals_0f26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA keyflag TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA groupname TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA checktable TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA reftable TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA reffield TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA reftype TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA ddtext_87ee TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS constructor IMPORTING i_fieldname TYPE string i_rollname_e353 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_comptype TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_precfield TYPE REF TO
    zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_leng_f9b0 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_intlen TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_datatype_73ff TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL
    i_decimals_c159 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_keyflag TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_groupname TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_checktable TYPE REF TO
    zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_reftable TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_reffield TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_reftype TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL
    i_ddtext_4f13 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_cee34c9f IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_fieldname.
    DATA(t2) = CAST zlnt_runtime_opti_4ba3bdccd169( i_rollname_e353 ).
    DATA(t3) = CAST zlnt_runtime_opti_4ba3bdccd169( i_comptype ).
    DATA(t4) = CAST zlnt_runtime_opti_4ba3bdccd169( i_precfield ).
    DATA(t5) = CAST zlnt_runtime_opti_4ba3bdccd169( i_leng_f9b0 ).
    DATA(t6) = CAST zlnt_runtime_opti_4ba3bdccd169( i_intlen ).
    DATA(t7) = CAST zlnt_runtime_opti_4ba3bdccd169( i_datatype_73ff ).
    DATA(t8) = CAST zlnt_runtime_opti_4ba3bdccd169( i_decimals_c159 ).
    DATA(t9) = CAST zlnt_runtime_opti_4ba3bdccd169( i_keyflag ).
    DATA(t10) = CAST zlnt_runtime_opti_4ba3bdccd169( i_groupname ).
    DATA(t11) = CAST zlnt_runtime_opti_4ba3bdccd169( i_checktable ).
    DATA(t12) = CAST zlnt_runtime_opti_4ba3bdccd169( i_reftable ).
    DATA(t13) = CAST zlnt_runtime_opti_4ba3bdccd169( i_reffield ).
    DATA(t14) = CAST zlnt_runtime_opti_4ba3bdccd169( i_reftype ).
    DATA(t15) = CAST zlnt_runtime_opti_4ba3bdccd169( i_ddtext_4f13 ).
    DATA(t16) = t1.
    me->fieldname = t16.
    DATA(t17) = CAST zlnt_runtime_opti_4ba3bdccd169( t2 ).
    me->rollname_a788 = t17.
    DATA(t18) = CAST zlnt_runtime_opti_4ba3bdccd169( t3 ).
    me->comptype = t18.
    DATA(t19) = CAST zlnt_runtime_opti_4ba3bdccd169( t4 ).
    me->precfield = t19.
    DATA(t20) = CAST zlnt_runtime_opti_4ba3bdccd169( t5 ).
    me->leng_0540 = t20.
    DATA(t21) = CAST zlnt_runtime_opti_4ba3bdccd169( t6 ).
    me->intlen = t21.
    DATA(t22) = CAST zlnt_runtime_opti_4ba3bdccd169( t7 ).
    me->datatype_2bc5 = t22.
    DATA(t23) = CAST zlnt_runtime_opti_4ba3bdccd169( t8 ).
    me->decimals_0f26 = t23.
    DATA(t24) = CAST zlnt_runtime_opti_4ba3bdccd169( t9 ).
    me->keyflag = t24.
    DATA(t25) = CAST zlnt_runtime_opti_4ba3bdccd169( t10 ).
    me->groupname = t25.
    DATA(t26) = CAST zlnt_runtime_opti_4ba3bdccd169( t11 ).
    me->checktable = t26.
    DATA(t27) = CAST zlnt_runtime_opti_4ba3bdccd169( t12 ).
    me->reftable = t27.
    DATA(t28) = CAST zlnt_runtime_opti_4ba3bdccd169( t13 ).
    me->reffield = t28.
    DATA(t29) = CAST zlnt_runtime_opti_4ba3bdccd169( t14 ).
    me->reftype = t29.
    DATA(t30) = CAST zlnt_runtime_opti_4ba3bdccd169( t15 ).
    me->ddtext_87ee = t30.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1803_4832848f7fad.
  ENDMETHOD.
ENDCLASS.
