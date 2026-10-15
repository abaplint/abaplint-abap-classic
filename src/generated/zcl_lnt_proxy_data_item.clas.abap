* TS: src/objects/proxy_object.ts:8:1 ProxyDataItem
CLASS zcl_lnt_proxy_data_item DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zlnt_own_storage_4c72afe8366e.
    DATA zlnt_view_source_36f3bf68b9b8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    INTERFACES zlnt_view_storage_74017ca272ac.
    DATA zlnt_view_ownkeys_b0e8086400eb TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA zlnt_view_extras_47272813ead1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    METHODS zlnt_view_read_sr_d19551a3358c RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS zlnt_view_write_s_b11a1c296d4e IMPORTING p0 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS zlnt_view_read_sr_32e05d1ecd20 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS zlnt_view_write_s_fa188fcdbe51 IMPORTING p0 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS zlnt_view_read_sr_0a28f535ddfc RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS zlnt_view_write_s_36e4bf7decb5 IMPORTING p0 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS zlnt_view_read_sr_6acc890d5816 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS zlnt_view_write_s_21e42960a160 IMPORTING p0 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS zlnt_view_read_sr_f9b4e02df8d5 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS zlnt_view_write_s_f1a3296e93af IMPORTING p0 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS zlnt_view_read_sr_7f8cbc63ea3f RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS zlnt_view_write_s_efdf43d832f1 IMPORTING p0 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS zlnt_view_read_sr_c59c8f4856ff RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS zlnt_view_write_s_c919887d9249 IMPORTING p0 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS zlnt_view_read_sr_85225c1d91ed RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS zlnt_view_write_s_1e96bcae23aa IMPORTING p0 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS zlnt_view_read_sr_35246f61540a RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS zlnt_view_write_s_f7ff15ec07e1 IMPORTING p0 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS zlnt_view_read_sr_cab452e50c73 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS zlnt_view_write_s_5da80184297a IMPORTING p0 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS zlnt_view_read_sr_c8d5f8e8bf9b RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS zlnt_view_write_s_bb86050a3d50 IMPORTING p0 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS zlnt_view_read_sr_de9ac449b9ef RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS zlnt_view_write_s_abc3d62d717b IMPORTING p0 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS zlnt_view_read_sr_df0b6d7f7ae5 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS zlnt_view_write_s_7d95ef43456e IMPORTING p0 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA zlnt_json_ownkeys_70e5fd461788 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
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
    zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_ifr_type TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL i_ifr_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 OPTIONAL view_source TYPE REF TO zlnt_runtime_dyna_a429568d5be8 OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_proxy_data_item IMPLEMENTATION.
  METHOD constructor.
    IF view_source IS BOUND.
      me->zlnt_view_source_36f3bf68b9b8 = view_source.
      RETURN.
    ENDIF.
    DATA(t1) = i_object_5749.
    DATA(t2) = i_obj_name.
    DATA(t3) = i_object1.
    DATA(t4) = i_obj_name1.
    DATA(t5) = i_object2.
    DATA(t6) = i_obj_name2.
    DATA(t7) = i_object_r.
    DATA(t8) = i_obj_name_r.
    DATA(t9) = i_r3_type.
    DATA(t10) = i_r3_name.
    DATA(t11) = i_r3_text.
    DATA(t12) = i_ifr_type.
    DATA(t13) = i_ifr_name.
    DATA(t14) = t1.
    me->zlnt_view_write_s_b11a1c296d4e( p0 = t14 ).
    DATA(t15) = t2.
    me->zlnt_view_write_s_fa188fcdbe51( p0 = t15 ).
    DATA(t16) = t3.
    me->zlnt_view_write_s_36e4bf7decb5( p0 = t16 ).
    DATA(t17) = t4.
    me->zlnt_view_write_s_21e42960a160( p0 = t17 ).
    DATA(t18) = t5.
    me->zlnt_view_write_s_f1a3296e93af( p0 = t18 ).
    DATA(t19) = t6.
    me->zlnt_view_write_s_efdf43d832f1( p0 = t19 ).
    DATA(t20) = t7.
    me->zlnt_view_write_s_c919887d9249( p0 = t20 ).
    DATA(t21) = t8.
    me->zlnt_view_write_s_1e96bcae23aa( p0 = t21 ).
    DATA(t22) = t9.
    me->zlnt_view_write_s_f7ff15ec07e1( p0 = t22 ).
    DATA(t23) = t10.
    me->zlnt_view_write_s_5da80184297a( p0 = t23 ).
    DATA(t24) = t11.
    me->zlnt_view_write_s_bb86050a3d50( p0 = t24 ).
    DATA(t25) = t12.
    me->zlnt_view_write_s_abc3d62d717b( p0 = t25 ).
    DATA(t26) = t13.
    me->zlnt_view_write_s_7d95ef43456e( p0 = t26 ).
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_nati_72359f490bf2( ).
  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    IF zlnt_view_source_36f3bf68b9b8 IS NOT BOUND.
      result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1323_3dc9f979a3fd.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_d19551a3358c.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `OBJECT` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        result = NEW #( ).
        result->has = abap_true.
        result->value = t1->as_string( ).
      ENDIF.
    ELSE.
      result = me->object_1232.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_b11a1c296d4e.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      IF p0 IS BOUND AND p0->has = abap_true.
        CLEAR t1.
        CREATE OBJECT t1.
        t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t1->sval = p0->value.
      ENDIF.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `OBJECT` p1 = t1 ).
    ELSE.
      me->object_1232 = p0.
      DATA t2 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2.
      IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `OBJECT` p1 = t2 ).
      ENDIF.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `OBJECT`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_32e05d1ecd20.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `OBJ_NAME` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        result = NEW #( ).
        result->has = abap_true.
        result->value = t1->as_string( ).
      ENDIF.
    ELSE.
      result = me->obj_name.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_fa188fcdbe51.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      IF p0 IS BOUND AND p0->has = abap_true.
        CLEAR t1.
        CREATE OBJECT t1.
        t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t1->sval = p0->value.
      ENDIF.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `OBJ_NAME` p1 = t1 ).
    ELSE.
      me->obj_name = p0.
      DATA t2 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2.
      IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `OBJ_NAME` p1 = t2 ).
      ENDIF.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `OBJ_NAME`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_0a28f535ddfc.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `OBJECT1` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        result = NEW #( ).
        result->has = abap_true.
        result->value = t1->as_string( ).
      ENDIF.
    ELSE.
      result = me->object1.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_36e4bf7decb5.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      IF p0 IS BOUND AND p0->has = abap_true.
        CLEAR t1.
        CREATE OBJECT t1.
        t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t1->sval = p0->value.
      ENDIF.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `OBJECT1` p1 = t1 ).
    ELSE.
      me->object1 = p0.
      DATA t2 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2.
      IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `OBJECT1` p1 = t2 ).
      ENDIF.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `OBJECT1`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_6acc890d5816.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `OBJ_NAME1` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        result = NEW #( ).
        result->has = abap_true.
        result->value = t1->as_string( ).
      ENDIF.
    ELSE.
      result = me->obj_name1.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_21e42960a160.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      IF p0 IS BOUND AND p0->has = abap_true.
        CLEAR t1.
        CREATE OBJECT t1.
        t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t1->sval = p0->value.
      ENDIF.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `OBJ_NAME1` p1 = t1 ).
    ELSE.
      me->obj_name1 = p0.
      DATA t2 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2.
      IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `OBJ_NAME1` p1 = t2 ).
      ENDIF.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `OBJ_NAME1`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_f9b4e02df8d5.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `OBJECT2` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        result = NEW #( ).
        result->has = abap_true.
        result->value = t1->as_string( ).
      ENDIF.
    ELSE.
      result = me->object2.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_f1a3296e93af.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      IF p0 IS BOUND AND p0->has = abap_true.
        CLEAR t1.
        CREATE OBJECT t1.
        t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t1->sval = p0->value.
      ENDIF.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `OBJECT2` p1 = t1 ).
    ELSE.
      me->object2 = p0.
      DATA t2 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2.
      IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `OBJECT2` p1 = t2 ).
      ENDIF.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `OBJECT2`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_7f8cbc63ea3f.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `OBJ_NAME2` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        result = NEW #( ).
        result->has = abap_true.
        result->value = t1->as_string( ).
      ENDIF.
    ELSE.
      result = me->obj_name2.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_efdf43d832f1.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      IF p0 IS BOUND AND p0->has = abap_true.
        CLEAR t1.
        CREATE OBJECT t1.
        t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t1->sval = p0->value.
      ENDIF.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `OBJ_NAME2` p1 = t1 ).
    ELSE.
      me->obj_name2 = p0.
      DATA t2 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2.
      IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `OBJ_NAME2` p1 = t2 ).
      ENDIF.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `OBJ_NAME2`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_c59c8f4856ff.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `OBJECT_R` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        result = NEW #( ).
        result->has = abap_true.
        result->value = t1->as_string( ).
      ENDIF.
    ELSE.
      result = me->object_r.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_c919887d9249.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      IF p0 IS BOUND AND p0->has = abap_true.
        CLEAR t1.
        CREATE OBJECT t1.
        t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t1->sval = p0->value.
      ENDIF.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `OBJECT_R` p1 = t1 ).
    ELSE.
      me->object_r = p0.
      DATA t2 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2.
      IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `OBJECT_R` p1 = t2 ).
      ENDIF.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `OBJECT_R`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_85225c1d91ed.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `OBJ_NAME_R` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        result = NEW #( ).
        result->has = abap_true.
        result->value = t1->as_string( ).
      ENDIF.
    ELSE.
      result = me->obj_name_r.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_1e96bcae23aa.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      IF p0 IS BOUND AND p0->has = abap_true.
        CLEAR t1.
        CREATE OBJECT t1.
        t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t1->sval = p0->value.
      ENDIF.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `OBJ_NAME_R` p1 = t1 ).
    ELSE.
      me->obj_name_r = p0.
      DATA t2 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2.
      IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `OBJ_NAME_R` p1 = t2 ).
      ENDIF.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `OBJ_NAME_R`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_35246f61540a.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `R3_TYPE` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        result = NEW #( ).
        result->has = abap_true.
        result->value = t1->as_string( ).
      ENDIF.
    ELSE.
      result = me->r3_type.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_f7ff15ec07e1.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      IF p0 IS BOUND AND p0->has = abap_true.
        CLEAR t1.
        CREATE OBJECT t1.
        t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t1->sval = p0->value.
      ENDIF.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `R3_TYPE` p1 = t1 ).
    ELSE.
      me->r3_type = p0.
      DATA t2 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2.
      IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `R3_TYPE` p1 = t2 ).
      ENDIF.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `R3_TYPE`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_cab452e50c73.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `R3_NAME` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        result = NEW #( ).
        result->has = abap_true.
        result->value = t1->as_string( ).
      ENDIF.
    ELSE.
      result = me->r3_name.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_5da80184297a.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      IF p0 IS BOUND AND p0->has = abap_true.
        CLEAR t1.
        CREATE OBJECT t1.
        t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t1->sval = p0->value.
      ENDIF.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `R3_NAME` p1 = t1 ).
    ELSE.
      me->r3_name = p0.
      DATA t2 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2.
      IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `R3_NAME` p1 = t2 ).
      ENDIF.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `R3_NAME`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_c8d5f8e8bf9b.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `R3_TEXT` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        result = NEW #( ).
        result->has = abap_true.
        result->value = t1->as_string( ).
      ENDIF.
    ELSE.
      result = me->r3_text.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_bb86050a3d50.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      IF p0 IS BOUND AND p0->has = abap_true.
        CLEAR t1.
        CREATE OBJECT t1.
        t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t1->sval = p0->value.
      ENDIF.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `R3_TEXT` p1 = t1 ).
    ELSE.
      me->r3_text = p0.
      DATA t2 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2.
      IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `R3_TEXT` p1 = t2 ).
      ENDIF.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `R3_TEXT`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_de9ac449b9ef.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `IFR_TYPE` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        result = NEW #( ).
        result->has = abap_true.
        result->value = t1->as_string( ).
      ENDIF.
    ELSE.
      result = me->ifr_type.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_abc3d62d717b.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      IF p0 IS BOUND AND p0->has = abap_true.
        CLEAR t1.
        CREATE OBJECT t1.
        t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t1->sval = p0->value.
      ENDIF.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `IFR_TYPE` p1 = t1 ).
    ELSE.
      me->ifr_type = p0.
      DATA t2 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2.
      IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `IFR_TYPE` p1 = t2 ).
      ENDIF.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `IFR_TYPE`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_read_sr_df0b6d7f7ae5.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA(t1) = CAST zlnt_runtime_dyna_a429568d5be8( me->zlnt_view_source_36f3bf68b9b8->get( `IFR_NAME` ) ).
      CLEAR result.
      IF t1 IS BOUND.
        result = NEW #( ).
        result->has = abap_true.
        result->value = t1->as_string( ).
      ENDIF.
    ELSE.
      result = me->ifr_name.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_write_s_7d95ef43456e.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1.
      CLEAR t1.
      IF p0 IS BOUND AND p0->has = abap_true.
        CLEAR t1.
        CREATE OBJECT t1.
        t1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t1->sval = p0->value.
      ENDIF.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = `IFR_NAME` p1 = t1 ).
    ELSE.
      me->ifr_name = p0.
      DATA t2 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t2.
      IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `IFR_NAME` p1 = t2 ).
      ENDIF.
      DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `IFR_NAME`.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_storage_74017ca272ac~structural.
    result = abap_true.
  ENDMETHOD.

  METHOD zlnt_view_storage_74017ca272ac~source.
    result = me->zlnt_view_source_36f3bf68b9b8.
  ENDMETHOD.

  METHOD zlnt_view_storage_74017ca272ac~has.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      result = me->zlnt_view_source_36f3bf68b9b8->has( p0 ).
      RETURN.
    ENDIF.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.has: own-key metadata absent`.
    ENDIF.
    result = me->zlnt_view_ownkeys_b0e8086400eb->has( p0 ).
    IF result = abap_false AND me->zlnt_view_extras_47272813ead1 IS BOUND.
      result = me->zlnt_view_extras_47272813ead1->has( p0 ).
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_view_storage_74017ca272ac~delete.
    DATA ignored TYPE abap_bool.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      result = me->zlnt_view_source_36f3bf68b9b8->delete( p0 ).
      RETURN.
    ENDIF.
    CASE p0.
      WHEN `OBJECT`.
        CLEAR me->object_1232.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `OBJ_NAME`.
        CLEAR me->obj_name.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `OBJECT1`.
        CLEAR me->object1.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `OBJ_NAME1`.
        CLEAR me->obj_name1.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `OBJECT2`.
        CLEAR me->object2.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `OBJ_NAME2`.
        CLEAR me->obj_name2.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `OBJECT_R`.
        CLEAR me->object_r.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `OBJ_NAME_R`.
        CLEAR me->obj_name_r.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `R3_TYPE`.
        CLEAR me->r3_type.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `R3_NAME`.
        CLEAR me->r3_name.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `R3_TEXT`.
        CLEAR me->r3_text.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `IFR_TYPE`.
        CLEAR me->ifr_type.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN `IFR_NAME`.
        CLEAR me->ifr_name.
        INSERT p0 INTO TABLE me->zlnt_record_delet_0597644d88b4.
      WHEN OTHERS.
        ignored = zlnt_runtime_nati_be494c0b072c=>run( p0 = me key = p0 ).
        IF me->zlnt_view_extras_47272813ead1 IS BOUND.
          ignored = me->zlnt_view_extras_47272813ead1->delete( p0 ).
        ENDIF.
    ENDCASE.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      ignored = me->zlnt_view_ownkeys_b0e8086400eb->delete( p0 ).
    ENDIF.
    result = abap_true.
  ENDMETHOD.

  METHOD zlnt_own_storage_4c72afe8366e~keys.
    DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      result = zlnt_runtime_ownk_4497b85e405d=>keys( me->zlnt_view_source_36f3bf68b9b8 ).
      RETURN.
    ENDIF.
    t1 = me->zlnt_view_ownkeys_b0e8086400eb.
    IF t1 IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: keys: structural own-key metadata absent`.
    ENDIF.
    result = zlnt_runtime_ownk_4497b85e405d=>keys( t1 ).
  ENDMETHOD.

  METHOD zlnt_view_storage_74017ca272ac~get.
    IF p0 = `constructor` OR p0 = `toString` OR p0 = `toLocaleString` OR p0 = `valueOf` OR p0 = `hasOwnProperty` OR p0 = `isPrototypeOf` OR p0 = `propertyIsEnumerable` OR p0 = `__proto__` OR p0 = `__defineGetter__` OR p0 =
    `__defineSetter__` OR p0 = `__lookupGetter__` OR p0 = `__lookupSetter__`.
      IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
        IF me->zlnt_view_source_36f3bf68b9b8->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          READ TABLE me->zlnt_view_source_36f3bf68b9b8->entries WITH KEY k = p0 TRANSPORTING NO FIELDS.
          IF sy-subrc <> 0.
            RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: get: inherited prototype value unavailable from graph`.
          ENDIF.
        ELSEIF me->zlnt_view_source_36f3bf68b9b8->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: get: primitive prototype lookup unavailable`.
        ENDIF.
      ELSE.
        IF me->zlnt_view_ownkeys_b0e8086400eb IS NOT BOUND.
          RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: get: prototype presence metadata absent`.
        ENDIF.
        READ TABLE me->zlnt_view_ownkeys_b0e8086400eb->entries WITH KEY k = p0 TRANSPORTING NO FIELDS.
        IF sy-subrc <> 0.
          RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: get: inherited prototype value unavailable from native slots`.
        ENDIF.
      ENDIF.
    ENDIF.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      result = me->zlnt_view_source_36f3bf68b9b8->get( p0 ).
      RETURN.
    ENDIF.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: get src/objects/proxy_object.ts.ProxyDataItem: structural own-key metadata absent`.
    ENDIF.
    READ TABLE me->zlnt_view_ownkeys_b0e8086400eb->entries WITH KEY k = p0 TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      RETURN.
    ENDIF.
    CASE p0.
      WHEN `OBJECT`.
        CLEAR result.
        IF me->object_1232 IS BOUND AND me->object_1232->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = me->object_1232->value.
        ENDIF.
      WHEN `OBJ_NAME`.
        CLEAR result.
        IF me->obj_name IS BOUND AND me->obj_name->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = me->obj_name->value.
        ENDIF.
      WHEN `OBJECT1`.
        CLEAR result.
        IF me->object1 IS BOUND AND me->object1->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = me->object1->value.
        ENDIF.
      WHEN `OBJ_NAME1`.
        CLEAR result.
        IF me->obj_name1 IS BOUND AND me->obj_name1->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = me->obj_name1->value.
        ENDIF.
      WHEN `OBJECT2`.
        CLEAR result.
        IF me->object2 IS BOUND AND me->object2->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = me->object2->value.
        ENDIF.
      WHEN `OBJ_NAME2`.
        CLEAR result.
        IF me->obj_name2 IS BOUND AND me->obj_name2->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = me->obj_name2->value.
        ENDIF.
      WHEN `OBJECT_R`.
        CLEAR result.
        IF me->object_r IS BOUND AND me->object_r->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = me->object_r->value.
        ENDIF.
      WHEN `OBJ_NAME_R`.
        CLEAR result.
        IF me->obj_name_r IS BOUND AND me->obj_name_r->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = me->obj_name_r->value.
        ENDIF.
      WHEN `R3_TYPE`.
        CLEAR result.
        IF me->r3_type IS BOUND AND me->r3_type->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = me->r3_type->value.
        ENDIF.
      WHEN `R3_NAME`.
        CLEAR result.
        IF me->r3_name IS BOUND AND me->r3_name->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = me->r3_name->value.
        ENDIF.
      WHEN `R3_TEXT`.
        CLEAR result.
        IF me->r3_text IS BOUND AND me->r3_text->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = me->r3_text->value.
        ENDIF.
      WHEN `IFR_TYPE`.
        CLEAR result.
        IF me->ifr_type IS BOUND AND me->ifr_type->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = me->ifr_type->value.
        ENDIF.
      WHEN `IFR_NAME`.
        CLEAR result.
        IF me->ifr_name IS BOUND AND me->ifr_name->has = abap_true.
          CLEAR result.
          CREATE OBJECT result.
          result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          result->sval = me->ifr_name->value.
        ENDIF.
      WHEN OTHERS.
        IF me->zlnt_view_extras_47272813ead1 IS BOUND.
          result = me->zlnt_view_extras_47272813ead1->get( p0 ).
        ENDIF.
    ENDCASE.
  ENDMETHOD.

  METHOD zlnt_view_storage_74017ca272ac~put.
    IF me->zlnt_view_source_36f3bf68b9b8 IS BOUND.
      me->zlnt_view_source_36f3bf68b9b8->put( p0 = p0 p1 = p1 ).
      RETURN.
    ENDIF.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: put src/objects/proxy_object.ts.ProxyDataItem: structural own-key metadata absent`.
    ENDIF.
    CASE p0.
      WHEN `OBJECT`.
        CLEAR me->object_1232.
        IF p1 IS BOUND.
          me->object_1232 = NEW #( ).
          me->object_1232->has = abap_true.
          me->object_1232->value = p1->as_string( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `OBJECT`.
      WHEN `OBJ_NAME`.
        CLEAR me->obj_name.
        IF p1 IS BOUND.
          me->obj_name = NEW #( ).
          me->obj_name->has = abap_true.
          me->obj_name->value = p1->as_string( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `OBJ_NAME`.
      WHEN `OBJECT1`.
        CLEAR me->object1.
        IF p1 IS BOUND.
          me->object1 = NEW #( ).
          me->object1->has = abap_true.
          me->object1->value = p1->as_string( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `OBJECT1`.
      WHEN `OBJ_NAME1`.
        CLEAR me->obj_name1.
        IF p1 IS BOUND.
          me->obj_name1 = NEW #( ).
          me->obj_name1->has = abap_true.
          me->obj_name1->value = p1->as_string( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `OBJ_NAME1`.
      WHEN `OBJECT2`.
        CLEAR me->object2.
        IF p1 IS BOUND.
          me->object2 = NEW #( ).
          me->object2->has = abap_true.
          me->object2->value = p1->as_string( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `OBJECT2`.
      WHEN `OBJ_NAME2`.
        CLEAR me->obj_name2.
        IF p1 IS BOUND.
          me->obj_name2 = NEW #( ).
          me->obj_name2->has = abap_true.
          me->obj_name2->value = p1->as_string( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `OBJ_NAME2`.
      WHEN `OBJECT_R`.
        CLEAR me->object_r.
        IF p1 IS BOUND.
          me->object_r = NEW #( ).
          me->object_r->has = abap_true.
          me->object_r->value = p1->as_string( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `OBJECT_R`.
      WHEN `OBJ_NAME_R`.
        CLEAR me->obj_name_r.
        IF p1 IS BOUND.
          me->obj_name_r = NEW #( ).
          me->obj_name_r->has = abap_true.
          me->obj_name_r->value = p1->as_string( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `OBJ_NAME_R`.
      WHEN `R3_TYPE`.
        CLEAR me->r3_type.
        IF p1 IS BOUND.
          me->r3_type = NEW #( ).
          me->r3_type->has = abap_true.
          me->r3_type->value = p1->as_string( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `R3_TYPE`.
      WHEN `R3_NAME`.
        CLEAR me->r3_name.
        IF p1 IS BOUND.
          me->r3_name = NEW #( ).
          me->r3_name->has = abap_true.
          me->r3_name->value = p1->as_string( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `R3_NAME`.
      WHEN `R3_TEXT`.
        CLEAR me->r3_text.
        IF p1 IS BOUND.
          me->r3_text = NEW #( ).
          me->r3_text->has = abap_true.
          me->r3_text->value = p1->as_string( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `R3_TEXT`.
      WHEN `IFR_TYPE`.
        CLEAR me->ifr_type.
        IF p1 IS BOUND.
          me->ifr_type = NEW #( ).
          me->ifr_type->has = abap_true.
          me->ifr_type->value = p1->as_string( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `IFR_TYPE`.
      WHEN `IFR_NAME`.
        CLEAR me->ifr_name.
        IF p1 IS BOUND.
          me->ifr_name = NEW #( ).
          me->ifr_name->has = abap_true.
          me->ifr_name->value = p1->as_string( ).
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `IFR_NAME`.
      WHEN OTHERS.
        IF p0 = `__proto__`.
          RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: put: prototype mutation unavailable`.
        ENDIF.
        IF me->zlnt_view_extras_47272813ead1 IS NOT BOUND.
          me->zlnt_view_extras_47272813ead1 = NEW #( ).
          me->zlnt_view_extras_47272813ead1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        ENDIF.
        me->zlnt_view_extras_47272813ead1->put( p0 = p0 p1 = p1 ).
    ENDCASE.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = p0 p1 = VALUE #( ) ).
    ENDIF.
    DATA t1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t1.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = p0 p1 = t1 ).
    ENDIF.
  ENDMETHOD.
ENDCLASS.
