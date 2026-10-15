* TS: src/abap/3_structures/structures/data.ts:10:1 Data
CLASS zcl_lnt_sr_data DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_sr_data IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_structure_runnable.
    DATA t2 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t3) = zlnt_runtime_desc_78196487750d=>zlnt_member_d438_3024048eff4c.
    t2 = zcl_lnt_sr_combi_module=>sta( i_s = t3 ).
    DATA t4 TYPE REF TO zif_lnt_structure_runnable.
    DATA t5 TYPE REF TO zif_lnt_structure_runnable.
    DATA t6 TYPE REF TO zif_lnt_structure_runnable.
    DATA t7 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d437_1e504b4be960.
    t7 = zcl_lnt_sr_combi_module=>sta( i_s = t8 ).
    t6 = t7.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t10.
    t9 = t10.
    DATA(t11) = t9.
    DATA t12 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t13) = zlnt_runtime_desc_78196487750d=>zlnt_member_d724_5dde4ab12008.
    t12 = zcl_lnt_sr_combi_module=>sub( i_s = t13 ).
    t11->load( ).
    APPEND t12 TO t11->items.
    t11->save( ).
    DATA(t14) = t9.
    DATA t15 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t16) = zlnt_runtime_desc_78196487750d=>zlnt_member_d529_17510302e89e.
    t15 = zcl_lnt_sr_combi_module=>sta( i_s = t16 ).
    t14->load( ).
    APPEND t15 TO t14->items.
    t14->save( ).
    DATA(t17) = t9.
    DATA t18 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t19) = zlnt_runtime_desc_78196487750d=>zlnt_member_d589_2f27f2ba8c10.
    t18 = zcl_lnt_sr_combi_module=>sta( i_s = t19 ).
    t17->load( ).
    APPEND t18 TO t17->items.
    t17->save( ).
    DATA(t20) = t9.
    DATA t21 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t22) = zlnt_runtime_desc_78196487750d=>zlnt_member_d426_fb8ad08dadf9.
    t21 = zcl_lnt_sr_combi_module=>sta( i_s = t22 ).
    t20->load( ).
    APPEND t21 TO t20->items.
    t20->save( ).
    DATA(t23) = t9.
    DATA t24 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t25) = zlnt_runtime_desc_78196487750d=>zlnt_member_d723_8da98a28a8d6.
    t24 = zcl_lnt_sr_combi_module=>sub( i_s = t25 ).
    t23->load( ).
    APPEND t24 TO t23->items.
    t23->save( ).
    DATA(t26) = t9.
    DATA t27 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t28) = zlnt_runtime_desc_78196487750d=>zlnt_member_d662_d497981e80c2.
    t27 = zcl_lnt_sr_combi_module=>sta( i_s = t28 ).
    t26->load( ).
    APPEND t27 TO t26->items.
    t26->save( ).
    DATA(t29) = t9.
    DATA t30 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t31) = zlnt_runtime_desc_78196487750d=>zlnt_member_d725_2037e58f2db9.
    t30 = zcl_lnt_sr_combi_module=>sub( i_s = t31 ).
    t29->load( ).
    APPEND t30 TO t29->items.
    t29->save( ).
    DATA(t32) = t9.
    DATA t33 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t34) = zlnt_runtime_desc_78196487750d=>zlnt_member_d726_d2da7170640c.
    t33 = zcl_lnt_sr_combi_module=>sub( i_s = t34 ).
    t32->load( ).
    APPEND t33 TO t32->items.
    t32->save( ).
    DATA(t35) = t9.
    DATA t36 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t37) = zlnt_runtime_desc_78196487750d=>zlnt_member_d720_0fac5ead5b3f.
    t36 = zcl_lnt_sr_combi_module=>sub( i_s = t37 ).
    t35->load( ).
    APPEND t36 TO t35->items.
    t35->save( ).
    DATA(t38) = t9.
    DATA t39 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t40) = zlnt_runtime_desc_78196487750d=>zlnt_member_d530_84f85e32c439.
    t39 = zcl_lnt_sr_combi_module=>sta( i_s = t40 ).
    t38->load( ).
    APPEND t39 TO t38->items.
    t38->save( ).
    DATA(t41) = t9.
    DATA t42 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t43) = zlnt_runtime_desc_78196487750d=>zlnt_member_d572_46882accee86.
    t42 = zcl_lnt_sr_combi_module=>sta( i_s = t43 ).
    t41->load( ).
    APPEND t42 TO t41->items.
    t41->save( ).
    DATA(t44) = t9.
    DATA t45 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t46) = zlnt_runtime_desc_78196487750d=>zlnt_member_d613_5ac7ff9be7ce.
    t45 = zcl_lnt_sr_combi_module=>sta( i_s = t46 ).
    t44->load( ).
    APPEND t45 TO t44->items.
    t44->save( ).
    DATA(t47) = t9.
    DATA t48 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t49) = zlnt_runtime_desc_78196487750d=>zlnt_member_d614_0af6a2346fc7.
    t48 = zcl_lnt_sr_combi_module=>sta( i_s = t49 ).
    t47->load( ).
    APPEND t48 TO t47->items.
    t47->save( ).
    DATA(t50) = t9.
    DATA t51 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t52) = zlnt_runtime_desc_78196487750d=>zlnt_member_d672_80ccb3caa5ab.
    t51 = zcl_lnt_sr_combi_module=>sta( i_s = t52 ).
    t50->load( ).
    APPEND t51 TO t50->items.
    t50->save( ).
    DATA(t53) = t9.
    DATA t54 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t55) = zlnt_runtime_desc_78196487750d=>zlnt_member_d486_5804b5724294.
    t54 = zcl_lnt_sr_combi_module=>sta( i_s = t55 ).
    t53->load( ).
    APPEND t54 TO t53->items.
    t53->save( ).
    DATA t56 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t57) = t6.
    DATA(t58) = t9.
    t56 = zcl_lnt_sr_combi_module=>alt( i_first = t57 i_rest = t58 ).
    t5 = t56.
    t4 = zcl_lnt_sr_combi_module=>star( i_s = t5 ).
    DATA t59 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t60) = zlnt_runtime_desc_78196487750d=>zlnt_member_d439_2cfe7cbf2e16.
    t59 = zcl_lnt_sr_combi_module=>sta( i_s = t60 ).
    t1 = zcl_lnt_sr_combi_module=>begin_end( i_begin = t2 i_body = t4 i_end = t59 ).
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d724_5dde4ab12008.
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
