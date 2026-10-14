* TS: src/objects/proxy_object.ts:8:1 ProxyDataItem
CLASS zcl_lnt_proxy_data_item DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA object_1232 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA obj_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA object1 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA obj_name1 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA object2 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA obj_name2 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA object_r TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA obj_name_r TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA r3_type TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA r3_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA r3_text TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA ifr_type TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA ifr_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS constructor IMPORTING i_object_5749 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_obj_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_object1 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_obj_name1
    TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_object2 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_obj_name2 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_object_r TYPE REF TO zlnt_runtime_opti_4ba3bdccd169
    OPTIONAL i_obj_name_r TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_r3_type TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_r3_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_r3_text TYPE REF TO
    zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_ifr_type TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_ifr_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_proxy_data_item IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = CAST zlnt_runtime_opti_4ba3bdccd169( i_object_5749 ).
    DATA(t2) = CAST zlnt_runtime_opti_4ba3bdccd169( i_obj_name ).
    DATA(t3) = CAST zlnt_runtime_opti_4ba3bdccd169( i_object1 ).
    DATA(t4) = CAST zlnt_runtime_opti_4ba3bdccd169( i_obj_name1 ).
    DATA(t5) = CAST zlnt_runtime_opti_4ba3bdccd169( i_object2 ).
    DATA(t6) = CAST zlnt_runtime_opti_4ba3bdccd169( i_obj_name2 ).
    DATA(t7) = CAST zlnt_runtime_opti_4ba3bdccd169( i_object_r ).
    DATA(t8) = CAST zlnt_runtime_opti_4ba3bdccd169( i_obj_name_r ).
    DATA(t9) = CAST zlnt_runtime_opti_4ba3bdccd169( i_r3_type ).
    DATA(t10) = CAST zlnt_runtime_opti_4ba3bdccd169( i_r3_name ).
    DATA(t11) = CAST zlnt_runtime_opti_4ba3bdccd169( i_r3_text ).
    DATA(t12) = CAST zlnt_runtime_opti_4ba3bdccd169( i_ifr_type ).
    DATA(t13) = CAST zlnt_runtime_opti_4ba3bdccd169( i_ifr_name ).
    DATA(t14) = CAST zlnt_runtime_opti_4ba3bdccd169( t1 ).
    me->object_1232 = t14.
    DATA(t15) = CAST zlnt_runtime_opti_4ba3bdccd169( t2 ).
    me->obj_name = t15.
    DATA(t16) = CAST zlnt_runtime_opti_4ba3bdccd169( t3 ).
    me->object1 = t16.
    DATA(t17) = CAST zlnt_runtime_opti_4ba3bdccd169( t4 ).
    me->obj_name1 = t17.
    DATA(t18) = CAST zlnt_runtime_opti_4ba3bdccd169( t5 ).
    me->object2 = t18.
    DATA(t19) = CAST zlnt_runtime_opti_4ba3bdccd169( t6 ).
    me->obj_name2 = t19.
    DATA(t20) = CAST zlnt_runtime_opti_4ba3bdccd169( t7 ).
    me->object_r = t20.
    DATA(t21) = CAST zlnt_runtime_opti_4ba3bdccd169( t8 ).
    me->obj_name_r = t21.
    DATA(t22) = CAST zlnt_runtime_opti_4ba3bdccd169( t9 ).
    me->r3_type = t22.
    DATA(t23) = CAST zlnt_runtime_opti_4ba3bdccd169( t10 ).
    me->r3_name = t23.
    DATA(t24) = CAST zlnt_runtime_opti_4ba3bdccd169( t11 ).
    me->r3_text = t24.
    DATA(t25) = CAST zlnt_runtime_opti_4ba3bdccd169( t12 ).
    me->ifr_type = t25.
    DATA(t26) = CAST zlnt_runtime_opti_4ba3bdccd169( t13 ).
    me->ifr_name = t26.
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1225_c388965dd35d.
  ENDMETHOD.
ENDCLASS.
