* TS: src/objects/table_type.ts:11:22 shape.e7bc4ffb2071d1ce824c1ff97f3f450fefe193a4ab2f390c943a115fc01940f1
CLASS zcl_lnt_shape_50070dd1 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA rowtype TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA rowkind TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA datatype_2b0f TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA leng_e82a TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA decimals_29bf TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA accessmode TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA keykind TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA ddtext_d4ae TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA keydef TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA dd42v TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA dd43v TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS constructor IMPORTING i_rowtype TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_rowkind TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_datatype_9e1e TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_leng_b7d5
    TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_decimals_2eed TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_accessmode TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_keykind TYPE REF TO
    zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_ddtext_5aef TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_keydef TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_dd42v TYPE REF TO zlnt_runtime_arra_c22708faf2e3 OPTIONAL i_dd43v
    TYPE REF TO zlnt_runtime_arra_c22708faf2e3 OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_50070dd1 IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zlnt_runtime_opti_4ba3bdccd169( i_rowtype ).
    DATA(t2) = CAST zlnt_runtime_opti_4ba3bdccd169( i_rowkind ).
    DATA(t3) = CAST zlnt_runtime_opti_4ba3bdccd169( i_datatype_9e1e ).
    DATA(t4) = CAST zlnt_runtime_opti_4ba3bdccd169( i_leng_b7d5 ).
    DATA(t5) = CAST zlnt_runtime_opti_4ba3bdccd169( i_decimals_2eed ).
    DATA(t6) = CAST zlnt_runtime_opti_4ba3bdccd169( i_accessmode ).
    DATA(t7) = CAST zlnt_runtime_opti_4ba3bdccd169( i_keykind ).
    DATA(t8) = CAST zlnt_runtime_opti_4ba3bdccd169( i_ddtext_5aef ).
    DATA(t9) = CAST zlnt_runtime_opti_4ba3bdccd169( i_keydef ).
    DATA(t10) = CAST zlnt_runtime_arra_c22708faf2e3( i_dd42v ).
    DATA(t11) = CAST zlnt_runtime_arra_c22708faf2e3( i_dd43v ).
    DATA(t12) = CAST zlnt_runtime_opti_4ba3bdccd169( t1 ).
    me->rowtype = t12.
    DATA(t13) = CAST zlnt_runtime_opti_4ba3bdccd169( t2 ).
    me->rowkind = t13.
    DATA(t14) = CAST zlnt_runtime_opti_4ba3bdccd169( t3 ).
    me->datatype_2b0f = t14.
    DATA(t15) = CAST zlnt_runtime_opti_4ba3bdccd169( t4 ).
    me->leng_e82a = t15.
    DATA(t16) = CAST zlnt_runtime_opti_4ba3bdccd169( t5 ).
    me->decimals_29bf = t16.
    DATA(t17) = CAST zlnt_runtime_opti_4ba3bdccd169( t6 ).
    me->accessmode = t17.
    DATA(t18) = CAST zlnt_runtime_opti_4ba3bdccd169( t7 ).
    me->keykind = t18.
    DATA(t19) = CAST zlnt_runtime_opti_4ba3bdccd169( t8 ).
    me->ddtext_d4ae = t19.
    DATA(t20) = CAST zlnt_runtime_opti_4ba3bdccd169( t9 ).
    me->keydef = t20.
    DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t22) = CAST zlnt_runtime_arra_c22708faf2e3( t10 ).
    t21 = t22.
    me->dd42v = t21.
    DATA t23 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t24) = CAST zlnt_runtime_arra_c22708faf2e3( t11 ).
    t23 = t24.
    me->dd43v = t23.
  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1807_3505eaaae5ba.
  ENDMETHOD.
ENDCLASS.
