* TS: src/objects/proxy_object.ts:28:1 ProxyObject
CLASS zcl_lnt_proxy_object DEFINITION PUBLIC INHERITING FROM zcl_lnt_abstract_object CREATE PUBLIC.
  PUBLIC SECTION.
    DATA parsed_xml TYPE REF TO zcl_lnt_parsed_proxy.
    METHODS constructor IMPORTING i_name TYPE string.
    METHODS get_type REDEFINITION.
    METHODS get_allowed_naming REDEFINITION.
    METHODS get_description REDEFINITION.
    METHODS set_dirty REDEFINITION.
    METHODS pr_in_sr_ob_prx_obj_ts_prx_obj IMPORTING i_release_2099 TYPE REF TO zcl_lnt_abap_release i_global_macros_14ec TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0 i_reg_f149 TYPE REF TO zif_lnt_registry RETURNING VALUE(result) TYPE REF TO
    zcl_lnt_iparse_result.
    METHODS parse_xml RETURNING VALUE(result) TYPE REF TO zcl_lnt_parsed_proxy.
    METHODS generate_abap_objects RETURNING VALUE(result) TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    METHODS parse REDEFINITION.
    METHODS zlnt_builtin_clas_3f891b097658 REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_proxy_object IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_name.
    DATA(t2) = t1.
    super->constructor( i_name = t2 ).
  ENDMETHOD.
  METHOD get_type.
    DATA(t1) = |SPRX|.
    result = t1.
    
  ENDMETHOD.
  METHOD get_allowed_naming.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/objects/proxy_object.ts:35|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD get_description.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/objects/proxy_object.ts:42|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD set_dirty.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/objects/proxy_object.ts:48|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD pr_in_sr_ob_prx_obj_ts_prx_obj.
    DATA(t1) = CAST zcl_lnt_abap_release( i_release_2099 ).
    DATA(t2) = CAST zlnt_runtime_arra_8ecd6afe19e0( i_global_macros_14ec ).
    DATA(t3) = CAST zif_lnt_registry( i_reg_f149 ).
    DATA(t4) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t5) = |src/objects/proxy_object.ts:53|.
    t4->source_location = t5.
    RAISE EXCEPTION t4.
  ENDMETHOD.
  METHOD parse_xml.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/objects/proxy_object.ts:70|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD generate_abap_objects.
    DATA(t1) = NEW zlnt_exception_un_5f2d02892fe8( ).
    DATA(t2) = |src/objects/proxy_object.ts:86|.
    t1->source_location = t2.
    RAISE EXCEPTION t1.
  ENDMETHOD.
  METHOD parse.
    DATA(t1) = CAST zcl_lnt_iparse_result( me->pr_in_sr_ob_prx_obj_ts_prx_obj( i_release_2099 = i_release_7928 i_global_macros_14ec = i_global_macros_5535 i_reg_f149 = i_reg_f149 ) ).
    result = t1.
    
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1227_e18846beac5b.
  ENDMETHOD.
ENDCLASS.
