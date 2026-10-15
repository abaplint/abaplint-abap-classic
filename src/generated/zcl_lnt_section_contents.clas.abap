* TS: src/abap/3_structures/structures/section_contents.ts:12:1 SectionContents
CLASS zcl_lnt_section_contents DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    INTERFACES zif_lnt_structure.
    INTERFACES zif_lnt_union_dc0fb493.
    METHODS get_matcher RETURNING VALUE(result) TYPE REF TO zif_lnt_structure_runnable.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_section_contents IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_structure_runnable.
    DATA t2 TYPE REF TO zif_lnt_structure_runnable.
    DATA t3 TYPE REF TO zif_lnt_structure_runnable.
    DATA t4 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t5) = zlnt_runtime_desc_78196487750d=>zlnt_member_d553_51f8e3543d58.
    t4 = zcl_lnt_sr_combi_module=>sta( i_s = t5 ).
    t3 = t4.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t7.
    t6 = t7.
    DATA(t8) = t6.
    DATA t9 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t10) = zlnt_runtime_desc_78196487750d=>zlnt_member_d540_b6420013e76a.
    t9 = zcl_lnt_sr_combi_module=>sta( i_s = t10 ).
    t8->load( ).
    APPEND t9 TO t8->items.
    t8->save( ).
    DATA(t11) = t6.
    DATA t12 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t13) = zlnt_runtime_desc_78196487750d=>zlnt_member_d437_1e504b4be960.
    t12 = zcl_lnt_sr_combi_module=>sta( i_s = t13 ).
    t11->load( ).
    APPEND t12 TO t11->items.
    t11->save( ).
    DATA(t14) = t6.
    DATA t15 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t16) = zlnt_runtime_desc_78196487750d=>zlnt_member_d407_dfd1462d93da.
    t15 = zcl_lnt_sr_combi_module=>sta( i_s = t16 ).
    t14->load( ).
    APPEND t15 TO t14->items.
    t14->save( ).
    DATA(t17) = t6.
    DATA t18 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t19) = zlnt_runtime_desc_78196487750d=>zlnt_member_d488_854676ec8540.
    t18 = zcl_lnt_sr_combi_module=>sta( i_s = t19 ).
    t17->load( ).
    APPEND t18 TO t17->items.
    t17->save( ).
    DATA(t20) = t6.
    DATA t21 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t22) = zlnt_runtime_desc_78196487750d=>zlnt_member_d426_fb8ad08dadf9.
    t21 = zcl_lnt_sr_combi_module=>sta( i_s = t22 ).
    t20->load( ).
    APPEND t21 TO t20->items.
    t20->save( ).
    DATA(t23) = t6.
    DATA t24 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t25) = zlnt_runtime_desc_78196487750d=>zlnt_member_d372_d91a525944ce.
    t24 = zcl_lnt_sr_combi_module=>sta( i_s = t25 ).
    t23->load( ).
    APPEND t24 TO t23->items.
    t23->save( ).
    DATA(t26) = t6.
    DATA t27 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t28) = zlnt_runtime_desc_78196487750d=>zlnt_member_d672_80ccb3caa5ab.
    t27 = zcl_lnt_sr_combi_module=>sta( i_s = t28 ).
    t26->load( ).
    APPEND t27 TO t26->items.
    t26->save( ).
    DATA(t29) = t6.
    DATA t30 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t31) = zlnt_runtime_desc_78196487750d=>zlnt_member_d542_0aa767c92614.
    t30 = zcl_lnt_sr_combi_module=>sta( i_s = t31 ).
    t29->load( ).
    APPEND t30 TO t29->items.
    t29->save( ).
    DATA(t32) = t6.
    DATA t33 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t34) = zlnt_runtime_desc_78196487750d=>zlnt_member_d412_ffdd123df769.
    t33 = zcl_lnt_sr_combi_module=>sta( i_s = t34 ).
    t32->load( ).
    APPEND t33 TO t32->items.
    t32->save( ).
    DATA(t35) = t6.
    DATA t36 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t37) = zlnt_runtime_desc_78196487750d=>zlnt_member_d529_17510302e89e.
    t36 = zcl_lnt_sr_combi_module=>sta( i_s = t37 ).
    t35->load( ).
    APPEND t36 TO t35->items.
    t35->save( ).
    DATA(t38) = t6.
    DATA t39 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t40) = zlnt_runtime_desc_78196487750d=>zlnt_member_d725_2037e58f2db9.
    t39 = zcl_lnt_sr_combi_module=>sub( i_s = t40 ).
    t38->load( ).
    APPEND t39 TO t38->items.
    t38->save( ).
    DATA(t41) = t6.
    DATA t42 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t43) = zlnt_runtime_desc_78196487750d=>zlnt_member_d723_8da98a28a8d6.
    t42 = zcl_lnt_sr_combi_module=>sub( i_s = t43 ).
    t41->load( ).
    APPEND t42 TO t41->items.
    t41->save( ).
    DATA(t44) = t6.
    DATA t45 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t46) = zlnt_runtime_desc_78196487750d=>zlnt_member_d752_e072d0e4db32.
    t45 = zcl_lnt_sr_combi_module=>sub( i_s = t46 ).
    t44->load( ).
    APPEND t45 TO t44->items.
    t44->save( ).
    DATA(t47) = t6.
    DATA t48 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t49) = zlnt_runtime_desc_78196487750d=>zlnt_member_d748_9cf6b71481f2.
    t48 = zcl_lnt_sr_combi_module=>sub( i_s = t49 ).
    t47->load( ).
    APPEND t48 TO t47->items.
    t47->save( ).
    DATA(t50) = t6.
    DATA t51 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t52) = zlnt_runtime_desc_78196487750d=>zlnt_member_d724_5dde4ab12008.
    t51 = zcl_lnt_sr_combi_module=>sub( i_s = t52 ).
    t50->load( ).
    APPEND t51 TO t50->items.
    t50->save( ).
    DATA(t53) = t6.
    DATA t54 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t55) = zlnt_runtime_desc_78196487750d=>zlnt_member_d715_d402bffdf300.
    t54 = zcl_lnt_sr_combi_module=>sub( i_s = t55 ).
    t53->load( ).
    APPEND t54 TO t53->items.
    t53->save( ).
    DATA(t56) = t6.
    DATA t57 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t58) = zlnt_runtime_desc_78196487750d=>zlnt_member_d662_d497981e80c2.
    t57 = zcl_lnt_sr_combi_module=>sta( i_s = t58 ).
    t56->load( ).
    APPEND t57 TO t56->items.
    t56->save( ).
    DATA t59 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t60) = t3.
    DATA(t61) = t6.
    t59 = zcl_lnt_sr_combi_module=>alt( i_first = t60 i_rest = t61 ).
    t2 = t59.
    t1 = zcl_lnt_sr_combi_module=>star( i_s = t2 ).
    result = t1.

  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_nati_72359f490bf2( ).
  ENDMETHOD.

  METHOD zlnt_builtin_nati_72359f490bf2.
    result = me->zlnt_builtin_clas_3f891b097658( ).
    IF result IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_class_refusa_99eac77bbe39.
    ENDIF.
  ENDMETHOD.

  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d739_c2cc9ae0214e.
  ENDMETHOD.

  METHOD zif_lnt_structure~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.

  METHOD zif_lnt_structure~get_matcher.
    result = me->get_matcher( ).
  ENDMETHOD.

  METHOD zif_lnt_union_dc0fb493~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
ENDCLASS.
