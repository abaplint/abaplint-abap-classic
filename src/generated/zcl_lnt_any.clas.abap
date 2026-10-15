* TS: src/abap/3_structures/structures/any.ts:7:1 Any
CLASS zcl_lnt_any DEFINITION PUBLIC CREATE PUBLIC.
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
CLASS zcl_lnt_any IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_structure_runnable.
    DATA t2 TYPE REF TO zif_lnt_structure_runnable.
    DATA t3 TYPE REF TO zif_lnt_structure_runnable.
    DATA t4 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t5) = zlnt_runtime_desc_78196487750d=>zlnt_member_d414_08801fb4f67d.
    t4 = zcl_lnt_sr_combi_module=>sta( i_s = t5 ).
    t3 = t4.
    DATA t6 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t7 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t7.
    t6 = t7.
    DATA(t8) = t6.
    DATA t9 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t10) = zlnt_runtime_desc_78196487750d=>zlnt_member_d410_b198f287d995.
    t9 = zcl_lnt_sr_combi_module=>sta( i_s = t10 ).
    t8->load( ).
    APPEND t9 TO t8->items.
    t8->save( ).
    DATA(t11) = t6.
    DATA t12 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t13) = zlnt_runtime_desc_78196487750d=>zlnt_member_d601_ac953f6bd165.
    t12 = zcl_lnt_sr_combi_module=>sta( i_s = t13 ).
    t11->load( ).
    APPEND t12 TO t11->items.
    t11->save( ).
    DATA(t14) = t6.
    DATA t15 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t16) = zlnt_runtime_desc_78196487750d=>zlnt_member_d581_ec05e91cc48d.
    t15 = zcl_lnt_sr_combi_module=>sta( i_s = t16 ).
    t14->load( ).
    APPEND t15 TO t14->items.
    t14->save( ).
    DATA(t17) = t6.
    DATA t18 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t19) = zlnt_runtime_desc_78196487750d=>zlnt_member_d572_46882accee86.
    t18 = zcl_lnt_sr_combi_module=>sta( i_s = t19 ).
    t17->load( ).
    APPEND t18 TO t17->items.
    t17->save( ).
    DATA(t20) = t6.
    DATA t21 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t22) = zlnt_runtime_desc_78196487750d=>zlnt_member_d406_3374a0f7b11a.
    t21 = zcl_lnt_sr_combi_module=>sta( i_s = t22 ).
    t20->load( ).
    APPEND t21 TO t20->items.
    t20->save( ).
    DATA(t23) = t6.
    DATA t24 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t25) = zlnt_runtime_desc_78196487750d=>zlnt_member_d511_f06059c942ac.
    t24 = zcl_lnt_sr_combi_module=>sta( i_s = t25 ).
    t23->load( ).
    APPEND t24 TO t23->items.
    t23->save( ).
    DATA(t26) = t6.
    DATA t27 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t28) = zlnt_runtime_desc_78196487750d=>zlnt_member_d532_43c473f07eab.
    t27 = zcl_lnt_sr_combi_module=>sta( i_s = t28 ).
    t26->load( ).
    APPEND t27 TO t26->items.
    t26->save( ).
    DATA(t29) = t6.
    DATA t30 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t31) = zlnt_runtime_desc_78196487750d=>zlnt_member_d541_d7ee44162692.
    t30 = zcl_lnt_sr_combi_module=>sta( i_s = t31 ).
    t29->load( ).
    APPEND t30 TO t29->items.
    t29->save( ).
    DATA(t32) = t6.
    DATA t33 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t34) = zlnt_runtime_desc_78196487750d=>zlnt_member_d613_5ac7ff9be7ce.
    t33 = zcl_lnt_sr_combi_module=>sta( i_s = t34 ).
    t32->load( ).
    APPEND t33 TO t32->items.
    t32->save( ).
    DATA(t35) = t6.
    DATA t36 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t37) = zlnt_runtime_desc_78196487750d=>zlnt_member_d614_0af6a2346fc7.
    t36 = zcl_lnt_sr_combi_module=>sta( i_s = t37 ).
    t35->load( ).
    APPEND t36 TO t35->items.
    t35->save( ).
    DATA(t38) = t6.
    DATA t39 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t40) = zlnt_runtime_desc_78196487750d=>zlnt_member_d382_b3aa13d22624.
    t39 = zcl_lnt_sr_combi_module=>sta( i_s = t40 ).
    t38->load( ).
    APPEND t39 TO t38->items.
    t38->save( ).
    DATA(t41) = t6.
    DATA t42 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t43) = zlnt_runtime_desc_78196487750d=>zlnt_member_d380_0090be09ff35.
    t42 = zcl_lnt_sr_combi_module=>sta( i_s = t43 ).
    t41->load( ).
    APPEND t42 TO t41->items.
    t41->save( ).
    DATA(t44) = t6.
    DATA t45 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t46) = zlnt_runtime_desc_78196487750d=>zlnt_member_d381_567a5bf1103b.
    t45 = zcl_lnt_sr_combi_module=>sta( i_s = t46 ).
    t44->load( ).
    APPEND t45 TO t44->items.
    t44->save( ).
    DATA(t47) = t6.
    DATA t48 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t49) = zlnt_runtime_desc_78196487750d=>zlnt_member_d383_d553afa509ca.
    t48 = zcl_lnt_sr_combi_module=>sta( i_s = t49 ).
    t47->load( ).
    APPEND t48 TO t47->items.
    t47->save( ).
    DATA(t50) = t6.
    DATA t51 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t52) = zlnt_runtime_desc_78196487750d=>zlnt_member_d640_24ab508a512a.
    t51 = zcl_lnt_sr_combi_module=>sta( i_s = t52 ).
    t50->load( ).
    APPEND t51 TO t50->items.
    t50->save( ).
    DATA(t53) = t6.
    DATA t54 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t55) = zlnt_runtime_desc_78196487750d=>zlnt_member_d462_b7d82accb7a3.
    t54 = zcl_lnt_sr_combi_module=>sta( i_s = t55 ).
    t53->load( ).
    APPEND t54 TO t53->items.
    t53->save( ).
    DATA(t56) = t6.
    DATA t57 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t58) = zlnt_runtime_desc_78196487750d=>zlnt_member_d544_b65fb33374a3.
    t57 = zcl_lnt_sr_combi_module=>sta( i_s = t58 ).
    t56->load( ).
    APPEND t57 TO t56->items.
    t56->save( ).
    DATA(t59) = t6.
    DATA t60 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t61) = zlnt_runtime_desc_78196487750d=>zlnt_member_d657_ffa3e89303c8.
    t60 = zcl_lnt_sr_combi_module=>sta( i_s = t61 ).
    t59->load( ).
    APPEND t60 TO t59->items.
    t59->save( ).
    DATA(t62) = t6.
    DATA t63 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t64) = zlnt_runtime_desc_78196487750d=>zlnt_member_d461_c4d71be3fd83.
    t63 = zcl_lnt_sr_combi_module=>sta( i_s = t64 ).
    t62->load( ).
    APPEND t63 TO t62->items.
    t62->save( ).
    DATA(t65) = t6.
    DATA t66 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t67) = zlnt_runtime_desc_78196487750d=>zlnt_member_d431_efefbc13f005.
    t66 = zcl_lnt_sr_combi_module=>sta( i_s = t67 ).
    t65->load( ).
    APPEND t66 TO t65->items.
    t65->save( ).
    DATA(t68) = t6.
    DATA t69 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t70) = zlnt_runtime_desc_78196487750d=>zlnt_member_d672_80ccb3caa5ab.
    t69 = zcl_lnt_sr_combi_module=>sta( i_s = t70 ).
    t68->load( ).
    APPEND t69 TO t68->items.
    t68->save( ).
    DATA(t71) = t6.
    DATA t72 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t73) = zlnt_runtime_desc_78196487750d=>zlnt_member_d671_886b1b61ddf9.
    t72 = zcl_lnt_sr_combi_module=>sta( i_s = t73 ).
    t71->load( ).
    APPEND t72 TO t71->items.
    t71->save( ).
    DATA(t74) = t6.
    DATA t75 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t76) = zlnt_runtime_desc_78196487750d=>zlnt_member_d507_eda0ed670e53.
    t75 = zcl_lnt_sr_combi_module=>sta( i_s = t76 ).
    t74->load( ).
    APPEND t75 TO t74->items.
    t74->save( ).
    DATA(t77) = t6.
    DATA t78 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t79) = zlnt_runtime_desc_78196487750d=>zlnt_member_d696_1c7fc9b8a532.
    t78 = zcl_lnt_sr_combi_module=>sub( i_s = t79 ).
    t77->load( ).
    APPEND t78 TO t77->items.
    t77->save( ).
    DATA(t80) = t6.
    DATA t81 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t82) = zlnt_runtime_desc_78196487750d=>zlnt_member_d697_195ff21ba72a.
    t81 = zcl_lnt_sr_combi_module=>sub( i_s = t82 ).
    t80->load( ).
    APPEND t81 TO t80->items.
    t80->save( ).
    DATA(t83) = t6.
    DATA t84 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t85) = zlnt_runtime_desc_78196487750d=>zlnt_member_d698_7eec40384ef7.
    t84 = zcl_lnt_sr_combi_module=>sub( i_s = t85 ).
    t83->load( ).
    APPEND t84 TO t83->items.
    t83->save( ).
    DATA(t86) = t6.
    DATA t87 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t88) = zlnt_runtime_desc_78196487750d=>zlnt_member_d699_5bd4c856ada5.
    t87 = zcl_lnt_sr_combi_module=>sub( i_s = t88 ).
    t86->load( ).
    APPEND t87 TO t86->items.
    t86->save( ).
    DATA(t89) = t6.
    DATA t90 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t91) = zlnt_runtime_desc_78196487750d=>zlnt_member_d700_0943ee7a14b4.
    t90 = zcl_lnt_sr_combi_module=>sub( i_s = t91 ).
    t89->load( ).
    APPEND t90 TO t89->items.
    t89->save( ).
    DATA(t92) = t6.
    DATA t93 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t94) = zlnt_runtime_desc_78196487750d=>zlnt_member_d701_259241cbe79e.
    t93 = zcl_lnt_sr_combi_module=>sub( i_s = t94 ).
    t92->load( ).
    APPEND t93 TO t92->items.
    t92->save( ).
    DATA(t95) = t6.
    DATA t96 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t97) = zlnt_runtime_desc_78196487750d=>zlnt_member_d702_c1c9b120591c.
    t96 = zcl_lnt_sr_combi_module=>sub( i_s = t97 ).
    t95->load( ).
    APPEND t96 TO t95->items.
    t95->save( ).
    DATA t98 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t99) = t3.
    DATA(t100) = t6.
    t98 = zcl_lnt_sr_combi_module=>alt( i_first = t99 i_rest = t100 ).
    t2 = t98.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d703_a50af928c17c.
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
