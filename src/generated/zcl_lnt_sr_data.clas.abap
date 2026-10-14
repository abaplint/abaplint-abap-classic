* TS: src/abap/3_structures/structures/data.ts:10:1 Data
CLASS zcl_lnt_sr_data DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zif_lnt_structure.
    INTERFACES zif_lnt_union_dc0fb493.
    METHODS get_matcher RETURNING VALUE(result) TYPE REF TO zif_lnt_structure_runnable.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_sr_data IMPLEMENTATION.
  METHOD get_matcher.
    DATA t1 TYPE REF TO zif_lnt_structure_runnable.
    DATA t2 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t3) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d421_ab7bd290a35d ).
    t2 = zcl_lnt_sr_combi_module=>sta( i_s = t3 ).
    DATA t4 TYPE REF TO zif_lnt_structure_runnable.
    DATA t5 TYPE REF TO zif_lnt_structure_runnable.
    DATA t6 TYPE REF TO zif_lnt_structure_runnable.
    DATA t7 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t8) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d420_cd77a127ab95 ).
    t7 = zcl_lnt_sr_combi_module=>sta( i_s = t8 ).
    t6 = t7.
    DATA t9 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t10 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t10.
    t9 = t10.
    DATA(t11) = CAST zlnt_runtime_arra_c22708faf2e3( t9 ).
    DATA t12 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t13) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d707_8cc2599df085 ).
    t12 = zcl_lnt_sr_combi_module=>sub( i_s = t13 ).
    APPEND t12 TO t11->items.
    DATA(t14) = CAST zlnt_runtime_arra_c22708faf2e3( t9 ).
    DATA t15 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t16) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d512_11174d785e8e ).
    t15 = zcl_lnt_sr_combi_module=>sta( i_s = t16 ).
    APPEND t15 TO t14->items.
    DATA(t17) = CAST zlnt_runtime_arra_c22708faf2e3( t9 ).
    DATA t18 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t19) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d572_46882accee86 ).
    t18 = zcl_lnt_sr_combi_module=>sta( i_s = t19 ).
    APPEND t18 TO t17->items.
    DATA(t20) = CAST zlnt_runtime_arra_c22708faf2e3( t9 ).
    DATA t21 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t22) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d409_df8201533dcd ).
    t21 = zcl_lnt_sr_combi_module=>sta( i_s = t22 ).
    APPEND t21 TO t20->items.
    DATA(t23) = CAST zlnt_runtime_arra_c22708faf2e3( t9 ).
    DATA t24 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t25) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d706_b5e09ff8af85 ).
    t24 = zcl_lnt_sr_combi_module=>sub( i_s = t25 ).
    APPEND t24 TO t23->items.
    DATA(t26) = CAST zlnt_runtime_arra_c22708faf2e3( t9 ).
    DATA t27 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t28) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d645_168d2de480b7 ).
    t27 = zcl_lnt_sr_combi_module=>sta( i_s = t28 ).
    APPEND t27 TO t26->items.
    DATA(t29) = CAST zlnt_runtime_arra_c22708faf2e3( t9 ).
    DATA t30 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t31) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d708_dde8d9743472 ).
    t30 = zcl_lnt_sr_combi_module=>sub( i_s = t31 ).
    APPEND t30 TO t29->items.
    DATA(t32) = CAST zlnt_runtime_arra_c22708faf2e3( t9 ).
    DATA t33 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t34) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d709_9d7d29fb0565 ).
    t33 = zcl_lnt_sr_combi_module=>sub( i_s = t34 ).
    APPEND t33 TO t32->items.
    DATA(t35) = CAST zlnt_runtime_arra_c22708faf2e3( t9 ).
    DATA t36 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t37) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d703_a50af928c17c ).
    t36 = zcl_lnt_sr_combi_module=>sub( i_s = t37 ).
    APPEND t36 TO t35->items.
    DATA(t38) = CAST zlnt_runtime_arra_c22708faf2e3( t9 ).
    DATA t39 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t40) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d513_3b5170c23dc9 ).
    t39 = zcl_lnt_sr_combi_module=>sta( i_s = t40 ).
    APPEND t39 TO t38->items.
    DATA(t41) = CAST zlnt_runtime_arra_c22708faf2e3( t9 ).
    DATA t42 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t43) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d555_4421dfbe5302 ).
    t42 = zcl_lnt_sr_combi_module=>sta( i_s = t43 ).
    APPEND t42 TO t41->items.
    DATA(t44) = CAST zlnt_runtime_arra_c22708faf2e3( t9 ).
    DATA t45 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t46) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d596_b011b05deabd ).
    t45 = zcl_lnt_sr_combi_module=>sta( i_s = t46 ).
    APPEND t45 TO t44->items.
    DATA(t47) = CAST zlnt_runtime_arra_c22708faf2e3( t9 ).
    DATA t48 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t49) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d597_40fd5083e583 ).
    t48 = zcl_lnt_sr_combi_module=>sta( i_s = t49 ).
    APPEND t48 TO t47->items.
    DATA(t50) = CAST zlnt_runtime_arra_c22708faf2e3( t9 ).
    DATA t51 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t52) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d655_927738d95d40 ).
    t51 = zcl_lnt_sr_combi_module=>sta( i_s = t52 ).
    APPEND t51 TO t50->items.
    DATA(t53) = CAST zlnt_runtime_arra_c22708faf2e3( t9 ).
    DATA t54 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t55) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d469_75226929f485 ).
    t54 = zcl_lnt_sr_combi_module=>sta( i_s = t55 ).
    APPEND t54 TO t53->items.
    DATA t56 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t57) = CAST zif_lnt_structure_runnable( t6 ).
    DATA(t58) = CAST zlnt_runtime_arra_c22708faf2e3( t9 ).
    t56 = zcl_lnt_sr_combi_module=>alt( i_first = t57 i_rest = t58 ).
    t5 = t56.
    t4 = zcl_lnt_sr_combi_module=>star( i_s = t5 ).
    DATA t59 TYPE REF TO zif_lnt_structure_runnable.
    DATA(t60) = CAST zlnt_runtime_clas_a39833db3295( zlnt_runtime_desc_78196487750d=>zlnt_member_d422_bebdc7940729 ).
    t59 = zcl_lnt_sr_combi_module=>sta( i_s = t60 ).
    t1 = zcl_lnt_sr_combi_module=>begin_end( i_begin = t2 i_body = t4 i_end = t59 ).
    result = t1.

  ENDMETHOD.
  METHOD zlnt_runtime_desc_e5fe811e0f42~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zlnt_builtin_clas_3f891b097658.
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d707_8cc2599df085.
  ENDMETHOD.
  METHOD zif_lnt_structure~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
  METHOD zif_lnt_structure~get_matcher.
    result = me->get_matcher(  ).
  ENDMETHOD.
  METHOD zif_lnt_union_dc0fb493~zlnt_builtin_clas_3f891b097658.
    result = me->zlnt_builtin_clas_3f891b097658( ).
  ENDMETHOD.
ENDCLASS.
