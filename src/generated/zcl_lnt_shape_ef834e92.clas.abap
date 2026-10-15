* TS: src/version.ts:192:61 shape.793ddc3519b3468e2dd901bdf81ffc88b4d03d99afc7dedb8390b9cb8cee7778
CLASS zcl_lnt_shape_ef834e92 DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    INTERFACES zlnt_own_storage_4c72afe8366e.
    INTERFACES zlnt_view_storage_74017ca272ac.
    DATA zlnt_view_extras_47272813ead1 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA zlnt_view_ownkeys_b0e8086400eb TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA zlnt_json_ownkeys_70e5fd461788 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA v700 TYPE REF TO zcl_lnt_abap_release.
    DATA v702 TYPE REF TO zcl_lnt_abap_release.
    DATA v740sp02 TYPE REF TO zcl_lnt_abap_release.
    DATA v740sp05 TYPE REF TO zcl_lnt_abap_release.
    DATA v740sp08 TYPE REF TO zcl_lnt_abap_release.
    DATA v750 TYPE REF TO zcl_lnt_abap_release.
    DATA v751 TYPE REF TO zcl_lnt_abap_release.
    DATA v752 TYPE REF TO zcl_lnt_abap_release.
    DATA v753 TYPE REF TO zcl_lnt_abap_release.
    DATA v754 TYPE REF TO zcl_lnt_abap_release.
    DATA v755 TYPE REF TO zcl_lnt_abap_release.
    DATA v756 TYPE REF TO zcl_lnt_abap_release.
    DATA v757 TYPE REF TO zcl_lnt_abap_release.
    DATA v758 TYPE REF TO zcl_lnt_abap_release.
    DATA v816 TYPE REF TO zcl_lnt_abap_release.
    DATA cloud_f2f0 TYPE REF TO zcl_lnt_abap_release.
    DATA open_abap TYPE REF TO zcl_lnt_abap_release.
    METHODS constructor IMPORTING i_v700 TYPE REF TO zcl_lnt_abap_release OPTIONAL i_v702 TYPE REF TO zcl_lnt_abap_release OPTIONAL i_v740sp02 TYPE REF TO zcl_lnt_abap_release OPTIONAL i_v740sp05 TYPE REF TO zcl_lnt_abap_release OPTIONAL
    i_v740sp08 TYPE REF TO zcl_lnt_abap_release OPTIONAL i_v750 TYPE REF TO zcl_lnt_abap_release OPTIONAL i_v751 TYPE REF TO zcl_lnt_abap_release OPTIONAL i_v752 TYPE REF TO zcl_lnt_abap_release OPTIONAL i_v753 TYPE REF TO
    zcl_lnt_abap_release OPTIONAL i_v754 TYPE REF TO zcl_lnt_abap_release OPTIONAL i_v755 TYPE REF TO zcl_lnt_abap_release OPTIONAL i_v756 TYPE REF TO zcl_lnt_abap_release OPTIONAL i_v757 TYPE REF TO zcl_lnt_abap_release OPTIONAL i_v758
    TYPE REF TO zcl_lnt_abap_release OPTIONAL i_v816 TYPE REF TO zcl_lnt_abap_release OPTIONAL i_cloud_a4f6 TYPE REF TO zcl_lnt_abap_release OPTIONAL i_open_abap TYPE REF TO zcl_lnt_abap_release OPTIONAL.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_lnt_shape_ef834e92 IMPLEMENTATION.
  METHOD constructor.
    DATA(t1) = i_v700.
    DATA(t2) = i_v702.
    DATA(t3) = i_v740sp02.
    DATA(t4) = i_v740sp05.
    DATA(t5) = i_v740sp08.
    DATA(t6) = i_v750.
    DATA(t7) = i_v751.
    DATA(t8) = i_v752.
    DATA(t9) = i_v753.
    DATA(t10) = i_v754.
    DATA(t11) = i_v755.
    DATA(t12) = i_v756.
    DATA(t13) = i_v757.
    DATA(t14) = i_v758.
    DATA(t15) = i_v816.
    DATA(t16) = i_cloud_a4f6.
    DATA(t17) = i_open_abap.
    DATA t18 TYPE REF TO zcl_lnt_abap_release.
    DATA(t19) = t1.
    t18 = t19.
    me->v700 = t18.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `v700`.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t20.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `v700` p1 = t20 ).
    ENDIF.
    DATA(t21) = |v700|.
    DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t22.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t21 p1 = t22 ).
    ENDIF.
    DATA t23 TYPE REF TO zcl_lnt_abap_release.
    DATA(t24) = t2.
    t23 = t24.
    me->v702 = t23.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `v702`.
    DATA t25 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t25.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `v702` p1 = t25 ).
    ENDIF.
    DATA(t26) = |v702|.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t27.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t26 p1 = t27 ).
    ENDIF.
    DATA t28 TYPE REF TO zcl_lnt_abap_release.
    DATA(t29) = t3.
    t28 = t29.
    me->v740sp02 = t28.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `v740sp02`.
    DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t30.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `v740sp02` p1 = t30 ).
    ENDIF.
    DATA(t31) = |v740sp02|.
    DATA t32 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t32.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t31 p1 = t32 ).
    ENDIF.
    DATA t33 TYPE REF TO zcl_lnt_abap_release.
    DATA(t34) = t4.
    t33 = t34.
    me->v740sp05 = t33.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `v740sp05`.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t35.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `v740sp05` p1 = t35 ).
    ENDIF.
    DATA(t36) = |v740sp05|.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t37.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t36 p1 = t37 ).
    ENDIF.
    DATA t38 TYPE REF TO zcl_lnt_abap_release.
    DATA(t39) = t5.
    t38 = t39.
    me->v740sp08 = t38.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `v740sp08`.
    DATA t40 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t40.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `v740sp08` p1 = t40 ).
    ENDIF.
    DATA(t41) = |v740sp08|.
    DATA t42 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t42.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t41 p1 = t42 ).
    ENDIF.
    DATA t43 TYPE REF TO zcl_lnt_abap_release.
    DATA(t44) = t6.
    t43 = t44.
    me->v750 = t43.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `v750`.
    DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t45.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `v750` p1 = t45 ).
    ENDIF.
    DATA(t46) = |v750|.
    DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t47.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t46 p1 = t47 ).
    ENDIF.
    DATA t48 TYPE REF TO zcl_lnt_abap_release.
    DATA(t49) = t7.
    t48 = t49.
    me->v751 = t48.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `v751`.
    DATA t50 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t50.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `v751` p1 = t50 ).
    ENDIF.
    DATA(t51) = |v751|.
    DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t52.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t51 p1 = t52 ).
    ENDIF.
    DATA t53 TYPE REF TO zcl_lnt_abap_release.
    DATA(t54) = t8.
    t53 = t54.
    me->v752 = t53.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `v752`.
    DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t55.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `v752` p1 = t55 ).
    ENDIF.
    DATA(t56) = |v752|.
    DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t57.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t56 p1 = t57 ).
    ENDIF.
    DATA t58 TYPE REF TO zcl_lnt_abap_release.
    DATA(t59) = t9.
    t58 = t59.
    me->v753 = t58.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `v753`.
    DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t60.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `v753` p1 = t60 ).
    ENDIF.
    DATA(t61) = |v753|.
    DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t62.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t61 p1 = t62 ).
    ENDIF.
    DATA t63 TYPE REF TO zcl_lnt_abap_release.
    DATA(t64) = t10.
    t63 = t64.
    me->v754 = t63.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `v754`.
    DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t65.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `v754` p1 = t65 ).
    ENDIF.
    DATA(t66) = |v754|.
    DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t67.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t66 p1 = t67 ).
    ENDIF.
    DATA t68 TYPE REF TO zcl_lnt_abap_release.
    DATA(t69) = t11.
    t68 = t69.
    me->v755 = t68.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `v755`.
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t70.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `v755` p1 = t70 ).
    ENDIF.
    DATA(t71) = |v755|.
    DATA t72 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t72.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t71 p1 = t72 ).
    ENDIF.
    DATA t73 TYPE REF TO zcl_lnt_abap_release.
    DATA(t74) = t12.
    t73 = t74.
    me->v756 = t73.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `v756`.
    DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t75.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `v756` p1 = t75 ).
    ENDIF.
    DATA(t76) = |v756|.
    DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t77.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t76 p1 = t77 ).
    ENDIF.
    DATA t78 TYPE REF TO zcl_lnt_abap_release.
    DATA(t79) = t13.
    t78 = t79.
    me->v757 = t78.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `v757`.
    DATA t80 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t80.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `v757` p1 = t80 ).
    ENDIF.
    DATA(t81) = |v757|.
    DATA t82 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t82.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t81 p1 = t82 ).
    ENDIF.
    DATA t83 TYPE REF TO zcl_lnt_abap_release.
    DATA(t84) = t14.
    t83 = t84.
    me->v758 = t83.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `v758`.
    DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t85.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `v758` p1 = t85 ).
    ENDIF.
    DATA(t86) = |v758|.
    DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t87.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t86 p1 = t87 ).
    ENDIF.
    DATA t88 TYPE REF TO zcl_lnt_abap_release.
    DATA(t89) = t15.
    t88 = t89.
    me->v816 = t88.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `v816`.
    DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t90.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `v816` p1 = t90 ).
    ENDIF.
    DATA(t91) = |v816|.
    DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t92.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t91 p1 = t92 ).
    ENDIF.
    DATA t93 TYPE REF TO zcl_lnt_abap_release.
    DATA(t94) = t16.
    t93 = t94.
    me->cloud_f2f0 = t93.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Cloud`.
    DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t95.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `Cloud` p1 = t95 ).
    ENDIF.
    DATA(t96) = |Cloud|.
    DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t97.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t96 p1 = t97 ).
    ENDIF.
    DATA t98 TYPE REF TO zcl_lnt_abap_release.
    DATA(t99) = t17.
    t98 = t99.
    me->open_abap = t98.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `open-abap`.
    DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t100.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      me->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `open-abap` p1 = t100 ).
    ENDIF.
    DATA(t101) = |open-abap|.
    DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t102.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = t101 p1 = t102 ).
    ENDIF.
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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d1995_f770ed9108f4.
  ENDMETHOD.

  METHOD zlnt_view_storage_74017ca272ac~structural.
    result = abap_true.
  ENDMETHOD.

  METHOD zlnt_view_storage_74017ca272ac~source.
  ENDMETHOD.

  METHOD zlnt_view_storage_74017ca272ac~has.
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
    CASE p0.
      WHEN `v700`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `v702`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `v740sp02`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `v740sp05`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `v740sp08`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `v750`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `v751`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `v752`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `v753`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `v754`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `v755`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `v756`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `v757`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `v758`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `v816`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `Cloud`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
      WHEN `open-abap`.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `record_storage.go: structural.delete: required or prototype slot cannot retain absence`.
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
    DATA(t1) = me->zlnt_view_ownkeys_b0e8086400eb.
    IF t1 IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: keys: structural own-key metadata absent`.
    ENDIF.
    result = zlnt_runtime_ownk_4497b85e405d=>keys( t1 ).
  ENDMETHOD.

  METHOD zlnt_view_storage_74017ca272ac~get.
    IF p0 = `constructor` OR p0 = `toString` OR p0 = `toLocaleString` OR p0 = `valueOf` OR p0 = `hasOwnProperty` OR p0 = `isPrototypeOf` OR p0 = `propertyIsEnumerable` OR p0 = `__proto__` OR p0 = `__defineGetter__` OR p0 =
    `__defineSetter__` OR p0 = `__lookupGetter__` OR p0 = `__lookupSetter__`.
      IF me->zlnt_view_ownkeys_b0e8086400eb IS NOT BOUND.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: get: prototype presence metadata absent`.
      ENDIF.
      READ TABLE me->zlnt_view_ownkeys_b0e8086400eb->entries WITH KEY k = p0 TRANSPORTING NO FIELDS.
      IF sy-subrc <> 0.
        RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: get: inherited prototype value unavailable from native slots`.
      ENDIF.
    ENDIF.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: get shape.793ddc3519b3468e2dd901bdf81ffc88b4d03d99afc7dedb8390b9cb8cee7778: structural own-key metadata absent`.
    ENDIF.
    READ TABLE me->zlnt_view_ownkeys_b0e8086400eb->entries WITH KEY k = p0 TRANSPORTING NO FIELDS.
    IF sy-subrc <> 0.
      RETURN.
    ENDIF.
    CASE p0.
      WHEN `v700`.
        CLEAR result.
        IF me->v700 IS BOUND.
          DATA t1 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t1.
          DATA t2 TYPE REF TO object.
          CLEAR t2.
          CLEAR t1.
          t2 = me->v700.
          TRY.
              result ?= t2.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF result IS NOT BOUND.
            TRY.
                t1 ?= me->v700.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t1 IS BOUND.
              result = t1->source( ).
            ENDIF.
            IF result IS NOT BOUND.
              CREATE OBJECT result.
              result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              result->oval = me->v700.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN `v702`.
        CLEAR result.
        IF me->v702 IS BOUND.
          DATA t3 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t3.
          DATA t4 TYPE REF TO object.
          CLEAR t4.
          CLEAR t3.
          t4 = me->v702.
          TRY.
              result ?= t4.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF result IS NOT BOUND.
            TRY.
                t3 ?= me->v702.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t3 IS BOUND.
              result = t3->source( ).
            ENDIF.
            IF result IS NOT BOUND.
              CREATE OBJECT result.
              result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              result->oval = me->v702.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN `v740sp02`.
        CLEAR result.
        IF me->v740sp02 IS BOUND.
          DATA t5 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t5.
          DATA t6 TYPE REF TO object.
          CLEAR t6.
          CLEAR t5.
          t6 = me->v740sp02.
          TRY.
              result ?= t6.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF result IS NOT BOUND.
            TRY.
                t5 ?= me->v740sp02.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t5 IS BOUND.
              result = t5->source( ).
            ENDIF.
            IF result IS NOT BOUND.
              CREATE OBJECT result.
              result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              result->oval = me->v740sp02.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN `v740sp05`.
        CLEAR result.
        IF me->v740sp05 IS BOUND.
          DATA t7 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t7.
          DATA t8 TYPE REF TO object.
          CLEAR t8.
          CLEAR t7.
          t8 = me->v740sp05.
          TRY.
              result ?= t8.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF result IS NOT BOUND.
            TRY.
                t7 ?= me->v740sp05.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t7 IS BOUND.
              result = t7->source( ).
            ENDIF.
            IF result IS NOT BOUND.
              CREATE OBJECT result.
              result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              result->oval = me->v740sp05.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN `v740sp08`.
        CLEAR result.
        IF me->v740sp08 IS BOUND.
          DATA t9 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t9.
          DATA t10 TYPE REF TO object.
          CLEAR t10.
          CLEAR t9.
          t10 = me->v740sp08.
          TRY.
              result ?= t10.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF result IS NOT BOUND.
            TRY.
                t9 ?= me->v740sp08.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t9 IS BOUND.
              result = t9->source( ).
            ENDIF.
            IF result IS NOT BOUND.
              CREATE OBJECT result.
              result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              result->oval = me->v740sp08.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN `v750`.
        CLEAR result.
        IF me->v750 IS BOUND.
          DATA t11 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t11.
          DATA t12 TYPE REF TO object.
          CLEAR t12.
          CLEAR t11.
          t12 = me->v750.
          TRY.
              result ?= t12.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF result IS NOT BOUND.
            TRY.
                t11 ?= me->v750.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t11 IS BOUND.
              result = t11->source( ).
            ENDIF.
            IF result IS NOT BOUND.
              CREATE OBJECT result.
              result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              result->oval = me->v750.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN `v751`.
        CLEAR result.
        IF me->v751 IS BOUND.
          DATA t13 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t13.
          DATA t14 TYPE REF TO object.
          CLEAR t14.
          CLEAR t13.
          t14 = me->v751.
          TRY.
              result ?= t14.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF result IS NOT BOUND.
            TRY.
                t13 ?= me->v751.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t13 IS BOUND.
              result = t13->source( ).
            ENDIF.
            IF result IS NOT BOUND.
              CREATE OBJECT result.
              result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              result->oval = me->v751.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN `v752`.
        CLEAR result.
        IF me->v752 IS BOUND.
          DATA t15 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t15.
          DATA t16 TYPE REF TO object.
          CLEAR t16.
          CLEAR t15.
          t16 = me->v752.
          TRY.
              result ?= t16.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF result IS NOT BOUND.
            TRY.
                t15 ?= me->v752.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t15 IS BOUND.
              result = t15->source( ).
            ENDIF.
            IF result IS NOT BOUND.
              CREATE OBJECT result.
              result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              result->oval = me->v752.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN `v753`.
        CLEAR result.
        IF me->v753 IS BOUND.
          DATA t17 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t17.
          DATA t18 TYPE REF TO object.
          CLEAR t18.
          CLEAR t17.
          t18 = me->v753.
          TRY.
              result ?= t18.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF result IS NOT BOUND.
            TRY.
                t17 ?= me->v753.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t17 IS BOUND.
              result = t17->source( ).
            ENDIF.
            IF result IS NOT BOUND.
              CREATE OBJECT result.
              result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              result->oval = me->v753.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN `v754`.
        CLEAR result.
        IF me->v754 IS BOUND.
          DATA t19 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t19.
          DATA t20 TYPE REF TO object.
          CLEAR t20.
          CLEAR t19.
          t20 = me->v754.
          TRY.
              result ?= t20.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF result IS NOT BOUND.
            TRY.
                t19 ?= me->v754.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t19 IS BOUND.
              result = t19->source( ).
            ENDIF.
            IF result IS NOT BOUND.
              CREATE OBJECT result.
              result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              result->oval = me->v754.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN `v755`.
        CLEAR result.
        IF me->v755 IS BOUND.
          DATA t21 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t21.
          DATA t22 TYPE REF TO object.
          CLEAR t22.
          CLEAR t21.
          t22 = me->v755.
          TRY.
              result ?= t22.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF result IS NOT BOUND.
            TRY.
                t21 ?= me->v755.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t21 IS BOUND.
              result = t21->source( ).
            ENDIF.
            IF result IS NOT BOUND.
              CREATE OBJECT result.
              result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              result->oval = me->v755.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN `v756`.
        CLEAR result.
        IF me->v756 IS BOUND.
          DATA t23 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t23.
          DATA t24 TYPE REF TO object.
          CLEAR t24.
          CLEAR t23.
          t24 = me->v756.
          TRY.
              result ?= t24.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF result IS NOT BOUND.
            TRY.
                t23 ?= me->v756.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t23 IS BOUND.
              result = t23->source( ).
            ENDIF.
            IF result IS NOT BOUND.
              CREATE OBJECT result.
              result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              result->oval = me->v756.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN `v757`.
        CLEAR result.
        IF me->v757 IS BOUND.
          DATA t25 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t25.
          DATA t26 TYPE REF TO object.
          CLEAR t26.
          CLEAR t25.
          t26 = me->v757.
          TRY.
              result ?= t26.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF result IS NOT BOUND.
            TRY.
                t25 ?= me->v757.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t25 IS BOUND.
              result = t25->source( ).
            ENDIF.
            IF result IS NOT BOUND.
              CREATE OBJECT result.
              result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              result->oval = me->v757.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN `v758`.
        CLEAR result.
        IF me->v758 IS BOUND.
          DATA t27 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t27.
          DATA t28 TYPE REF TO object.
          CLEAR t28.
          CLEAR t27.
          t28 = me->v758.
          TRY.
              result ?= t28.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF result IS NOT BOUND.
            TRY.
                t27 ?= me->v758.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t27 IS BOUND.
              result = t27->source( ).
            ENDIF.
            IF result IS NOT BOUND.
              CREATE OBJECT result.
              result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              result->oval = me->v758.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN `v816`.
        CLEAR result.
        IF me->v816 IS BOUND.
          DATA t29 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t29.
          DATA t30 TYPE REF TO object.
          CLEAR t30.
          CLEAR t29.
          t30 = me->v816.
          TRY.
              result ?= t30.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF result IS NOT BOUND.
            TRY.
                t29 ?= me->v816.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t29 IS BOUND.
              result = t29->source( ).
            ENDIF.
            IF result IS NOT BOUND.
              CREATE OBJECT result.
              result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              result->oval = me->v816.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN `Cloud`.
        CLEAR result.
        IF me->cloud_f2f0 IS BOUND.
          DATA t31 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t31.
          DATA t32 TYPE REF TO object.
          CLEAR t32.
          CLEAR t31.
          t32 = me->cloud_f2f0.
          TRY.
              result ?= t32.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF result IS NOT BOUND.
            TRY.
                t31 ?= me->cloud_f2f0.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t31 IS BOUND.
              result = t31->source( ).
            ENDIF.
            IF result IS NOT BOUND.
              CREATE OBJECT result.
              result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              result->oval = me->cloud_f2f0.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN `open-abap`.
        CLEAR result.
        IF me->open_abap IS BOUND.
          DATA t33 TYPE REF TO zlnt_view_storage_74017ca272ac.
          CLEAR t33.
          DATA t34 TYPE REF TO object.
          CLEAR t34.
          CLEAR t33.
          t34 = me->open_abap.
          TRY.
              result ?= t34.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF result IS NOT BOUND.
            TRY.
                t33 ?= me->open_abap.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t33 IS BOUND.
              result = t33->source( ).
            ENDIF.
            IF result IS NOT BOUND.
              CREATE OBJECT result.
              result->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
              result->oval = me->open_abap.
            ENDIF.
          ENDIF.
        ENDIF.
      WHEN OTHERS.
        IF me->zlnt_view_extras_47272813ead1 IS BOUND.
          result = me->zlnt_view_extras_47272813ead1->get( p0 ).
        ENDIF.
    ENDCASE.
  ENDMETHOD.

  METHOD zlnt_view_storage_74017ca272ac~put.
    IF me->zlnt_view_ownkeys_b0e8086400eb IS NOT BOUND.
      RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `own_keys.go: put shape.793ddc3519b3468e2dd901bdf81ffc88b4d03d99afc7dedb8390b9cb8cee7778: structural own-key metadata absent`.
    ENDIF.
    CASE p0.
      WHEN `v700`.
        CLEAR me->v700.
        IF p1 IS BOUND.
          IF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            TRY.
                me->v700 ?= p1->oval.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
          ENDIF.
          IF me->v700 IS NOT BOUND.
            IF p1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t1 TYPE REF TO zlnt_view_storage_74017ca272ac.
              CLEAR t1.
              IF p1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
              ENDIF.
              TRY.
                  t1 ?= p1->oval.
                CATCH cx_sy_move_cast_error.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
              ENDTRY.
              IF t1->structural( ) <> abap_true.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
              ENDIF.
            ENDIF.
            DATA(t2) = VALUE string( ).
            DATA t3 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t3.
            DATA t4 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t4.
            DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t5.
            DATA t6 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t6.
            DATA t7 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t7.
            DATA(t8) = VALUE f( ).
            me->v700 = NEW zcl_lnt_abap_release( view_source = p1 i_name = t2 i_abap = t3 i_kernel = t4 i_op = t5 i_cloud_47cd = t6 i_ce = t7 i_ordinal = t8 ).
          ENDIF.
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `v700`.
      WHEN `v702`.
        CLEAR me->v702.
        IF p1 IS BOUND.
          IF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            TRY.
                me->v702 ?= p1->oval.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
          ENDIF.
          IF me->v702 IS NOT BOUND.
            IF p1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t9 TYPE REF TO zlnt_view_storage_74017ca272ac.
              CLEAR t9.
              IF p1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
              ENDIF.
              TRY.
                  t9 ?= p1->oval.
                CATCH cx_sy_move_cast_error.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
              ENDTRY.
              IF t9->structural( ) <> abap_true.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
              ENDIF.
            ENDIF.
            DATA(t10) = VALUE string( ).
            DATA t11 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t11.
            DATA t12 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t12.
            DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t13.
            DATA t14 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t14.
            DATA t15 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t15.
            DATA(t16) = VALUE f( ).
            me->v702 = NEW zcl_lnt_abap_release( view_source = p1 i_name = t10 i_abap = t11 i_kernel = t12 i_op = t13 i_cloud_47cd = t14 i_ce = t15 i_ordinal = t16 ).
          ENDIF.
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `v702`.
      WHEN `v740sp02`.
        CLEAR me->v740sp02.
        IF p1 IS BOUND.
          IF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            TRY.
                me->v740sp02 ?= p1->oval.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
          ENDIF.
          IF me->v740sp02 IS NOT BOUND.
            IF p1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t17 TYPE REF TO zlnt_view_storage_74017ca272ac.
              CLEAR t17.
              IF p1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
              ENDIF.
              TRY.
                  t17 ?= p1->oval.
                CATCH cx_sy_move_cast_error.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
              ENDTRY.
              IF t17->structural( ) <> abap_true.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
              ENDIF.
            ENDIF.
            DATA(t18) = VALUE string( ).
            DATA t19 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t19.
            DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t20.
            DATA t21 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t21.
            DATA t22 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t22.
            DATA t23 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t23.
            DATA(t24) = VALUE f( ).
            me->v740sp02 = NEW zcl_lnt_abap_release( view_source = p1 i_name = t18 i_abap = t19 i_kernel = t20 i_op = t21 i_cloud_47cd = t22 i_ce = t23 i_ordinal = t24 ).
          ENDIF.
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `v740sp02`.
      WHEN `v740sp05`.
        CLEAR me->v740sp05.
        IF p1 IS BOUND.
          IF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            TRY.
                me->v740sp05 ?= p1->oval.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
          ENDIF.
          IF me->v740sp05 IS NOT BOUND.
            IF p1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t25 TYPE REF TO zlnt_view_storage_74017ca272ac.
              CLEAR t25.
              IF p1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
              ENDIF.
              TRY.
                  t25 ?= p1->oval.
                CATCH cx_sy_move_cast_error.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
              ENDTRY.
              IF t25->structural( ) <> abap_true.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
              ENDIF.
            ENDIF.
            DATA(t26) = VALUE string( ).
            DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t27.
            DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t28.
            DATA t29 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t29.
            DATA t30 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t30.
            DATA t31 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t31.
            DATA(t32) = VALUE f( ).
            me->v740sp05 = NEW zcl_lnt_abap_release( view_source = p1 i_name = t26 i_abap = t27 i_kernel = t28 i_op = t29 i_cloud_47cd = t30 i_ce = t31 i_ordinal = t32 ).
          ENDIF.
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `v740sp05`.
      WHEN `v740sp08`.
        CLEAR me->v740sp08.
        IF p1 IS BOUND.
          IF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            TRY.
                me->v740sp08 ?= p1->oval.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
          ENDIF.
          IF me->v740sp08 IS NOT BOUND.
            IF p1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t33 TYPE REF TO zlnt_view_storage_74017ca272ac.
              CLEAR t33.
              IF p1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
              ENDIF.
              TRY.
                  t33 ?= p1->oval.
                CATCH cx_sy_move_cast_error.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
              ENDTRY.
              IF t33->structural( ) <> abap_true.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
              ENDIF.
            ENDIF.
            DATA(t34) = VALUE string( ).
            DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t35.
            DATA t36 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t36.
            DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t37.
            DATA t38 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t38.
            DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t39.
            DATA(t40) = VALUE f( ).
            me->v740sp08 = NEW zcl_lnt_abap_release( view_source = p1 i_name = t34 i_abap = t35 i_kernel = t36 i_op = t37 i_cloud_47cd = t38 i_ce = t39 i_ordinal = t40 ).
          ENDIF.
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `v740sp08`.
      WHEN `v750`.
        CLEAR me->v750.
        IF p1 IS BOUND.
          IF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            TRY.
                me->v750 ?= p1->oval.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
          ENDIF.
          IF me->v750 IS NOT BOUND.
            IF p1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t41 TYPE REF TO zlnt_view_storage_74017ca272ac.
              CLEAR t41.
              IF p1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
              ENDIF.
              TRY.
                  t41 ?= p1->oval.
                CATCH cx_sy_move_cast_error.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
              ENDTRY.
              IF t41->structural( ) <> abap_true.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
              ENDIF.
            ENDIF.
            DATA(t42) = VALUE string( ).
            DATA t43 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t43.
            DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t44.
            DATA t45 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t45.
            DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t46.
            DATA t47 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t47.
            DATA(t48) = VALUE f( ).
            me->v750 = NEW zcl_lnt_abap_release( view_source = p1 i_name = t42 i_abap = t43 i_kernel = t44 i_op = t45 i_cloud_47cd = t46 i_ce = t47 i_ordinal = t48 ).
          ENDIF.
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `v750`.
      WHEN `v751`.
        CLEAR me->v751.
        IF p1 IS BOUND.
          IF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            TRY.
                me->v751 ?= p1->oval.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
          ENDIF.
          IF me->v751 IS NOT BOUND.
            IF p1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t49 TYPE REF TO zlnt_view_storage_74017ca272ac.
              CLEAR t49.
              IF p1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
              ENDIF.
              TRY.
                  t49 ?= p1->oval.
                CATCH cx_sy_move_cast_error.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
              ENDTRY.
              IF t49->structural( ) <> abap_true.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
              ENDIF.
            ENDIF.
            DATA(t50) = VALUE string( ).
            DATA t51 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t51.
            DATA t52 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t52.
            DATA t53 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t53.
            DATA t54 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t54.
            DATA t55 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t55.
            DATA(t56) = VALUE f( ).
            me->v751 = NEW zcl_lnt_abap_release( view_source = p1 i_name = t50 i_abap = t51 i_kernel = t52 i_op = t53 i_cloud_47cd = t54 i_ce = t55 i_ordinal = t56 ).
          ENDIF.
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `v751`.
      WHEN `v752`.
        CLEAR me->v752.
        IF p1 IS BOUND.
          IF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            TRY.
                me->v752 ?= p1->oval.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
          ENDIF.
          IF me->v752 IS NOT BOUND.
            IF p1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t57 TYPE REF TO zlnt_view_storage_74017ca272ac.
              CLEAR t57.
              IF p1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
              ENDIF.
              TRY.
                  t57 ?= p1->oval.
                CATCH cx_sy_move_cast_error.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
              ENDTRY.
              IF t57->structural( ) <> abap_true.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
              ENDIF.
            ENDIF.
            DATA(t58) = VALUE string( ).
            DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t59.
            DATA t60 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t60.
            DATA t61 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t61.
            DATA t62 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t62.
            DATA t63 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t63.
            DATA(t64) = VALUE f( ).
            me->v752 = NEW zcl_lnt_abap_release( view_source = p1 i_name = t58 i_abap = t59 i_kernel = t60 i_op = t61 i_cloud_47cd = t62 i_ce = t63 i_ordinal = t64 ).
          ENDIF.
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `v752`.
      WHEN `v753`.
        CLEAR me->v753.
        IF p1 IS BOUND.
          IF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            TRY.
                me->v753 ?= p1->oval.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
          ENDIF.
          IF me->v753 IS NOT BOUND.
            IF p1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t65 TYPE REF TO zlnt_view_storage_74017ca272ac.
              CLEAR t65.
              IF p1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
              ENDIF.
              TRY.
                  t65 ?= p1->oval.
                CATCH cx_sy_move_cast_error.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
              ENDTRY.
              IF t65->structural( ) <> abap_true.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
              ENDIF.
            ENDIF.
            DATA(t66) = VALUE string( ).
            DATA t67 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t67.
            DATA t68 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t68.
            DATA t69 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t69.
            DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t70.
            DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t71.
            DATA(t72) = VALUE f( ).
            me->v753 = NEW zcl_lnt_abap_release( view_source = p1 i_name = t66 i_abap = t67 i_kernel = t68 i_op = t69 i_cloud_47cd = t70 i_ce = t71 i_ordinal = t72 ).
          ENDIF.
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `v753`.
      WHEN `v754`.
        CLEAR me->v754.
        IF p1 IS BOUND.
          IF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            TRY.
                me->v754 ?= p1->oval.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
          ENDIF.
          IF me->v754 IS NOT BOUND.
            IF p1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t73 TYPE REF TO zlnt_view_storage_74017ca272ac.
              CLEAR t73.
              IF p1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
              ENDIF.
              TRY.
                  t73 ?= p1->oval.
                CATCH cx_sy_move_cast_error.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
              ENDTRY.
              IF t73->structural( ) <> abap_true.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
              ENDIF.
            ENDIF.
            DATA(t74) = VALUE string( ).
            DATA t75 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t75.
            DATA t76 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t76.
            DATA t77 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t77.
            DATA t78 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t78.
            DATA t79 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t79.
            DATA(t80) = VALUE f( ).
            me->v754 = NEW zcl_lnt_abap_release( view_source = p1 i_name = t74 i_abap = t75 i_kernel = t76 i_op = t77 i_cloud_47cd = t78 i_ce = t79 i_ordinal = t80 ).
          ENDIF.
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `v754`.
      WHEN `v755`.
        CLEAR me->v755.
        IF p1 IS BOUND.
          IF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            TRY.
                me->v755 ?= p1->oval.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
          ENDIF.
          IF me->v755 IS NOT BOUND.
            IF p1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t81 TYPE REF TO zlnt_view_storage_74017ca272ac.
              CLEAR t81.
              IF p1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
              ENDIF.
              TRY.
                  t81 ?= p1->oval.
                CATCH cx_sy_move_cast_error.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
              ENDTRY.
              IF t81->structural( ) <> abap_true.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
              ENDIF.
            ENDIF.
            DATA(t82) = VALUE string( ).
            DATA t83 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t83.
            DATA t84 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t84.
            DATA t85 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t85.
            DATA t86 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t86.
            DATA t87 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t87.
            DATA(t88) = VALUE f( ).
            me->v755 = NEW zcl_lnt_abap_release( view_source = p1 i_name = t82 i_abap = t83 i_kernel = t84 i_op = t85 i_cloud_47cd = t86 i_ce = t87 i_ordinal = t88 ).
          ENDIF.
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `v755`.
      WHEN `v756`.
        CLEAR me->v756.
        IF p1 IS BOUND.
          IF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            TRY.
                me->v756 ?= p1->oval.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
          ENDIF.
          IF me->v756 IS NOT BOUND.
            IF p1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t89 TYPE REF TO zlnt_view_storage_74017ca272ac.
              CLEAR t89.
              IF p1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
              ENDIF.
              TRY.
                  t89 ?= p1->oval.
                CATCH cx_sy_move_cast_error.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
              ENDTRY.
              IF t89->structural( ) <> abap_true.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
              ENDIF.
            ENDIF.
            DATA(t90) = VALUE string( ).
            DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t91.
            DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t92.
            DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t93.
            DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t94.
            DATA t95 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t95.
            DATA(t96) = VALUE f( ).
            me->v756 = NEW zcl_lnt_abap_release( view_source = p1 i_name = t90 i_abap = t91 i_kernel = t92 i_op = t93 i_cloud_47cd = t94 i_ce = t95 i_ordinal = t96 ).
          ENDIF.
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `v756`.
      WHEN `v757`.
        CLEAR me->v757.
        IF p1 IS BOUND.
          IF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            TRY.
                me->v757 ?= p1->oval.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
          ENDIF.
          IF me->v757 IS NOT BOUND.
            IF p1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t97 TYPE REF TO zlnt_view_storage_74017ca272ac.
              CLEAR t97.
              IF p1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
              ENDIF.
              TRY.
                  t97 ?= p1->oval.
                CATCH cx_sy_move_cast_error.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
              ENDTRY.
              IF t97->structural( ) <> abap_true.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
              ENDIF.
            ENDIF.
            DATA(t98) = VALUE string( ).
            DATA t99 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t99.
            DATA t100 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t100.
            DATA t101 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t101.
            DATA t102 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t102.
            DATA t103 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t103.
            DATA(t104) = VALUE f( ).
            me->v757 = NEW zcl_lnt_abap_release( view_source = p1 i_name = t98 i_abap = t99 i_kernel = t100 i_op = t101 i_cloud_47cd = t102 i_ce = t103 i_ordinal = t104 ).
          ENDIF.
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `v757`.
      WHEN `v758`.
        CLEAR me->v758.
        IF p1 IS BOUND.
          IF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            TRY.
                me->v758 ?= p1->oval.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
          ENDIF.
          IF me->v758 IS NOT BOUND.
            IF p1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t105 TYPE REF TO zlnt_view_storage_74017ca272ac.
              CLEAR t105.
              IF p1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
              ENDIF.
              TRY.
                  t105 ?= p1->oval.
                CATCH cx_sy_move_cast_error.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
              ENDTRY.
              IF t105->structural( ) <> abap_true.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
              ENDIF.
            ENDIF.
            DATA(t106) = VALUE string( ).
            DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t107.
            DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t108.
            DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t109.
            DATA t110 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t110.
            DATA t111 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t111.
            DATA(t112) = VALUE f( ).
            me->v758 = NEW zcl_lnt_abap_release( view_source = p1 i_name = t106 i_abap = t107 i_kernel = t108 i_op = t109 i_cloud_47cd = t110 i_ce = t111 i_ordinal = t112 ).
          ENDIF.
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `v758`.
      WHEN `v816`.
        CLEAR me->v816.
        IF p1 IS BOUND.
          IF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            TRY.
                me->v816 ?= p1->oval.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
          ENDIF.
          IF me->v816 IS NOT BOUND.
            IF p1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t113 TYPE REF TO zlnt_view_storage_74017ca272ac.
              CLEAR t113.
              IF p1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
              ENDIF.
              TRY.
                  t113 ?= p1->oval.
                CATCH cx_sy_move_cast_error.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
              ENDTRY.
              IF t113->structural( ) <> abap_true.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
              ENDIF.
            ENDIF.
            DATA(t114) = VALUE string( ).
            DATA t115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t115.
            DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t116.
            DATA t117 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t117.
            DATA t118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t118.
            DATA t119 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t119.
            DATA(t120) = VALUE f( ).
            me->v816 = NEW zcl_lnt_abap_release( view_source = p1 i_name = t114 i_abap = t115 i_kernel = t116 i_op = t117 i_cloud_47cd = t118 i_ce = t119 i_ordinal = t120 ).
          ENDIF.
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `v816`.
      WHEN `Cloud`.
        CLEAR me->cloud_f2f0.
        IF p1 IS BOUND.
          IF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            TRY.
                me->cloud_f2f0 ?= p1->oval.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
          ENDIF.
          IF me->cloud_f2f0 IS NOT BOUND.
            IF p1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t121 TYPE REF TO zlnt_view_storage_74017ca272ac.
              CLEAR t121.
              IF p1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
              ENDIF.
              TRY.
                  t121 ?= p1->oval.
                CATCH cx_sy_move_cast_error.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
              ENDTRY.
              IF t121->structural( ) <> abap_true.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
              ENDIF.
            ENDIF.
            DATA(t122) = VALUE string( ).
            DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t123.
            DATA t124 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t124.
            DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t125.
            DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t126.
            DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t127.
            DATA(t128) = VALUE f( ).
            me->cloud_f2f0 = NEW zcl_lnt_abap_release( view_source = p1 i_name = t122 i_abap = t123 i_kernel = t124 i_op = t125 i_cloud_47cd = t126 i_ce = t127 i_ordinal = t128 ).
          ENDIF.
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `Cloud`.
      WHEN `open-abap`.
        CLEAR me->open_abap.
        IF p1 IS BOUND.
          IF p1->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            TRY.
                me->open_abap ?= p1->oval.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
          ENDIF.
          IF me->open_abap IS NOT BOUND.
            IF p1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t129 TYPE REF TO zlnt_view_storage_74017ca272ac.
              CLEAR t129.
              IF p1->tag <> zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: source is neither object graph nor reference`.
              ENDIF.
              TRY.
                  t129 ?= p1->oval.
                CATCH cx_sy_move_cast_error.
                  RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference does not implement view storage`.
              ENDTRY.
              IF t129->structural( ) <> abap_true.
                RAISE EXCEPTION TYPE zlnt_view_refusal_6fcecbe45fbf EXPORTING reason = `live_class_view.go: liveView: reference storage is not structural`.
              ENDIF.
            ENDIF.
            DATA(t130) = VALUE string( ).
            DATA t131 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t131.
            DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t132.
            DATA t133 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t133.
            DATA t134 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t134.
            DATA t135 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CLEAR t135.
            DATA(t136) = VALUE f( ).
            me->open_abap = NEW zcl_lnt_abap_release( view_source = p1 i_name = t130 i_abap = t131 i_kernel = t132 i_op = t133 i_cloud_47cd = t134 i_ce = t135 i_ordinal = t136 ).
          ENDIF.
        ENDIF.
        DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `open-abap`.
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
    DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    CLEAR t137.
    IF me->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      me->zlnt_json_ownkeys_70e5fd461788->put( p0 = p0 p1 = t137 ).
    ENDIF.
  ENDMETHOD.
ENDCLASS.
