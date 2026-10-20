* TS: src/abap/5_syntax/basic_types.ts:21:1 BasicTypes
CLASS zcl_lnt_basic_types DEFINITION PUBLIC CREATE PUBLIC.
  PUBLIC SECTION.
    DATA zlnt_record_delet_0597644d88b4 TYPE HASHED TABLE OF string WITH UNIQUE KEY table_line.
    DATA input_2fd0 TYPE REF TO zcl_lnt_syntax_input.
    METHODS constructor IMPORTING i_input_967e TYPE REF TO zcl_lnt_syntax_input.
    METHODS lookup_qualified_name IMPORTING i_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zcl_lnt_typed_identifier.
    METHODS resolve_like_name IMPORTING i_node TYPE REF TO zif_lnt_union_bb14dc41 i_header_logic TYPE REF TO zlnt_runtime_opti_7f2541396f43 RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    METHODS clone_type IMPORTING i_type_9913 TYPE REF TO zcl_lnt_abstract_type i_qualified_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    METHODS resolve_type_name IMPORTING i_type_name TYPE REF TO zcl_lnt_expression_node i_length TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a i_decimals_2eed TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a i_qualified_name TYPE REF TO
    zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    METHODS simple_type IMPORTING i_node TYPE REF TO zif_lnt_union_bb14dc41 i_qualified_name_prefix TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zcl_lnt_typed_identifier.
    METHODS parse_table IMPORTING i_node TYPE REF TO zif_lnt_union_bb14dc41 i_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    METHODS rap_table_for IMPORTING i_entity_name TYPE string i_options TYPE REF TO zcl_lnt_itable_options RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    METHODS parse_type IMPORTING i_node TYPE REF TO zif_lnt_union_bb14dc41 i_qualified_name TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    METHODS is_occurs IMPORTING i_node TYPE REF TO zif_lnt_union_bb14dc41 RETURNING VALUE(result) TYPE abap_bool.
    METHODS get_rap_base_entity_name IMPORTING i_name TYPE string RETURNING VALUE(result) TYPE string.
    METHODS resolve_rap_alias IMPORTING i_name TYPE string RETURNING VALUE(result) TYPE string.
    METHODS is_rap_derived_entity_name IMPORTING i_name TYPE string RETURNING VALUE(result) TYPE abap_bool.
    METHODS is_rap_table_for IMPORTING i_text TYPE string RETURNING VALUE(result) TYPE abap_bool.
    METHODS is_rap_type_structure IMPORTING i_text TYPE string RETURNING VALUE(result) TYPE abap_bool.
    METHODS resolve_type_chain IMPORTING i_expr TYPE REF TO zcl_lnt_expression_node RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    METHODS resolve_constant_value IMPORTING i_expr TYPE REF TO zcl_lnt_expression_node RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS resolve_type_ref IMPORTING i_chain_8ed6 TYPE REF TO zcl_lnt_expression_node RETURNING VALUE(result) TYPE REF TO zcl_lnt_abstract_type.
    METHODS find_value IMPORTING i_node TYPE REF TO zif_lnt_union_bb14dc41 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    METHODS find_decimals IMPORTING i_node TYPE REF TO zif_lnt_union_bb14dc41 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    METHODS find_length IMPORTING i_node TYPE REF TO zif_lnt_union_bb14dc41 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    METHODS parse_int IMPORTING i_text TYPE REF TO zlnt_runtime_opti_4ba3bdccd169 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    INTERFACES zlnt_runtime_desc_e5fe811e0f42.
    METHODS zlnt_builtin_clas_3f891b097658 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
    METHODS zlnt_builtin_nati_72359f490bf2 RETURNING VALUE(result) TYPE REF TO zlnt_runtime_clas_a39833db3295.
  PROTECTED SECTION.
  PRIVATE SECTION.
    CLASS-DATA zlnt_builtin_code_bb79b741c1de TYPE REF TO cl_abap_conv_out_ce.
ENDCLASS.
CLASS zcl_lnt_basic_types IMPLEMENTATION.
  METHOD constructor.
    me->input_2fd0 = i_input_967e.
    DELETE me->zlnt_record_delet_0597644d88b4 WHERE table_line = `input`.
  ENDMETHOD.

  METHOD lookup_qualified_name.
    DATA(t1) = i_name.
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3 = t1.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t7) = VALUE abap_bool( ).
    IF t3 IS INITIAL.
      t7 = abap_true.
    ELSEIF t3->has = abap_false.
      t7 = abap_true.
    ENDIF.
    IF t7 = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t10 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t13 TYPE REF TO zcl_lnt_current_scope.
    t13 = me->input_2fd0->scope.
    DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t18 TYPE string.
    t18 = t1->value.
    DATA(t20) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t20->has = abap_true.
    t20->value = t18.
    t15 = t20.
    DATA t22 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t24 = t15.
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t28) = VALUE abap_bool( ).
    IF t24 IS INITIAL.
      t28 = abap_true.
    ELSEIF t24->has = abap_false.
      t28 = abap_true.
    ENDIF.
    IF t28 = abap_true.
    ELSE.
      DATA t32 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t32 = t13->current.
      DATA t35 TYPE REF TO zcl_lnt_typed_identifier.
      IF xsdbool( t32 IS INITIAL ) = abap_true.
      ELSE.
        DATA t40 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t40 = t32.
        DATA t42 TYPE string.
        t42 = t15->value.
        t35 = t40->find_type( i_name = t42 ).
      ENDIF.
      t22 = t35.
    ENDIF.
    t10 = t22.
    IF xsdbool( t10 IS BOUND ) = abap_true.
      result = t10.
      RETURN.
    ENDIF.
    DATA(t52) = VALUE i( ).
    DATA t53 TYPE string.
    t53 = t1->value.
    DATA(t55) = |=>|.
    DATA(t56) = strlen( t53 ).
    IF t55 IS INITIAL.
      t52 = 0.
    ELSE.
      FIND t55 IN t53 MATCH OFFSET t52.
      IF sy-subrc <> 0.
        t52 = -1.
      ENDIF.
    ENDIF.
    IF xsdbool( t52 >= 0 ) = abap_true.
      DATA t58 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t59 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t60 TYPE string.
      t60 = t1->value.
      DATA(t62) = |=>|.
      DATA(t63) = strlen( t60 ).
      DATA t64 TYPE i.
      DATA(t65) = VALUE i( ).
      DATA(t66) = VALUE i( ).
      DATA t67 TYPE i.
      DATA(t68) = VALUE string( ).
      CREATE OBJECT t59.
      t67 = strlen( t62 ).
      t64 = 0.
      IF t67 = 0.
        WHILE t64 < t63.
          t68 = t60+t64(1).
          APPEND t68 TO t59->items.
          t64 = t64 + 1.
        ENDWHILE.
      ELSE.
        WHILE t64 <= t63.
          FIND FIRST OCCURRENCE OF t62 IN SECTION OFFSET t64 OF t60 MATCH OFFSET t65.
          IF sy-subrc = 0.
            t66 = t65 - t64.
          ELSE.
            t65 = -1.
            t66 = t63 - t64.
          ENDIF.
          CLEAR t68.
          IF t66 > 0.
            t68 = t60+t64(t66).
          ENDIF.
          APPEND t68 TO t59->items.
          IF t65 < 0.
            EXIT.
          ENDIF.
          t64 = t65 + t67.
        ENDWHILE.
      ENDIF.
      t58 = t59.
      DATA(t70) = VALUE string( ).
      IF t58->has( 1 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t58->load( ).
      READ TABLE t58->items INDEX 1 INTO t70.
      DATA(t72) = VALUE string( ).
      DATA(t73) = VALUE string( ).
      IF t58->has( 2 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t58->load( ).
      READ TABLE t58->items INDEX 2 INTO t73.
      t72 = t73.
      DATA t75 TYPE REF TO zif_lnt_interface_definition.
      DATA t77 TYPE REF TO zcl_lnt_current_scope.
      t77 = me->input_2fd0->scope.
      DATA t80 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t84) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t84->has = abap_true.
      t84->value = t70.
      t80 = t84.
      DATA t86 TYPE REF TO zif_lnt_interface_definition.
      DATA t88 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t88 = t80.
      DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t92) = VALUE abap_bool( ).
      IF t88 IS INITIAL.
        t92 = abap_true.
      ELSEIF t88->has = abap_false.
        t92 = abap_true.
      ENDIF.
      IF t92 = abap_true.
      ELSE.
        DATA t96 TYPE REF TO zif_lnt_class_definition.
        DATA t98 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t101 TYPE string.
        t101 = t80->value.
        DATA(t103) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t103->has = abap_true.
        t103->value = t101.
        t98 = t103.
        DATA t105 TYPE REF TO zif_lnt_class_definition.
        DATA t107 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t107 = t98.
        DATA t109 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t111) = VALUE abap_bool( ).
        IF t107 IS INITIAL.
          t111 = abap_true.
        ELSEIF t107->has = abap_false.
          t111 = abap_true.
        ENDIF.
        IF t111 = abap_true.
        ELSE.
          DATA t115 TYPE REF TO zif_lnt_class_definition.
          DATA t117 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t117 = t77->current.
          DATA t120 TYPE REF TO zif_lnt_class_definition.
          IF xsdbool( t117 IS INITIAL ) = abap_true.
          ELSE.
            DATA t125 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            t125 = t117.
            DATA t127 TYPE string.
            t127 = t98->value.
            t120 = t125->find_class_definition( i_name = t127 ).
          ENDIF.
          t115 = t120.
          DATA t129 TYPE REF TO zif_lnt_class_definition.
          IF xsdbool( t115 IS BOUND ) = abap_true.
            t129 = t115.
          ELSE.
            DATA t138 TYPE REF TO zcl_lnt_class.
            DATA t139 TYPE REF TO zcl_lnt_class.
            DATA t141 TYPE REF TO zif_lnt_registry.
            t141 = t77->reg.
            DATA t143 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t146) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t146->has = abap_true.
            t146->value = |CLAS|.
            t143 = t146.
            DATA t150 TYPE string.
            t150 = t98->value.
            DATA(t152) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t152->has = abap_true.
            t152->value = t150.
            DATA t154 TYPE REF TO object.
            t154 = t141->get_object( i_type_9913 = t143 i_name = t152 ).
            t139 ?= t154.
            t138 = t139.
            DATA t155 TYPE REF TO zif_lnt_class_definition.
            IF xsdbool( t138 IS BOUND ) = abap_true.
              t155 = t138->gt_dfn_ins_src_obj_cls_ts_clss( ).
            ELSE.
              CLEAR t155.
            ENDIF.
            t129 = t155.
          ENDIF.
          t105 = t129.
        ENDIF.
        t96 = t105.
        DATA t162 TYPE REF TO zif_lnt_interface_definition.
        IF xsdbool( t96 IS BOUND ) = abap_true.
          DATA t165 TYPE REF TO zif_lnt_interface_definition.
          DATA t166 TYPE REF TO zif_lnt_class_definition.
          t166 = t96.
          t165 ?= t166.
          t162 = t165.
        ELSE.
          DATA t169 TYPE REF TO zif_lnt_interface_definition.
          DATA t171 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t174 TYPE string.
          t174 = t80->value.
          DATA(t176) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t176->has = abap_true.
          t176->value = t174.
          t171 = t176.
          DATA t178 TYPE REF TO zif_lnt_interface_definition.
          DATA t180 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t180 = t171.
          DATA t182 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t184) = VALUE abap_bool( ).
          IF t180 IS INITIAL.
            t184 = abap_true.
          ELSEIF t180->has = abap_false.
            t184 = abap_true.
          ENDIF.
          IF t184 = abap_true.
          ELSE.
            DATA t188 TYPE REF TO zif_lnt_interface_definition.
            DATA t190 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            t190 = t77->current.
            DATA t193 TYPE REF TO zif_lnt_interface_definition.
            IF xsdbool( t190 IS INITIAL ) = abap_true.
            ELSE.
              DATA t198 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              t198 = t190.
              DATA t200 TYPE string.
              t200 = t171->value.
              t193 = t198->find_interface_definition( i_name = t200 ).
            ENDIF.
            t188 = t193.
            DATA t202 TYPE REF TO zif_lnt_interface_definition.
            IF xsdbool( t188 IS BOUND ) = abap_true.
              t202 = t188.
            ELSE.
              DATA t211 TYPE REF TO zcl_lnt_ob_interface.
              DATA t212 TYPE REF TO zcl_lnt_ob_interface.
              DATA t214 TYPE REF TO zif_lnt_registry.
              t214 = t77->reg.
              DATA t216 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA(t219) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t219->has = abap_true.
              t219->value = |INTF|.
              t216 = t219.
              DATA t223 TYPE string.
              t223 = t171->value.
              DATA(t225) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t225->has = abap_true.
              t225->value = t223.
              DATA t227 TYPE REF TO object.
              t227 = t214->get_object( i_type_9913 = t216 i_name = t225 ).
              t212 ?= t227.
              t211 = t212.
              DATA t228 TYPE REF TO zif_lnt_interface_definition.
              IF xsdbool( t211 IS BOUND ) = abap_true.
                t228 = t211->def.
              ELSE.
                CLEAR t228.
              ENDIF.
              t202 = t228.
            ENDIF.
            t178 = t202.
          ENDIF.
          t169 = t178.
          DATA t238 TYPE REF TO zif_lnt_interface_definition.
          IF xsdbool( t169 IS BOUND ) = abap_true.
            t238 = t169.
          ELSE.
            CLEAR t238.
          ENDIF.
          t162 = t238.
        ENDIF.
        t86 = t162.
      ENDIF.
      t75 = t86.
      IF xsdbool( t75 IS BOUND ) = abap_true.
        DATA(t250) = VALUE i( ).
        DATA(t252) = |-|.
        DATA(t253) = strlen( t72 ).
        IF t252 IS INITIAL.
          t250 = 0.
        ELSE.
          FIND t252 IN t72 MATCH OFFSET t250.
          IF sy-subrc <> 0.
            t250 = -1.
          ENDIF.
        ENDIF.
        IF xsdbool( t250 >= 0 ) = abap_true.
          DATA t255 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA t256 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA(t258) = |-|.
          DATA(t259) = strlen( t72 ).
          DATA t260 TYPE i.
          DATA(t261) = VALUE i( ).
          DATA(t262) = VALUE i( ).
          DATA t263 TYPE i.
          DATA(t264) = VALUE string( ).
          CREATE OBJECT t256.
          t263 = strlen( t258 ).
          t260 = 0.
          IF t263 = 0.
            WHILE t260 < t259.
              t264 = t72+t260(1).
              APPEND t264 TO t256->items.
              t260 = t260 + 1.
            ENDWHILE.
          ELSE.
            WHILE t260 <= t259.
              FIND FIRST OCCURRENCE OF t258 IN SECTION OFFSET t260 OF t72 MATCH OFFSET t261.
              IF sy-subrc = 0.
                t262 = t261 - t260.
              ELSE.
                t261 = -1.
                t262 = t259 - t260.
              ENDIF.
              CLEAR t264.
              IF t262 > 0.
                t264 = t72+t260(t262).
              ENDIF.
              APPEND t264 TO t256->items.
              IF t261 < 0.
                EXIT.
              ENDIF.
              t260 = t261 + t263.
            ENDWHILE.
          ENDIF.
          t255 = t256.
          DATA(t265) = VALUE string( ).
          DATA(t266) = VALUE string( ).
          IF t255->has( 1 - 1 ) = abap_false.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t255->load( ).
          READ TABLE t255->items INDEX 1 INTO t266.
          t265 = t266.
          DATA(t269) = VALUE string( ).
          IF t255->has( 2 - 1 ) = abap_false.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t255->load( ).
          READ TABLE t255->items INDEX 2 INTO t269.
          DATA t271 TYPE REF TO zcl_lnt_typed_identifier.
          t271 = t75->get_type_definitions( )->get_by_name( i_name = t265 ).
          DATA t277 TYPE REF TO zcl_lnt_abstract_type.
          DATA t279 TYPE REF TO zcl_lnt_typed_identifier.
          t279 = t271.
          DATA t281 TYPE REF TO zcl_lnt_abstract_type.
          IF xsdbool( t279 IS INITIAL ) = abap_true.
          ELSE.
            t281 = t279->type_cba0.
          ENDIF.
          t277 = t281.
          DATA t291 TYPE abap_bool.
          DATA t292 TYPE abap_bool.
          t292 = xsdbool( t271 IS BOUND ).
          t291 = t292.
          IF t292 = abap_true.
            t291 = xsdbool( t277 IS BOUND AND t277 IS INSTANCE OF zcl_lnt_structure_type ).
          ENDIF.
          IF t291 = abap_true.
            DATA t296 TYPE REF TO zcl_lnt_abstract_type.
            DATA t299 TYPE REF TO zcl_lnt_structure_type.
            t299 ?= t277.
            DATA t301 TYPE string.
            t301 = t269.
            DATA t304 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
            t304 = t299->indexed.
            DATA t306 TYPE string.
            DATA(t308) = strlen( t301 ).
            t306 = t301.
            IF t306 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t306 TO UPPER CASE.
            ELSE.
              t306 = zlnt_runtime_uppe_91169605024d=>full( t306 ).
            ENDIF.
            t296 = t304->get( p0 = t306 ).
            DATA(t309) = VALUE abap_bool( ).
            DATA(t310) = VALUE abap_bool( ).
            DATA t311 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            t311 = t255->get( p0 = 2 ).
            IF t311 IS BOUND.
              IF t311->has = abap_true.
                t310 = xsdbool( strlen( t311->value ) > 0 ).
              ENDIF.
            ENDIF.
            t309 = t310.
            IF t310 = abap_true.
              DATA(t315) = t296.
              t309 = xsdbool( t315 IS BOUND AND t315 IS INSTANCE OF zcl_lnt_structure_type ).
            ENDIF.
            IF t309 = abap_true.
              DATA t318 TYPE REF TO zcl_lnt_structure_type.
              t318 ?= t296.
              DATA(t320) = VALUE string( ).
              DATA(t321) = VALUE string( ).
              IF t255->has( 3 - 1 ) = abap_false.
                RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
              ENDIF.
              t255->load( ).
              READ TABLE t255->items INDEX 3 INTO t321.
              t320 = t321.
              DATA t324 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
              t324 = t318->indexed.
              DATA t326 TYPE string.
              DATA(t328) = strlen( t320 ).
              t326 = t320.
              IF t326 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                TRANSLATE t326 TO UPPER CASE.
              ELSE.
                t326 = zlnt_runtime_uppe_91169605024d=>full( t326 ).
              ENDIF.
              t296 = t324->get( p0 = t326 ).
            ENDIF.
            IF xsdbool( t296 IS BOUND ) = abap_true.
              DATA t334 TYPE REF TO zcl_lnt_abstract_token.
              DATA t335 TYPE REF TO zcl_lnt_fi_identifier.
              t335 = t271.
              t334 = t335->token.
              DATA t340 TYPE string.
              DATA t341 TYPE REF TO zcl_lnt_fi_identifier.
              t341 = t271.
              t340 = t341->filename.
              DATA t348 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA t349 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              result = NEW zcl_lnt_typed_identifier( i_token = t334 i_filename = t340 i_type_9913 = t296 i_meta = t348 i_value = t349 ).
              RETURN.
            ENDIF.
          ENDIF.
        ELSE.
          DATA t351 TYPE REF TO zcl_lnt_typed_identifier.
          t351 = t75->get_type_definitions( )->get_by_name( i_name = t72 ).
          IF xsdbool( t351 IS BOUND ) = abap_true.
            result = t351.
            RETURN.
          ENDIF.
        ENDIF.
      ENDIF.
    ELSE.
      DATA(t365) = VALUE i( ).
      DATA t366 TYPE string.
      t366 = t1->value.
      DATA(t368) = |-|.
      DATA(t369) = strlen( t366 ).
      IF t368 IS INITIAL.
        t365 = 0.
      ELSE.
        FIND t368 IN t366 MATCH OFFSET t365.
        IF sy-subrc <> 0.
          t365 = -1.
        ENDIF.
      ENDIF.
      IF xsdbool( t365 >= 0 ) = abap_true.
        DATA t371 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t372 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t373 TYPE string.
        t373 = t1->value.
        DATA(t375) = |-|.
        DATA(t376) = strlen( t373 ).
        DATA t377 TYPE i.
        DATA(t378) = VALUE i( ).
        DATA(t379) = VALUE i( ).
        DATA t380 TYPE i.
        DATA(t381) = VALUE string( ).
        CREATE OBJECT t372.
        t380 = strlen( t375 ).
        t377 = 0.
        IF t380 = 0.
          WHILE t377 < t376.
            t381 = t373+t377(1).
            APPEND t381 TO t372->items.
            t377 = t377 + 1.
          ENDWHILE.
        ELSE.
          WHILE t377 <= t376.
            FIND FIRST OCCURRENCE OF t375 IN SECTION OFFSET t377 OF t373 MATCH OFFSET t378.
            IF sy-subrc = 0.
              t379 = t378 - t377.
            ELSE.
              t378 = -1.
              t379 = t376 - t377.
            ENDIF.
            CLEAR t381.
            IF t379 > 0.
              t381 = t373+t377(t379).
            ENDIF.
            APPEND t381 TO t372->items.
            IF t378 < 0.
              EXIT.
            ENDIF.
            t377 = t378 + t380.
          ENDWHILE.
        ENDIF.
        t371 = t372.
        DATA(t383) = VALUE string( ).
        IF t371->has( 1 - 1 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t371->load( ).
        READ TABLE t371->items INDEX 1 INTO t383.
        DATA(t386) = VALUE string( ).
        IF t371->has( 2 - 1 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t371->load( ).
        READ TABLE t371->items INDEX 2 INTO t386.
        DATA t388 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t391 TYPE REF TO zcl_lnt_current_scope.
        t391 = me->input_2fd0->scope.
        DATA t393 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t397) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t397->has = abap_true.
        t397->value = t383.
        t393 = t397.
        DATA t399 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t401 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t401 = t393.
        DATA t403 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t405) = VALUE abap_bool( ).
        IF t401 IS INITIAL.
          t405 = abap_true.
        ELSEIF t401->has = abap_false.
          t405 = abap_true.
        ENDIF.
        IF t405 = abap_true.
        ELSE.
          DATA t409 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t409 = t391->current.
          DATA t412 TYPE REF TO zcl_lnt_typed_identifier.
          IF xsdbool( t409 IS INITIAL ) = abap_true.
          ELSE.
            DATA t417 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            t417 = t409.
            DATA t419 TYPE string.
            t419 = t393->value.
            t412 = t417->find_type( i_name = t419 ).
          ENDIF.
          t399 = t412.
        ENDIF.
        t388 = t399.
        IF xsdbool( t388 IS BOUND ) = abap_true.
          DATA t423 TYPE REF TO zcl_lnt_abstract_type.
          t423 = t388->type_cba0.
          IF xsdbool( t423 IS BOUND AND t423 IS INSTANCE OF zcl_lnt_structure_type ) = abap_true.
            DATA t432 TYPE REF TO zcl_lnt_abstract_type.
            DATA t435 TYPE REF TO zcl_lnt_structure_type.
            t435 ?= t423.
            DATA t437 TYPE string.
            t437 = t386.
            DATA t440 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
            t440 = t435->indexed.
            DATA t442 TYPE string.
            DATA(t444) = strlen( t437 ).
            t442 = t437.
            IF t442 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t442 TO UPPER CASE.
            ELSE.
              t442 = zlnt_runtime_uppe_91169605024d=>full( t442 ).
            ENDIF.
            t432 = t440->get( p0 = t442 ).
            DATA(t445) = VALUE abap_bool( ).
            DATA(t446) = VALUE abap_bool( ).
            DATA t447 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            t447 = t371->get( p0 = 2 ).
            IF t447 IS BOUND.
              IF t447->has = abap_true.
                t446 = xsdbool( strlen( t447->value ) > 0 ).
              ENDIF.
            ENDIF.
            t445 = t446.
            IF t446 = abap_true.
              DATA(t451) = t432.
              t445 = xsdbool( t451 IS BOUND AND t451 IS INSTANCE OF zcl_lnt_structure_type ).
            ENDIF.
            IF t445 = abap_true.
              DATA t454 TYPE REF TO zcl_lnt_structure_type.
              t454 ?= t432.
              DATA(t456) = VALUE string( ).
              DATA(t457) = VALUE string( ).
              IF t371->has( 3 - 1 ) = abap_false.
                RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
              ENDIF.
              t371->load( ).
              READ TABLE t371->items INDEX 3 INTO t457.
              t456 = t457.
              DATA t460 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
              t460 = t454->indexed.
              DATA t462 TYPE string.
              DATA(t464) = strlen( t456 ).
              t462 = t456.
              IF t462 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                TRANSLATE t462 TO UPPER CASE.
              ELSE.
                t462 = zlnt_runtime_uppe_91169605024d=>full( t462 ).
              ENDIF.
              t432 = t460->get( p0 = t462 ).
            ENDIF.
            IF xsdbool( t432 IS BOUND ) = abap_true.
              DATA t470 TYPE REF TO zcl_lnt_abstract_token.
              DATA t471 TYPE REF TO zcl_lnt_fi_identifier.
              t471 = t388.
              t470 = t471->token.
              DATA t476 TYPE string.
              DATA t477 TYPE REF TO zcl_lnt_fi_identifier.
              t477 = t388.
              t476 = t477->filename.
              DATA t484 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA t485 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              result = NEW zcl_lnt_typed_identifier( i_token = t470 i_filename = t476 i_type_9913 = t432 i_meta = t484 i_value = t485 ).
              RETURN.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t487 TYPE REF TO zcl_lnt_ilookup_result.
    DATA t489 TYPE REF TO zcl_lnt_ddic.
    DATA t494 TYPE REF TO zif_lnt_registry.
    t494 = me->input_2fd0->scope->reg.
    t489 = NEW zcl_lnt_ddic( i_reg_f149 = t494 ).
    DATA t496 TYPE string.
    t496 = t1->value.
    t487 = t489->lookup_no_void( i_name = t496 ).
    DATA t498 TYPE REF TO zcl_lnt_fi_identifier.
    DATA t500 TYPE REF TO zif_lnt_object.
    DATA t502 TYPE REF TO zcl_lnt_ilookup_result.
    t502 = t487.
    DATA t504 TYPE REF TO zif_lnt_object.
    IF xsdbool( t502 IS INITIAL ) = abap_true.
    ELSE.
      t504 = t502->zlnt_view_read_sr_2de0200e6505( ).
    ENDIF.
    t500 = t504.
    DATA t511 TYPE REF TO zcl_lnt_fi_identifier.
    IF xsdbool( t500 IS INITIAL ) = abap_true.
    ELSE.
      t511 = t500->get_identifier( ).
    ENDIF.
    t498 = t511.
    DATA t518 TYPE abap_bool.
    DATA t519 TYPE abap_bool.
    t519 = xsdbool( t498 IS BOUND ).
    t518 = t519.
    IF t519 = abap_true.
      DATA t522 TYPE REF TO zcl_lnt_abstract_type.
      DATA t523 TYPE REF TO zcl_lnt_ilookup_result.
      t523 = t487.
      DATA t525 TYPE REF TO zcl_lnt_abstract_type.
      IF xsdbool( t523 IS INITIAL ) = abap_true.
      ELSE.
        t525 = t523->zlnt_view_read_sr_9be58e2d4893( ).
      ENDIF.
      t522 = t525.
      t518 = xsdbool( t522 IS BOUND ).
    ENDIF.
    IF t518 = abap_true.
      DATA t535 TYPE REF TO zcl_lnt_abstract_token.
      t535 = t498->token.
      DATA t541 TYPE string.
      t541 = t498->filename.
      DATA t550 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t551 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      result = NEW zcl_lnt_typed_identifier( i_token = t535 i_filename = t541 i_type_9913 = t487->zlnt_view_read_sr_9be58e2d4893( ) i_meta = t550 i_value = t551 ).
      RETURN.
    ENDIF.
    DATA t553 TYPE REF TO zcl_lnt_abstract_type.
    DATA t555 TYPE REF TO zcl_lnt_ddic.
    DATA t560 TYPE REF TO zif_lnt_registry.
    t560 = me->input_2fd0->scope->reg.
    t555 = NEW zcl_lnt_ddic( i_reg_f149 = t560 ).
    DATA t562 TYPE string.
    t562 = t1->value.
    DATA t564 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t565 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t566 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t553 = t555->lookup_builtin_type( i_name = t562 i_length = t564 i_decimals_2eed = t565 i_qualified_name = t566 ).
    IF xsdbool( t553 IS BOUND ) = abap_true.
      DATA t572 TYPE REF TO zcl_lnt_lx_identifier.
      DATA t573 TYPE REF TO zcl_lnt_position.
      DATA(t576) = NEW zlnt_runtime_opti_8df4f98f9a3a( ).
      t576->has = abap_true.
      t576->value = CONV f( 1 ).
      t573 = NEW zcl_lnt_position( i_row = CONV f( 1 ) i_col = t576 ).
      DATA t577 TYPE string.
      t577 = t1->value.
      t572 = NEW zcl_lnt_lx_identifier( i_start = t573 i_str = t577 ).
      DATA(t579) = CONV string( zcl_lnt_built_in=>filename ).
      DATA t582 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t583 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      result = NEW zcl_lnt_typed_identifier( i_token = t572 i_filename = t579 i_type_9913 = t553 i_meta = t582 i_value = t583 ).
      RETURN.
    ENDIF.
    DATA t585 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t587 TYPE REF TO zcl_lnt_current_scope.
    t587 = me->input_2fd0->scope.
    DATA t589 TYPE string.
    t589 = t1->value.
    t585 = t587->find_type_pool_type( i_name = t589 ).
    IF xsdbool( t585 IS BOUND ) = abap_true.
      result = t585.
      RETURN.
    ENDIF.
    CLEAR result.

  ENDMETHOD.

  METHOD resolve_like_name.
    CONSTANTS range_parse_safe_prefix TYPE int8 VALUE '900719925474099'.
    DATA(t1) = i_node.
    DATA(t2) = i_header_logic.
    DATA(t3) = VALUE abap_bool( ).
    DATA(t4) = t2.
    IF t4 IS INITIAL.
      t3 = abap_true.
    ELSEIF t4->has = abap_false.
      t3 = abap_true.
    ENDIF.
    IF t3 = abap_true.
      DATA(t8) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t8->has = abap_true.
      t8->value = abap_true.
      t2 = t8.
    ENDIF.
    DATA t13 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t1 IS INITIAL ) = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t18 TYPE REF TO zcl_lnt_expression_node.
    DATA t20 TYPE REF TO zif_lnt_union_bb14dc41.
    t20 = t1.
    DATA(t22) = zlnt_runtime_desc_78196487750d=>zlnt_member_d158_bbdd8eb9c28f.
    t18 = t20->find_first_expression( i_type_9913 = t22 ).
    DATA t26 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t18 IS INITIAL ) = abap_true.
      DATA t31 TYPE REF TO zif_lnt_union_bb14dc41.
      t31 = t1.
      DATA(t33) = zlnt_runtime_desc_78196487750d=>zlnt_member_d189_7457e1b1f519.
      t18 = t31->find_first_expression( i_type_9913 = t33 ).
    ENDIF.
    DATA t37 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t18 IS INITIAL ) = abap_true.
      DATA t42 TYPE REF TO zif_lnt_union_bb14dc41.
      t42 = t1.
      DATA(t44) = zlnt_runtime_desc_78196487750d=>zlnt_member_d120_1b3330f2aab3.
      t18 = t42->find_first_expression( i_type_9913 = t44 ).
    ENDIF.
    DATA t48 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t18 IS INITIAL ) = abap_true.
      DATA t53 TYPE REF TO zif_lnt_union_bb14dc41.
      t53 = t1.
      DATA(t55) = zlnt_runtime_desc_78196487750d=>zlnt_member_d141_e96a425f6743.
      t18 = t53->find_first_expression( i_type_9913 = t55 ).
    ENDIF.
    DATA t59 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t18 IS INITIAL ) = abap_true.
      DATA t64 TYPE REF TO zif_lnt_union_bb14dc41.
      t64 = t1.
      DATA(t66) = zlnt_runtime_desc_78196487750d=>zlnt_member_d171_8a7e3c79c08f.
      t18 = t64->find_first_expression( i_type_9913 = t66 ).
    ENDIF.
    DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t18 IS INITIAL ) = abap_true.
      DATA t74 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      DATA t75 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      DATA(t79) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t79->has = abap_true.
      t79->value = |resolveLikeName, chain undefined|.
      t75 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t79 ).
      t74 = NEW #( ).
      t74->payload = t75.
      CLEAR t74->source_value.
      DATA t81 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t82 TYPE REF TO object.
      t82 = t75.
      TRY.
          t74->source_value ?= t82.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t74->source_value IS NOT BOUND.
        TRY.
            t81 ?= t75.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t81 IS BOUND.
          t74->source_value = t81->source( ).
        ENDIF.
        IF t74->source_value IS NOT BOUND.
          CREATE OBJECT t74->source_value.
          t74->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t74->source_value->oval = t75.
        ENDIF.
      ENDIF.
      RAISE EXCEPTION t74.
    ENDIF.
    DATA(t83) = VALUE string( ).
    t83 = t18->concat_tokens( ).
    DATA t87 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t90 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t90.
    DATA t94 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t95 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t96 TYPE REF TO zcl_lnt_abstract_node.
    t96 = t18.
    t95 = t96->children.
    t94 ?= t95.
    t87 = t90->concat( p0 = t94 ).
    DATA(t104) = t87.
    t104->load( ).
    IF xsdbool( lines( t104->items ) = 0 ) = abap_true.
      DATA(t108) = VALUE string( ).
      DATA(t109) = |Type error, could not resolve "|.
      DATA(t111) = strlen( t109 ).
      t108 = |{ t109 }{ t83 }|.
      DATA(t113) = strlen( t108 ).
      DATA t114 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      result = NEW zcl_lnt_unknown_type( i_error = |{ t108 }{ |", resolveLikeName1| }| i_qualified_name = t114 ).
      RETURN.
    ENDIF.
    DATA t115 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t117) = VALUE abap_bool( ).
    DATA(t118) = VALUE abap_bool( ).
    DATA t119 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA(t120) = t87.
    DATA t121 TYPE REF TO object.
    t120->load( ).
    READ TABLE t120->items INDEX 2 INTO t121.
    DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t121 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t122 ?= t121.
      DATA t123 TYPE REF TO object.
      t123 = t122->as_ref( ).
      t119 ?= t123.
    ELSE.
      t119 ?= t121.
    ENDIF.
    t118 = xsdbool( t119 IS BOUND ).
    t117 = t118.
    IF t118 = abap_true.
      DATA(t124) = VALUE abap_bool( ).
      DATA(t125) = VALUE abap_bool( ).
      DATA t129 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA(t130) = t87.
      DATA t131 TYPE REF TO object.
      t130->load( ).
      READ TABLE t130->items INDEX 2 INTO t131.
      DATA t132 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t131 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t132 ?= t131.
        DATA t133 TYPE REF TO object.
        t133 = t132->as_ref( ).
        t129 ?= t133.
      ELSE.
        t129 ?= t131.
      ENDIF.
      t125 = xsdbool( t129->get_first_token( )->str = |=>| ).
      t124 = t125.
      IF t125 = abap_false.
        DATA(t138) = VALUE string( ).
        DATA t141 TYPE REF TO zif_lnt_union_4cf1d054.
        DATA(t142) = t87.
        DATA t143 TYPE REF TO object.
        t142->load( ).
        READ TABLE t142->items INDEX 2 INTO t143.
        DATA t144 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t143 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t144 ?= t143.
          DATA t145 TYPE REF TO object.
          t145 = t144->as_ref( ).
          t141 ?= t145.
        ELSE.
          t141 ?= t143.
        ENDIF.
        t138 = t141->get_first_token( )->str.
        t124 = xsdbool( t138 = |->| ).
      ENDIF.
      t117 = t124.
    ENDIF.
    IF t117 = abap_true.
      DATA t150 TYPE REF TO zcl_lnt_expression_node.
      t150 = t18.
      DATA(t152) = me->input_2fd0.
      DATA t155 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CREATE OBJECT t155.
      t155->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t155->sval = |Type|.
      DATA t158 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      t115 = zcl_lnt_sy_field_chain=>run_syntax( i_node = t150 i_input_967e = t152 i_ref_type = t155 i_allow_generic_deference = t158 ).
    ELSE.
      DATA(t159) = VALUE string( ).
      DATA t164 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA t166 TYPE REF TO object.
      t166 = t87->shift( ).
      DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t166 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t167 ?= t166.
        DATA t168 TYPE REF TO object.
        t168 = t167->as_ref( ).
        t164 ?= t168.
      ELSE.
        t164 ?= t166.
      ENDIF.
      t159 = t164->get_first_token( )->str.
      DATA t171 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t173 TYPE REF TO zcl_lnt_current_scope.
      t173 = me->input_2fd0->scope.
      DATA t176 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t180) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t180->has = abap_true.
      t180->value = t159.
      t176 = t180.
      DATA t182 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t184 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t184 = t176.
      DATA t186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t188) = VALUE abap_bool( ).
      IF t184 IS INITIAL.
        t188 = abap_true.
      ELSEIF t184->has = abap_false.
        t188 = abap_true.
      ENDIF.
      IF t188 = abap_true.
      ELSE.
        DATA t192 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t194 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t194 = t173->current.
        DATA t197 TYPE REF TO zcl_lnt_typed_identifier.
        IF xsdbool( t194 IS INITIAL ) = abap_true.
        ELSE.
          DATA t202 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t202 = t194.
          DATA(t204) = VALUE string( ).
          t204 = t176->value.
          t197 = t202->find_variable( i_name = t204 ).
        ENDIF.
        t192 = t197.
        DATA t206 TYPE REF TO zcl_lnt_typed_identifier.
        IF xsdbool( t192 IS BOUND ) = abap_true.
          t206 = t192.
        ELSE.
          DATA(t218) = VALUE string( ).
          t218 = t176->value.
          DATA(t220) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t220->has = abap_true.
          t220->value = t218.
          t206 = t173->find_type_pool_constant( i_name = t220 ).
        ENDIF.
        t182 = t206.
      ENDIF.
      t171 = t182.
      DATA t222 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t224 TYPE REF TO zcl_lnt_current_scope.
      t224 = me->input_2fd0->scope.
      DATA t227 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t231) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t231->has = abap_true.
      t231->value = t83.
      t227 = t231.
      DATA t233 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t235 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t235 = t227.
      DATA t237 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t239) = VALUE abap_bool( ).
      IF t235 IS INITIAL.
        t239 = abap_true.
      ELSEIF t235->has = abap_false.
        t239 = abap_true.
      ENDIF.
      IF t239 = abap_true.
      ELSE.
        DATA t243 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t245 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t245 = t224->current.
        DATA t248 TYPE REF TO zcl_lnt_typed_identifier.
        IF xsdbool( t245 IS INITIAL ) = abap_true.
        ELSE.
          DATA t253 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t253 = t245.
          DATA(t255) = VALUE string( ).
          t255 = t227->value.
          t248 = t253->find_variable( i_name = t255 ).
        ENDIF.
        t243 = t248.
        DATA t257 TYPE REF TO zcl_lnt_typed_identifier.
        IF xsdbool( t243 IS BOUND ) = abap_true.
          t257 = t243.
        ELSE.
          DATA(t269) = VALUE string( ).
          t269 = t227->value.
          DATA(t271) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t271->has = abap_true.
          t271->value = t269.
          t257 = t224->find_type_pool_constant( i_name = t271 ).
        ENDIF.
        t233 = t257.
      ENDIF.
      t222 = t233.
      IF xsdbool( t222 IS BOUND ) = abap_true.
        CREATE OBJECT t87.
        t171 = t222.
      ENDIF.
      DATA t282 TYPE REF TO zcl_lnt_typed_identifier.
      t282 = t171.
      DATA t284 TYPE REF TO zcl_lnt_abstract_type.
      IF xsdbool( t282 IS INITIAL ) = abap_true.
      ELSE.
        t284 = t282->type_cba0.
      ENDIF.
      t115 = t284.
      DATA t297 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF xsdbool( t171 IS INITIAL ) = abap_true.
        DATA t303 TYPE REF TO zcl_lnt_current_scope.
        t303 = me->input_2fd0->scope.
        DATA t305 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t309) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t309->has = abap_true.
        t309->value = t159.
        t305 = t309.
        DATA t311 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t313 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t313 = t305.
        DATA t315 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t317) = VALUE abap_bool( ).
        IF t313 IS INITIAL.
          t317 = abap_true.
        ELSEIF t313->has = abap_false.
          t317 = abap_true.
        ENDIF.
        IF t317 = abap_true.
        ELSE.
          DATA t321 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t321 = t303->current.
          DATA t324 TYPE REF TO zcl_lnt_typed_identifier.
          IF xsdbool( t321 IS INITIAL ) = abap_true.
          ELSE.
            DATA t329 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            t329 = t321.
            DATA(t331) = VALUE string( ).
            t331 = t305->value.
            t324 = t329->find_extra_like_type( i_name = t331 ).
          ENDIF.
          t311 = t324.
        ENDIF.
        t171 = t311.
        DATA t334 TYPE REF TO zcl_lnt_typed_identifier.
        t334 = t171.
        DATA t336 TYPE REF TO zcl_lnt_abstract_type.
        IF xsdbool( t334 IS INITIAL ) = abap_true.
        ELSE.
          t336 = t334->type_cba0.
        ENDIF.
        t115 = t336.
      ENDIF.
      IF xsdbool( t171 IS BOUND ) = abap_true.
        DATA t348 TYPE REF TO zcl_lnt_current_scope.
        t348 = me->input_2fd0->scope.
        DATA t350 TYPE REF TO zcl_lnt_abstract_token.
        DATA t351 TYPE REF TO zcl_lnt_expression_node.
        t351 = t18.
        DATA t354 TYPE REF TO zcl_lnt_abstract_token.
        IF xsdbool( t351 IS INITIAL ) = abap_true.
        ELSE.
          t354 = t351->get_first_token( ).
        ENDIF.
        t350 = t354.
        DATA t360 TYPE REF TO zcl_lnt_typed_identifier.
        t360 = t171.
        DATA t362 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CREATE OBJECT t362.
        t362->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t362->sval = |Type|.
        DATA(t364) = VALUE string( ).
        t364 = me->input_2fd0->filename.
        DATA t366 TYPE REF TO zcl_lnt_ireference_extras.
        t348->add_reference( i_usage = t350 i_referencing = t360 i_type_9913 = t362 i_filename = t364 i_extra = t366 ).
      ENDIF.
      DATA t370 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF xsdbool( t115 IS INITIAL ) = abap_true.
        DATA t374 TYPE REF TO zcl_lnt_ilookup_result.
        DATA t381 TYPE REF TO zif_lnt_registry.
        t381 = me->input_2fd0->scope->reg.
        t374 = NEW zcl_lnt_ddic( i_reg_f149 = t381 )->lookup_no_void( i_name = t159 ).
        DATA t387 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF xsdbool( xsdbool( t374 IS INITIAL ) = abap_false ) = abap_true.
          DATA t393 TYPE REF TO zcl_lnt_iobject_and_token.
          DATA t394 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t397) = VALUE string( ).
          t397 = me->input_2fd0->filename.
          DATA(t399) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t399->has = abap_true.
          t399->value = t397.
          t394 = t399.
          DATA t401 TYPE REF TO zcl_lnt_abstract_token.
          t401 = t18->get_first_token( ).
          t393 = NEW zcl_lnt_iobject_and_token( i_object_19cd = t374->zlnt_view_read_sr_2de0200e6505( ) i_token = t401 i_filename = t394 ).
          CREATE OBJECT t393->zlnt_view_ownkeys_b0e8086400eb.
          t393->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t412 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t393->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `filename` p1 = t412 ).
          DATA t413 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t393->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t393->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `token` p1 = t413 ).
          ENDIF.
          DATA t414 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t393->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t393->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t414 ).
          ENDIF.
          CREATE OBJECT t393->zlnt_json_ownkeys_70e5fd461788.
          t393->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t416 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t393->zlnt_json_ownkeys_70e5fd461788->put( p0 = |filename| p1 = t416 ).
          DATA t418 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t393->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t393->zlnt_json_ownkeys_70e5fd461788->put( p0 = |token| p1 = t418 ).
          ENDIF.
          DATA t420 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t393->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t393->zlnt_json_ownkeys_70e5fd461788->put( p0 = |object| p1 = t420 ).
          ENDIF.
          DATA t421 TYPE REF TO zif_lnt_ddic_references.
          t421 = me->input_2fd0->scope->reg->get_ddic_references( ).
          DATA t432 TYPE REF TO zif_lnt_object.
          t432 = me->input_2fd0->scope->parent_obj.
          t421->add_using( i_obj_1ed0 = t432 i_using = t393 ).
        ENDIF.
        DATA t439 TYPE REF TO zcl_lnt_ilookup_result.
        t439 = t374.
        DATA t441 TYPE REF TO zcl_lnt_abstract_type.
        IF xsdbool( t439 IS INITIAL ) = abap_true.
        ELSE.
          t441 = t439->zlnt_view_read_sr_9be58e2d4893( ).
        ENDIF.
        t115 = t441.
      ENDIF.
      DATA(t448) = VALUE abap_bool( ).
      DATA(t449) = VALUE abap_bool( ).
      DATA(t450) = VALUE abap_bool( ).
      DATA t453 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t450 = xsdbool( t115 IS INITIAL ).
      t449 = t450.
      IF t450 = abap_true.
        DATA(t458) = VALUE abap_bool( ).
        t458 = me->input_2fd0->scope->is_any_oo( ).
        t449 = xsdbool( t458 = abap_false ).
      ENDIF.
      t448 = t449.
      IF t449 = abap_true.
        DATA t469 TYPE REF TO zcl_lnt_ddic.
        DATA t470 TYPE REF TO zif_lnt_registry.
        t470 = me->input_2fd0->scope->reg.
        t469 = NEW zcl_lnt_ddic( i_reg_f149 = t470 ).
        DATA t472 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t476) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t476->has = abap_true.
        t476->value = t159.
        t472 = t476.
        DATA(t478) = VALUE abap_bool( ).
        DATA t480 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t480 = t472.
        DATA t482 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t484) = VALUE abap_bool( ).
        IF t480 IS INITIAL.
          t484 = abap_true.
        ELSEIF t480->has = abap_false.
          t484 = abap_true.
        ENDIF.
        IF t484 = abap_true.
          t478 = abap_true.
        ELSE.
          DATA t488 TYPE REF TO zif_lnt_registry.
          t488 = t469->reg.
          DATA(t490) = VALUE string( ).
          t490 = t472->value.
          t478 = t488->in_error_namespace( i_name = t490 ).
        ENDIF.
        t448 = xsdbool( t478 = abap_false ).
      ENDIF.
      IF t448 = abap_true.
        DATA t493 TYPE REF TO zcl_lnt_current_scope.
        t493 = me->input_2fd0->scope.
        DATA t495 TYPE REF TO zcl_lnt_abstract_token.
        DATA t498 TYPE REF TO zif_lnt_union_4cf1d054.
        DATA t499 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t500 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t501 TYPE REF TO zcl_lnt_abstract_node.
        t501 = t18.
        t500 = t501->children.
        t499 ?= t500.
        DATA t506 TYPE REF TO object.
        t499->load( ).
        READ TABLE t499->items INDEX 1 INTO t506.
        DATA t507 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t506 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t507 ?= t506.
          DATA t508 TYPE REF TO object.
          t508 = t507->as_ref( ).
          t498 ?= t508.
        ELSE.
          t498 ?= t506.
        ENDIF.
        t495 = t498->get_first_token( ).
        DATA t510 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t511 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CREATE OBJECT t511.
        t511->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t511->sval = |Type (Void)|.
        DATA(t513) = VALUE string( ).
        t513 = me->input_2fd0->filename.
        DATA t515 TYPE REF TO zcl_lnt_ireference_extras.
        t493->add_reference( i_usage = t495 i_referencing = t510 i_type_9913 = t511 i_filename = t513 i_extra = t515 ).
        DATA(t520) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t520->has = abap_true.
        t520->value = t159.
        DATA t522 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        result = zcl_lnt_void_type=>get_db65( i_voided = t520 i_qualified_name = t522 ).
        RETURN.
      ENDIF.
      DO.
        t87->load( ).
        IF xsdbool( lines( t87->items ) > 0 ) = abap_false.
          EXIT.
        ENDIF.
        DATA t527 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t527.
        DATA t529 TYPE REF TO zif_lnt_union_4cf1d054.
        CLEAR t529.
        DATA t531 TYPE REF TO object.
        t531 = t87->shift( ).
        DATA t532 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t532.
        CLEAR t529.
        IF t531 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t532 ?= t531.
          DATA t533 TYPE REF TO object.
          t533 = t532->as_ref( ).
          t529 ?= t533.
        ELSE.
          t529 ?= t531.
        ENDIF.
        t527 = t529.
        DATA(t535) = VALUE string( ).
        t535 = t527->get_first_token( )->str.
        IF xsdbool( t535 = |-| ) = abap_true.
          DATA(t543) = t115.
          IF xsdbool( t543 IS BOUND AND t543 IS INSTANCE OF zcl_lnt_void_type ) = abap_true.
            DATA t544 TYPE REF TO zcl_lnt_void_type.
            CLEAR t544.
            t544 ?= t115.
            result = t544.
            RETURN.
          ENDIF.
        ELSE.
          IF xsdbool( t527->concat_tokens( ) = |[]| ) = abap_true.
            DATA(t551) = t115.
            IF xsdbool( t551 IS BOUND AND t551 IS INSTANCE OF zcl_lnt_ty_table_type ) = abap_true.
              DATA t553 TYPE REF TO zcl_lnt_abstract_type.
              CLEAR t553.
              DATA t555 TYPE REF TO zcl_lnt_ty_table_type.
              CLEAR t555.
              t555 ?= t115.
              t553 = t555->row_type.
              DATA t559 TYPE REF TO zcl_lnt_itable_options.
              CLEAR t559.
              DATA t564 TYPE REF TO zcl_lnt_itable_key.
              CLEAR t564.
              CLEAR t564.
              DATA t566 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CLEAR t566.
              CLEAR t566.
              t559 = NEW zcl_lnt_itable_options( i_with_header = abap_false i_key_type = |DEFAULT| i_primary_key = t564 i_secondary = t566 ).
              CREATE OBJECT t559->zlnt_view_ownkeys_b0e8086400eb.
              t559->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t568 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t568.
              t559->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `withHeader` p1 = t568 ).
              DATA t569 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t569.
              IF t559->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t559->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `keyType` p1 = t569 ).
              ENDIF.
              CREATE OBJECT t559->zlnt_json_ownkeys_70e5fd461788.
              t559->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t571 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t571.
              t559->zlnt_json_ownkeys_70e5fd461788->put( p0 = |withHeader| p1 = t571 ).
              DATA t573 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CLEAR t573.
              IF t559->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t559->zlnt_json_ownkeys_70e5fd461788->put( p0 = |keyType| p1 = t573 ).
              ENDIF.
              DATA t574 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t574.
              DATA t575 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              CLEAR t575.
              t115 = NEW zcl_lnt_ty_table_type( i_row_type = t553 i_options = t559 i_qualified_name = t574 i_description = t575 ).
            ENDIF.
          ELSE.
            DATA(t576) = VALUE abap_bool( ).
            DATA(t577) = VALUE abap_bool( ).
            t577 = xsdbool( t527 IS BOUND AND t527 IS INSTANCE OF zcl_lnt_expression_node ).
            t576 = t577.
            IF t577 = abap_true.
              DATA t580 TYPE REF TO zif_lnt_statement_runnable.
              DATA t581 TYPE REF TO zcl_lnt_expression_node.
              CLEAR t581.
              DATA t583 TYPE REF TO object.
              t583 = t527.
              t581 ?= t583.
              t580 = t581->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
              t576 = xsdbool( t580 IS BOUND AND t580 IS INSTANCE OF zcl_lnt_st_field_length ).
            ENDIF.
            IF t576 = abap_true.
              DATA(t584) = VALUE f( ).
              DATA(t585) = VALUE f( ).
              DATA(t586) = VALUE string( ).
              DATA(t587) = VALUE string( ).
              DATA(t588) = VALUE string( ).
              DATA t589 TYPE REF TO zcl_lnt_expression_node.
              CLEAR t589.
              DATA t591 TYPE REF TO object.
              t591 = t527.
              t589 ?= t591.
              t588 = t589->concat_tokens( ).
              DATA(t592) = |(|.
              DATA(t593) = ||.
              DATA(t594) = strlen( t588 ).
              t587 = t588.
              REPLACE ALL OCCURRENCES OF t592 IN t587 WITH t593.
              DATA(t595) = |)|.
              DATA(t596) = ||.
              DATA(t597) = strlen( t587 ).
              t586 = t587.
              REPLACE ALL OCCURRENCES OF t595 IN t586 WITH t596.
              DATA(t598) = VALUE i( ).
              DATA(t599) = VALUE i( ).
              DATA(t600) = VALUE string( ).
              DATA(t601) = VALUE abap_bool( ).
              DATA(t602) = VALUE abap_bool( ).
              DATA(t603) = VALUE int8( ).
              DATA(t604) = VALUE i( ).
              t598 = 0.
              t603 = 0.
              t601 = abap_false.
              t602 = abap_false.
              t599 = strlen( t586 ).
              DATA(t605) = VALUE i( ).
              DATA(t606) = VALUE i( ).
              DATA(t607) = VALUE string( ).
              WHILE t598 < t599.
                t606 = t598.
                t607 = t586+t606(1).
                DATA t608 TYPE c LENGTH 1.
                CLEAR t608.
                DATA(t609) = VALUE xstring( ).
                DATA t610 TYPE x LENGTH 1.
                CLEAR t610.
                DATA t611 TYPE x LENGTH 1.
                CLEAR t611.
                DATA(t612) = VALUE i( ).
                t608 = t607.
                t605 = cl_abap_conv_out_ce=>uccpi( t608 ).
                IF t605 >= 255.
                  IF zlnt_builtin_code_bb79b741c1de IS NOT BOUND.
                    zlnt_builtin_code_bb79b741c1de = cl_abap_conv_out_ce=>create( encoding = '4103' ).
                  ENDIF.
                  zlnt_builtin_code_bb79b741c1de->convert( EXPORTING data = t607 IMPORTING buffer = t609 ).
                  t610 = t609(1).
                  t611 = t609+1(1).
                  t605 = t610.
                  t612 = t611.
                  t605 = t605 + t612 * 256.
                ENDIF.
                IF t605 = 9 OR t605 = 10 OR t605 = 11 OR t605 = 12 OR t605 = 13 OR t605 = 32 OR t605 = 160 OR t605 = 5760 OR t605 = 8232 OR t605 = 8233 OR t605 = 8239 OR t605 = 8287 OR t605 = 12288 OR t605 = 65279 OR t605 >= 8192 AND t605 <= 8202.
                  t598 = t598 + 1.
                ELSE.
                  EXIT.
                ENDIF.
              ENDWHILE.
              IF t598 < t599.
                t600 = t586+t598(1).
                IF t600 = '-' OR t600 = '+'.
                  t601 = xsdbool( t600 = '-' ).
                  t598 = t598 + 1.
                ENDIF.
              ENDIF.
              WHILE t598 < t599.
                t600 = t586+t598(1).
                IF t600 CN '0123456789' OR t600 = ` `.
                  EXIT.
                ENDIF.
                t604 = t600.
                IF t603 > range_parse_safe_prefix OR ( t603 = range_parse_safe_prefix AND t604 > 1 ).
                  RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                ENDIF.
                t603 = t603 * 10 + t604.
                t602 = abap_true.
                t598 = t598 + 1.
              ENDWHILE.
              IF t602 = abap_false OR ( t601 = abap_true AND t603 = 0 ).
                RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
              ENDIF.
              IF t601 = abap_true.
                t603 = 0 - t603.
              ENDIF.
              t585 = t603.
              t584 = t585.
              DATA(t614) = t584.
              IF abap_false = abap_true.
                DATA t617 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                CLEAR t617.
                t115 = NEW zcl_lnt_unknown_type( i_error = |Type error, invalid field length| i_qualified_name = t617 ).
              ELSE.
                DATA(t619) = t115.
                IF xsdbool( t619 IS BOUND AND t619 IS INSTANCE OF zcl_lnt_date_type ) = abap_true.
                  IF xsdbool( t584 > CONV f( 8 ) ) = abap_true.
                    DATA t625 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    CLEAR t625.
                    t115 = NEW zcl_lnt_unknown_type( i_error = |Type error, offset too long| i_qualified_name = t625 ).
                  ELSE.
                    DATA t628 TYPE REF TO zcl_lnt_abstract_type_data.
                    CLEAR t628.
                    t115 = NEW zcl_lnt_character_type( i_length = t584 i_extra = t628 ).
                  ENDIF.
                ELSE.
                  DATA(t630) = t115.
                  IF xsdbool( t630 IS BOUND AND t630 IS INSTANCE OF zcl_lnt_character_type ) = abap_true.
                    DATA t635 TYPE REF TO zcl_lnt_character_type.
                    CLEAR t635.
                    t635 ?= t115.
                    IF xsdbool( t584 <= t635->length ) = abap_true.
                      DATA t641 TYPE REF TO zcl_lnt_abstract_type_data.
                      CLEAR t641.
                      t115 = NEW zcl_lnt_character_type( i_length = t584 i_extra = t641 ).
                    ELSE.
                      DATA t644 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      CLEAR t644.
                      t115 = NEW zcl_lnt_unknown_type( i_error = |Type error, offset too long| i_qualified_name = t644 ).
                    ENDIF.
                  ENDIF.
                ENDIF.
              ENDIF.
            ELSE.
              DATA(t646) = t115.
              IF xsdbool( t646 IS BOUND AND t646 IS INSTANCE OF zcl_lnt_ty_table_type ) = abap_true.
                DATA t651 TYPE REF TO zcl_lnt_ty_table_type.
                CLEAR t651.
                t651 ?= t115.
                t115 = t651->row_type.
              ENDIF.
              DATA(t657) = t115.
              IF xsdbool( t657 IS BOUND AND t657 IS INSTANCE OF zcl_lnt_structure_type ) = abap_true.
                DATA t660 TYPE REF TO zcl_lnt_structure_type.
                CLEAR t660.
                t660 ?= t115.
                DATA(t662) = VALUE string( ).
                t662 = t527->get_first_token( )->str.
                DATA t670 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
                t670 = t660->indexed.
                DATA(t672) = VALUE string( ).
                DATA(t674) = strlen( t662 ).
                t672 = t662.
                IF t672 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
                  TRANSLATE t672 TO UPPER CASE.
                ELSE.
                  t672 = zlnt_runtime_uppe_91169605024d=>full( t672 ).
                ENDIF.
                t115 = t670->get( p0 = t672 ).
                DATA t678 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                CLEAR t678.
                CLEAR t678.
                IF xsdbool( t115 IS INITIAL ) = abap_true.
                  DATA(t683) = VALUE string( ).
                  DATA(t684) = |Type error, field not part of structure |.
                  DATA(t686) = strlen( t684 ).
                  t683 = |{ t684 }{ t83 }|.
                  DATA t687 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t687.
                  result = NEW zcl_lnt_unknown_type( i_error = t683 i_qualified_name = t687 ).
                  RETURN.
                ENDIF.
              ELSE.
                DATA(t690) = t115.
                IF xsdbool( xsdbool( t690 IS BOUND AND t690 IS INSTANCE OF zcl_lnt_void_type ) = abap_false ) = abap_true.
                  DATA(t692) = VALUE string( ).
                  DATA(t693) = |Type error, field not part of structure |.
                  DATA(t695) = strlen( t693 ).
                  t692 = |{ t693 }{ t83 }|.
                  DATA t696 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  CLEAR t696.
                  result = NEW zcl_lnt_unknown_type( i_error = t692 i_qualified_name = t696 ).
                  RETURN.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDDO.
      DATA(t698) = t115.
      IF xsdbool( t698 IS BOUND AND t698 IS INSTANCE OF zcl_lnt_void_type ) = abap_true.
        DATA t699 TYPE REF TO zcl_lnt_void_type.
        t699 ?= t115.
        result = t699.
        RETURN.
      ELSE.
        DATA(t701) = VALUE abap_bool( ).
        DATA(t702) = VALUE abap_bool( ).
        DATA(t703) = VALUE abap_bool( ).
        DATA(t704) = t115.
        t703 = xsdbool( t704 IS BOUND AND t704 IS INSTANCE OF zcl_lnt_ty_table_type ).
        t702 = t703.
        IF t703 = abap_true.
          DATA t707 TYPE REF TO zcl_lnt_ty_table_type.
          t707 ?= t115.
          t702 = t707->options->zlnt_view_read_sr_ec4602663c93( ).
        ENDIF.
        t701 = t702.
        IF t702 = abap_true.
          t701 = xsdbool( t2->value = abap_true ).
        ENDIF.
        IF t701 = abap_true.
          DATA t720 TYPE REF TO zcl_lnt_ty_table_type.
          t720 ?= t115.
          t115 = t720->row_type.
        ELSE.
          DATA(t725) = VALUE abap_bool( ).
          DATA(t726) = VALUE abap_bool( ).
          DATA(t727) = VALUE abap_bool( ).
          t727 = xsdbool( t115 IS BOUND AND t115 IS INSTANCE OF zcl_lnt_ty_table_type ).
          t726 = t727.
          IF t727 = abap_true.
            DATA t732 TYPE REF TO zcl_lnt_ty_table_type.
            t732 ?= t115.
            DATA t735 TYPE REF TO zcl_lnt_itable_options.
            t735 = t732->options.
            t726 = xsdbool( t735->zlnt_view_read_sr_ec4602663c93( ) = abap_true ).
          ENDIF.
          t725 = t726.
          IF t726 = abap_true.
            DATA t739 TYPE REF TO zcl_lnt_abstract_type.
            DATA t741 TYPE REF TO zcl_lnt_ty_table_type.
            t741 ?= t115.
            t739 = t741->row_type.
            t725 = xsdbool( t739 IS BOUND AND t739 IS INSTANCE OF zcl_lnt_void_type ).
          ENDIF.
          IF t725 = abap_true.
            DATA t749 TYPE REF TO zcl_lnt_ty_table_type.
            t749 ?= t115.
            result = t749->row_type.
            RETURN.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    IF xsdbool( xsdbool( t115 IS BOUND ) = abap_false ) = abap_true.
      DATA(t759) = VALUE string( ).
      DATA(t760) = |Type error, could not resolve "|.
      DATA(t762) = strlen( t760 ).
      t759 = |{ t760 }{ t83 }|.
      DATA(t764) = strlen( t759 ).
      DATA t765 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      result = NEW zcl_lnt_unknown_type( i_error = |{ t759 }{ |", resolveLikeName2| }| i_qualified_name = t765 ).
      RETURN.
    ENDIF.
    result = t115.

  ENDMETHOD.

  METHOD clone_type.
    DATA(t1) = i_type_9913.
    DATA(t2) = i_qualified_name.
    DATA(t3) = VALUE abap_bool( ).
    DATA t4 TYPE abap_bool.
    DATA t5 TYPE abap_bool.
    DATA(t6) = t1.
    t5 = xsdbool( t6 IS BOUND AND t6 IS INSTANCE OF zcl_lnt_character_type ).
    t4 = t5.
    IF t5 = abap_true.
      DATA(t7) = VALUE abap_bool( ).
      IF t2 IS BOUND.
        IF t2->has = abap_true.
          t7 = xsdbool( strlen( t2->value ) > 0 ).
        ENDIF.
      ENDIF.
      t4 = t7.
    ENDIF.
    t3 = t4.
    IF t4 = abap_true.
      DATA(t11) = VALUE i( ).
      DATA t12 TYPE string.
      t12 = t2->value.
      DATA(t14) = |-|.
      DATA(t15) = strlen( t12 ).
      IF t14 IS INITIAL.
        t11 = 0.
      ELSE.
        FIND t14 IN t12 MATCH OFFSET t11.
        IF sy-subrc <> 0.
          t11 = -1.
        ENDIF.
      ENDIF.
      t3 = xsdbool( xsdbool( t11 >= 0 ) = abap_false ).
    ENDIF.
    IF t3 = abap_true.
      DATA t19 TYPE REF TO zcl_lnt_character_type.
      t19 ?= t1.
      DATA t21 TYPE REF TO zcl_lnt_abstract_type_data.
      DATA t25 TYPE string.
      t25 = t2->value.
      DATA(t27) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t27->has = abap_true.
      t27->value = t25.
      DATA t29 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t31 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t35 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t37 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t21 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t27 i_conversion_exit = t29 i_derived_from_constant = t31 i_ddic_name = t33 i_rtti_name = t35 i_description = t37 ).
      CREATE OBJECT t21->zlnt_view_ownkeys_b0e8086400eb.
      t21->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t39 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t21->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t39 ).
      CREATE OBJECT t21->zlnt_json_ownkeys_70e5fd461788.
      t21->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t41 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t21->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t41 ).
      t1 = t19->clone_type( i_input_967e = t21 ).
    ENDIF.
    result = t1.

  ENDMETHOD.

  METHOD resolve_type_name.
    DATA(t1) = i_type_name.
    DATA(t2) = i_length.
    DATA(t3) = i_decimals_2eed.
    DATA(t4) = i_qualified_name.
    DATA t8 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t1 IS INITIAL ) = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t13 TYPE REF TO zcl_lnt_abstract_type.
    t13 = me->resolve_type_chain( i_expr = t1 ).
    IF xsdbool( t13 IS BOUND ) = abap_true.
      DATA t22 TYPE REF TO zcl_lnt_abstract_type.
      t22 = t13.
      DATA t25 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t25 = t4.
      DATA(t28) = VALUE abap_bool( ).
      DATA t29 TYPE abap_bool.
      DATA t30 TYPE abap_bool.
      DATA(t31) = t22.
      t30 = xsdbool( t31 IS BOUND AND t31 IS INSTANCE OF zcl_lnt_character_type ).
      t29 = t30.
      IF t30 = abap_true.
        DATA(t32) = VALUE abap_bool( ).
        IF t25 IS BOUND.
          IF t25->has = abap_true.
            t32 = xsdbool( strlen( t25->value ) > 0 ).
          ENDIF.
        ENDIF.
        t29 = t32.
      ENDIF.
      t28 = t29.
      IF t29 = abap_true.
        DATA(t36) = VALUE i( ).
        DATA t37 TYPE string.
        t37 = t25->value.
        DATA(t39) = |-|.
        DATA(t40) = strlen( t37 ).
        IF t39 IS INITIAL.
          t36 = 0.
        ELSE.
          FIND t39 IN t37 MATCH OFFSET t36.
          IF sy-subrc <> 0.
            t36 = -1.
          ENDIF.
        ENDIF.
        t28 = xsdbool( xsdbool( t36 >= 0 ) = abap_false ).
      ENDIF.
      IF t28 = abap_true.
        DATA t44 TYPE REF TO zcl_lnt_character_type.
        t44 ?= t22.
        DATA t46 TYPE REF TO zcl_lnt_abstract_type_data.
        DATA t50 TYPE string.
        t50 = t25->value.
        DATA(t52) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t52->has = abap_true.
        t52->value = t50.
        DATA t54 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t56 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        DATA t58 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t62 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t46 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t52 i_conversion_exit = t54 i_derived_from_constant = t56 i_ddic_name = t58 i_rtti_name = t60 i_description = t62 ).
        CREATE OBJECT t46->zlnt_view_ownkeys_b0e8086400eb.
        t46->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t46->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t64 ).
        CREATE OBJECT t46->zlnt_json_ownkeys_70e5fd461788.
        t46->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t46->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t66 ).
        t22 = t44->clone_type( i_input_967e = t46 ).
      ENDIF.
      result = t22.
      RETURN.
    ENDIF.
    DATA(t69) = VALUE string( ).
    DATA t70 TYPE string.
    DATA t71 TYPE string.
    t71 = t1->concat_tokens( ).
    DATA(t74) = strlen( t71 ).
    t70 = t71.
    IF t70 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t70 TO UPPER CASE.
    ELSE.
      t70 = zlnt_runtime_uppe_91169605024d=>full( t70 ).
    ENDIF.
    t69 = t70.
    DATA t75 TYPE REF TO zcl_lnt_abstract_type.
    DATA t82 TYPE REF TO zif_lnt_registry.
    t82 = me->input_2fd0->scope->reg.
    t75 = NEW zcl_lnt_ddic( i_reg_f149 = t82 )->lookup_builtin_type( i_name = t69 i_length = t2 i_decimals_2eed = t3 i_qualified_name = t4 ).
    DATA t91 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( xsdbool( t75 IS INITIAL ) = abap_false ) = abap_true.
      result = t75.
      RETURN.
    ENDIF.
    DATA t101 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t104 TYPE REF TO zcl_lnt_current_scope.
    t104 = me->input_2fd0->scope.
    DATA t106 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t110) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t110->has = abap_true.
    t110->value = t69.
    t106 = t110.
    DATA t112 TYPE REF TO zcl_lnt_typed_identifier.
    DATA t114 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t114 = t106.
    DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t118) = VALUE abap_bool( ).
    IF t114 IS INITIAL.
      t118 = abap_true.
    ELSEIF t114->has = abap_false.
      t118 = abap_true.
    ENDIF.
    IF t118 = abap_true.
    ELSE.
      DATA t122 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t122 = t104->current.
      DATA t125 TYPE REF TO zcl_lnt_typed_identifier.
      IF xsdbool( t122 IS INITIAL ) = abap_true.
      ELSE.
        DATA t130 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t130 = t122.
        DATA t132 TYPE string.
        t132 = t106->value.
        t125 = t130->find_type( i_name = t132 ).
      ENDIF.
      t112 = t125.
    ENDIF.
    t101 = t112.
    IF xsdbool( t101 IS BOUND ) = abap_true.
      DATA t136 TYPE REF TO zcl_lnt_abstract_token.
      t136 = t1->get_first_token( ).
      DATA(t141) = VALUE i( ).
      DATA(t143) = |~|.
      DATA(t144) = strlen( t69 ).
      IF t143 IS INITIAL.
        t141 = 0.
      ELSE.
        FIND t143 IN t69 MATCH OFFSET t141.
        IF sy-subrc <> 0.
          t141 = -1.
        ENDIF.
      ENDIF.
      IF xsdbool( t141 >= 0 ) = abap_true.
        DATA(t146) = VALUE string( ).
        DATA(t147) = VALUE string( ).
        DATA t148 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t150) = |~|.
        DATA(t151) = strlen( t69 ).
        DATA t152 TYPE i.
        DATA(t153) = VALUE i( ).
        DATA(t154) = VALUE i( ).
        DATA t155 TYPE i.
        DATA(t156) = VALUE string( ).
        CREATE OBJECT t148.
        t155 = strlen( t150 ).
        t152 = 0.
        IF t155 = 0.
          WHILE t152 < t151.
            t156 = t69+t152(1).
            APPEND t156 TO t148->items.
            t152 = t152 + 1.
          ENDWHILE.
        ELSE.
          WHILE t152 <= t151.
            FIND FIRST OCCURRENCE OF t150 IN SECTION OFFSET t152 OF t69 MATCH OFFSET t153.
            IF sy-subrc = 0.
              t154 = t153 - t152.
            ELSE.
              t153 = -1.
              t154 = t151 - t152.
            ENDIF.
            CLEAR t156.
            IF t154 > 0.
              t156 = t69+t152(t154).
            ENDIF.
            APPEND t156 TO t148->items.
            IF t153 < 0.
              EXIT.
            ENDIF.
            t152 = t153 + t155.
          ENDWHILE.
        ENDIF.
        IF t148->has( 1 - 1 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t148->load( ).
        READ TABLE t148->items INDEX 1 INTO t147.
        t146 = t147.
        DATA t157 TYPE REF TO zif_lnt_interface_definition.
        DATA t159 TYPE REF TO zcl_lnt_current_scope.
        t159 = me->input_2fd0->scope.
        DATA t162 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t166) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t166->has = abap_true.
        t166->value = t146.
        t162 = t166.
        DATA t168 TYPE REF TO zif_lnt_interface_definition.
        DATA t170 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t170 = t162.
        DATA t172 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t174) = VALUE abap_bool( ).
        IF t170 IS INITIAL.
          t174 = abap_true.
        ELSEIF t170->has = abap_false.
          t174 = abap_true.
        ENDIF.
        IF t174 = abap_true.
        ELSE.
          DATA t178 TYPE REF TO zif_lnt_interface_definition.
          DATA t180 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t180 = t159->current.
          DATA t183 TYPE REF TO zif_lnt_interface_definition.
          IF xsdbool( t180 IS INITIAL ) = abap_true.
          ELSE.
            DATA t188 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            t188 = t180.
            DATA t190 TYPE string.
            t190 = t162->value.
            t183 = t188->find_interface_definition( i_name = t190 ).
          ENDIF.
          t178 = t183.
          DATA t192 TYPE REF TO zif_lnt_interface_definition.
          IF xsdbool( t178 IS BOUND ) = abap_true.
            t192 = t178.
          ELSE.
            DATA t201 TYPE REF TO zcl_lnt_ob_interface.
            DATA t202 TYPE REF TO zcl_lnt_ob_interface.
            DATA t204 TYPE REF TO zif_lnt_registry.
            t204 = t159->reg.
            DATA t206 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t209) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t209->has = abap_true.
            t209->value = |INTF|.
            t206 = t209.
            DATA t213 TYPE string.
            t213 = t162->value.
            DATA(t215) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t215->has = abap_true.
            t215->value = t213.
            DATA t217 TYPE REF TO object.
            t217 = t204->get_object( i_type_9913 = t206 i_name = t215 ).
            t202 ?= t217.
            t201 = t202.
            DATA t218 TYPE REF TO zif_lnt_interface_definition.
            IF xsdbool( t201 IS BOUND ) = abap_true.
              t218 = t201->def.
            ELSE.
              CLEAR t218.
            ENDIF.
            t192 = t218.
          ENDIF.
          t168 = t192.
        ENDIF.
        t157 = t168.
        IF xsdbool( t157 IS BOUND ) = abap_true.
          DATA t230 TYPE REF TO zcl_lnt_current_scope.
          t230 = me->input_2fd0->scope.
          DATA t232 TYPE REF TO zcl_lnt_abstract_token.
          t232 = t136.
          DATA t236 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t238 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t239 TYPE REF TO zif_lnt_interface_definition.
          t239 = t157.
          t238 ?= t239.
          t236 = t238.
          DATA t242 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CREATE OBJECT t242.
          t242->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t242->sval = |Object|.
          DATA t244 TYPE string.
          t244 = me->input_2fd0->filename.
          DATA t248 TYPE REF TO zcl_lnt_ireference_extras.
          DATA t249 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t253) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t253->has = abap_true.
          t253->value = |INTF|.
          t249 = t253.
          DATA(t259) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t259->has = abap_true.
          t259->value = t146.
          DATA t261 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          t248 = NEW zcl_lnt_ireference_extras( i_oo_name = t259 i_oo_type = t249 i_found_qualified = t261 ).
          CREATE OBJECT t248->zlnt_view_ownkeys_b0e8086400eb.
          t248->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t263 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t248->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooType` p1 = t263 ).
          DATA t264 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t248->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t248->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooName` p1 = t264 ).
          ENDIF.
          CREATE OBJECT t248->zlnt_json_ownkeys_70e5fd461788.
          t248->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t266 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t248->zlnt_json_ownkeys_70e5fd461788->put( p0 = |ooType| p1 = t266 ).
          DATA t268 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t248->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t248->zlnt_json_ownkeys_70e5fd461788->put( p0 = |ooName| p1 = t268 ).
          ENDIF.
          t230->add_reference( i_usage = t232 i_referencing = t236 i_type_9913 = t242 i_filename = t244 i_extra = t248 ).
        ENDIF.
      ENDIF.
      DATA t270 TYPE REF TO zcl_lnt_current_scope.
      t270 = me->input_2fd0->scope.
      DATA t272 TYPE REF TO zcl_lnt_abstract_token.
      t272 = t136.
      DATA t276 TYPE REF TO zcl_lnt_typed_identifier.
      t276 = t101.
      DATA t278 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CREATE OBJECT t278.
      t278->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
      t278->sval = |Type|.
      DATA t280 TYPE string.
      t280 = me->input_2fd0->filename.
      DATA t282 TYPE REF TO zcl_lnt_ireference_extras.
      t270->add_reference( i_usage = t272 i_referencing = t276 i_type_9913 = t278 i_filename = t280 i_extra = t282 ).
      DATA t286 TYPE REF TO zcl_lnt_abstract_type.
      t286 = t101->type_cba0.
      DATA t293 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t293 = t4.
      DATA(t296) = VALUE abap_bool( ).
      DATA t297 TYPE abap_bool.
      DATA t298 TYPE abap_bool.
      DATA(t299) = t286.
      t298 = xsdbool( t299 IS BOUND AND t299 IS INSTANCE OF zcl_lnt_character_type ).
      t297 = t298.
      IF t298 = abap_true.
        DATA(t300) = VALUE abap_bool( ).
        IF t293 IS BOUND.
          IF t293->has = abap_true.
            t300 = xsdbool( strlen( t293->value ) > 0 ).
          ENDIF.
        ENDIF.
        t297 = t300.
      ENDIF.
      t296 = t297.
      IF t297 = abap_true.
        DATA(t304) = VALUE i( ).
        DATA t305 TYPE string.
        t305 = t293->value.
        DATA(t307) = |-|.
        DATA(t308) = strlen( t305 ).
        IF t307 IS INITIAL.
          t304 = 0.
        ELSE.
          FIND t307 IN t305 MATCH OFFSET t304.
          IF sy-subrc <> 0.
            t304 = -1.
          ENDIF.
        ENDIF.
        t296 = xsdbool( xsdbool( t304 >= 0 ) = abap_false ).
      ENDIF.
      IF t296 = abap_true.
        DATA t312 TYPE REF TO zcl_lnt_character_type.
        t312 ?= t286.
        DATA t314 TYPE REF TO zcl_lnt_abstract_type_data.
        DATA t318 TYPE string.
        t318 = t293->value.
        DATA(t320) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t320->has = abap_true.
        t320->value = t318.
        DATA t322 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t324 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        DATA t326 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t328 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t330 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t314 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t320 i_conversion_exit = t322 i_derived_from_constant = t324 i_ddic_name = t326 i_rtti_name = t328 i_description = t330 ).
        CREATE OBJECT t314->zlnt_view_ownkeys_b0e8086400eb.
        t314->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t332 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t314->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t332 ).
        CREATE OBJECT t314->zlnt_json_ownkeys_70e5fd461788.
        t314->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t334 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t314->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t334 ).
        t286 = t312->clone_type( i_input_967e = t314 ).
      ENDIF.
      result = t286.
      RETURN.
    ENDIF.
    DATA t337 TYPE REF TO zcl_lnt_abstract_type.
    DATA t339 TYPE REF TO zcl_lnt_typed_identifier.
    t339 = me->input_2fd0->scope->find_type_pool_type( i_name = t69 ).
    DATA t344 TYPE REF TO zcl_lnt_abstract_type.
    IF xsdbool( t339 IS INITIAL ) = abap_true.
    ELSE.
      t344 = t339->type_cba0.
    ENDIF.
    t337 = t344.
    IF xsdbool( t337 IS BOUND ) = abap_true.
      result = t337.
      RETURN.
    ENDIF.
    DATA t361 TYPE REF TO zcl_lnt_ilookup_result.
    DATA t363 TYPE REF TO zcl_lnt_ddic.
    DATA t369 TYPE REF TO zif_lnt_registry.
    t369 = me->input_2fd0->scope->reg.
    t363 = NEW zcl_lnt_ddic( i_reg_f149 = t369 ).
    DATA t371 TYPE string.
    t371 = t69.
    DATA t374 TYPE REF TO zcl_lnt_ilookup_result.
    t374 = t363->lookup_no_void( i_name = t371 ).
    DATA t378 TYPE REF TO zcl_lnt_ilookup_result.
    IF xsdbool( t374 IS BOUND ) = abap_true.
      t378 = t374.
    ELSE.
      DATA t383 TYPE REF TO zcl_lnt_ilookup_result.
      DATA t385 TYPE REF TO zif_lnt_registry.
      t385 = t363->reg.
      IF t385->in_error_namespace( i_name = t371 ) = abap_true.
        DATA t388 TYPE REF TO zcl_lnt_ilookup_result.
        DATA t389 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t394) = strlen( t371 ).
        DATA t395 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t389 = NEW zcl_lnt_unknown_type( i_error = |{ t371 }{ | not found, lookup| }| i_qualified_name = t395 ).
        DATA t396 TYPE REF TO zif_lnt_object.
        t388 = NEW zcl_lnt_ilookup_result( i_type_9913 = t389 i_object_19cd = t396 ).
        CREATE OBJECT t388->zlnt_view_ownkeys_b0e8086400eb.
        t388->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t398 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t388->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t398 ).
        CREATE OBJECT t388->zlnt_json_ownkeys_70e5fd461788.
        t388->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t400 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t388->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t400 ).
        t383 = t388.
      ELSE.
        DATA t401 TYPE REF TO zcl_lnt_ilookup_result.
        DATA t402 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t407) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t407->has = abap_true.
        t407->value = t371.
        DATA t409 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t402 = zcl_lnt_void_type=>get_db65( i_voided = t407 i_qualified_name = t409 ).
        DATA t410 TYPE REF TO zif_lnt_object.
        t401 = NEW zcl_lnt_ilookup_result( i_type_9913 = t402 i_object_19cd = t410 ).
        CREATE OBJECT t401->zlnt_view_ownkeys_b0e8086400eb.
        t401->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t412 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t401->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t412 ).
        CREATE OBJECT t401->zlnt_json_ownkeys_70e5fd461788.
        t401->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t414 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t401->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t414 ).
        t383 = t401.
      ENDIF.
      t378 = t383.
    ENDIF.
    t361 = t378.
    IF xsdbool( t361 IS BOUND ) = abap_true.
      DATA t417 TYPE REF TO zif_lnt_ddic_references.
      t417 = me->input_2fd0->scope->reg->get_ddic_references( ).
      DATA t424 TYPE REF TO zif_lnt_object.
      t424 = me->input_2fd0->scope->parent_obj.
      DATA t432 TYPE REF TO zcl_lnt_iobject_and_token.
      DATA t433 TYPE REF TO zif_lnt_object.
      t433 = t361->zlnt_view_read_sr_2de0200e6505( ).
      DATA t436 TYPE REF TO zcl_lnt_abstract_token.
      t436 = t1->get_first_token( ).
      DATA t446 TYPE string.
      t446 = me->input_2fd0->filename.
      DATA(t448) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t448->has = abap_true.
      t448->value = t446.
      t432 = NEW zcl_lnt_iobject_and_token( i_object_19cd = t433 i_token = t436 i_filename = t448 ).
      CREATE OBJECT t432->zlnt_view_ownkeys_b0e8086400eb.
      t432->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t450 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t432->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t450 ).
      DATA t451 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t432->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t432->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `token` p1 = t451 ).
      ENDIF.
      DATA t452 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t432->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t432->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `filename` p1 = t452 ).
      ENDIF.
      CREATE OBJECT t432->zlnt_json_ownkeys_70e5fd461788.
      t432->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t454 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t432->zlnt_json_ownkeys_70e5fd461788->put( p0 = |object| p1 = t454 ).
      DATA t456 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t432->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t432->zlnt_json_ownkeys_70e5fd461788->put( p0 = |token| p1 = t456 ).
      ENDIF.
      DATA t458 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t432->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t432->zlnt_json_ownkeys_70e5fd461788->put( p0 = |filename| p1 = t458 ).
      ENDIF.
      t417->add_using( i_obj_1ed0 = t424 i_using = t432 ).
      DATA t460 TYPE REF TO zcl_lnt_abstract_type.
      t460 = t361->zlnt_view_read_sr_9be58e2d4893( ).
      DATA t463 TYPE REF TO zcl_lnt_abstract_type.
      t463 = t361->zlnt_view_read_sr_9be58e2d4893( ).
      IF xsdbool( t463 IS BOUND AND t463 IS INSTANCE OF zcl_lnt_void_type ) = abap_true.
        DATA t465 TYPE REF TO zcl_lnt_current_scope.
        t465 = me->input_2fd0->scope.
        DATA t467 TYPE REF TO zcl_lnt_abstract_token.
        t467 = t1->get_first_token( ).
        DATA t473 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t474 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CREATE OBJECT t474.
        t474->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t474->sval = |Type (Void)|.
        DATA t476 TYPE string.
        t476 = me->input_2fd0->filename.
        DATA t478 TYPE REF TO zcl_lnt_ireference_extras.
        t465->add_reference( i_usage = t467 i_referencing = t473 i_type_9913 = t474 i_filename = t476 i_extra = t478 ).
      ENDIF.
      DATA t482 TYPE REF TO zcl_lnt_abstract_type.
      t482 = t361->zlnt_view_read_sr_9be58e2d4893( ).
      DATA t485 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t485 = t4.
      DATA(t488) = VALUE abap_bool( ).
      DATA t489 TYPE abap_bool.
      DATA t490 TYPE abap_bool.
      DATA(t491) = t482.
      t490 = xsdbool( t491 IS BOUND AND t491 IS INSTANCE OF zcl_lnt_character_type ).
      t489 = t490.
      IF t490 = abap_true.
        DATA(t492) = VALUE abap_bool( ).
        IF t485 IS BOUND.
          IF t485->has = abap_true.
            t492 = xsdbool( strlen( t485->value ) > 0 ).
          ENDIF.
        ENDIF.
        t489 = t492.
      ENDIF.
      t488 = t489.
      IF t489 = abap_true.
        DATA(t496) = VALUE i( ).
        DATA t497 TYPE string.
        t497 = t485->value.
        DATA(t499) = |-|.
        DATA(t500) = strlen( t497 ).
        IF t499 IS INITIAL.
          t496 = 0.
        ELSE.
          FIND t499 IN t497 MATCH OFFSET t496.
          IF sy-subrc <> 0.
            t496 = -1.
          ENDIF.
        ENDIF.
        t488 = xsdbool( xsdbool( t496 >= 0 ) = abap_false ).
      ENDIF.
      IF t488 = abap_true.
        DATA t504 TYPE REF TO zcl_lnt_character_type.
        t504 ?= t482.
        DATA t506 TYPE REF TO zcl_lnt_abstract_type_data.
        DATA t510 TYPE string.
        t510 = t485->value.
        DATA(t512) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t512->has = abap_true.
        t512->value = t510.
        DATA t514 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t516 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        DATA t518 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t520 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t522 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t506 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t512 i_conversion_exit = t514 i_derived_from_constant = t516 i_ddic_name = t518 i_rtti_name = t520 i_description = t522 ).
        CREATE OBJECT t506->zlnt_view_ownkeys_b0e8086400eb.
        t506->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t524 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t506->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t524 ).
        CREATE OBJECT t506->zlnt_json_ownkeys_70e5fd461788.
        t506->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t526 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t506->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t526 ).
        t482 = t504->clone_type( i_input_967e = t506 ).
      ENDIF.
      result = t482.
      RETURN.
    ENDIF.
    CLEAR result.

  ENDMETHOD.

  METHOD simple_type.
    DATA(t1) = i_node.
    DATA(t2) = i_qualified_name_prefix.
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d228_d93110ac2429.
    t3 = t1->find_first_expression( i_type_9913 = t6 ).
    DATA t10 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t3 IS INITIAL ) = abap_true.
      DATA(t16) = zlnt_runtime_desc_78196487750d=>zlnt_member_d152_d99fb56fbc57.
      t3 = t1->find_first_expression( i_type_9913 = t16 ).
    ENDIF.
    DATA t20 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t3 IS INITIAL ) = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t25 TYPE REF TO zcl_lnt_abstract_token.
    t25 = t3->get_first_token( ).
    IF xsdbool( t3->token_count > CONV f( 1 ) ) = abap_true.
      DATA t38 TYPE REF TO zcl_lnt_position.
      t38 = t25->start.
      t25 = NEW zcl_lnt_lx_identifier( i_start = t38 i_str = t3->concat_tokens( ) ).
    ENDIF.
    DATA t46 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t49 TYPE REF TO object.
    t49 = t1->get_db65( ).
    IF xsdbool( t49 IS BOUND AND t49 IS INSTANCE OF zcl_lnt_st_statem_type ) = abap_true.
      DATA t54 TYPE REF TO zcl_lnt_current_scope.
      t54 = me->input_2fd0->scope.
      DATA(t56) = VALUE abap_bool( ).
      DATA(t57) = VALUE abap_bool( ).
      DATA t58 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t59 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t61 TYPE REF TO zcl_lnt_iscope_identifier.
      DATA t63 TYPE REF TO zcl_lnt_spaghetti_scope_node.
      t63 = t54->current.
      DATA t66 TYPE REF TO zcl_lnt_iscope_identifier.
      IF xsdbool( t63 IS INITIAL ) = abap_true.
      ELSE.
        t66 = t63->identifier.
      ENDIF.
      t61 = t66.
      DATA t76 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      IF xsdbool( t61 IS INITIAL ) = abap_true.
      ELSE.
        DATA t80 TYPE string.
        t80 = t61->filename.
        DATA(t83) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t83->has = abap_true.
        t83->value = t80.
        t76 = t83.
      ENDIF.
      t59 = t76.
      DATA t84 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA(t85) = VALUE abap_bool( ).
      IF t59 IS INITIAL.
        t85 = abap_true.
      ELSEIF t59->has = abap_false.
        t85 = abap_true.
      ENDIF.
      IF t85 = abap_true.
      ELSE.
        DATA(t88) = VALUE abap_bool( ).
        DATA t89 TYPE string.
        t89 = t59->value.
        DATA(t91) = |.type.abap|.
        DATA(t92) = strlen( t89 ).
        DATA t93 TYPE i.
        DATA(t94) = VALUE i( ).
        DATA(t95) = VALUE string( ).
        t93 = strlen( t91 ).
        IF t93 = 0.
          t88 = abap_true.
        ELSEIF t93 <= t92.
          t94 = 0.
          t94 = t92 - t93.
          t95 = t89+t94(t93).
          IF t95 = t91.
            t88 = abap_true.
          ENDIF.
        ENDIF.
        DATA(t96) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t96->has = abap_true.
        t96->value = t88.
        t84 = t96.
      ENDIF.
      t58 = t84.
      DATA t97 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA(t100) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t100->has = abap_true.
      t100->value = abap_true.
      t97 = t100.
      DATA(t102) = VALUE abap_bool( ).
      DATA(t103) = VALUE abap_bool( ).
      IF t58 IS BOUND.
        t102 = t58->has.
      ENDIF.
      IF t97 IS BOUND.
        t103 = t97->has.
      ENDIF.
      IF t102 = t103.
        IF t102 = abap_false.
          t57 = abap_true.
        ELSEIF t58->value = t97->value.
          t57 = abap_true.
        ENDIF.
      ENDIF.
      t56 = t57.
      IF t57 = abap_false.
        t56 = abap_false.
      ENDIF.
      IF xsdbool( t56 = abap_true ) = abap_true.
        DATA t111 TYPE string.
        t111 = t25->str.
        DATA(t113) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t113->has = abap_true.
        t113->value = t111.
        t46 = t113.
      ELSE.
        DATA(t117) = VALUE string( ).
        DATA(t118) = VALUE string( ).
        DATA t119 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t119 = t2.
        DATA(t121) = VALUE string( ).
        DATA(t122) = VALUE abap_bool( ).
        IF t119 IS BOUND.
          IF t119->has = abap_true.
            t122 = xsdbool( strlen( t119->value ) > 0 ).
          ENDIF.
        ENDIF.
        IF t122 = abap_true.
          t121 = t119->value.
        ELSE.
          t121 = ||.
        ENDIF.
        t118 = t121.
        DATA t127 TYPE string.
        t127 = t25->str.
        DATA(t132) = strlen( t118 ).
        t117 = |{ t118 }{ t127 }|.
        DATA(t133) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t133->has = abap_true.
        t133->value = t117.
        t46 = t133.
        DATA t135 TYPE abap_bool.
        DATA t136 TYPE abap_bool.
        DATA t137 TYPE string.
        t137 = me->input_2fd0->scope->get_type( ).
        t136 = xsdbool( t137 = |class_definition| ).
        t135 = t136.
        IF t136 = abap_false.
          DATA t142 TYPE string.
          t142 = me->input_2fd0->scope->get_type( ).
          t135 = xsdbool( t142 = |interface| ).
        ENDIF.
        IF t135 = abap_true.
          DATA t148 TYPE string.
          DATA t149 TYPE string.
          DATA t150 TYPE string.
          t150 = me->input_2fd0->scope->get_name( ).
          DATA(t154) = strlen( t150 ).
          t149 = |{ t150 }{ |=>| }|.
          DATA t155 TYPE string.
          t155 = t46->value.
          DATA(t157) = strlen( t149 ).
          t148 = |{ t149 }{ t155 }|.
          DATA(t158) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t158->has = abap_true.
          t158->value = t148.
          t46 = t158.
        ENDIF.
      ENDIF.
    ELSE.
      DATA(t160) = VALUE abap_bool( ).
      IF t2 IS BOUND.
        IF t2->has = abap_true.
          t160 = xsdbool( strlen( t2->value ) > 0 ).
        ENDIF.
      ENDIF.
      IF t160 = abap_true.
        DATA(t164) = VALUE string( ).
        DATA t165 TYPE string.
        t165 = t2->value.
        DATA(t167) = VALUE string( ).
        DATA t168 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t168 = t46.
        DATA(t170) = VALUE string( ).
        DATA(t171) = VALUE abap_bool( ).
        IF t168 IS INITIAL.
          t171 = abap_true.
        ELSEIF t168->has = abap_false.
          t171 = abap_true.
        ENDIF.
        IF t171 = abap_true.
          t170 = |undefined|.
        ELSE.
          t170 = t168->value.
        ENDIF.
        t167 = t170.
        DATA(t176) = strlen( t165 ).
        t164 = |{ t165 }{ t167 }|.
        DATA(t177) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t177->has = abap_true.
        t177->value = t164.
        t46 = t177.
      ENDIF.
    ENDIF.
    DATA t179 TYPE REF TO zcl_lnt_abstract_type.
    t179 = me->parse_type( i_node = t1 i_qualified_name = t46 ).
    IF xsdbool( t179 IS BOUND ) = abap_true.
      DATA t189 TYPE string.
      t189 = me->input_2fd0->filename.
      DATA t193 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t194 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      result = NEW zcl_lnt_typed_identifier( i_token = t25 i_filename = t189 i_type_9913 = t179 i_meta = t193 i_value = t194 ).
      RETURN.
    ENDIF.
    CLEAR result.

  ENDMETHOD.

  METHOD parse_table.
    DATA(t1) = i_node.
    DATA(t2) = i_name.
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA t5 TYPE REF TO zcl_lnt_expression_node.
    DATA(t8) = zlnt_runtime_desc_78196487750d=>zlnt_member_d189_7457e1b1f519.
    t5 = t1->find_first_expression( i_type_9913 = t8 ).
    DATA t9 TYPE REF TO zcl_lnt_expression_node.
    IF xsdbool( t5 IS BOUND ) = abap_true.
      t9 = t5.
    ELSE.
      DATA(t15) = zlnt_runtime_desc_78196487750d=>zlnt_member_d162_57231f39acd0.
      t9 = t1->find_first_expression( i_type_9913 = t15 ).
    ENDIF.
    t3 = t9.
    DATA t16 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t20 TYPE REF TO zcl_lnt_expression_node.
    DATA(t23) = zlnt_runtime_desc_78196487750d=>zlnt_member_d151_c07675a56057.
    t20 = t1->find_first_expression( i_type_9913 = t23 ).
    DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t20 IS INITIAL ) = abap_true.
    ELSE.
      DATA t28 TYPE string.
      t28 = t20->concat_tokens( ).
      DATA(t31) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t31->has = abap_true.
      t31->value = t28.
      t24 = t31.
    ENDIF.
    t18 = t24.
    DATA t32 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t33) = VALUE abap_bool( ).
    IF t18 IS INITIAL.
      t33 = abap_true.
    ELSEIF t18->has = abap_false.
      t33 = abap_true.
    ENDIF.
    IF t33 = abap_true.
    ELSE.
      DATA t36 TYPE string.
      DATA t37 TYPE string.
      t37 = t18->value.
      DATA(t39) = strlen( t37 ).
      t36 = t37.
      IF t36 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t36 TO UPPER CASE.
      ELSE.
        t36 = zlnt_runtime_uppe_91169605024d=>full( t36 ).
      ENDIF.
      DATA(t40) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t40->has = abap_true.
      t40->value = t36.
      t32 = t40.
    ENDIF.
    t16 = t32.
    DATA t42 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t42 = t16.
    DATA t44 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t46) = VALUE abap_bool( ).
    IF t42 IS INITIAL.
      t46 = abap_true.
    ELSEIF t42->has = abap_false.
      t46 = abap_true.
    ENDIF.
    IF t46 = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t49 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t51) = VALUE abap_bool( ).
    DATA(t52) = VALUE abap_bool( ).
    DATA(t53) = VALUE abap_bool( ).
    DATA(t54) = VALUE abap_bool( ).
    DATA t55 TYPE string.
    t55 = t16->value.
    DATA(t57) = |TYPE STANDARD TABLE |.
    DATA(t58) = strlen( t55 ).
    DATA t59 TYPE i.
    DATA(t60) = VALUE i( ).
    DATA(t61) = VALUE string( ).
    t59 = strlen( t57 ).
    IF t59 = 0.
      t54 = abap_true.
    ELSEIF t59 <= t58.
      t60 = 0.
      t61 = t55+t60(t59).
      IF t61 = t57.
        t54 = abap_true.
      ENDIF.
    ENDIF.
    t53 = t54.
    IF t54 = abap_false.
      DATA(t62) = VALUE abap_bool( ).
      DATA t63 TYPE string.
      t63 = t16->value.
      DATA(t65) = |TYPE TABLE |.
      DATA(t66) = strlen( t63 ).
      DATA t67 TYPE i.
      DATA(t68) = VALUE i( ).
      DATA(t69) = VALUE string( ).
      t67 = strlen( t65 ).
      IF t67 = 0.
        t62 = abap_true.
      ELSEIF t67 <= t66.
        t68 = 0.
        t69 = t63+t68(t67).
        IF t69 = t65.
          t62 = abap_true.
        ENDIF.
      ENDIF.
      t53 = t62.
    ENDIF.
    t52 = t53.
    IF t53 = abap_false.
      DATA(t70) = VALUE abap_bool( ).
      DATA t71 TYPE string.
      t71 = t16->value.
      DATA(t73) = |LIKE TABLE |.
      DATA(t74) = strlen( t71 ).
      DATA t75 TYPE i.
      DATA(t76) = VALUE i( ).
      DATA(t77) = VALUE string( ).
      t75 = strlen( t73 ).
      IF t75 = 0.
        t70 = abap_true.
      ELSEIF t75 <= t74.
        t76 = 0.
        t77 = t71+t76(t75).
        IF t77 = t73.
          t70 = abap_true.
        ENDIF.
      ENDIF.
      t52 = t70.
    ENDIF.
    t51 = t52.
    IF t52 = abap_false.
      DATA(t78) = VALUE abap_bool( ).
      DATA t79 TYPE string.
      t79 = t16->value.
      DATA(t81) = |LIKE STANDARD TABLE |.
      DATA(t82) = strlen( t79 ).
      DATA t83 TYPE i.
      DATA(t84) = VALUE i( ).
      DATA(t85) = VALUE string( ).
      t83 = strlen( t81 ).
      IF t83 = 0.
        t78 = abap_true.
      ELSEIF t83 <= t82.
        t84 = 0.
        t85 = t79+t84(t83).
        IF t85 = t81.
          t78 = abap_true.
        ENDIF.
      ENDIF.
      t51 = t78.
    ENDIF.
    IF t51 = abap_true.
      DATA(t89) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t89->has = abap_true.
      t89->value = |STANDARD|.
      t49 = t89.
    ELSE.
      DATA(t91) = VALUE abap_bool( ).
      DATA(t92) = VALUE abap_bool( ).
      DATA t93 TYPE string.
      t93 = t16->value.
      DATA(t95) = |TYPE SORTED TABLE |.
      DATA(t96) = strlen( t93 ).
      DATA t97 TYPE i.
      DATA(t98) = VALUE i( ).
      DATA(t99) = VALUE string( ).
      t97 = strlen( t95 ).
      IF t97 = 0.
        t92 = abap_true.
      ELSEIF t97 <= t96.
        t98 = 0.
        t99 = t93+t98(t97).
        IF t99 = t95.
          t92 = abap_true.
        ENDIF.
      ENDIF.
      t91 = t92.
      IF t92 = abap_false.
        DATA(t100) = VALUE abap_bool( ).
        DATA t101 TYPE string.
        t101 = t16->value.
        DATA(t103) = |LIKE SORTED TABLE |.
        DATA(t104) = strlen( t101 ).
        DATA t105 TYPE i.
        DATA(t106) = VALUE i( ).
        DATA(t107) = VALUE string( ).
        t105 = strlen( t103 ).
        IF t105 = 0.
          t100 = abap_true.
        ELSEIF t105 <= t104.
          t106 = 0.
          t107 = t101+t106(t105).
          IF t107 = t103.
            t100 = abap_true.
          ENDIF.
        ENDIF.
        t91 = t100.
      ENDIF.
      IF t91 = abap_true.
        DATA(t111) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t111->has = abap_true.
        t111->value = |SORTED|.
        t49 = t111.
      ELSE.
        DATA(t113) = VALUE abap_bool( ).
        DATA(t114) = VALUE abap_bool( ).
        DATA t115 TYPE string.
        t115 = t16->value.
        DATA(t117) = |TYPE HASHED TABLE |.
        DATA(t118) = strlen( t115 ).
        DATA t119 TYPE i.
        DATA(t120) = VALUE i( ).
        DATA(t121) = VALUE string( ).
        t119 = strlen( t117 ).
        IF t119 = 0.
          t114 = abap_true.
        ELSEIF t119 <= t118.
          t120 = 0.
          t121 = t115+t120(t119).
          IF t121 = t117.
            t114 = abap_true.
          ENDIF.
        ENDIF.
        t113 = t114.
        IF t114 = abap_false.
          DATA(t122) = VALUE abap_bool( ).
          DATA t123 TYPE string.
          t123 = t16->value.
          DATA(t125) = |LIKE HASHED TABLE |.
          DATA(t126) = strlen( t123 ).
          DATA t127 TYPE i.
          DATA(t128) = VALUE i( ).
          DATA(t129) = VALUE string( ).
          t127 = strlen( t125 ).
          IF t127 = 0.
            t122 = abap_true.
          ELSEIF t127 <= t126.
            t128 = 0.
            t129 = t123+t128(t127).
            IF t129 = t125.
              t122 = abap_true.
            ENDIF.
          ENDIF.
          t113 = t122.
        ENDIF.
        IF t113 = abap_true.
          DATA(t133) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t133->has = abap_true.
          t133->value = |HASHED|.
          t49 = t133.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t135 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA(t138) = zlnt_runtime_desc_78196487750d=>zlnt_member_d353_58ca0f41496e.
    t135 = t1->find_all_expressions( i_type_9913 = t138 ).
    DATA t139 TYPE REF TO zcl_lnt_expression_node.
    DATA t140 TYPE REF TO zcl_lnt_expression_node.
    DATA t142 TYPE REF TO object.
    t135->load( ).
    READ TABLE t135->items INDEX 1 INTO t142.
    DATA t143 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t142 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t143 ?= t142.
      DATA t144 TYPE REF TO object.
      t144 = t143->as_ref( ).
      t140 ?= t144.
    ELSE.
      t140 ?= t142.
    ENDIF.
    t139 = t140.
    DATA(t145) = VALUE abap_bool( ).
    DATA(t146) = VALUE abap_bool( ).
    DATA(t147) = VALUE abap_bool( ).
    DATA t150 TYPE REF TO zcl_lnt_expression_node.
    t150 = t139.
    DATA t152 TYPE REF TO zcl_lnt_expression_node.
    IF xsdbool( t150 IS INITIAL ) = abap_true.
    ELSE.
      DATA(t158) = zlnt_runtime_desc_78196487750d=>zlnt_member_d97_d1013c30597947.
      t152 = t150->find_direct_expression( i_type_9913 = t158 ).
    ENDIF.
    DATA t159 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t147 = xsdbool( xsdbool( t152 IS INITIAL ) = abap_false ).
    t146 = t147.
    IF t147 = abap_true.
      DATA(t164) = VALUE abap_bool( ).
      DATA t165 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t166 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t168 TYPE REF TO zcl_lnt_expression_node.
      DATA t170 TYPE REF TO zcl_lnt_expression_node.
      t170 = t139.
      DATA t172 TYPE REF TO zcl_lnt_expression_node.
      IF xsdbool( t170 IS INITIAL ) = abap_true.
      ELSE.
        DATA(t178) = zlnt_runtime_desc_78196487750d=>zlnt_member_d97_d1013c30597947.
        t172 = t170->find_direct_expression( i_type_9913 = t178 ).
      ENDIF.
      t168 = t172.
      DATA t179 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      IF xsdbool( t168 IS INITIAL ) = abap_true.
      ELSE.
        DATA t183 TYPE string.
        t183 = t168->concat_tokens( ).
        DATA(t186) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t186->has = abap_true.
        t186->value = t183.
        t179 = t186.
      ENDIF.
      t166 = t179.
      DATA t187 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t188) = VALUE abap_bool( ).
      IF t166 IS INITIAL.
        t188 = abap_true.
      ELSEIF t166->has = abap_false.
        t188 = abap_true.
      ENDIF.
      IF t188 = abap_true.
      ELSE.
        DATA t191 TYPE string.
        DATA t192 TYPE string.
        t192 = t166->value.
        DATA(t194) = strlen( t192 ).
        t191 = t192.
        IF t191 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t191 TO UPPER CASE.
        ELSE.
          t191 = zlnt_runtime_uppe_91169605024d=>full( t191 ).
        ENDIF.
        DATA(t195) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t195->has = abap_true.
        t195->value = t191.
        t187 = t195.
      ENDIF.
      t165 = t187.
      DATA t196 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t199) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t199->has = abap_true.
      t199->value = |PRIMARY_KEY|.
      t196 = t199.
      DATA(t201) = VALUE abap_bool( ).
      DATA(t202) = VALUE abap_bool( ).
      IF t165 IS BOUND.
        t201 = t165->has.
      ENDIF.
      IF t196 IS BOUND.
        t202 = t196->has.
      ENDIF.
      IF t201 = t202.
        IF t201 = abap_false.
          t164 = abap_true.
        ELSEIF t165->value = t196->value.
          t164 = abap_true.
        ENDIF.
      ENDIF.
      IF t164 = abap_true.
        t164 = abap_false.
      ELSE.
        t164 = abap_true.
      ENDIF.
      t146 = t164.
    ENDIF.
    t145 = t146.
    DATA t203 TYPE REF TO zcl_lnt_itable_key.
    DATA t204 TYPE REF TO zcl_lnt_itable_key.
    DATA(t207) = VALUE string( ).
    DATA t209 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t209 = t49.
    DATA(t211) = VALUE string( ).
    DATA(t212) = VALUE abap_bool( ).
    IF t209 IS BOUND.
      IF t209->has = abap_true.
        t212 = xsdbool( strlen( t209->value ) > 0 ).
      ENDIF.
    ENDIF.
    IF t212 = abap_true.
      t211 = t209->value.
    ELSE.
      t211 = |STANDARD|.
    ENDIF.
    t207 = t211.
    DATA(t217) = VALUE abap_bool( ).
    DATA(t218) = VALUE abap_bool( ).
    IF t145 = abap_true.
      t218 = abap_false.
    ELSE.
      DATA(t221) = VALUE abap_bool( ).
      DATA t222 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t223 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t225 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t227 TYPE REF TO zcl_lnt_expression_node.
      t227 = t139.
      DATA t229 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      IF xsdbool( t227 IS INITIAL ) = abap_true.
      ELSE.
        DATA t233 TYPE string.
        t233 = t227->concat_tokens( ).
        DATA(t235) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t235->has = abap_true.
        t235->value = t233.
        t229 = t235.
      ENDIF.
      t225 = t229.
      DATA t236 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t237) = VALUE abap_bool( ).
      IF t225 IS INITIAL.
        t237 = abap_true.
      ELSEIF t225->has = abap_false.
        t237 = abap_true.
      ENDIF.
      IF t237 = abap_true.
      ELSE.
        DATA t240 TYPE string.
        DATA t241 TYPE string.
        t241 = t225->value.
        DATA(t243) = strlen( t241 ).
        t240 = t241.
        IF t240 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t240 TO UPPER CASE.
        ELSE.
          t240 = zlnt_runtime_uppe_91169605024d=>full( t240 ).
        ENDIF.
        DATA(t244) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t244->has = abap_true.
        t244->value = t240.
        t236 = t244.
      ENDIF.
      t223 = t236.
      DATA t245 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA(t246) = VALUE abap_bool( ).
      IF t223 IS INITIAL.
        t246 = abap_true.
      ELSEIF t223->has = abap_false.
        t246 = abap_true.
      ENDIF.
      IF t246 = abap_true.
      ELSE.
        DATA(t249) = VALUE abap_bool( ).
        DATA(t250) = VALUE i( ).
        DATA t251 TYPE string.
        t251 = t223->value.
        DATA(t253) = |WITH UNIQUE |.
        DATA(t254) = strlen( t251 ).
        IF t253 IS INITIAL.
          t250 = 0.
        ELSE.
          FIND t253 IN t251 MATCH OFFSET t250.
          IF sy-subrc <> 0.
            t250 = -1.
          ENDIF.
        ENDIF.
        t249 = xsdbool( t250 >= 0 ).
        DATA(t256) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t256->has = abap_true.
        t256->value = t249.
        t245 = t256.
      ENDIF.
      t222 = t245.
      DATA t257 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA(t260) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t260->has = abap_true.
      t260->value = abap_true.
      t257 = t260.
      DATA(t262) = VALUE abap_bool( ).
      DATA(t263) = VALUE abap_bool( ).
      IF t222 IS BOUND.
        t262 = t222->has.
      ENDIF.
      IF t257 IS BOUND.
        t263 = t257->has.
      ENDIF.
      IF t262 = t263.
        IF t262 = abap_false.
          t221 = abap_true.
        ELSEIF t222->value = t257->value.
          t221 = abap_true.
        ENDIF.
      ENDIF.
      t218 = t221.
    ENDIF.
    t217 = t218.
    DATA t264 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    CREATE OBJECT t264.
    t204 = NEW zcl_lnt_itable_key( i_name = |primary_key| i_type_9913 = t207 i_key_fields = t264 i_is_unique = t217 ).
    CREATE OBJECT t204->zlnt_view_ownkeys_b0e8086400eb.
    t204->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t266 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t204->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t266 ).
    DATA t267 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t204->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t204->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t267 ).
    ENDIF.
    DATA t268 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t204->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t204->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `isUnique` p1 = t268 ).
    ENDIF.
    DATA t269 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t204->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t204->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `keyFields` p1 = t269 ).
    ENDIF.
    CREATE OBJECT t204->zlnt_json_ownkeys_70e5fd461788.
    t204->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t271 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t204->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t271 ).
    DATA t273 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t204->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t204->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t273 ).
    ENDIF.
    DATA t275 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t204->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t204->zlnt_json_ownkeys_70e5fd461788->put( p0 = |isUnique| p1 = t275 ).
    ENDIF.
    DATA t277 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t204->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t204->zlnt_json_ownkeys_70e5fd461788->put( p0 = |keyFields| p1 = t277 ).
    ENDIF.
    t203 = t204.
    DATA t278 TYPE i.
    t278 = 1.
    IF xsdbool( t145 = abap_false ) = abap_true.
      DATA t283 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t284 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t286 TYPE REF TO zcl_lnt_expression_node.
      t286 = t139.
      DATA t288 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      IF xsdbool( t286 IS INITIAL ) = abap_true.
      ELSE.
        DATA(t294) = zlnt_runtime_desc_78196487750d=>zlnt_member_d120_1b3330f2aab3.
        t288 = t286->find_direct_expressions( i_type_9913 = t294 ).
      ENDIF.
      t284 = t288.
      DATA t295 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      IF xsdbool( t284 IS BOUND ) = abap_true.
        t295 = t284.
      ELSE.
        CREATE OBJECT t295.
      ENDIF.
      t283 = t295.
      DATA t301 TYPE REF TO zcl_lnt_expression_node.
      DATA t302 TYPE REF TO object.
      DATA(t303) = VALUE i( ).
      DO.
        t283->load( ).
        IF t303 >= lines( t283->items ).
          EXIT.
        ENDIF.
        CLEAR t302.
        READ TABLE t283->items INDEX t303 + 1 INTO t302.
        t303 = t303 + 1.
        DATA t304 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t304.
        CLEAR t301.
        IF t302 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t304 ?= t302.
          DATA t305 TYPE REF TO object.
          t305 = t304->as_ref( ).
          t301 ?= t305.
        ELSE.
          t301 ?= t302.
        ENDIF.
        DATA t306 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        t306 = t203->zlnt_view_read_sr_e0192e283129( ).
        DATA t308 TYPE string.
        DATA t309 TYPE string.
        t309 = t301->concat_tokens( ).
        DATA(t311) = strlen( t309 ).
        t308 = t309.
        IF t308 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t308 TO UPPER CASE.
        ELSE.
          t308 = zlnt_runtime_uppe_91169605024d=>full( t308 ).
        ENDIF.
        t306->load( ).
        APPEND t308 TO t306->items.
        t306->save( ).
      ENDDO.
    ELSE.
      t278 = 0.
    ENDIF.
    DATA t313 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    CREATE OBJECT t313.
    DATA t315 TYPE i.
    t315 = t278.
    DO.
      t135->load( ).
      IF xsdbool( t315 < lines( t135->items ) ) = abap_false.
        EXIT.
      ENDIF.
      DATA t321 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t321.
      DATA t322 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t322.
      DATA(t324) = t315.
      t324 = t324 + 1.
      DATA t325 TYPE REF TO object.
      CLEAR t325.
      t135->load( ).
      CLEAR t325.
      READ TABLE t135->items INDEX t324 INTO t325.
      DATA t326 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t326.
      CLEAR t322.
      IF t325 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t326 ?= t325.
        DATA t327 TYPE REF TO object.
        t327 = t326->as_ref( ).
        t322 ?= t327.
      ELSE.
        t322 ?= t325.
      ENDIF.
      t321 = t322.
      DATA t328 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t328.
      DATA t330 TYPE REF TO zcl_lnt_expression_node.
      DATA(t333) = zlnt_runtime_desc_78196487750d=>zlnt_member_d97_d1013c30597947.
      t330 = t321->find_direct_expression( i_type_9913 = t333 ).
      DATA t334 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t334.
      IF xsdbool( t330 IS INITIAL ) = abap_true.
        CLEAR t334.
      ELSE.
        DATA t338 TYPE string.
        t338 = t330->concat_tokens( ).
        DATA(t341) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t341->has = abap_true.
        t341->value = t338.
        t334 = t341.
      ENDIF.
      t328 = t334.
      DATA t343 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t343 = t328.
      DATA t345 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t345.
      DATA(t347) = VALUE abap_bool( ).
      IF t343 IS INITIAL.
        t347 = abap_true.
      ELSEIF t343->has = abap_false.
        t347 = abap_true.
      ENDIF.
      IF t347 = abap_true.
        DATA(t351) = 1.
        t315 = t315 + t351.
        CONTINUE.
      ENDIF.
      DATA t352 TYPE REF TO zcl_lnt_itable_key.
      CLEAR t352.
      DATA t353 TYPE REF TO zcl_lnt_itable_key.
      CLEAR t353.
      DATA t354 TYPE string.
      t354 = t328->value.
      DATA(t357) = VALUE string( ).
      DATA(t358) = VALUE string( ).
      DATA t360 TYPE REF TO zcl_lnt_abstract_token.
      t360 = t321->find_direct_token_by_text( i_text = |SORTED| ).
      IF xsdbool( t360 IS BOUND ) = abap_true.
        t358 = |SORTED|.
      ELSE.
        t358 = |HASHED|.
      ENDIF.
      t357 = t358.
      DATA(t365) = VALUE abap_bool( ).
      DATA(t366) = VALUE abap_bool( ).
      DATA t367 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t367.
      DATA t368 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t368.
      DATA t370 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t370.
      DATA t372 TYPE REF TO zcl_lnt_expression_node.
      t372 = t321.
      DATA t374 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t374.
      IF xsdbool( t372 IS INITIAL ) = abap_true.
        CLEAR t374.
      ELSE.
        DATA t378 TYPE string.
        t378 = t372->concat_tokens( ).
        DATA(t380) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t380->has = abap_true.
        t380->value = t378.
        t374 = t380.
      ENDIF.
      t370 = t374.
      DATA t381 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      CLEAR t381.
      DATA(t382) = VALUE abap_bool( ).
      IF t370 IS INITIAL.
        t382 = abap_true.
      ELSEIF t370->has = abap_false.
        t382 = abap_true.
      ENDIF.
      IF t382 = abap_true.
        CLEAR t381.
      ELSE.
        DATA t385 TYPE string.
        DATA t386 TYPE string.
        t386 = t370->value.
        DATA(t388) = strlen( t386 ).
        t385 = t386.
        IF t385 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t385 TO UPPER CASE.
        ELSE.
          t385 = zlnt_runtime_uppe_91169605024d=>full( t385 ).
        ENDIF.
        DATA(t389) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t389->has = abap_true.
        t389->value = t385.
        t381 = t389.
      ENDIF.
      t368 = t381.
      DATA t390 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      CLEAR t390.
      DATA(t391) = VALUE abap_bool( ).
      IF t368 IS INITIAL.
        t391 = abap_true.
      ELSEIF t368->has = abap_false.
        t391 = abap_true.
      ENDIF.
      IF t391 = abap_true.
        CLEAR t390.
      ELSE.
        DATA(t394) = VALUE abap_bool( ).
        DATA(t395) = VALUE i( ).
        DATA t396 TYPE string.
        t396 = t368->value.
        DATA(t398) = |WITH UNIQUE |.
        DATA(t399) = strlen( t396 ).
        IF t398 IS INITIAL.
          t395 = 0.
        ELSE.
          FIND t398 IN t396 MATCH OFFSET t395.
          IF sy-subrc <> 0.
            t395 = -1.
          ENDIF.
        ENDIF.
        t394 = xsdbool( t395 >= 0 ).
        DATA(t401) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t401->has = abap_true.
        t401->value = t394.
        t390 = t401.
      ENDIF.
      t367 = t390.
      DATA t402 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA(t405) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t405->has = abap_true.
      t405->value = abap_true.
      t402 = t405.
      DATA(t407) = VALUE abap_bool( ).
      DATA(t408) = VALUE abap_bool( ).
      IF t367 IS BOUND.
        t407 = t367->has.
      ENDIF.
      IF t402 IS BOUND.
        t408 = t402->has.
      ENDIF.
      IF t407 = t408.
        IF t407 = abap_false.
          t366 = abap_true.
        ELSEIF t367->value = t402->value.
          t366 = abap_true.
        ENDIF.
      ENDIF.
      t365 = t366.
      DATA t409 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      CREATE OBJECT t409.
      t353 = NEW zcl_lnt_itable_key( i_name = t354 i_type_9913 = t357 i_key_fields = t409 i_is_unique = t365 ).
      CREATE OBJECT t353->zlnt_view_ownkeys_b0e8086400eb.
      t353->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t411 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t411.
      t353->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t411 ).
      DATA t412 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t412.
      IF t353->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t353->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t412 ).
      ENDIF.
      DATA t413 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t413.
      IF t353->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t353->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `isUnique` p1 = t413 ).
      ENDIF.
      DATA t414 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t414.
      IF t353->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t353->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `keyFields` p1 = t414 ).
      ENDIF.
      CREATE OBJECT t353->zlnt_json_ownkeys_70e5fd461788.
      t353->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t416 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t416.
      t353->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t416 ).
      DATA t418 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t418.
      IF t353->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t353->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t418 ).
      ENDIF.
      DATA t420 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t420.
      IF t353->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t353->zlnt_json_ownkeys_70e5fd461788->put( p0 = |isUnique| p1 = t420 ).
      ENDIF.
      DATA t422 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t422.
      IF t353->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t353->zlnt_json_ownkeys_70e5fd461788->put( p0 = |keyFields| p1 = t422 ).
      ENDIF.
      t352 = t353.
      DATA t423 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t423.
      DATA t424 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t424.
      DATA t426 TYPE REF TO zcl_lnt_expression_node.
      t426 = t321.
      DATA t428 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t428.
      IF xsdbool( t426 IS INITIAL ) = abap_true.
        CLEAR t428.
      ELSE.
        DATA(t434) = zlnt_runtime_desc_78196487750d=>zlnt_member_d120_1b3330f2aab3.
        t428 = t426->find_direct_expressions( i_type_9913 = t434 ).
      ENDIF.
      t424 = t428.
      DATA t435 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      CLEAR t435.
      IF xsdbool( t424 IS BOUND ) = abap_true.
        t435 = t424.
      ELSE.
        CREATE OBJECT t435.
      ENDIF.
      t423 = t435.
      DATA t441 TYPE REF TO zcl_lnt_expression_node.
      CLEAR t441.
      DATA t442 TYPE REF TO object.
      CLEAR t442.
      DATA(t443) = VALUE i( ).
      DO.
        t423->load( ).
        IF t443 >= lines( t423->items ).
          EXIT.
        ENDIF.
        CLEAR t442.
        READ TABLE t423->items INDEX t443 + 1 INTO t442.
        t443 = t443 + 1.
        DATA t444 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CLEAR t444.
        CLEAR t441.
        IF t442 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t444 ?= t442.
          DATA t445 TYPE REF TO object.
          t445 = t444->as_ref( ).
          t441 ?= t445.
        ELSE.
          t441 ?= t442.
        ENDIF.
        DATA t446 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        t446 = t352->zlnt_view_read_sr_e0192e283129( ).
        DATA t448 TYPE string.
        DATA t449 TYPE string.
        t449 = t441->concat_tokens( ).
        DATA(t451) = strlen( t449 ).
        t448 = t449.
        IF t448 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t448 TO UPPER CASE.
        ELSE.
          t448 = zlnt_runtime_uppe_91169605024d=>full( t448 ).
        ENDIF.
        t446->load( ).
        APPEND t448 TO t446->items.
        t446->save( ).
      ENDDO.
      t313->load( ).
      APPEND t352 TO t313->items.
      t313->save( ).
      DATA(t456) = 1.
      t315 = t315 + t456.
    ENDDO.
    DATA t457 TYPE string.
    t457 = |USER|.
    DATA(t460) = VALUE i( ).
    DATA t461 TYPE string.
    t461 = t16->value.
    DATA(t463) = | EMPTY KEY|.
    DATA(t464) = strlen( t461 ).
    IF t463 IS INITIAL.
      t460 = 0.
    ELSE.
      FIND t463 IN t461 MATCH OFFSET t460.
      IF sy-subrc <> 0.
        t460 = -1.
      ENDIF.
    ENDIF.
    IF xsdbool( t460 >= 0 ) = abap_true.
      t457 = |EMPTY|.
    ELSE.
      DATA(t468) = VALUE i( ).
      DATA t469 TYPE string.
      t469 = t16->value.
      DATA(t471) = | DEFAULT KEY|.
      DATA(t472) = strlen( t469 ).
      IF t471 IS INITIAL.
        t468 = 0.
      ELSE.
        FIND t471 IN t469 MATCH OFFSET t468.
        IF sy-subrc <> 0.
          t468 = -1.
        ENDIF.
      ENDIF.
      IF xsdbool( t468 >= 0 ) = abap_true.
        t457 = |DEFAULT|.
      ENDIF.
    ENDIF.
    DATA t475 TYPE REF TO zcl_lnt_itable_options.
    DATA t476 TYPE REF TO zcl_lnt_itable_options.
    DATA(t479) = VALUE i( ).
    DATA t480 TYPE string.
    t480 = t16->value.
    DATA(t482) = | WITH HEADER LINE|.
    DATA(t483) = strlen( t480 ).
    IF t482 IS INITIAL.
      t479 = 0.
    ELSE.
      FIND t482 IN t480 MATCH OFFSET t479.
      IF sy-subrc <> 0.
        t479 = -1.
      ENDIF.
    ENDIF.
    t476 = NEW zcl_lnt_itable_options( i_with_header = xsdbool( t479 >= 0 ) i_key_type = t457 i_primary_key = t203 i_secondary = t313 ).
    CREATE OBJECT t476->zlnt_view_ownkeys_b0e8086400eb.
    t476->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t497 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t476->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `withHeader` p1 = t497 ).
    DATA t498 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t476->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t476->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `keyType` p1 = t498 ).
    ENDIF.
    DATA t499 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t476->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t476->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `primaryKey` p1 = t499 ).
    ENDIF.
    DATA t500 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t476->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
      t476->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `secondary` p1 = t500 ).
    ENDIF.
    CREATE OBJECT t476->zlnt_json_ownkeys_70e5fd461788.
    t476->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
    DATA t502 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    t476->zlnt_json_ownkeys_70e5fd461788->put( p0 = |withHeader| p1 = t502 ).
    DATA t504 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t476->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t476->zlnt_json_ownkeys_70e5fd461788->put( p0 = |keyType| p1 = t504 ).
    ENDIF.
    DATA t506 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t476->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t476->zlnt_json_ownkeys_70e5fd461788->put( p0 = |primaryKey| p1 = t506 ).
    ENDIF.
    DATA t508 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t476->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
      t476->zlnt_json_ownkeys_70e5fd461788->put( p0 = |secondary| p1 = t508 ).
    ENDIF.
    t475 = t476.
    DATA t509 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t511) = VALUE abap_bool( ).
    DATA(t512) = VALUE abap_bool( ).
    DATA(t513) = VALUE abap_bool( ).
    DATA(t514) = VALUE abap_bool( ).
    DATA t515 TYPE string.
    t515 = t16->value.
    DATA(t517) = |TYPE TABLE OF REF TO |.
    DATA(t518) = strlen( t515 ).
    DATA t519 TYPE i.
    DATA(t520) = VALUE i( ).
    DATA(t521) = VALUE string( ).
    t519 = strlen( t517 ).
    IF t519 = 0.
      t514 = abap_true.
    ELSEIF t519 <= t518.
      t520 = 0.
      t521 = t515+t520(t519).
      IF t521 = t517.
        t514 = abap_true.
      ENDIF.
    ENDIF.
    t513 = t514.
    IF t514 = abap_false.
      DATA(t522) = VALUE abap_bool( ).
      DATA t523 TYPE string.
      t523 = t16->value.
      DATA(t525) = |TYPE STANDARD TABLE OF REF TO |.
      DATA(t526) = strlen( t523 ).
      DATA t527 TYPE i.
      DATA(t528) = VALUE i( ).
      DATA(t529) = VALUE string( ).
      t527 = strlen( t525 ).
      IF t527 = 0.
        t522 = abap_true.
      ELSEIF t527 <= t526.
        t528 = 0.
        t529 = t523+t528(t527).
        IF t529 = t525.
          t522 = abap_true.
        ENDIF.
      ENDIF.
      t513 = t522.
    ENDIF.
    t512 = t513.
    IF t513 = abap_false.
      DATA(t530) = VALUE abap_bool( ).
      DATA t531 TYPE string.
      t531 = t16->value.
      DATA(t533) = |TYPE SORTED TABLE OF REF TO |.
      DATA(t534) = strlen( t531 ).
      DATA t535 TYPE i.
      DATA(t536) = VALUE i( ).
      DATA(t537) = VALUE string( ).
      t535 = strlen( t533 ).
      IF t535 = 0.
        t530 = abap_true.
      ELSEIF t535 <= t534.
        t536 = 0.
        t537 = t531+t536(t535).
        IF t537 = t533.
          t530 = abap_true.
        ENDIF.
      ENDIF.
      t512 = t530.
    ENDIF.
    t511 = t512.
    IF t512 = abap_false.
      DATA(t538) = VALUE abap_bool( ).
      DATA t539 TYPE string.
      t539 = t16->value.
      DATA(t541) = |TYPE HASHED TABLE OF REF TO |.
      DATA(t542) = strlen( t539 ).
      DATA t543 TYPE i.
      DATA(t544) = VALUE i( ).
      DATA(t545) = VALUE string( ).
      t543 = strlen( t541 ).
      IF t543 = 0.
        t538 = abap_true.
      ELSEIF t543 <= t542.
        t544 = 0.
        t545 = t539+t544(t543).
        IF t545 = t541.
          t538 = abap_true.
        ENDIF.
      ENDIF.
      t511 = t538.
    ENDIF.
    IF t511 = abap_true.
      t509 = me->resolve_type_ref( i_chain_8ed6 = t3 ).
      IF xsdbool( t509 IS BOUND ) = abap_true.
        DATA t555 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        result = NEW zcl_lnt_ty_table_type( i_row_type = t509 i_options = t475 i_qualified_name = t2 i_description = t555 ).
        RETURN.
      ENDIF.
    ELSE.
      DATA(t556) = VALUE abap_bool( ).
      DATA(t557) = VALUE abap_bool( ).
      DATA(t558) = VALUE abap_bool( ).
      DATA(t559) = VALUE abap_bool( ).
      DATA t560 TYPE string.
      t560 = t16->value.
      DATA(t562) = |TYPE TABLE OF |.
      DATA(t563) = strlen( t560 ).
      DATA t564 TYPE i.
      DATA(t565) = VALUE i( ).
      DATA(t566) = VALUE string( ).
      t564 = strlen( t562 ).
      IF t564 = 0.
        t559 = abap_true.
      ELSEIF t564 <= t563.
        t565 = 0.
        t566 = t560+t565(t564).
        IF t566 = t562.
          t559 = abap_true.
        ENDIF.
      ENDIF.
      t558 = t559.
      IF t559 = abap_false.
        DATA(t567) = VALUE abap_bool( ).
        DATA t568 TYPE string.
        t568 = t16->value.
        DATA(t570) = |TYPE STANDARD TABLE OF |.
        DATA(t571) = strlen( t568 ).
        DATA t572 TYPE i.
        DATA(t573) = VALUE i( ).
        DATA(t574) = VALUE string( ).
        t572 = strlen( t570 ).
        IF t572 = 0.
          t567 = abap_true.
        ELSEIF t572 <= t571.
          t573 = 0.
          t574 = t568+t573(t572).
          IF t574 = t570.
            t567 = abap_true.
          ENDIF.
        ENDIF.
        t558 = t567.
      ENDIF.
      t557 = t558.
      IF t558 = abap_false.
        DATA(t575) = VALUE abap_bool( ).
        DATA t576 TYPE string.
        t576 = t16->value.
        DATA(t578) = |TYPE SORTED TABLE OF |.
        DATA(t579) = strlen( t576 ).
        DATA t580 TYPE i.
        DATA(t581) = VALUE i( ).
        DATA(t582) = VALUE string( ).
        t580 = strlen( t578 ).
        IF t580 = 0.
          t575 = abap_true.
        ELSEIF t580 <= t579.
          t581 = 0.
          t582 = t576+t581(t580).
          IF t582 = t578.
            t575 = abap_true.
          ENDIF.
        ENDIF.
        t557 = t575.
      ENDIF.
      t556 = t557.
      IF t557 = abap_false.
        DATA(t583) = VALUE abap_bool( ).
        DATA t584 TYPE string.
        t584 = t16->value.
        DATA(t586) = |TYPE HASHED TABLE OF |.
        DATA(t587) = strlen( t584 ).
        DATA t588 TYPE i.
        DATA(t589) = VALUE i( ).
        DATA(t590) = VALUE string( ).
        t588 = strlen( t586 ).
        IF t588 = 0.
          t583 = abap_true.
        ELSEIF t588 <= t587.
          t589 = 0.
          t590 = t584+t589(t588).
          IF t590 = t586.
            t583 = abap_true.
          ENDIF.
        ENDIF.
        t556 = t583.
      ENDIF.
      IF t556 = abap_true.
        DATA t593 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t594 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t595 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t509 = me->resolve_type_name( i_type_name = t3 i_length = t593 i_decimals_2eed = t594 i_qualified_name = t595 ).
        IF xsdbool( t509 IS BOUND ) = abap_true.
          DATA t603 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          result = NEW zcl_lnt_ty_table_type( i_row_type = t509 i_options = t475 i_qualified_name = t2 i_description = t603 ).
          RETURN.
        ENDIF.
      ELSE.
        DATA(t604) = VALUE abap_bool( ).
        DATA(t605) = VALUE abap_bool( ).
        DATA(t606) = VALUE abap_bool( ).
        DATA(t607) = VALUE abap_bool( ).
        DATA t608 TYPE string.
        t608 = t16->value.
        DATA(t610) = |LIKE TABLE OF |.
        DATA(t611) = strlen( t608 ).
        DATA t612 TYPE i.
        DATA(t613) = VALUE i( ).
        DATA(t614) = VALUE string( ).
        t612 = strlen( t610 ).
        IF t612 = 0.
          t607 = abap_true.
        ELSEIF t612 <= t611.
          t613 = 0.
          t614 = t608+t613(t612).
          IF t614 = t610.
            t607 = abap_true.
          ENDIF.
        ENDIF.
        t606 = t607.
        IF t607 = abap_false.
          DATA(t615) = VALUE abap_bool( ).
          DATA t616 TYPE string.
          t616 = t16->value.
          DATA(t618) = |LIKE STANDARD TABLE OF |.
          DATA(t619) = strlen( t616 ).
          DATA t620 TYPE i.
          DATA(t621) = VALUE i( ).
          DATA(t622) = VALUE string( ).
          t620 = strlen( t618 ).
          IF t620 = 0.
            t615 = abap_true.
          ELSEIF t620 <= t619.
            t621 = 0.
            t622 = t616+t621(t620).
            IF t622 = t618.
              t615 = abap_true.
            ENDIF.
          ENDIF.
          t606 = t615.
        ENDIF.
        t605 = t606.
        IF t606 = abap_false.
          DATA(t623) = VALUE abap_bool( ).
          DATA t624 TYPE string.
          t624 = t16->value.
          DATA(t626) = |LIKE SORTED TABLE OF |.
          DATA(t627) = strlen( t624 ).
          DATA t628 TYPE i.
          DATA(t629) = VALUE i( ).
          DATA(t630) = VALUE string( ).
          t628 = strlen( t626 ).
          IF t628 = 0.
            t623 = abap_true.
          ELSEIF t628 <= t627.
            t629 = 0.
            t630 = t624+t629(t628).
            IF t630 = t626.
              t623 = abap_true.
            ENDIF.
          ENDIF.
          t605 = t623.
        ENDIF.
        t604 = t605.
        IF t605 = abap_false.
          DATA(t631) = VALUE abap_bool( ).
          DATA t632 TYPE string.
          t632 = t16->value.
          DATA(t634) = |LIKE HASHED TABLE OF |.
          DATA(t635) = strlen( t632 ).
          DATA t636 TYPE i.
          DATA(t637) = VALUE i( ).
          DATA(t638) = VALUE string( ).
          t636 = strlen( t634 ).
          IF t636 = 0.
            t631 = abap_true.
          ELSEIF t636 <= t635.
            t637 = 0.
            t638 = t632+t637(t636).
            IF t638 = t634.
              t631 = abap_true.
            ENDIF.
          ENDIF.
          t604 = t631.
        ENDIF.
        IF t604 = abap_true.
          DATA t644 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          t509 = me->resolve_like_name( i_node = t1 i_header_logic = t644 ).
          IF xsdbool( t509 IS BOUND ) = abap_true.
            DATA t652 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            result = NEW zcl_lnt_ty_table_type( i_row_type = t509 i_options = t475 i_qualified_name = t2 i_description = t652 ).
            RETURN.
          ENDIF.
        ELSE.
          DATA(t653) = VALUE abap_bool( ).
          DATA(t654) = VALUE abap_bool( ).
          DATA(t655) = VALUE abap_bool( ).
          DATA t656 TYPE abap_bool.
          DATA t657 TYPE abap_bool.
          t657 = xsdbool( t16->value = |TYPE STANDARD TABLE| ).
          t656 = t657.
          IF t657 = abap_false.
            t656 = xsdbool( t16->value = |TYPE SORTED TABLE| ).
          ENDIF.
          t655 = t656.
          IF t656 = abap_false.
            t655 = xsdbool( t16->value = |TYPE HASHED TABLE| ).
          ENDIF.
          t654 = t655.
          IF t655 = abap_false.
            t654 = xsdbool( t16->value = |TYPE INDEX TABLE| ).
          ENDIF.
          t653 = t654.
          IF t654 = abap_false.
            t653 = xsdbool( t16->value = |TYPE ANY TABLE| ).
          ENDIF.
          IF t653 = abap_true.
            DATA t679 TYPE REF TO zcl_lnt_abstract_type_data.
            DATA t681 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t682 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            result = NEW zcl_lnt_ty_table_type( i_row_type = zcl_lnt_any_type=>get_db65( i_input_967e = t679 ) i_options = t475 i_qualified_name = t681 i_description = t682 ).
            RETURN.
          ELSE.
            DATA(t683) = VALUE abap_bool( ).
            DATA t684 TYPE string.
            t684 = t16->value.
            DATA(t686) = |TYPE RANGE OF |.
            DATA(t687) = strlen( t684 ).
            DATA t688 TYPE i.
            DATA(t689) = VALUE i( ).
            DATA(t690) = VALUE string( ).
            t688 = strlen( t686 ).
            IF t688 = 0.
              t683 = abap_true.
            ELSEIF t688 <= t687.
              t689 = 0.
              t690 = t684+t689(t688).
              IF t690 = t686.
                t683 = abap_true.
              ENDIF.
            ENDIF.
            IF t683 = abap_true.
              DATA(t694) = zlnt_runtime_desc_78196487750d=>zlnt_member_d189_7457e1b1f519.
              DATA t697 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
              DATA t698 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
              DATA t699 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              t509 = me->resolve_type_name( i_type_name = t1->find_first_expression( i_type_9913 = t694 ) i_length = t697 i_decimals_2eed = t698 i_qualified_name = t699 ).
              DATA t703 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              IF xsdbool( t509 IS INITIAL ) = abap_true.
                DATA t709 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                result = NEW zcl_lnt_unknown_type( i_error = |TYPE RANGE OF, could not resolve type| i_qualified_name = t709 ).
                RETURN.
              ENDIF.
              DATA t711 TYPE REF TO zcl_lnt_structure_type.
              DATA t713 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              CREATE OBJECT t713.
              DATA t716 TYPE REF TO zcl_lnt_istructure_component.
              DATA t719 TYPE REF TO zcl_lnt_abstract_type.
              DATA t722 TYPE REF TO zcl_lnt_abstract_type_data.
              t719 = NEW zcl_lnt_character_type( i_length = CONV f( 1 ) i_extra = t722 ).
              DATA t723 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              DATA t725 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              t716 = NEW zcl_lnt_istructure_component( i_name = |sign| i_type_9913 = t719 i_as_include = t723 i_suffix = t725 ).
              CREATE OBJECT t716->zlnt_view_ownkeys_b0e8086400eb.
              t716->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t727 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              t716->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t727 ).
              DATA t728 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              IF t716->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t716->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t728 ).
              ENDIF.
              CREATE OBJECT t716->zlnt_json_ownkeys_70e5fd461788.
              t716->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t730 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              t716->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t730 ).
              DATA t732 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              IF t716->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t716->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t732 ).
              ENDIF.
              t713->load( ).
              APPEND t716 TO t713->items.
              t713->save( ).
              DATA t734 TYPE REF TO zcl_lnt_istructure_component.
              DATA t737 TYPE REF TO zcl_lnt_abstract_type.
              DATA t740 TYPE REF TO zcl_lnt_abstract_type_data.
              t737 = NEW zcl_lnt_character_type( i_length = CONV f( 2 ) i_extra = t740 ).
              DATA t741 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              DATA t743 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              t734 = NEW zcl_lnt_istructure_component( i_name = |option| i_type_9913 = t737 i_as_include = t741 i_suffix = t743 ).
              CREATE OBJECT t734->zlnt_view_ownkeys_b0e8086400eb.
              t734->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t745 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              t734->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t745 ).
              DATA t746 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              IF t734->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t734->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t746 ).
              ENDIF.
              CREATE OBJECT t734->zlnt_json_ownkeys_70e5fd461788.
              t734->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t748 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              t734->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t748 ).
              DATA t750 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              IF t734->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t734->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t750 ).
              ENDIF.
              t713->load( ).
              APPEND t734 TO t713->items.
              t713->save( ).
              DATA t752 TYPE REF TO zcl_lnt_istructure_component.
              DATA t758 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              DATA t760 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              t752 = NEW zcl_lnt_istructure_component( i_name = |low| i_type_9913 = t509 i_as_include = t758 i_suffix = t760 ).
              CREATE OBJECT t752->zlnt_view_ownkeys_b0e8086400eb.
              t752->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t762 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              t752->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t762 ).
              DATA t763 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              IF t752->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t752->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t763 ).
              ENDIF.
              CREATE OBJECT t752->zlnt_json_ownkeys_70e5fd461788.
              t752->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t765 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              t752->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t765 ).
              DATA t767 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              IF t752->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t752->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t767 ).
              ENDIF.
              t713->load( ).
              APPEND t752 TO t713->items.
              t713->save( ).
              DATA t769 TYPE REF TO zcl_lnt_istructure_component.
              DATA t775 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              DATA t777 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              t769 = NEW zcl_lnt_istructure_component( i_name = |high| i_type_9913 = t509 i_as_include = t775 i_suffix = t777 ).
              CREATE OBJECT t769->zlnt_view_ownkeys_b0e8086400eb.
              t769->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t779 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              t769->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t779 ).
              DATA t780 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              IF t769->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t769->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t780 ).
              ENDIF.
              CREATE OBJECT t769->zlnt_json_ownkeys_70e5fd461788.
              t769->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t782 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              t769->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t782 ).
              DATA t784 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              IF t769->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t769->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t784 ).
              ENDIF.
              t713->load( ).
              APPEND t769 TO t713->items.
              t713->save( ).
              DATA t786 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t787 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t788 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              t711 = NEW zcl_lnt_structure_type( i_components = t713 i_qualified_name = t786 i_ddic_name = t787 i_description = t788 ).
              t475->zlnt_view_read_sr_48b89cc62ab9( )->zlnt_view_write_s_5da6216157cf( p0 = |STANDARD| ).
              DATA t797 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              result = NEW zcl_lnt_ty_table_type( i_row_type = t711 i_options = t475 i_qualified_name = t2 i_description = t797 ).
              RETURN.
            ELSE.
              DATA(t798) = VALUE abap_bool( ).
              DATA t799 TYPE string.
              t799 = t16->value.
              DATA(t801) = |LIKE RANGE OF |.
              DATA(t802) = strlen( t799 ).
              DATA t803 TYPE i.
              DATA(t804) = VALUE i( ).
              DATA(t805) = VALUE string( ).
              t803 = strlen( t801 ).
              IF t803 = 0.
                t798 = abap_true.
              ELSEIF t803 <= t802.
                t804 = 0.
                t805 = t799+t804(t803).
                IF t805 = t801.
                  t798 = abap_true.
                ENDIF.
              ENDIF.
              IF t798 = abap_true.
                DATA(t809) = zlnt_runtime_desc_78196487750d=>zlnt_member_d158_bbdd8eb9c28f.
                DATA t812 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                t509 = me->resolve_like_name( i_node = t1->find_first_expression( i_type_9913 = t809 ) i_header_logic = t812 ).
                DATA t816 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                IF xsdbool( t509 IS INITIAL ) = abap_true.
                  DATA t822 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  result = NEW zcl_lnt_unknown_type( i_error = |LIKE RANGE OF, could not resolve type| i_qualified_name = t822 ).
                  RETURN.
                ENDIF.
                DATA t824 TYPE REF TO zcl_lnt_structure_type.
                DATA t826 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                CREATE OBJECT t826.
                DATA t829 TYPE REF TO zcl_lnt_istructure_component.
                DATA t832 TYPE REF TO zcl_lnt_abstract_type.
                DATA t835 TYPE REF TO zcl_lnt_abstract_type_data.
                t832 = NEW zcl_lnt_character_type( i_length = CONV f( 1 ) i_extra = t835 ).
                DATA t836 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                DATA t838 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                t829 = NEW zcl_lnt_istructure_component( i_name = |sign| i_type_9913 = t832 i_as_include = t836 i_suffix = t838 ).
                CREATE OBJECT t829->zlnt_view_ownkeys_b0e8086400eb.
                t829->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t840 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                t829->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t840 ).
                DATA t841 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                IF t829->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t829->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t841 ).
                ENDIF.
                CREATE OBJECT t829->zlnt_json_ownkeys_70e5fd461788.
                t829->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t843 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                t829->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t843 ).
                DATA t845 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                IF t829->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t829->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t845 ).
                ENDIF.
                t826->load( ).
                APPEND t829 TO t826->items.
                t826->save( ).
                DATA t847 TYPE REF TO zcl_lnt_istructure_component.
                DATA t850 TYPE REF TO zcl_lnt_abstract_type.
                DATA t853 TYPE REF TO zcl_lnt_abstract_type_data.
                t850 = NEW zcl_lnt_character_type( i_length = CONV f( 2 ) i_extra = t853 ).
                DATA t854 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                DATA t856 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                t847 = NEW zcl_lnt_istructure_component( i_name = |option| i_type_9913 = t850 i_as_include = t854 i_suffix = t856 ).
                CREATE OBJECT t847->zlnt_view_ownkeys_b0e8086400eb.
                t847->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t858 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                t847->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t858 ).
                DATA t859 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                IF t847->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t847->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t859 ).
                ENDIF.
                CREATE OBJECT t847->zlnt_json_ownkeys_70e5fd461788.
                t847->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t861 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                t847->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t861 ).
                DATA t863 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                IF t847->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t847->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t863 ).
                ENDIF.
                t826->load( ).
                APPEND t847 TO t826->items.
                t826->save( ).
                DATA t865 TYPE REF TO zcl_lnt_istructure_component.
                DATA t871 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                DATA t873 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                t865 = NEW zcl_lnt_istructure_component( i_name = |low| i_type_9913 = t509 i_as_include = t871 i_suffix = t873 ).
                CREATE OBJECT t865->zlnt_view_ownkeys_b0e8086400eb.
                t865->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t875 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                t865->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t875 ).
                DATA t876 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                IF t865->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t865->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t876 ).
                ENDIF.
                CREATE OBJECT t865->zlnt_json_ownkeys_70e5fd461788.
                t865->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t878 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                t865->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t878 ).
                DATA t880 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                IF t865->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t865->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t880 ).
                ENDIF.
                t826->load( ).
                APPEND t865 TO t826->items.
                t826->save( ).
                DATA t882 TYPE REF TO zcl_lnt_istructure_component.
                DATA t888 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
                DATA t890 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                t882 = NEW zcl_lnt_istructure_component( i_name = |high| i_type_9913 = t509 i_as_include = t888 i_suffix = t890 ).
                CREATE OBJECT t882->zlnt_view_ownkeys_b0e8086400eb.
                t882->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t892 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                t882->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t892 ).
                DATA t893 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                IF t882->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t882->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t893 ).
                ENDIF.
                CREATE OBJECT t882->zlnt_json_ownkeys_70e5fd461788.
                t882->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t895 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                t882->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t895 ).
                DATA t897 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                IF t882->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t882->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t897 ).
                ENDIF.
                t826->load( ).
                APPEND t882 TO t826->items.
                t826->save( ).
                DATA t900 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA t901 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                t824 = NEW zcl_lnt_structure_type( i_components = t826 i_qualified_name = t2 i_ddic_name = t900 i_description = t901 ).
                t475->zlnt_view_read_sr_48b89cc62ab9( )->zlnt_view_write_s_5da6216157cf( p0 = |STANDARD| ).
                DATA t909 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA t910 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                result = NEW zcl_lnt_ty_table_type( i_row_type = t824 i_options = t475 i_qualified_name = t909 i_description = t910 ).
                RETURN.
              ELSE.
                DATA t911 TYPE abap_bool.
                DATA t912 TYPE abap_bool.
                t912 = xsdbool( t3 IS BOUND ).
                t911 = t912.
                IF t912 = abap_true.
                  DATA t915 TYPE string.
                  t915 = t16->value.
                  DATA(t918) = VALUE abap_bool( ).
                  DATA(t920) = |TYPE TABLE FOR |.
                  DATA(t921) = strlen( t915 ).
                  DATA t922 TYPE i.
                  DATA(t923) = VALUE i( ).
                  DATA(t924) = VALUE string( ).
                  t922 = strlen( t920 ).
                  IF t922 = 0.
                    t918 = abap_true.
                  ELSEIF t922 <= t921.
                    t923 = 0.
                    t924 = t915+t923(t922).
                    IF t924 = t920.
                      t918 = abap_true.
                    ENDIF.
                  ENDIF.
                  t911 = t918.
                ENDIF.
                IF t911 = abap_true.
                  result = me->rap_table_for( i_entity_name = t3->concat_tokens( ) i_options = t475 ).
                  RETURN.
                ENDIF.
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    result = me->parse_type( i_node = t1 i_qualified_name = t2 ).

  ENDMETHOD.

  METHOD rap_table_for.
    DATA(t1) = i_entity_name.
    DATA(t2) = i_options.
    DATA(t3) = VALUE string( ).
    DATA t5 TYPE string.
    t5 = me->get_rap_base_entity_name( i_name = t1 ).
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t11 TYPE REF TO zcl_lnt_behavior_definition.
    DATA t13 TYPE REF TO zcl_lnt_current_scope.
    t13 = me->input_2fd0->scope.
    DATA t16 TYPE REF TO zcl_lnt_behavior_definition.
    IF xsdbool( t13->parent_obj->get_type( ) <> |CLAS| ) = abap_true.
    ELSE.
      DATA t24 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t26 TYPE REF TO zcl_lnt_info_class_definition.
      DATA t28 TYPE REF TO zcl_lnt_class.
      DATA t29 TYPE REF TO zcl_lnt_class.
      DATA t30 TYPE REF TO zif_lnt_object.
      t30 = t13->parent_obj.
      t29 ?= t30.
      t28 = t29.
      DATA t33 TYPE REF TO zif_lnt_abap_file_information.
      DATA t35 TYPE REF TO zcl_lnt_abap_file.
      t35 = t28->get_main_abap_file( ).
      DATA t38 TYPE REF TO zif_lnt_abap_file_information.
      IF xsdbool( t35 IS INITIAL ) = abap_true.
      ELSE.
        t38 = t35->info.
      ENDIF.
      t33 = t38.
      DATA t48 TYPE REF TO zcl_lnt_info_class_definition.
      IF xsdbool( t33 IS INITIAL ) = abap_true.
      ELSE.
        DATA t53 TYPE REF TO zif_lnt_abap_file_information.
        t53 = t33.
        DATA t55 TYPE string.
        DATA t56 TYPE REF TO zcl_lnt_abstract_object.
        t56 = t28.
        t55 = t56->name.
        t48 = t53->get_class_definition_by_name( i_name = t55 ).
      ENDIF.
      t26 = t48.
      DATA t60 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      IF xsdbool( t26 IS INITIAL ) = abap_true.
      ELSE.
        t60 = t26->behavior_definition_name.
      ENDIF.
      t24 = t60.
      DATA t67 TYPE REF TO zcl_lnt_behavior_definition.
      DATA t69 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t69 = t24.
      DATA t71 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t73) = VALUE abap_bool( ).
      IF t69 IS INITIAL.
        t73 = abap_true.
      ELSEIF t69->has = abap_false.
        t73 = abap_true.
      ENDIF.
      IF t73 = abap_true.
      ELSE.
        DATA t76 TYPE REF TO zcl_lnt_behavior_definition.
        DATA t78 TYPE REF TO zif_lnt_registry.
        t78 = t13->reg.
        DATA t80 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t83) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t83->has = abap_true.
        t83->value = |BDEF|.
        t80 = t83.
        DATA t87 TYPE string.
        t87 = t24->value.
        DATA(t89) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t89->has = abap_true.
        t89->value = t87.
        DATA t91 TYPE REF TO object.
        t91 = t78->get_object( i_type_9913 = t80 i_name = t89 ).
        t76 ?= t91.
        t67 = t76.
      ENDIF.
      t16 = t67.
    ENDIF.
    t11 = t16.
    DATA t92 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t11 IS INITIAL ) = abap_true.
    ELSE.
      t92 = t11->find_entity_name_by_alias( i_alias = t5 ).
    ENDIF.
    t9 = t92.
    DATA(t100) = VALUE string( ).
    DATA(t101) = VALUE abap_bool( ).
    IF t9 IS INITIAL.
      t101 = abap_true.
    ELSEIF t9->has = abap_false.
      t101 = abap_true.
    ENDIF.
    IF t101 = abap_true.
      t100 = t5.
    ELSE.
      t100 = t9->value.
    ENDIF.
    t3 = t100.
    DATA t107 TYPE REF TO zcl_lnt_abstract_type.
    DATA t108 TYPE REF TO zcl_lnt_ilookup_result.
    DATA t110 TYPE REF TO zcl_lnt_ddic.
    DATA t115 TYPE REF TO zif_lnt_registry.
    t115 = me->input_2fd0->scope->reg.
    t110 = NEW zcl_lnt_ddic( i_reg_f149 = t115 ).
    DATA(t120) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t120->has = abap_true.
    t120->value = t3.
    t108 = t110->lookup_ddls( i_name = t120 ).
    DATA t122 TYPE REF TO zcl_lnt_abstract_type.
    IF xsdbool( t108 IS INITIAL ) = abap_true.
    ELSE.
      t122 = t108->zlnt_view_read_sr_9be58e2d4893( ).
    ENDIF.
    t107 = t122.
    IF xsdbool( t107 IS BOUND ) = abap_true.
      DATA t130 TYPE REF TO zcl_lnt_void_type.
      DATA(t134) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t134->has = abap_true.
      t134->value = |RAP-TODO|.
      DATA t136 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t130 = zcl_lnt_void_type=>get_db65( i_voided = t134 i_qualified_name = t136 ).
      DATA t138 TYPE REF TO zcl_lnt_itable_options.
      t138 = t2.
      DATA t140 TYPE REF TO zcl_lnt_itable_options.
      IF xsdbool( t138 IS INITIAL ) = abap_true.
        DATA t143 TYPE REF TO zcl_lnt_itable_options.
        DATA t148 TYPE REF TO zcl_lnt_itable_key.
        DATA t151 TYPE REF TO zcl_lnt_itable_key.
        DATA t158 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        CREATE OBJECT t158.
        t151 = NEW zcl_lnt_itable_key( i_name = |primary_key| i_type_9913 = |STANDARD| i_key_fields = t158 i_is_unique = abap_false ).
        CREATE OBJECT t151->zlnt_view_ownkeys_b0e8086400eb.
        t151->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t151->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t160 ).
        DATA t161 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t151->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t151->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t161 ).
        ENDIF.
        DATA t162 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t151->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t151->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `isUnique` p1 = t162 ).
        ENDIF.
        DATA t163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t151->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t151->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `keyFields` p1 = t163 ).
        ENDIF.
        CREATE OBJECT t151->zlnt_json_ownkeys_70e5fd461788.
        t151->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t165 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t151->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t165 ).
        DATA t167 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t151->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t151->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t167 ).
        ENDIF.
        DATA t169 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t151->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t151->zlnt_json_ownkeys_70e5fd461788->put( p0 = |isUnique| p1 = t169 ).
        ENDIF.
        DATA t171 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t151->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t151->zlnt_json_ownkeys_70e5fd461788->put( p0 = |keyFields| p1 = t171 ).
        ENDIF.
        t148 = t151.
        DATA t173 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t173.
        t143 = NEW zcl_lnt_itable_options( i_with_header = abap_false i_key_type = |USER| i_primary_key = t148 i_secondary = t173 ).
        CREATE OBJECT t143->zlnt_view_ownkeys_b0e8086400eb.
        t143->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t178 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t143->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `withHeader` p1 = t178 ).
        DATA t179 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t143->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t143->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `keyType` p1 = t179 ).
        ENDIF.
        DATA t180 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t143->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t143->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `primaryKey` p1 = t180 ).
        ENDIF.
        DATA t181 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t143->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t143->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `secondary` p1 = t181 ).
        ENDIF.
        CREATE OBJECT t143->zlnt_json_ownkeys_70e5fd461788.
        t143->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t143->zlnt_json_ownkeys_70e5fd461788->put( p0 = |withHeader| p1 = t183 ).
        DATA t185 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t143->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t143->zlnt_json_ownkeys_70e5fd461788->put( p0 = |keyType| p1 = t185 ).
        ENDIF.
        DATA t187 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t143->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t143->zlnt_json_ownkeys_70e5fd461788->put( p0 = |primaryKey| p1 = t187 ).
        ENDIF.
        DATA t189 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t143->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t143->zlnt_json_ownkeys_70e5fd461788->put( p0 = |secondary| p1 = t189 ).
        ENDIF.
        t140 = t143.
      ELSE.
        t140 = t138.
      ENDIF.
      DATA t192 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t193 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      result = NEW zcl_lnt_ty_table_type( i_row_type = t130 i_options = t140 i_qualified_name = t192 i_description = t193 ).
      RETURN.
    ENDIF.
    DATA t195 TYPE string.
    t195 = t1.
    DATA(t197) = VALUE abap_bool( ).
    DATA(t198) = VALUE abap_bool( ).
    DATA(t199) = VALUE i( ).
    DATA(t201) = `\`.
    DATA(t202) = strlen( t195 ).
    IF t201 IS INITIAL.
      t199 = 0.
    ELSE.
      FIND t201 IN t195 MATCH OFFSET t199.
      IF sy-subrc <> 0.
        t199 = -1.
      ENDIF.
    ENDIF.
    t198 = xsdbool( t199 >= 0 ).
    t197 = t198.
    IF t198 = abap_false.
      DATA(t205) = VALUE i( ).
      DATA(t207) = |~|.
      DATA(t208) = strlen( t195 ).
      IF t207 IS INITIAL.
        t205 = 0.
      ELSE.
        FIND t207 IN t195 MATCH OFFSET t205.
        IF sy-subrc <> 0.
          t205 = -1.
        ENDIF.
      ENDIF.
      t197 = xsdbool( t205 >= 0 ).
    ENDIF.
    IF t197 = abap_true.
      DATA(t214) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t214->has = abap_true.
      t214->value = t1.
      DATA t216 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      result = zcl_lnt_void_type=>get_db65( i_voided = t214 i_qualified_name = t216 ).
      RETURN.
    ENDIF.
    DATA t223 TYPE REF TO zcl_lnt_ddic.
    DATA t224 TYPE REF TO zif_lnt_registry.
    t224 = me->input_2fd0->scope->reg.
    t223 = NEW zcl_lnt_ddic( i_reg_f149 = t224 ).
    DATA t226 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t230) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t230->has = abap_true.
    t230->value = t3.
    t226 = t230.
    DATA(t232) = VALUE abap_bool( ).
    DATA t234 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t234 = t226.
    DATA t236 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t238) = VALUE abap_bool( ).
    IF t234 IS INITIAL.
      t238 = abap_true.
    ELSEIF t234->has = abap_false.
      t238 = abap_true.
    ENDIF.
    IF t238 = abap_true.
      t232 = abap_true.
    ELSE.
      DATA t242 TYPE REF TO zif_lnt_registry.
      t242 = t223->reg.
      DATA t244 TYPE string.
      t244 = t226->value.
      t232 = t242->in_error_namespace( i_name = t244 ).
    ENDIF.
    IF t232 = abap_true.
      DATA t248 TYPE string.
      DATA(t249) = |DDLS |.
      DATA(t251) = strlen( t249 ).
      t248 = |{ t249 }{ t3 }|.
      DATA(t253) = strlen( t248 ).
      DATA t254 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      result = NEW zcl_lnt_unknown_type( i_error = |{ t248 }{ | not found| }| i_qualified_name = t254 ).
      RETURN.
    ENDIF.


    DATA(t259) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t259->has = abap_true.
    t259->value = t1.
    DATA t261 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    result = zcl_lnt_void_type=>get_db65( i_voided = t259 i_qualified_name = t261 ).

  ENDMETHOD.

  METHOD parse_type.
    CONSTANTS range_parse_safe_prefix TYPE int8 VALUE '900719925474099'.
    DATA(t1) = i_node.
    DATA(t2) = i_qualified_name.
    DATA t3 TYPE REF TO zcl_lnt_expression_node.
    DATA(t6) = zlnt_runtime_desc_78196487750d=>zlnt_member_d189_7457e1b1f519.
    t3 = t1->find_first_expression( i_type_9913 = t6 ).
    DATA t7 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t9 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t11 TYPE REF TO zcl_lnt_expression_node.
    DATA(t14) = zlnt_runtime_desc_78196487750d=>zlnt_member_d147_5c941cfb7396.
    t11 = t1->find_first_expression( i_type_9913 = t14 ).
    DATA t15 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t11 IS INITIAL ) = abap_true.
    ELSE.
      DATA(t19) = VALUE string( ).
      t19 = t11->concat_tokens( ).
      DATA(t22) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t22->has = abap_true.
      t22->value = t19.
      t15 = t22.
    ENDIF.
    t9 = t15.
    DATA t23 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA(t24) = VALUE abap_bool( ).
    IF t9 IS INITIAL.
      t24 = abap_true.
    ELSEIF t9->has = abap_false.
      t24 = abap_true.
    ENDIF.
    IF t24 = abap_true.
    ELSE.
      DATA(t27) = VALUE string( ).
      DATA(t28) = VALUE string( ).
      t28 = t9->value.
      DATA(t30) = strlen( t28 ).
      t27 = t28.
      IF t27 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t27 TO UPPER CASE.
      ELSE.
        t27 = zlnt_runtime_uppe_91169605024d=>full( t27 ).
      ENDIF.
      DATA(t31) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t31->has = abap_true.
      t31->value = t27.
      t23 = t31.
    ENDIF.
    t7 = t23.
    DATA t33 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t33 = t7.
    DATA t35 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t37) = VALUE abap_bool( ).
    IF t33 IS INITIAL.
      t37 = abap_true.
    ELSEIF t33->has = abap_false.
      t37 = abap_true.
    ENDIF.
    IF t37 = abap_true.
      DATA t40 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t42 TYPE REF TO zcl_lnt_expression_node.
      DATA(t45) = zlnt_runtime_desc_78196487750d=>zlnt_member_d234_68ba21bb5634.
      t42 = t1->find_first_expression( i_type_9913 = t45 ).
      DATA t46 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      IF xsdbool( t42 IS INITIAL ) = abap_true.
      ELSE.
        DATA(t50) = VALUE string( ).
        t50 = t42->concat_tokens( ).
        DATA(t53) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t53->has = abap_true.
        t53->value = t50.
        t46 = t53.
      ENDIF.
      t40 = t46.
      DATA t54 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t55) = VALUE abap_bool( ).
      IF t40 IS INITIAL.
        t55 = abap_true.
      ELSEIF t40->has = abap_false.
        t55 = abap_true.
      ENDIF.
      IF t55 = abap_true.
      ELSE.
        DATA(t58) = VALUE string( ).
        DATA(t59) = VALUE string( ).
        t59 = t40->value.
        DATA(t61) = strlen( t59 ).
        t58 = t59.
        IF t58 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t58 TO UPPER CASE.
        ELSE.
          t58 = zlnt_runtime_uppe_91169605024d=>full( t58 ).
        ENDIF.
        DATA(t62) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t62->has = abap_true.
        t62->value = t58.
        t54 = t62.
      ENDIF.
      t7 = t54.
    ENDIF.
    DATA t64 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t64 = t7.
    DATA t66 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t68) = VALUE abap_bool( ).
    IF t64 IS INITIAL.
      t68 = abap_true.
    ELSEIF t64->has = abap_false.
      t68 = abap_true.
    ENDIF.
    IF t68 = abap_true.
      DATA t71 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t73 TYPE REF TO zcl_lnt_expression_node.
      DATA(t76) = zlnt_runtime_desc_78196487750d=>zlnt_member_d151_c07675a56057.
      t73 = t1->find_first_expression( i_type_9913 = t76 ).
      DATA t77 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      IF xsdbool( t73 IS INITIAL ) = abap_true.
      ELSE.
        DATA(t81) = VALUE string( ).
        t81 = t73->concat_tokens( ).
        DATA(t84) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t84->has = abap_true.
        t84->value = t81.
        t77 = t84.
      ENDIF.
      t71 = t77.
      DATA t85 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t86) = VALUE abap_bool( ).
      IF t71 IS INITIAL.
        t86 = abap_true.
      ELSEIF t71->has = abap_false.
        t86 = abap_true.
      ENDIF.
      IF t86 = abap_true.
      ELSE.
        DATA(t89) = VALUE string( ).
        DATA(t90) = VALUE string( ).
        t90 = t71->value.
        DATA(t92) = strlen( t90 ).
        t89 = t90.
        IF t89 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t89 TO UPPER CASE.
        ELSE.
          t89 = zlnt_runtime_uppe_91169605024d=>full( t89 ).
        ENDIF.
        DATA(t93) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t93->has = abap_true.
        t93->value = t89.
        t85 = t93.
      ENDIF.
      t7 = t85.
      DATA(t94) = VALUE abap_bool( ).
      DATA(t95) = VALUE abap_bool( ).
      DATA t96 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA t97 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t97 = t7.
      DATA t99 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA(t100) = VALUE abap_bool( ).
      IF t97 IS INITIAL.
        t100 = abap_true.
      ELSEIF t97->has = abap_false.
        t100 = abap_true.
      ENDIF.
      IF t100 = abap_true.
      ELSE.
        DATA(t103) = VALUE abap_bool( ).
        DATA(t104) = VALUE string( ).
        t104 = t97->value.
        DATA(t106) = |TYPE|.
        DATA(t107) = strlen( t104 ).
        DATA(t108) = VALUE i( ).
        DATA(t109) = VALUE i( ).
        DATA(t110) = VALUE string( ).
        t108 = strlen( t106 ).
        IF t108 = 0.
          t103 = abap_true.
        ELSEIF t108 <= t107.
          t109 = 0.
          t110 = t104+t109(t108).
          IF t110 = t106.
            t103 = abap_true.
          ENDIF.
        ENDIF.
        DATA(t111) = NEW zlnt_runtime_opti_7f2541396f43( ).
        t111->has = abap_true.
        t111->value = t103.
        t99 = t111.
      ENDIF.
      t96 = t99.
      DATA t112 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      DATA(t115) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t115->has = abap_true.
      t115->value = abap_false.
      t112 = t115.
      DATA(t117) = VALUE abap_bool( ).
      DATA(t118) = VALUE abap_bool( ).
      IF t96 IS BOUND.
        t117 = t96->has.
      ENDIF.
      IF t112 IS BOUND.
        t118 = t112->has.
      ENDIF.
      IF t117 = t118.
        IF t117 = abap_false.
          t95 = abap_true.
        ELSEIF t96->value = t112->value.
          t95 = abap_true.
        ENDIF.
      ENDIF.
      t94 = t95.
      IF t95 = abap_true.
        DATA(t120) = VALUE abap_bool( ).
        DATA(t121) = VALUE string( ).
        t121 = t7->value.
        DATA(t123) = |LIKE|.
        DATA(t124) = strlen( t121 ).
        DATA(t125) = VALUE i( ).
        DATA(t126) = VALUE i( ).
        DATA(t127) = VALUE string( ).
        t125 = strlen( t123 ).
        IF t125 = 0.
          t120 = abap_true.
        ELSEIF t125 <= t124.
          t126 = 0.
          t127 = t121+t126(t125).
          IF t127 = t123.
            t120 = abap_true.
          ENDIF.
        ENDIF.
        t94 = xsdbool( t120 = abap_false ).
      ENDIF.
      IF t94 = abap_true.
        DATA(t132) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t132->has = abap_true.
        t132->value = |TYPE|.
        t7 = t132.
      ENDIF.
    ENDIF.
    DATA t135 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t135 = t7.
    DATA t137 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t139) = VALUE abap_bool( ).
    IF t135 IS INITIAL.
      t139 = abap_true.
    ELSEIF t135->has = abap_false.
      t139 = abap_true.
    ENDIF.
    IF t139 = abap_true.
      DATA t142 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t144 TYPE REF TO zcl_lnt_expression_node.
      DATA(t147) = zlnt_runtime_desc_78196487750d=>zlnt_member_d153_a3333d63766c.
      t144 = t1->find_first_expression( i_type_9913 = t147 ).
      DATA t148 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      IF xsdbool( t144 IS INITIAL ) = abap_true.
      ELSE.
        DATA(t152) = VALUE string( ).
        t152 = t144->concat_tokens( ).
        DATA(t155) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t155->has = abap_true.
        t155->value = t152.
        t148 = t155.
      ENDIF.
      t142 = t148.
      DATA t156 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t157) = VALUE abap_bool( ).
      IF t142 IS INITIAL.
        t157 = abap_true.
      ELSEIF t142->has = abap_false.
        t157 = abap_true.
      ENDIF.
      IF t157 = abap_true.
      ELSE.
        DATA(t160) = VALUE string( ).
        DATA(t161) = VALUE string( ).
        t161 = t142->value.
        DATA(t163) = strlen( t161 ).
        t160 = t161.
        IF t160 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t160 TO UPPER CASE.
        ELSE.
          t160 = zlnt_runtime_uppe_91169605024d=>full( t160 ).
        ENDIF.
        DATA(t164) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t164->has = abap_true.
        t164->value = t160.
        t156 = t164.
      ENDIF.
      t7 = t156.
    ENDIF.
    DATA t166 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t166 = t7.
    DATA t168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t170) = VALUE abap_bool( ).
    IF t166 IS INITIAL.
      t170 = abap_true.
    ELSEIF t166->has = abap_false.
      t170 = abap_true.
    ENDIF.
    IF t170 = abap_true.
      DATA t173 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t175 TYPE REF TO zcl_lnt_expression_node.
      DATA(t178) = zlnt_runtime_desc_78196487750d=>zlnt_member_d188_0b071dbb03a9.
      t175 = t1->find_first_expression( i_type_9913 = t178 ).
      DATA t179 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      IF xsdbool( t175 IS INITIAL ) = abap_true.
      ELSE.
        DATA(t183) = VALUE string( ).
        t183 = t175->concat_tokens( ).
        DATA(t186) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t186->has = abap_true.
        t186->value = t183.
        t179 = t186.
      ENDIF.
      t173 = t179.
      DATA t187 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t188) = VALUE abap_bool( ).
      IF t173 IS INITIAL.
        t188 = abap_true.
      ELSEIF t173->has = abap_false.
        t188 = abap_true.
      ENDIF.
      IF t188 = abap_true.
      ELSE.
        DATA(t191) = VALUE string( ).
        DATA(t192) = VALUE string( ).
        t192 = t173->value.
        DATA(t194) = strlen( t192 ).
        t191 = t192.
        IF t191 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t191 TO UPPER CASE.
        ELSE.
          t191 = zlnt_runtime_uppe_91169605024d=>full( t191 ).
        ENDIF.
        DATA(t195) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t195->has = abap_true.
        t195->value = t191.
        t187 = t195.
      ENDIF.
      t7 = t187.
    ENDIF.
    DATA(t196) = VALUE abap_bool( ).
    DATA(t197) = VALUE abap_bool( ).
    DATA(t198) = VALUE abap_bool( ).
    DATA t199 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t199 = t7.
    DATA t201 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t203) = VALUE abap_bool( ).
    IF t199 IS INITIAL.
      t203 = abap_true.
    ELSEIF t199->has = abap_false.
      t203 = abap_true.
    ENDIF.
    t198 = t203.
    t197 = t198.
    IF t198 = abap_true.
      DATA t206 TYPE REF TO object.
      t206 = t1->get_db65( ).
      t197 = xsdbool( t206 IS BOUND AND t206 IS INSTANCE OF zcl_lnt_st_parameter ).
    ENDIF.
    t196 = t197.
    IF t197 = abap_true.
      DATA t209 TYPE REF TO zcl_lnt_abstract_token.
      t209 = t1->find_direct_token_by_text( i_text = |LIKE| ).
      t196 = xsdbool( t209 IS BOUND ).
    ENDIF.
    IF t196 = abap_true.
      DATA(t214) = VALUE string( ).
      DATA(t215) = |LIKE |.
      DATA(t216) = VALUE string( ).
      DATA t217 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t219 TYPE REF TO zcl_lnt_expression_node.
      t219 = t3.
      DATA t221 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      IF xsdbool( t219 IS INITIAL ) = abap_true.
      ELSE.
        DATA(t225) = VALUE string( ).
        t225 = t219->concat_tokens( ).
        DATA(t228) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t228->has = abap_true.
        t228->value = t225.
        t221 = t228.
      ENDIF.
      t217 = t221.
      DATA(t229) = VALUE string( ).
      DATA(t230) = VALUE abap_bool( ).
      IF t217 IS INITIAL.
        t230 = abap_true.
      ELSEIF t217->has = abap_false.
        t230 = abap_true.
      ENDIF.
      IF t230 = abap_true.
        t229 = |undefined|.
      ELSE.
        t229 = t217->value.
      ENDIF.
      t216 = t229.
      DATA(t235) = strlen( t215 ).
      t214 = |{ t215 }{ t216 }|.
      DATA(t236) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t236->has = abap_true.
      t236->value = t214.
      t7 = t236.
    ENDIF.
    DATA t239 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t239 = t7.
    DATA t241 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t243) = VALUE abap_bool( ).
    IF t239 IS INITIAL.
      t243 = abap_true.
    ELSEIF t239->has = abap_false.
      t243 = abap_true.
    ENDIF.
    IF t243 = abap_true.
      DATA(t248) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t248->has = abap_true.
      t248->value = |TYPE|.
      t7 = t248.
    ENDIF.
    DATA t250 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t253) = VALUE string( ).
    t253 = t7->value.
    DATA(t256) = VALUE abap_bool( ).
    DATA(t257) = VALUE abap_bool( ).
    DATA(t258) = VALUE abap_bool( ).
    DATA(t260) = |TYPE STRUCTURE FOR |.
    DATA(t261) = strlen( t253 ).
    DATA(t262) = VALUE i( ).
    DATA(t263) = VALUE i( ).
    DATA(t264) = VALUE string( ).
    t262 = strlen( t260 ).
    IF t262 = 0.
      t258 = abap_true.
    ELSEIF t262 <= t261.
      t263 = 0.
      t264 = t253+t263(t262).
      IF t264 = t260.
        t258 = abap_true.
      ENDIF.
    ENDIF.
    t257 = t258.
    IF t258 = abap_false.
      DATA(t265) = VALUE abap_bool( ).
      DATA(t267) = |TYPE RESPONSE FOR |.
      DATA(t268) = strlen( t253 ).
      DATA(t269) = VALUE i( ).
      DATA(t270) = VALUE i( ).
      DATA(t271) = VALUE string( ).
      t269 = strlen( t267 ).
      IF t269 = 0.
        t265 = abap_true.
      ELSEIF t269 <= t268.
        t270 = 0.
        t271 = t253+t270(t269).
        IF t271 = t267.
          t265 = abap_true.
        ENDIF.
      ENDIF.
      t257 = t265.
    ENDIF.
    t256 = t257.
    IF t257 = abap_false.
      DATA(t272) = VALUE abap_bool( ).
      DATA(t274) = |TYPE REQUEST FOR |.
      DATA(t275) = strlen( t253 ).
      DATA(t276) = VALUE i( ).
      DATA(t277) = VALUE i( ).
      DATA(t278) = VALUE string( ).
      t276 = strlen( t274 ).
      IF t276 = 0.
        t272 = abap_true.
      ELSEIF t276 <= t275.
        t277 = 0.
        t278 = t253+t277(t276).
        IF t278 = t274.
          t272 = abap_true.
        ENDIF.
      ENDIF.
      t256 = t272.
    ENDIF.
    IF t256 = abap_true.
      DATA t281 TYPE REF TO zcl_lnt_expression_node.
      DATA(t284) = zlnt_runtime_desc_78196487750d=>zlnt_member_d153_a3333d63766c.
      t281 = t1->find_first_expression( i_type_9913 = t284 ).
      DATA t285 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      IF xsdbool( t281 IS INITIAL ) = abap_true.
      ELSE.
        DATA(t289) = VALUE string( ).
        t289 = t281->concat_tokens( ).
        DATA(t292) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t292->has = abap_true.
        t292->value = t289.
        t285 = t292.
      ENDIF.
      DATA t293 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      result = zcl_lnt_void_type=>get_db65( i_voided = t285 i_qualified_name = t293 ).
      RETURN.
    ENDIF.
    DATA(t294) = VALUE abap_bool( ).
    DATA(t295) = VALUE string( ).
    t295 = t7->value.
    DATA(t297) = |LIKE LINE OF |.
    DATA(t298) = strlen( t295 ).
    DATA(t299) = VALUE i( ).
    DATA(t300) = VALUE i( ).
    DATA(t301) = VALUE string( ).
    t299 = strlen( t297 ).
    IF t299 = 0.
      t294 = abap_true.
    ELSEIF t299 <= t298.
      t300 = 0.
      t301 = t295+t300(t299).
      IF t301 = t297.
        t294 = abap_true.
      ENDIF.
    ENDIF.
    IF t294 = abap_true.
      DATA t302 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t304 TYPE REF TO zcl_lnt_expression_node.
      DATA(t307) = zlnt_runtime_desc_78196487750d=>zlnt_member_d158_bbdd8eb9c28f.
      t304 = t1->find_first_expression( i_type_9913 = t307 ).
      DATA t308 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      IF xsdbool( t304 IS INITIAL ) = abap_true.
      ELSE.
        DATA(t312) = VALUE string( ).
        t312 = t304->concat_tokens( ).
        DATA(t315) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t315->has = abap_true.
        t315->value = t312.
        t308 = t315.
      ENDIF.
      t302 = t308.
      DATA t316 TYPE REF TO zcl_lnt_expression_node.
      DATA(t319) = zlnt_runtime_desc_78196487750d=>zlnt_member_d147_5c941cfb7396.
      t316 = t1->find_first_expression( i_type_9913 = t319 ).
      DATA t323 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF xsdbool( t316 IS INITIAL ) = abap_true.
        DATA(t329) = zlnt_runtime_desc_78196487750d=>zlnt_member_d188_0b071dbb03a9.
        t316 = t1->find_first_expression( i_type_9913 = t329 ).
      ENDIF.
      DATA t333 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF xsdbool( t316 IS INITIAL ) = abap_true.
        DATA(t339) = zlnt_runtime_desc_78196487750d=>zlnt_member_d158_bbdd8eb9c28f.
        t316 = t1->find_first_expression( i_type_9913 = t339 ).
      ENDIF.
      DATA t343 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF xsdbool( t316 IS INITIAL ) = abap_true.
        t316 = t3.
        DATA t349 TYPE REF TO zcl_lnt_expression_node.
        t349 = t3.
        DATA t351 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        IF xsdbool( t349 IS INITIAL ) = abap_true.
        ELSE.
          DATA(t355) = VALUE string( ).
          t355 = t349->concat_tokens( ).
          DATA(t358) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t358->has = abap_true.
          t358->value = t355.
          t351 = t358.
        ENDIF.
        t302 = t351.
      ENDIF.
      DATA t359 TYPE REF TO zcl_lnt_abstract_type.
      DATA(t365) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t365->has = abap_true.
      t365->value = abap_false.
      t359 = me->resolve_like_name( i_node = t316 i_header_logic = t365 ).
      DATA t367 TYPE REF TO zcl_lnt_abstract_type.
      DATA t372 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF xsdbool( t359 IS INITIAL ) = abap_true.
        DATA(t378) = VALUE string( ).
        DATA(t379) = |Type error, could not resolve "|.
        DATA(t380) = VALUE string( ).
        DATA t381 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t381 = t302.
        DATA(t383) = VALUE string( ).
        DATA(t384) = VALUE abap_bool( ).
        IF t381 IS INITIAL.
          t384 = abap_true.
        ELSEIF t381->has = abap_false.
          t384 = abap_true.
        ENDIF.
        IF t384 = abap_true.
          t383 = |undefined|.
        ELSE.
          t383 = t381->value.
        ENDIF.
        t380 = t383.
        DATA(t389) = strlen( t379 ).
        t378 = |{ t379 }{ t380 }|.
        DATA(t391) = strlen( t378 ).
        DATA t392 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        result = NEW zcl_lnt_unknown_type( i_error = |{ t378 }{ |", parseType| }| i_qualified_name = t392 ).
        RETURN.
      ELSE.
        IF xsdbool( t359 IS BOUND AND t359 IS INSTANCE OF zcl_lnt_ty_table_type ) = abap_true.
          DATA t399 TYPE REF TO zcl_lnt_ty_table_type.
          t399 ?= t359.
          t367 = t399->row_type.
        ELSE.
          IF xsdbool( t359 IS BOUND AND t359 IS INSTANCE OF zcl_lnt_void_type ) = abap_true.
            DATA t406 TYPE REF TO zcl_lnt_void_type.
            t406 ?= t359.
            t367 = t406.
          ELSE.
            DATA(t410) = |Type error, not a table type |.
            DATA(t411) = VALUE string( ).
            DATA t412 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            t412 = t302.
            DATA(t414) = VALUE string( ).
            DATA(t415) = VALUE abap_bool( ).
            IF t412 IS INITIAL.
              t415 = abap_true.
            ELSEIF t412->has = abap_false.
              t415 = abap_true.
            ENDIF.
            IF t415 = abap_true.
              t414 = |undefined|.
            ELSE.
              t414 = t412->value.
            ENDIF.
            t411 = t414.
            DATA(t420) = strlen( t410 ).
            DATA t421 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            result = NEW zcl_lnt_unknown_type( i_error = |{ t410 }{ t411 }| i_qualified_name = t421 ).
            RETURN.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t423 TYPE REF TO zif_lnt_union_bb14dc41.
      t423 = t1.
      DATA(t425) = VALUE abap_bool( ).
      DATA t427 TYPE REF TO zcl_lnt_abstract_token.
      t427 = t423->find_direct_token_by_text( i_text = |OCCURS| ).
      IF xsdbool( t427 IS BOUND ) = abap_true.
        t425 = abap_true.
      ELSE.
        DATA(t431) = VALUE abap_bool( ).
        DATA t433 TYPE REF TO zcl_lnt_abstract_token.
        DATA t434 TYPE REF TO zcl_lnt_expression_node.
        DATA(t437) = zlnt_runtime_desc_78196487750d=>zlnt_member_d151_c07675a56057.
        t434 = t423->find_first_expression( i_type_9913 = t437 ).
        DATA t438 TYPE REF TO zcl_lnt_abstract_token.
        IF xsdbool( t434 IS INITIAL ) = abap_true.
        ELSE.
          t438 = t434->find_direct_token_by_text( i_text = |OCCURS| ).
        ENDIF.
        t433 = t438.
        IF xsdbool( t433 IS BOUND ) = abap_true.
          t431 = abap_true.
        ELSE.
          t431 = abap_false.
        ENDIF.
        t425 = t431.
      ENDIF.
      IF t425 = abap_true.
        DATA t449 TYPE REF TO zcl_lnt_abstract_type.
        t449 = t367.
        DATA t451 TYPE REF TO zcl_lnt_itable_options.
        DATA(t454) = VALUE i( ).
        DATA(t455) = VALUE string( ).
        t455 = t7->value.
        DATA(t457) = | WITH HEADER LINE|.
        DATA(t458) = strlen( t455 ).
        IF t457 IS INITIAL.
          t454 = 0.
        ELSE.
          FIND t457 IN t455 MATCH OFFSET t454.
          IF sy-subrc <> 0.
            t454 = -1.
          ENDIF.
        ENDIF.
        DATA t462 TYPE REF TO zcl_lnt_itable_key.
        DATA t464 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t451 = NEW zcl_lnt_itable_options( i_with_header = xsdbool( t454 >= 0 ) i_key_type = |DEFAULT| i_primary_key = t462 i_secondary = t464 ).
        CREATE OBJECT t451->zlnt_view_ownkeys_b0e8086400eb.
        t451->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t466 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t451->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `withHeader` p1 = t466 ).
        DATA t467 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t451->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t451->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `keyType` p1 = t467 ).
        ENDIF.
        CREATE OBJECT t451->zlnt_json_ownkeys_70e5fd461788.
        t451->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t469 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t451->zlnt_json_ownkeys_70e5fd461788->put( p0 = |withHeader| p1 = t469 ).
        DATA t471 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t451->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t451->zlnt_json_ownkeys_70e5fd461788->put( p0 = |keyType| p1 = t471 ).
        ENDIF.
        DATA t473 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        result = NEW zcl_lnt_ty_table_type( i_row_type = t449 i_options = t451 i_qualified_name = t2 i_description = t473 ).
        RETURN.
      ENDIF.
      result = t367.
      RETURN.
    ENDIF.
    DATA(t479) = VALUE abap_bool( ).
    DATA(t480) = VALUE string( ).
    t480 = t7->value.
    DATA(t482) = |LIKE REF TO |.
    DATA(t483) = strlen( t480 ).
    DATA(t484) = VALUE i( ).
    DATA(t485) = VALUE i( ).
    DATA(t486) = VALUE string( ).
    t484 = strlen( t482 ).
    IF t484 = 0.
      t479 = abap_true.
    ELSEIF t484 <= t483.
      t485 = 0.
      t486 = t480+t485(t484).
      IF t486 = t482.
        t479 = abap_true.
      ENDIF.
    ENDIF.
    IF t479 = abap_true.
      DATA t487 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t489 TYPE REF TO zcl_lnt_expression_node.
      DATA(t492) = zlnt_runtime_desc_78196487750d=>zlnt_member_d158_bbdd8eb9c28f.
      t489 = t1->find_first_expression( i_type_9913 = t492 ).
      DATA t493 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      IF xsdbool( t489 IS INITIAL ) = abap_true.
      ELSE.
        DATA(t497) = VALUE string( ).
        t497 = t489->concat_tokens( ).
        DATA(t500) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t500->has = abap_true.
        t500->value = t497.
        t493 = t500.
      ENDIF.
      t487 = t493.
      DATA t501 TYPE REF TO zcl_lnt_abstract_type.
      DATA t503 TYPE REF TO zcl_lnt_expression_node.
      DATA(t505) = zlnt_runtime_desc_78196487750d=>zlnt_member_d147_5c941cfb7396.
      t503 = t1->find_first_expression( i_type_9913 = t505 ).
      DATA(t509) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t509->has = abap_true.
      t509->value = abap_false.
      t501 = me->resolve_like_name( i_node = t503 i_header_logic = t509 ).
      DATA t514 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF xsdbool( t501 IS INITIAL ) = abap_true.
        DATA(t520) = VALUE string( ).
        DATA(t521) = |Type error, could not resolve "|.
        DATA(t522) = VALUE string( ).
        DATA t523 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t523 = t487.
        DATA(t525) = VALUE string( ).
        DATA(t526) = VALUE abap_bool( ).
        IF t523 IS INITIAL.
          t526 = abap_true.
        ELSEIF t523->has = abap_false.
          t526 = abap_true.
        ENDIF.
        IF t526 = abap_true.
          t525 = |undefined|.
        ELSE.
          t525 = t523->value.
        ENDIF.
        t522 = t525.
        DATA(t531) = strlen( t521 ).
        t520 = |{ t521 }{ t522 }|.
        DATA(t533) = strlen( t520 ).
        DATA t534 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        result = NEW zcl_lnt_unknown_type( i_error = |{ t520 }{ |", parseType| }| i_qualified_name = t534 ).
        RETURN.
      ENDIF.
      result = NEW zcl_lnt_data_reference( i_type_9913 = t501 i_qualified_name = t487 ).
      RETURN.
    ENDIF.
    DATA(t539) = VALUE abap_bool( ).
    DATA(t540) = VALUE abap_bool( ).
    DATA(t541) = VALUE abap_bool( ).
    DATA(t542) = VALUE abap_bool( ).
    DATA(t543) = VALUE abap_bool( ).
    t543 = xsdbool( t7->value = |TYPE STANDARD TABLE| ).
    t542 = t543.
    IF t543 = abap_false.
      t542 = xsdbool( t7->value = |TYPE SORTED TABLE| ).
    ENDIF.
    t541 = t542.
    IF t542 = abap_false.
      t541 = xsdbool( t7->value = |TYPE HASHED TABLE| ).
    ENDIF.
    t540 = t541.
    IF t541 = abap_false.
      t540 = xsdbool( t7->value = |TYPE INDEX TABLE| ).
    ENDIF.
    t539 = t540.
    IF t540 = abap_false.
      t539 = xsdbool( t7->value = |TYPE ANY TABLE| ).
    ENDIF.
    IF t539 = abap_true.
      DATA t564 TYPE REF TO zcl_lnt_any_type.
      DATA t565 TYPE REF TO zcl_lnt_abstract_type_data.
      t564 = zcl_lnt_any_type=>get_db65( i_input_967e = t565 ).
      DATA t566 TYPE REF TO zcl_lnt_itable_options.
      DATA(t569) = VALUE i( ).
      DATA(t570) = VALUE string( ).
      DATA(t571) = VALUE string( ).
      t571 = t1->concat_tokens( ).
      DATA(t573) = strlen( t571 ).
      t570 = t571.
      IF t570 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t570 TO UPPER CASE.
      ELSE.
        t570 = zlnt_runtime_uppe_91169605024d=>full( t570 ).
      ENDIF.
      DATA(t574) = |WITH HEADER LINE|.
      DATA(t575) = strlen( t570 ).
      IF t574 IS INITIAL.
        t569 = 0.
      ELSE.
        FIND t574 IN t570 MATCH OFFSET t569.
        IF sy-subrc <> 0.
          t569 = -1.
        ENDIF.
      ENDIF.
      DATA t579 TYPE REF TO zcl_lnt_itable_key.
      DATA t581 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      t566 = NEW zcl_lnt_itable_options( i_with_header = xsdbool( t569 >= 0 ) i_key_type = |USER| i_primary_key = t579 i_secondary = t581 ).
      CREATE OBJECT t566->zlnt_view_ownkeys_b0e8086400eb.
      t566->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t583 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t566->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `withHeader` p1 = t583 ).
      DATA t584 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t566->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
        t566->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `keyType` p1 = t584 ).
      ENDIF.
      CREATE OBJECT t566->zlnt_json_ownkeys_70e5fd461788.
      t566->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
      DATA t586 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t566->zlnt_json_ownkeys_70e5fd461788->put( p0 = |withHeader| p1 = t586 ).
      DATA t588 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t566->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
        t566->zlnt_json_ownkeys_70e5fd461788->put( p0 = |keyType| p1 = t588 ).
      ENDIF.
      DATA t589 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t590 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      result = NEW zcl_lnt_ty_table_type( i_row_type = t564 i_options = t566 i_qualified_name = t589 i_description = t590 ).
      RETURN.
    ENDIF.
    DATA(t591) = VALUE abap_bool( ).
    DATA(t592) = VALUE string( ).
    t592 = t7->value.
    DATA(t594) = |LIKE |.
    DATA(t595) = strlen( t592 ).
    DATA(t596) = VALUE i( ).
    DATA(t597) = VALUE i( ).
    DATA(t598) = VALUE string( ).
    t596 = strlen( t594 ).
    IF t596 = 0.
      t591 = abap_true.
    ELSEIF t596 <= t595.
      t597 = 0.
      t598 = t592+t597(t596).
      IF t598 = t594.
        t591 = abap_true.
      ENDIF.
    ENDIF.
    IF t591 = abap_true.
      DATA t599 TYPE REF TO zcl_lnt_expression_node.
      DATA(t602) = zlnt_runtime_desc_78196487750d=>zlnt_member_d147_5c941cfb7396.
      t599 = t1->find_first_expression( i_type_9913 = t602 ).
      DATA t606 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF xsdbool( t599 IS INITIAL ) = abap_true.
        DATA(t612) = zlnt_runtime_desc_78196487750d=>zlnt_member_d188_0b071dbb03a9.
        t599 = t1->find_first_expression( i_type_9913 = t612 ).
      ENDIF.
      DATA t616 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF xsdbool( t599 IS INITIAL ) = abap_true.
        DATA(t622) = zlnt_runtime_desc_78196487750d=>zlnt_member_d234_68ba21bb5634.
        t599 = t1->find_first_expression( i_type_9913 = t622 ).
      ENDIF.
      DATA t626 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF xsdbool( t599 IS INITIAL ) = abap_true.
        DATA(t632) = zlnt_runtime_desc_78196487750d=>zlnt_member_d189_7457e1b1f519.
        t599 = t1->find_first_expression( i_type_9913 = t632 ).
      ENDIF.
      DATA t636 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF xsdbool( t599 IS INITIAL ) = abap_true.
        DATA(t642) = zlnt_runtime_desc_78196487750d=>zlnt_member_d158_bbdd8eb9c28f.
        t599 = t1->find_first_expression( i_type_9913 = t642 ).
      ENDIF.
      DATA t645 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
      t250 = me->resolve_like_name( i_node = t599 i_header_logic = t645 ).
      DATA(t646) = VALUE abap_bool( ).
      DATA(t647) = VALUE abap_bool( ).
      t647 = xsdbool( t250 IS BOUND ).
      t646 = t647.
      IF t647 = abap_true.
        DATA t650 TYPE REF TO zif_lnt_union_bb14dc41.
        t650 = t1.
        DATA(t652) = VALUE abap_bool( ).
        DATA t654 TYPE REF TO zcl_lnt_abstract_token.
        t654 = t650->find_direct_token_by_text( i_text = |OCCURS| ).
        IF xsdbool( t654 IS BOUND ) = abap_true.
          t652 = abap_true.
        ELSE.
          DATA(t658) = VALUE abap_bool( ).
          DATA t660 TYPE REF TO zcl_lnt_abstract_token.
          DATA t661 TYPE REF TO zcl_lnt_expression_node.
          DATA(t664) = zlnt_runtime_desc_78196487750d=>zlnt_member_d151_c07675a56057.
          t661 = t650->find_first_expression( i_type_9913 = t664 ).
          DATA t665 TYPE REF TO zcl_lnt_abstract_token.
          IF xsdbool( t661 IS INITIAL ) = abap_true.
          ELSE.
            t665 = t661->find_direct_token_by_text( i_text = |OCCURS| ).
          ENDIF.
          t660 = t665.
          IF xsdbool( t660 IS BOUND ) = abap_true.
            t658 = abap_true.
          ELSE.
            t658 = abap_false.
          ENDIF.
          t652 = t658.
        ENDIF.
        t646 = t652.
      ENDIF.
      IF t646 = abap_true.
        DATA t676 TYPE REF TO zcl_lnt_abstract_type.
        t676 = t250.
        DATA t678 TYPE REF TO zcl_lnt_itable_options.
        DATA(t681) = VALUE i( ).
        DATA(t682) = VALUE string( ).
        t682 = t7->value.
        DATA(t684) = |WITH HEADER LINE|.
        DATA(t685) = strlen( t682 ).
        IF t684 IS INITIAL.
          t681 = 0.
        ELSE.
          FIND t684 IN t682 MATCH OFFSET t681.
          IF sy-subrc <> 0.
            t681 = -1.
          ENDIF.
        ENDIF.
        DATA t689 TYPE REF TO zcl_lnt_itable_key.
        DATA t691 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t678 = NEW zcl_lnt_itable_options( i_with_header = xsdbool( t681 >= 0 ) i_key_type = |DEFAULT| i_primary_key = t689 i_secondary = t691 ).
        CREATE OBJECT t678->zlnt_view_ownkeys_b0e8086400eb.
        t678->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t693 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t678->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `withHeader` p1 = t693 ).
        DATA t694 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t678->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t678->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `keyType` p1 = t694 ).
        ENDIF.
        CREATE OBJECT t678->zlnt_json_ownkeys_70e5fd461788.
        t678->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t696 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t678->zlnt_json_ownkeys_70e5fd461788->put( p0 = |withHeader| p1 = t696 ).
        DATA t698 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t678->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t678->zlnt_json_ownkeys_70e5fd461788->put( p0 = |keyType| p1 = t698 ).
        ENDIF.
        DATA t700 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t250 = NEW zcl_lnt_ty_table_type( i_row_type = t676 i_options = t678 i_qualified_name = t2 i_description = t700 ).
      ELSE.
        DATA(t701) = VALUE abap_bool( ).
        DATA(t702) = VALUE abap_bool( ).
        DATA(t703) = VALUE string( ).
        t703 = t7->value.
        DATA(t705) = | WITH HEADER LINE|.
        DATA(t706) = strlen( t703 ).
        DATA(t707) = VALUE i( ).
        DATA(t708) = VALUE i( ).
        DATA(t709) = VALUE string( ).
        t707 = strlen( t705 ).
        IF t707 = 0.
          t702 = abap_true.
        ELSEIF t707 <= t706.
          t708 = 0.
          t708 = t706 - t707.
          t709 = t703+t708(t707).
          IF t709 = t705.
            t702 = abap_true.
          ENDIF.
        ENDIF.
        t701 = t702.
        IF t702 = abap_true.
          DATA(t711) = t250.
          t701 = xsdbool( t711 IS BOUND AND t711 IS INSTANCE OF zcl_lnt_ty_table_type ).
        ENDIF.
        IF t701 = abap_true.
          DATA t713 TYPE REF TO zcl_lnt_abstract_type.
          DATA t715 TYPE REF TO zcl_lnt_ty_table_type.
          t715 ?= t250.
          t713 = t715->row_type.
          DATA t719 TYPE REF TO zcl_lnt_itable_options.
          DATA t724 TYPE REF TO zcl_lnt_itable_key.
          DATA t726 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
          t719 = NEW zcl_lnt_itable_options( i_with_header = abap_true i_key_type = |DEFAULT| i_primary_key = t724 i_secondary = t726 ).
          CREATE OBJECT t719->zlnt_view_ownkeys_b0e8086400eb.
          t719->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t728 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t719->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `withHeader` p1 = t728 ).
          DATA t729 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t719->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
            t719->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `keyType` p1 = t729 ).
          ENDIF.
          CREATE OBJECT t719->zlnt_json_ownkeys_70e5fd461788.
          t719->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t731 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t719->zlnt_json_ownkeys_70e5fd461788->put( p0 = |withHeader| p1 = t731 ).
          DATA t733 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF t719->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
            t719->zlnt_json_ownkeys_70e5fd461788->put( p0 = |keyType| p1 = t733 ).
          ENDIF.
          DATA t735 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t250 = NEW zcl_lnt_ty_table_type( i_row_type = t713 i_options = t719 i_qualified_name = t2 i_description = t735 ).
        ENDIF.
      ENDIF.
    ELSE.
      DATA(t736) = VALUE abap_bool( ).
      DATA(t737) = VALUE string( ).
      t737 = t7->value.
      DATA(t739) = |TYPE LINE OF |.
      DATA(t740) = strlen( t737 ).
      DATA(t741) = VALUE i( ).
      DATA(t742) = VALUE i( ).
      DATA(t743) = VALUE string( ).
      t741 = strlen( t739 ).
      IF t741 = 0.
        t736 = abap_true.
      ELSEIF t741 <= t740.
        t742 = 0.
        t743 = t737+t742(t741).
        IF t743 = t739.
          t736 = abap_true.
        ENDIF.
      ENDIF.
      IF t736 = abap_true.
        DATA(t747) = zlnt_runtime_desc_78196487750d=>zlnt_member_d189_7457e1b1f519.
        DATA t750 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t751 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t752 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t250 = me->resolve_type_name( i_type_name = t1->find_first_expression( i_type_9913 = t747 ) i_length = t750 i_decimals_2eed = t751 i_qualified_name = t752 ).
        DATA(t753) = t250.
        DATA(t755) = t250.
        IF xsdbool( t755 IS BOUND AND t755 IS INSTANCE OF zcl_lnt_ty_table_type ) = abap_true.
          DATA t760 TYPE REF TO zcl_lnt_ty_table_type.
          t760 ?= t250.
          result = t760->row_type.
          RETURN.
        ELSE.
          DATA(t766) = t250.
          IF xsdbool( t766 IS BOUND AND t766 IS INSTANCE OF zcl_lnt_void_type ) = abap_true.
            DATA t767 TYPE REF TO zcl_lnt_void_type.
            t767 ?= t250.
            result = t767.
            RETURN.
          ELSE.
            DATA(t770) = t250.
            IF xsdbool( t770 IS BOUND AND t770 IS INSTANCE OF zcl_lnt_unknown_type ) = abap_true.
              DATA(t773) = |TYPE LINE OF, unknown type, |.
              DATA(t774) = VALUE string( ).
              DATA t776 TYPE REF TO zcl_lnt_unknown_type.
              t776 ?= t250.
              t774 = t776->error.
              DATA(t780) = strlen( t773 ).
              DATA t781 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              result = NEW zcl_lnt_unknown_type( i_error = |{ t773 }{ t774 }| i_qualified_name = t781 ).
              RETURN.
            ELSE.
              DATA(t784) = |TYPE LINE OF, unexpected type, |.
              DATA(t785) = VALUE string( ).
              DATA t786 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t788 TYPE REF TO zlnt_runtime_clas_a39833db3295.
              DATA t790 TYPE REF TO zcl_lnt_abstract_type.
              t790 = t250.
              DATA t792 TYPE REF TO zlnt_runtime_clas_a39833db3295.
              IF xsdbool( t790 IS INITIAL ) = abap_true.
              ELSE.
                t792 = t790->zlnt_builtin_clas_3f891b097658( ).
              ENDIF.
              t788 = t792.
              DATA t799 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              IF xsdbool( t788 IS INITIAL ) = abap_true.
              ELSE.
                DATA(t803) = VALUE string( ).
                t803 = t788->name.
                DATA(t806) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t806->has = abap_true.
                t806->value = t803.
                t799 = t806.
              ENDIF.
              t786 = t799.
              DATA(t807) = VALUE string( ).
              DATA(t808) = VALUE abap_bool( ).
              IF t786 IS INITIAL.
                t808 = abap_true.
              ELSEIF t786->has = abap_false.
                t808 = abap_true.
              ENDIF.
              IF t808 = abap_true.
                t807 = |undefined|.
              ELSE.
                t807 = t786->value.
              ENDIF.
              t785 = t807.
              DATA(t813) = strlen( t784 ).
              DATA t814 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              result = NEW zcl_lnt_unknown_type( i_error = |{ t784 }{ t785 }| i_qualified_name = t814 ).
              RETURN.
            ENDIF.
          ENDIF.
        ENDIF.
      ELSE.
        DATA(t815) = VALUE abap_bool( ).
        DATA(t816) = VALUE string( ).
        t816 = t7->value.
        DATA(t818) = |TYPE REF TO |.
        DATA(t819) = strlen( t816 ).
        DATA(t820) = VALUE i( ).
        DATA(t821) = VALUE i( ).
        DATA(t822) = VALUE string( ).
        t820 = strlen( t818 ).
        IF t820 = 0.
          t815 = abap_true.
        ELSEIF t820 <= t819.
          t821 = 0.
          t822 = t816+t821(t820).
          IF t822 = t818.
            t815 = abap_true.
          ENDIF.
        ENDIF.
        IF t815 = abap_true.
          t250 = me->resolve_type_ref( i_chain_8ed6 = t3 ).
        ELSE.
          DATA(t825) = VALUE abap_bool( ).
          DATA(t826) = VALUE string( ).
          t826 = t7->value.
          DATA(t828) = |TYPE|.
          DATA(t829) = strlen( t826 ).
          DATA(t830) = VALUE i( ).
          DATA(t831) = VALUE i( ).
          DATA(t832) = VALUE string( ).
          t830 = strlen( t828 ).
          IF t830 = 0.
            t825 = abap_true.
          ELSEIF t830 <= t829.
            t831 = 0.
            t832 = t826+t831(t830).
            IF t832 = t828.
              t825 = abap_true.
            ENDIF.
          ENDIF.
          IF t825 = abap_true.
            DATA t835 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            t835 = me->find_length( i_node = t1 ).
            DATA t841 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t843 TYPE REF TO zcl_lnt_expression_node.
            DATA t845 TYPE REF TO zcl_lnt_expression_node.
            DATA(t848) = zlnt_runtime_desc_78196487750d=>zlnt_member_d149_69f1f4358f03.
            t845 = t1->find_direct_expression( i_type_9913 = t848 ).
            DATA t849 TYPE REF TO zcl_lnt_expression_node.
            IF xsdbool( t845 IS INITIAL ) = abap_true.
            ELSE.
              DATA t854 TYPE REF TO zcl_lnt_expression_node.
              t854 = t845.
              DATA(t856) = zlnt_runtime_desc_78196487750d=>zlnt_member_d108_ef0500b17c81.
              t849 = t854->find_direct_expression( i_type_9913 = t856 ).
            ENDIF.
            t843 = t849.
            DATA t857 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            IF xsdbool( t843 IS INITIAL ) = abap_true.
            ELSE.
              DATA(t861) = VALUE string( ).
              t861 = t843->concat_tokens( ).
              DATA(t864) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t864->has = abap_true.
              t864->value = t861.
              t857 = t864.
            ENDIF.
            t841 = t857.
            DATA t865 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
            DATA(t866) = VALUE abap_bool( ).
            IF t841 IS BOUND.
              IF t841->has = abap_true.
                t866 = xsdbool( strlen( t841->value ) > 0 ).
              ENDIF.
            ENDIF.
            IF t866 = abap_true.
              DATA(t871) = VALUE string( ).
              t871 = t841->value.
              t865 = zlnt_runtime_stri_248d3505915c=>int_optional( t871 ).
            ELSE.
              CLEAR t865.
            ENDIF.
            t250 = me->resolve_type_name( i_type_name = t3 i_length = t835 i_decimals_2eed = t865 i_qualified_name = t2 ).
            DATA(t876) = VALUE string( ).
            DATA(t877) = VALUE string( ).
            DATA(t878) = VALUE string( ).
            t878 = t1->concat_tokens( ).
            DATA(t880) = strlen( t878 ).
            t877 = t878.
            IF t877 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t877 TO UPPER CASE.
            ELSE.
              t877 = zlnt_runtime_uppe_91169605024d=>full( t877 ).
            ENDIF.
            t876 = t877.
            DATA(t881) = VALUE abap_bool( ).
            DATA(t882) = VALUE abap_bool( ).
            t882 = xsdbool( t250 IS BOUND ).
            t881 = t882.
            IF t882 = abap_true.
              DATA t885 TYPE REF TO zif_lnt_union_bb14dc41.
              t885 = t1.
              DATA(t887) = VALUE abap_bool( ).
              DATA t889 TYPE REF TO zcl_lnt_abstract_token.
              t889 = t885->find_direct_token_by_text( i_text = |OCCURS| ).
              IF xsdbool( t889 IS BOUND ) = abap_true.
                t887 = abap_true.
              ELSE.
                DATA(t893) = VALUE abap_bool( ).
                DATA t895 TYPE REF TO zcl_lnt_abstract_token.
                DATA t896 TYPE REF TO zcl_lnt_expression_node.
                DATA(t899) = zlnt_runtime_desc_78196487750d=>zlnt_member_d151_c07675a56057.
                t896 = t885->find_first_expression( i_type_9913 = t899 ).
                DATA t900 TYPE REF TO zcl_lnt_abstract_token.
                IF xsdbool( t896 IS INITIAL ) = abap_true.
                ELSE.
                  t900 = t896->find_direct_token_by_text( i_text = |OCCURS| ).
                ENDIF.
                t895 = t900.
                IF xsdbool( t895 IS BOUND ) = abap_true.
                  t893 = abap_true.
                ELSE.
                  t893 = abap_false.
                ENDIF.
                t887 = t893.
              ENDIF.
              t881 = t887.
            ENDIF.
            IF t881 = abap_true.
              DATA t911 TYPE REF TO zcl_lnt_abstract_type.
              t911 = t250.
              DATA t913 TYPE REF TO zcl_lnt_itable_options.
              DATA(t916) = VALUE i( ).
              DATA(t918) = | WITH HEADER LINE|.
              DATA(t919) = strlen( t876 ).
              IF t918 IS INITIAL.
                t916 = 0.
              ELSE.
                FIND t918 IN t876 MATCH OFFSET t916.
                IF sy-subrc <> 0.
                  t916 = -1.
                ENDIF.
              ENDIF.
              DATA t923 TYPE REF TO zcl_lnt_itable_key.
              DATA t925 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
              t913 = NEW zcl_lnt_itable_options( i_with_header = xsdbool( t916 >= 0 ) i_key_type = |DEFAULT| i_primary_key = t923 i_secondary = t925 ).
              CREATE OBJECT t913->zlnt_view_ownkeys_b0e8086400eb.
              t913->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t927 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              t913->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `withHeader` p1 = t927 ).
              DATA t928 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              IF t913->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                t913->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `keyType` p1 = t928 ).
              ENDIF.
              CREATE OBJECT t913->zlnt_json_ownkeys_70e5fd461788.
              t913->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t930 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              t913->zlnt_json_ownkeys_70e5fd461788->put( p0 = |withHeader| p1 = t930 ).
              DATA t932 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              IF t913->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                t913->zlnt_json_ownkeys_70e5fd461788->put( p0 = |keyType| p1 = t932 ).
              ENDIF.
              DATA t934 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              t250 = NEW zcl_lnt_ty_table_type( i_row_type = t911 i_options = t913 i_qualified_name = t2 i_description = t934 ).
            ELSE.
              DATA(t935) = VALUE abap_bool( ).
              DATA(t936) = VALUE abap_bool( ).
              t936 = xsdbool( t250 IS BOUND ).
              t935 = t936.
              IF t936 = abap_true.
                DATA(t939) = VALUE i( ).
                DATA(t941) = | WITH HEADER LINE|.
                DATA(t942) = strlen( t876 ).
                IF t941 IS INITIAL.
                  t939 = 0.
                ELSE.
                  FIND t941 IN t876 MATCH OFFSET t939.
                  IF sy-subrc <> 0.
                    t939 = -1.
                  ENDIF.
                ENDIF.
                t935 = xsdbool( t939 >= 0 ).
              ENDIF.
              IF t935 = abap_true.
                DATA(t945) = t250.
                IF xsdbool( t945 IS BOUND AND t945 IS INSTANCE OF zcl_lnt_void_type ) = abap_true.
                  DATA t947 TYPE REF TO zcl_lnt_void_type.
                  t947 ?= t250.
                  DATA t949 TYPE REF TO zcl_lnt_itable_options.
                  DATA t954 TYPE REF TO zcl_lnt_itable_key.
                  DATA t956 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                  t949 = NEW zcl_lnt_itable_options( i_with_header = abap_true i_key_type = |DEFAULT| i_primary_key = t954 i_secondary = t956 ).
                  CREATE OBJECT t949->zlnt_view_ownkeys_b0e8086400eb.
                  t949->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t958 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  t949->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `withHeader` p1 = t958 ).
                  DATA t959 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  IF t949->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                    t949->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `keyType` p1 = t959 ).
                  ENDIF.
                  CREATE OBJECT t949->zlnt_json_ownkeys_70e5fd461788.
                  t949->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                  DATA t961 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  t949->zlnt_json_ownkeys_70e5fd461788->put( p0 = |withHeader| p1 = t961 ).
                  DATA t963 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  IF t949->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                    t949->zlnt_json_ownkeys_70e5fd461788->put( p0 = |keyType| p1 = t963 ).
                  ENDIF.
                  DATA t964 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  DATA t965 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  t250 = NEW zcl_lnt_ty_table_type( i_row_type = t947 i_options = t949 i_qualified_name = t964 i_description = t965 ).
                ELSE.
                  DATA(t968) = t250.
                  IF xsdbool( xsdbool( t968 IS BOUND AND t968 IS INSTANCE OF zcl_lnt_ty_table_type ) = abap_false ) = abap_true.
                    DATA t969 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
                    DATA t970 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
                    DATA(t974) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t974->has = abap_true.
                    t974->value = |WITH HEADER LINE can only be used with internal table|.
                    t970 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t974 ).
                    t969 = NEW #( ).
                    t969->payload = t970.
                    CLEAR t969->source_value.
                    DATA t976 TYPE REF TO zlnt_view_storage_74017ca272ac.
                    DATA t977 TYPE REF TO object.
                    t977 = t970.
                    TRY.
                        t969->source_value ?= t977.
                      CATCH cx_sy_move_cast_error.
                    ENDTRY.
                    IF t969->source_value IS NOT BOUND.
                      TRY.
                          t976 ?= t970.
                        CATCH cx_sy_move_cast_error.
                      ENDTRY.
                      IF t976 IS BOUND.
                        t969->source_value = t976->source( ).
                      ENDIF.
                      IF t969->source_value IS NOT BOUND.
                        CREATE OBJECT t969->source_value.
                        t969->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                        t969->source_value->oval = t970.
                      ENDIF.
                    ENDIF.
                    RAISE EXCEPTION t969.
                  ELSE.
                    DATA t979 TYPE REF TO zcl_lnt_abstract_type.
                    DATA t981 TYPE REF TO zcl_lnt_ty_table_type.
                    t981 ?= t250.
                    t979 = t981->row_type.
                    DATA t985 TYPE REF TO zcl_lnt_itable_options.
                    DATA t990 TYPE REF TO zcl_lnt_itable_key.
                    DATA t992 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                    t985 = NEW zcl_lnt_itable_options( i_with_header = abap_true i_key_type = |DEFAULT| i_primary_key = t990 i_secondary = t992 ).
                    CREATE OBJECT t985->zlnt_view_ownkeys_b0e8086400eb.
                    t985->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA t994 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    t985->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `withHeader` p1 = t994 ).
                    DATA t995 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    IF t985->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                      t985->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `keyType` p1 = t995 ).
                    ENDIF.
                    CREATE OBJECT t985->zlnt_json_ownkeys_70e5fd461788.
                    t985->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA t997 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    t985->zlnt_json_ownkeys_70e5fd461788->put( p0 = |withHeader| p1 = t997 ).
                    DATA t999 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    IF t985->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                      t985->zlnt_json_ownkeys_70e5fd461788->put( p0 = |keyType| p1 = t999 ).
                    ENDIF.
                    DATA t1000 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    DATA t1001 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    t250 = NEW zcl_lnt_ty_table_type( i_row_type = t979 i_options = t985 i_qualified_name = t1000 i_description = t1001 ).
                  ENDIF.
                ENDIF.
              ENDIF.
            ENDIF.
            DATA(t1002) = VALUE abap_bool( ).
            DATA(t1003) = VALUE abap_bool( ).
            DATA t1006 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            t1003 = xsdbool( t250 IS INITIAL ).
            t1002 = t1003.
            IF t1003 = abap_true.
              DATA t1013 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              t1002 = xsdbool( t3 IS INITIAL ).
            ENDIF.
            IF t1002 = abap_true.
              DATA(t1017) = VALUE f( ).
              t1017 = CONV f( 1 ).
              DATA t1019 TYPE REF TO zcl_lnt_expression_node.
              DATA(t1022) = zlnt_runtime_desc_78196487750d=>zlnt_member_d142_ab91f6798a5a.
              t1019 = t1->find_direct_expression( i_type_9913 = t1022 ).
              IF xsdbool( t1019 IS BOUND ) = abap_true.
                DATA t1025 TYPE REF TO zcl_lnt_expression_node.
                DATA t1027 TYPE REF TO zcl_lnt_expression_node.
                t1027 = t1019.
                DATA(t1029) = zlnt_runtime_desc_78196487750d=>zlnt_member_d108_ef0500b17c81.
                t1025 = t1027->find_direct_expression( i_type_9913 = t1029 ).
                IF xsdbool( t1025 IS BOUND ) = abap_true.
                  DATA(t1032) = VALUE f( ).
                  DATA(t1033) = VALUE string( ).
                  t1033 = t1025->concat_tokens( ).
                  DATA(t1036) = VALUE i( ).
                  DATA(t1037) = VALUE i( ).
                  DATA(t1038) = VALUE string( ).
                  DATA(t1039) = VALUE abap_bool( ).
                  DATA(t1040) = VALUE abap_bool( ).
                  DATA(t1041) = VALUE int8( ).
                  DATA(t1042) = VALUE i( ).
                  t1036 = 0.
                  t1041 = 0.
                  t1039 = abap_false.
                  t1040 = abap_false.
                  t1037 = strlen( t1033 ).
                  DATA(t1043) = VALUE i( ).
                  DATA(t1044) = VALUE i( ).
                  DATA(t1045) = VALUE string( ).
                  WHILE t1036 < t1037.
                    t1044 = t1036.
                    t1045 = t1033+t1044(1).
                    DATA t1046 TYPE c LENGTH 1.
                    CLEAR t1046.
                    DATA(t1047) = VALUE xstring( ).
                    DATA t1048 TYPE x LENGTH 1.
                    CLEAR t1048.
                    DATA t1049 TYPE x LENGTH 1.
                    CLEAR t1049.
                    DATA(t1050) = VALUE i( ).
                    t1046 = t1045.
                    t1043 = cl_abap_conv_out_ce=>uccpi( t1046 ).
                    IF t1043 >= 255.
                      IF zlnt_builtin_code_bb79b741c1de IS NOT BOUND.
                        zlnt_builtin_code_bb79b741c1de = cl_abap_conv_out_ce=>create( encoding = '4103' ).
                      ENDIF.
                      zlnt_builtin_code_bb79b741c1de->convert( EXPORTING data = t1045 IMPORTING buffer = t1047 ).
                      t1048 = t1047(1).
                      t1049 = t1047+1(1).
                      t1043 = t1048.
                      t1050 = t1049.
                      t1043 = t1043 + t1050 * 256.
                    ENDIF.
                    IF t1043 = 9 OR t1043 = 10 OR t1043 = 11 OR t1043 = 12 OR t1043 = 13 OR t1043 = 32 OR t1043 = 160 OR t1043 = 5760 OR t1043 = 8232 OR t1043 = 8233 OR t1043 = 8239 OR t1043 = 8287 OR t1043 = 12288 OR t1043 = 65279
                            OR t1043 >= 8192 AND t1043 <= 8202.
                      t1036 = t1036 + 1.
                    ELSE.
                      EXIT.
                    ENDIF.
                  ENDWHILE.
                  IF t1036 < t1037.
                    t1038 = t1033+t1036(1).
                    IF t1038 = '-' OR t1038 = '+'.
                      t1039 = xsdbool( t1038 = '-' ).
                      t1036 = t1036 + 1.
                    ENDIF.
                  ENDIF.
                  WHILE t1036 < t1037.
                    t1038 = t1033+t1036(1).
                    IF t1038 CN '0123456789' OR t1038 = ` `.
                      EXIT.
                    ENDIF.
                    t1042 = t1038.
                    IF t1041 > range_parse_safe_prefix OR ( t1041 = range_parse_safe_prefix AND t1042 > 1 ).
                      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                    ENDIF.
                    t1041 = t1041 * 10 + t1042.
                    t1040 = abap_true.
                    t1036 = t1036 + 1.
                  ENDWHILE.
                  IF t1040 = abap_false OR ( t1039 = abap_true AND t1041 = 0 ).
                    RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
                  ENDIF.
                  IF t1039 = abap_true.
                    t1041 = 0 - t1041.
                  ENDIF.
                  t1032 = t1041.
                  t1017 = t1032.
                ENDIF.
              ENDIF.
              DATA t1055 TYPE REF TO zcl_lnt_abstract_type_data.
              DATA t1058 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t1060 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
              DATA t1062 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t1064 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t1066 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              t1055 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t2 i_conversion_exit = t1058 i_derived_from_constant = t1060 i_ddic_name = t1062 i_rtti_name = t1064 i_description = t1066 ).
              CREATE OBJECT t1055->zlnt_view_ownkeys_b0e8086400eb.
              t1055->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t1068 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              t1055->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t1068 ).
              CREATE OBJECT t1055->zlnt_json_ownkeys_70e5fd461788.
              t1055->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t1070 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              t1055->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t1070 ).
              t250 = NEW zcl_lnt_character_type( i_length = t1017 i_extra = t1055 ).
              DATA t1073 TYPE REF TO zif_lnt_union_bb14dc41.
              t1073 = t1.
              DATA(t1075) = VALUE abap_bool( ).
              DATA t1077 TYPE REF TO zcl_lnt_abstract_token.
              t1077 = t1073->find_direct_token_by_text( i_text = |OCCURS| ).
              IF xsdbool( t1077 IS BOUND ) = abap_true.
                t1075 = abap_true.
              ELSE.
                DATA(t1081) = VALUE abap_bool( ).
                DATA t1083 TYPE REF TO zcl_lnt_abstract_token.
                DATA t1084 TYPE REF TO zcl_lnt_expression_node.
                DATA(t1087) = zlnt_runtime_desc_78196487750d=>zlnt_member_d151_c07675a56057.
                t1084 = t1073->find_first_expression( i_type_9913 = t1087 ).
                DATA t1088 TYPE REF TO zcl_lnt_abstract_token.
                IF xsdbool( t1084 IS INITIAL ) = abap_true.
                ELSE.
                  t1088 = t1084->find_direct_token_by_text( i_text = |OCCURS| ).
                ENDIF.
                t1083 = t1088.
                IF xsdbool( t1083 IS BOUND ) = abap_true.
                  t1081 = abap_true.
                ELSE.
                  t1081 = abap_false.
                ENDIF.
                t1075 = t1081.
              ENDIF.
              IF t1075 = abap_true.
                DATA t1099 TYPE REF TO zcl_lnt_abstract_type.
                t1099 = t250.
                DATA t1101 TYPE REF TO zcl_lnt_itable_options.
                DATA(t1104) = VALUE i( ).
                DATA(t1106) = | WITH HEADER LINE|.
                DATA(t1107) = strlen( t876 ).
                IF t1106 IS INITIAL.
                  t1104 = 0.
                ELSE.
                  FIND t1106 IN t876 MATCH OFFSET t1104.
                  IF sy-subrc <> 0.
                    t1104 = -1.
                  ENDIF.
                ENDIF.
                DATA t1111 TYPE REF TO zcl_lnt_itable_key.
                DATA t1113 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
                t1101 = NEW zcl_lnt_itable_options( i_with_header = xsdbool( t1104 >= 0 ) i_key_type = |DEFAULT| i_primary_key = t1111 i_secondary = t1113 ).
                CREATE OBJECT t1101->zlnt_view_ownkeys_b0e8086400eb.
                t1101->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t1115 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                t1101->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `withHeader` p1 = t1115 ).
                DATA t1116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                IF t1101->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t1101->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `keyType` p1 = t1116 ).
                ENDIF.
                CREATE OBJECT t1101->zlnt_json_ownkeys_70e5fd461788.
                t1101->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t1118 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                t1101->zlnt_json_ownkeys_70e5fd461788->put( p0 = |withHeader| p1 = t1118 ).
                DATA t1120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                IF t1101->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t1101->zlnt_json_ownkeys_70e5fd461788->put( p0 = |keyType| p1 = t1120 ).
                ENDIF.
                DATA t1122 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                t250 = NEW zcl_lnt_ty_table_type( i_row_type = t1099 i_options = t1101 i_qualified_name = t2 i_description = t1122 ).
              ENDIF.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.




    DATA(t1124) = VALUE i( ).
    DATA(t1125) = VALUE string( ).
    t1125 = t7->value.
    DATA(t1127) = | WITH INDICATORS |.
    DATA(t1128) = strlen( t1125 ).
    IF t1127 IS INITIAL.
      t1124 = 0.
    ELSE.
      FIND t1127 IN t1125 MATCH OFFSET t1124.
      IF sy-subrc <> 0.
        t1124 = -1.
      ENDIF.
    ENDIF.
    IF xsdbool( t1124 >= 0 ) = abap_true.
      DATA t1130 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t1132 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t1134 TYPE REF TO zcl_lnt_expression_node.
      DATA t1136 TYPE REF TO zcl_lnt_expression_node.
      DATA(t1139) = zlnt_runtime_desc_78196487750d=>zlnt_member_d147_5c941cfb7396.
      t1136 = t1->find_first_expression( i_type_9913 = t1139 ).
      DATA t1140 TYPE REF TO zcl_lnt_expression_node.
      IF xsdbool( t1136 IS INITIAL ) = abap_true.
      ELSE.
        DATA t1145 TYPE REF TO zcl_lnt_expression_node.
        t1145 = t1136.
        DATA(t1147) = zlnt_runtime_desc_78196487750d=>zlnt_member_d100_553f73368b64.
        t1140 = t1145->find_direct_expression( i_type_9913 = t1147 ).
      ENDIF.
      t1134 = t1140.
      DATA t1148 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      IF xsdbool( t1134 IS INITIAL ) = abap_true.
      ELSE.
        DATA(t1152) = VALUE string( ).
        t1152 = t1134->concat_tokens( ).
        DATA(t1155) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t1155->has = abap_true.
        t1155->value = t1152.
        t1148 = t1155.
      ENDIF.
      t1132 = t1148.
      DATA t1156 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t1157) = VALUE abap_bool( ).
      IF t1132 IS INITIAL.
        t1157 = abap_true.
      ELSEIF t1132->has = abap_false.
        t1157 = abap_true.
      ENDIF.
      IF t1157 = abap_true.
      ELSE.
        DATA(t1160) = VALUE string( ).
        DATA(t1161) = VALUE string( ).
        t1161 = t1132->value.
        DATA(t1163) = strlen( t1161 ).
        t1160 = t1161.
        IF t1160 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t1160 TO UPPER CASE.
        ELSE.
          t1160 = zlnt_runtime_uppe_91169605024d=>full( t1160 ).
        ENDIF.
        DATA(t1164) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t1164->has = abap_true.
        t1164->value = t1160.
        t1156 = t1164.
      ENDIF.
      t1130 = t1156.
      DATA t1166 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t1166 = t1130.
      DATA t1168 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t1170) = VALUE abap_bool( ).
      IF t1166 IS INITIAL.
        t1170 = abap_true.
      ELSEIF t1166->has = abap_false.
        t1170 = abap_true.
      ENDIF.
      IF t1170 = abap_true.
        DATA t1172 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
        DATA t1173 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
        DATA(t1177) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t1177->has = abap_true.
        t1177->value = |parseType, componentName expected|.
        t1173 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t1177 ).
        t1172 = NEW #( ).
        t1172->payload = t1173.
        CLEAR t1172->source_value.
        DATA t1179 TYPE REF TO zlnt_view_storage_74017ca272ac.
        DATA t1180 TYPE REF TO object.
        t1180 = t1173.
        TRY.
            t1172->source_value ?= t1180.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t1172->source_value IS NOT BOUND.
          TRY.
              t1179 ?= t1173.
            CATCH cx_sy_move_cast_error.
          ENDTRY.
          IF t1179 IS BOUND.
            t1172->source_value = t1179->source( ).
          ENDIF.
          IF t1172->source_value IS NOT BOUND.
            CREATE OBJECT t1172->source_value.
            t1172->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
            t1172->source_value->oval = t1173.
          ENDIF.
        ENDIF.
        RAISE EXCEPTION t1172.
      ENDIF.
      DATA(t1182) = t250.
      IF xsdbool( t1182 IS BOUND AND t1182 IS INSTANCE OF zcl_lnt_structure_type ) = abap_true.
        DATA t1183 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t1186 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        CREATE OBJECT t1186.
        DATA t1190 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t1192 TYPE REF TO zcl_lnt_structure_type.
        t1192 ?= t250.
        t1190 = t1192->components.
        t1183 = t1186->concat( p0 = t1190 ).
        DATA t1198 TYPE REF TO zcl_lnt_istructure_component.
        DATA(t1199) = VALUE string( ).
        t1199 = t1130->value.
        DATA t1202 TYPE REF TO zcl_lnt_abstract_type.
        DATA(t1207) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t1207->has = abap_true.
        t1207->value = |INDICATORStodo|.
        DATA t1209 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t1202 = zcl_lnt_void_type=>get_db65( i_voided = t1207 i_qualified_name = t1209 ).
        DATA t1210 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        DATA t1212 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t1198 = NEW zcl_lnt_istructure_component( i_name = t1199 i_type_9913 = t1202 i_as_include = t1210 i_suffix = t1212 ).
        CREATE OBJECT t1198->zlnt_view_ownkeys_b0e8086400eb.
        t1198->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t1214 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t1198->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `name` p1 = t1214 ).
        DATA t1215 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t1198->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t1198->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1215 ).
        ENDIF.
        CREATE OBJECT t1198->zlnt_json_ownkeys_70e5fd461788.
        t1198->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t1217 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t1198->zlnt_json_ownkeys_70e5fd461788->put( p0 = |name| p1 = t1217 ).
        DATA t1219 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t1198->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t1198->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t1219 ).
        ENDIF.
        t1183->load( ).
        APPEND t1198 TO t1183->items.
        t1183->save( ).
        DATA t1223 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t1224 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t250 = NEW zcl_lnt_structure_type( i_components = t1183 i_qualified_name = t2 i_ddic_name = t1223 i_description = t1224 ).
      ENDIF.
    ENDIF.
    result = t250.

  ENDMETHOD.

  METHOD is_occurs.
    DATA(t1) = i_node.
    DATA t3 TYPE REF TO zcl_lnt_abstract_token.
    t3 = t1->find_direct_token_by_text( i_text = |OCCURS| ).
    IF xsdbool( t3 IS BOUND ) = abap_true.
      result = abap_true.
      RETURN.
    ENDIF.
    DATA t8 TYPE REF TO zcl_lnt_abstract_token.
    DATA t9 TYPE REF TO zcl_lnt_expression_node.
    DATA(t12) = zlnt_runtime_desc_78196487750d=>zlnt_member_d151_c07675a56057.
    t9 = t1->find_first_expression( i_type_9913 = t12 ).
    DATA t13 TYPE REF TO zcl_lnt_abstract_token.
    IF xsdbool( t9 IS INITIAL ) = abap_true.
    ELSE.
      t13 = t9->find_direct_token_by_text( i_text = |OCCURS| ).
    ENDIF.
    t8 = t13.
    IF xsdbool( t8 IS BOUND ) = abap_true.
      result = abap_true.
      RETURN.
    ENDIF.

    result = abap_false.

  ENDMETHOD.

  METHOD get_rap_base_entity_name.
    CONSTANTS range_i32_lower TYPE f VALUE '-2147483648'.
    CONSTANTS range_i32_upper TYPE f VALUE '2147483647'.
    DATA(t1) = i_name.
    DATA(t2) = VALUE i( ).
    DATA(t3) = VALUE i( ).
    DATA(t5) = `\_`.
    DATA(t6) = strlen( t1 ).
    IF t5 IS INITIAL.
      t3 = 0.
    ELSE.
      FIND t5 IN t1 MATCH OFFSET t3.
      IF sy-subrc <> 0.
        t3 = -1.
      ENDIF.
    ENDIF.
    t2 = t3.
    DATA(t7) = VALUE i( ).
    DATA(t8) = VALUE i( ).
    DATA(t10) = `\\`.
    DATA(t11) = strlen( t1 ).
    IF t10 IS INITIAL.
      t8 = 0.
    ELSE.
      FIND t10 IN t1 MATCH OFFSET t8.
      IF sy-subrc <> 0.
        t8 = -1.
      ENDIF.
    ENDIF.
    t7 = t8.
    DATA(t12) = VALUE i( ).
    DATA(t13) = VALUE i( ).
    DATA(t15) = |~|.
    DATA(t16) = strlen( t1 ).
    IF t15 IS INITIAL.
      t13 = 0.
    ELSE.
      FIND t15 IN t1 MATCH OFFSET t13.
      IF sy-subrc <> 0.
        t13 = -1.
      ENDIF.
    ENDIF.
    t12 = t13.
    DATA(t17) = VALUE abap_bool( ).
    DATA t18 TYPE abap_bool.
    DATA t19 TYPE abap_bool.
    t19 = xsdbool( t2 = -1 ).
    t18 = t19.
    IF t19 = abap_true.
      t18 = xsdbool( t7 = -1 ).
    ENDIF.
    t17 = t18.
    IF t18 = abap_true.
      t17 = xsdbool( t12 = -1 ).
    ENDIF.
    IF t17 = abap_true.
      result = t1.
      RETURN.
    ENDIF.
    DATA t31 TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
    CREATE OBJECT t31.
    DATA t33 TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
    DATA t34 TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
    CREATE OBJECT t34.
    DATA t37 TYPE f.
    t37 = t2.
    t34->load( ).
    APPEND t37 TO t34->items.
    t34->save( ).
    DATA t40 TYPE f.
    t40 = t7.
    t34->load( ).
    APPEND t40 TO t34->items.
    t34->save( ).
    DATA t43 TYPE f.
    t43 = t12.
    t34->load( ).
    APPEND t43 TO t34->items.
    t34->save( ).
    t33 = t34.
    DATA(t46) = VALUE f( ).
    t33->dense( ).
    DATA(t47) = VALUE i( ).
    DO.
      t33->load( ).
      IF t47 >= lines( t33->items ).
        EXIT.
      ENDIF.
      CLEAR t46.
      READ TABLE t33->items INDEX t47 + 1 INTO t46.
      IF t33->has( t47 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t47 = t47 + 1.
      IF xsdbool( t46 <> CONV f( -1 ) ) = abap_true.
        t31->load( ).
        APPEND t46 TO t31->items.
        t31->save( ).
      ENDIF.
    ENDDO.
    DATA(t54) = VALUE f( ).
    DATA t57 TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
    CREATE OBJECT t57.
    DATA t58 TYPE REF TO zlnt_runtime_arra_595b0cb55f64.
    t58 = t57->concat( p0 = t31 ).
    DATA(t62) = VALUE f( ).
    t58->dense( ).
    IF lines( t58->items ) = 0.
      RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
    ENDIF.
    READ TABLE t58->items INDEX 1 INTO t62.
    DATA(t64) = VALUE f( ).
    LOOP AT t58->items INTO t64 FROM 2.
      IF t62 = 0 AND t64 = 0.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      IF t64 < t62.
        t62 = t64.
      ENDIF.
    ENDLOOP.
    t54 = t62.
    DATA(t65) = VALUE string( ).
    DATA(t67) = 0.
    DATA(t68) = VALUE i( ).
    IF t54 > range_i32_upper.
      t68 = range_i32_upper.
    ELSEIF t54 < range_i32_lower.
      t68 = range_i32_lower.
    ELSE.
      t68 = trunc( t54 ).
    ENDIF.
    DATA(t70) = strlen( t1 ).
    t67 = COND i( WHEN t67 < 0 THEN 0 WHEN t67 > t70 THEN t70 ELSE t67 ).
    t68 = COND i( WHEN t68 < 0 THEN 0 WHEN t68 > t70 THEN t70 ELSE t68 ).
    IF t67 > t68.
      t70 = t67.
      t67 = t68.
      t68 = t70.
    ENDIF.
    t70 = t68 - t67.
    t65 = t1+t67(t70).
    result = t65.

  ENDMETHOD.

  METHOD resolve_rap_alias.
    DATA(t1) = i_name.
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t5 TYPE REF TO zcl_lnt_behavior_definition.
    DATA t7 TYPE REF TO zcl_lnt_current_scope.
    t7 = me->input_2fd0->scope.
    DATA t10 TYPE REF TO zcl_lnt_behavior_definition.
    IF xsdbool( t7->parent_obj->get_type( ) <> |CLAS| ) = abap_true.
    ELSE.
      DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA t20 TYPE REF TO zcl_lnt_info_class_definition.
      DATA t22 TYPE REF TO zcl_lnt_class.
      DATA t23 TYPE REF TO zcl_lnt_class.
      DATA t24 TYPE REF TO zif_lnt_object.
      t24 = t7->parent_obj.
      t23 ?= t24.
      t22 = t23.
      DATA t27 TYPE REF TO zif_lnt_abap_file_information.
      DATA t29 TYPE REF TO zcl_lnt_abap_file.
      t29 = t22->get_main_abap_file( ).
      DATA t32 TYPE REF TO zif_lnt_abap_file_information.
      IF xsdbool( t29 IS INITIAL ) = abap_true.
      ELSE.
        t32 = t29->info.
      ENDIF.
      t27 = t32.
      DATA t42 TYPE REF TO zcl_lnt_info_class_definition.
      IF xsdbool( t27 IS INITIAL ) = abap_true.
      ELSE.
        DATA t47 TYPE REF TO zif_lnt_abap_file_information.
        t47 = t27.
        DATA t49 TYPE string.
        DATA t50 TYPE REF TO zcl_lnt_abstract_object.
        t50 = t22.
        t49 = t50->name.
        t42 = t47->get_class_definition_by_name( i_name = t49 ).
      ENDIF.
      t20 = t42.
      DATA t54 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      IF xsdbool( t20 IS INITIAL ) = abap_true.
      ELSE.
        t54 = t20->behavior_definition_name.
      ENDIF.
      t18 = t54.
      DATA t61 TYPE REF TO zcl_lnt_behavior_definition.
      DATA t63 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t63 = t18.
      DATA t65 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t67) = VALUE abap_bool( ).
      IF t63 IS INITIAL.
        t67 = abap_true.
      ELSEIF t63->has = abap_false.
        t67 = abap_true.
      ENDIF.
      IF t67 = abap_true.
      ELSE.
        DATA t70 TYPE REF TO zcl_lnt_behavior_definition.
        DATA t72 TYPE REF TO zif_lnt_registry.
        t72 = t7->reg.
        DATA t74 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t77) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t77->has = abap_true.
        t77->value = |BDEF|.
        t74 = t77.
        DATA t81 TYPE string.
        t81 = t18->value.
        DATA(t83) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t83->has = abap_true.
        t83->value = t81.
        DATA t85 TYPE REF TO object.
        t85 = t72->get_object( i_type_9913 = t74 i_name = t83 ).
        t70 ?= t85.
        t61 = t70.
      ENDIF.
      t10 = t61.
    ENDIF.
    t5 = t10.
    DATA t86 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t5 IS INITIAL ) = abap_true.
    ELSE.
      t86 = t5->find_entity_name_by_alias( i_alias = t1 ).
    ENDIF.
    t3 = t86.
    DATA(t94) = VALUE string( ).
    DATA(t95) = VALUE abap_bool( ).
    IF t3 IS INITIAL.
      t95 = abap_true.
    ELSEIF t3->has = abap_false.
      t95 = abap_true.
    ENDIF.
    IF t95 = abap_true.
      t94 = t1.
    ELSE.
      t94 = t3->value.
    ENDIF.
    result = t94.

  ENDMETHOD.

  METHOD is_rap_derived_entity_name.
    DATA(t1) = i_name.
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = VALUE abap_bool( ).
    DATA(t4) = VALUE i( ).
    DATA(t6) = `\`.
    DATA(t7) = strlen( t1 ).
    IF t6 IS INITIAL.
      t4 = 0.
    ELSE.
      FIND t6 IN t1 MATCH OFFSET t4.
      IF sy-subrc <> 0.
        t4 = -1.
      ENDIF.
    ENDIF.
    t3 = xsdbool( t4 >= 0 ).
    t2 = t3.
    IF t3 = abap_false.
      DATA(t10) = VALUE i( ).
      DATA(t12) = |~|.
      DATA(t13) = strlen( t1 ).
      IF t12 IS INITIAL.
        t10 = 0.
      ELSE.
        FIND t12 IN t1 MATCH OFFSET t10.
        IF sy-subrc <> 0.
          t10 = -1.
        ENDIF.
      ENDIF.
      t2 = xsdbool( t10 >= 0 ).
    ENDIF.
    result = t2.

  ENDMETHOD.

  METHOD is_rap_table_for.
    DATA(t1) = i_text.
    DATA(t2) = VALUE abap_bool( ).
    DATA(t4) = |TYPE TABLE FOR |.
    DATA(t5) = strlen( t1 ).
    DATA t6 TYPE i.
    DATA(t7) = VALUE i( ).
    DATA(t8) = VALUE string( ).
    t6 = strlen( t4 ).
    IF t6 = 0.
      t2 = abap_true.
    ELSEIF t6 <= t5.
      t7 = 0.
      t8 = t1+t7(t6).
      IF t8 = t4.
        t2 = abap_true.
      ENDIF.
    ENDIF.
    result = t2.

  ENDMETHOD.

  METHOD is_rap_type_structure.
    DATA(t1) = i_text.
    DATA(t2) = VALUE abap_bool( ).
    DATA(t3) = VALUE abap_bool( ).
    DATA(t4) = VALUE abap_bool( ).
    DATA(t6) = |TYPE STRUCTURE FOR |.
    DATA(t7) = strlen( t1 ).
    DATA t8 TYPE i.
    DATA(t9) = VALUE i( ).
    DATA(t10) = VALUE string( ).
    t8 = strlen( t6 ).
    IF t8 = 0.
      t4 = abap_true.
    ELSEIF t8 <= t7.
      t9 = 0.
      t10 = t1+t9(t8).
      IF t10 = t6.
        t4 = abap_true.
      ENDIF.
    ENDIF.
    t3 = t4.
    IF t4 = abap_false.
      DATA(t11) = VALUE abap_bool( ).
      DATA(t13) = |TYPE RESPONSE FOR |.
      DATA(t14) = strlen( t1 ).
      DATA t15 TYPE i.
      DATA(t16) = VALUE i( ).
      DATA(t17) = VALUE string( ).
      t15 = strlen( t13 ).
      IF t15 = 0.
        t11 = abap_true.
      ELSEIF t15 <= t14.
        t16 = 0.
        t17 = t1+t16(t15).
        IF t17 = t13.
          t11 = abap_true.
        ENDIF.
      ENDIF.
      t3 = t11.
    ENDIF.
    t2 = t3.
    IF t3 = abap_false.
      DATA(t18) = VALUE abap_bool( ).
      DATA(t20) = |TYPE REQUEST FOR |.
      DATA(t21) = strlen( t1 ).
      DATA t22 TYPE i.
      DATA(t23) = VALUE i( ).
      DATA(t24) = VALUE string( ).
      t22 = strlen( t20 ).
      IF t22 = 0.
        t18 = abap_true.
      ELSEIF t22 <= t21.
        t23 = 0.
        t24 = t1+t23(t22).
        IF t24 = t20.
          t18 = abap_true.
        ENDIF.
      ENDIF.
      t2 = t18.
    ENDIF.
    result = t2.

  ENDMETHOD.

  METHOD resolve_type_chain.
    DATA(t1) = i_expr.
    DATA(t2) = VALUE string( ).
    DATA t3 TYPE string.
    DATA t4 TYPE string.
    t4 = t1->concat_tokens( ).
    DATA(t6) = strlen( t4 ).
    t3 = t4.
    IF t3 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t3 TO UPPER CASE.
    ELSE.
      t3 = zlnt_runtime_uppe_91169605024d=>full( t3 ).
    ENDIF.
    t2 = t3.
    DATA(t8) = VALUE i( ).
    DATA(t10) = |-|.
    DATA(t11) = strlen( t2 ).
    IF t10 IS INITIAL.
      t8 = 0.
    ELSE.
      FIND t10 IN t2 MATCH OFFSET t8.
      IF sy-subrc <> 0.
        t8 = -1.
      ENDIF.
    ENDIF.
    IF xsdbool( t8 >= 0 ) = abap_true.
      DATA t13 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t16 TYPE REF TO zcl_lnt_current_scope.
      t16 = me->input_2fd0->scope.
      DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t22) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t22->has = abap_true.
      t22->value = t2.
      t18 = t22.
      DATA t24 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t26 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t26 = t18.
      DATA t28 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t30) = VALUE abap_bool( ).
      IF t26 IS INITIAL.
        t30 = abap_true.
      ELSEIF t26->has = abap_false.
        t30 = abap_true.
      ENDIF.
      IF t30 = abap_true.
      ELSE.
        DATA t34 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t34 = t16->current.
        DATA t37 TYPE REF TO zcl_lnt_typed_identifier.
        IF xsdbool( t34 IS INITIAL ) = abap_true.
        ELSE.
          DATA t42 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t42 = t34.
          DATA t44 TYPE string.
          t44 = t18->value.
          t37 = t42->find_type( i_name = t44 ).
        ENDIF.
        t24 = t37.
      ENDIF.
      t13 = t24.
      IF xsdbool( t13 IS BOUND ) = abap_true.
        DATA t48 TYPE REF TO zcl_lnt_current_scope.
        t48 = me->input_2fd0->scope.
        DATA t50 TYPE REF TO zcl_lnt_abstract_token.
        t50 = t1->get_first_token( ).
        DATA t55 TYPE REF TO zcl_lnt_typed_identifier.
        t55 = t13.
        DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CREATE OBJECT t57.
        t57->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t57->sval = |Type|.
        DATA t59 TYPE string.
        t59 = me->input_2fd0->filename.
        DATA t61 TYPE REF TO zcl_lnt_ireference_extras.
        t48->add_reference( i_usage = t50 i_referencing = t55 i_type_9913 = t57 i_filename = t59 i_extra = t61 ).
        result = t13->type_cba0.
        RETURN.
      ENDIF.
    ELSE.
      DATA(t71) = VALUE abap_bool( ).
      DATA(t72) = VALUE abap_bool( ).
      DATA(t74) = VALUE i( ).
      DATA(t76) = |=>|.
      DATA(t77) = strlen( t2 ).
      IF t76 IS INITIAL.
        t74 = 0.
      ELSE.
        FIND t76 IN t2 MATCH OFFSET t74.
        IF sy-subrc <> 0.
          t74 = -1.
        ENDIF.
      ENDIF.
      t72 = xsdbool( xsdbool( t74 >= 0 ) = abap_false ).
      t71 = t72.
      IF t72 = abap_true.
        DATA(t82) = VALUE i( ).
        DATA(t84) = |-|.
        DATA(t85) = strlen( t2 ).
        IF t84 IS INITIAL.
          t82 = 0.
        ELSE.
          FIND t84 IN t2 MATCH OFFSET t82.
          IF sy-subrc <> 0.
            t82 = -1.
          ENDIF.
        ENDIF.
        t71 = xsdbool( xsdbool( t82 >= 0 ) = abap_false ).
      ENDIF.
      IF t71 = abap_true.
        CLEAR result.
        RETURN.
      ENDIF.
    ENDIF.
    DATA t89 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t90 TYPE string.
    t90 = t2.
    DATA(t93) = VALUE i( ).
    DATA(t95) = |=>|.
    DATA(t96) = strlen( t2 ).
    IF t95 IS INITIAL.
      t93 = 0.
    ELSE.
      FIND t95 IN t2 MATCH OFFSET t93.
      IF sy-subrc <> 0.
        t93 = -1.
      ENDIF.
    ENDIF.
    IF xsdbool( t93 >= 0 ) = abap_true.
      DATA t98 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t99 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t101) = |=>|.
      DATA(t102) = strlen( t2 ).
      DATA t103 TYPE i.
      DATA(t104) = VALUE i( ).
      DATA(t105) = VALUE i( ).
      DATA t106 TYPE i.
      DATA(t107) = VALUE string( ).
      CREATE OBJECT t99.
      t106 = strlen( t101 ).
      t103 = 0.
      IF t106 = 0.
        WHILE t103 < t102.
          t107 = t2+t103(1).
          APPEND t107 TO t99->items.
          t103 = t103 + 1.
        ENDWHILE.
      ELSE.
        WHILE t103 <= t102.
          FIND FIRST OCCURRENCE OF t101 IN SECTION OFFSET t103 OF t2 MATCH OFFSET t104.
          IF sy-subrc = 0.
            t105 = t104 - t103.
          ELSE.
            t104 = -1.
            t105 = t102 - t103.
          ENDIF.
          CLEAR t107.
          IF t105 > 0.
            t107 = t2+t103(t105).
          ENDIF.
          APPEND t107 TO t99->items.
          IF t104 < 0.
            EXIT.
          ENDIF.
          t103 = t104 + t106.
        ENDWHILE.
      ENDIF.
      t98 = t99.
      DATA(t110) = VALUE string( ).
      IF t98->has( 1 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t98->load( ).
      READ TABLE t98->items INDEX 1 INTO t110.
      DATA(t112) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t112->has = abap_true.
      t112->value = t110.
      t89 = t112.
      DATA(t114) = VALUE string( ).
      IF t98->has( 2 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t98->load( ).
      READ TABLE t98->items INDEX 2 INTO t114.
      t90 = t114.
    ELSE.
      DATA(t117) = VALUE i( ).
      DATA(t119) = |->|.
      DATA(t120) = strlen( t2 ).
      IF t119 IS INITIAL.
        t117 = 0.
      ELSE.
        FIND t119 IN t2 MATCH OFFSET t117.
        IF sy-subrc <> 0.
          t117 = -1.
        ENDIF.
      ENDIF.
      IF xsdbool( t117 >= 0 ) = abap_true.
        DATA t122 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t123 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA(t125) = |->|.
        DATA(t126) = strlen( t2 ).
        DATA t127 TYPE i.
        DATA(t128) = VALUE i( ).
        DATA(t129) = VALUE i( ).
        DATA t130 TYPE i.
        DATA(t131) = VALUE string( ).
        CREATE OBJECT t123.
        t130 = strlen( t125 ).
        t127 = 0.
        IF t130 = 0.
          WHILE t127 < t126.
            t131 = t2+t127(1).
            APPEND t131 TO t123->items.
            t127 = t127 + 1.
          ENDWHILE.
        ELSE.
          WHILE t127 <= t126.
            FIND FIRST OCCURRENCE OF t125 IN SECTION OFFSET t127 OF t2 MATCH OFFSET t128.
            IF sy-subrc = 0.
              t129 = t128 - t127.
            ELSE.
              t128 = -1.
              t129 = t126 - t127.
            ENDIF.
            CLEAR t131.
            IF t129 > 0.
              t131 = t2+t127(t129).
            ENDIF.
            APPEND t131 TO t123->items.
            IF t128 < 0.
              EXIT.
            ENDIF.
            t127 = t128 + t130.
          ENDWHILE.
        ENDIF.
        t122 = t123.
        DATA(t134) = VALUE string( ).
        IF t122->has( 1 - 1 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t122->load( ).
        READ TABLE t122->items INDEX 1 INTO t134.
        DATA(t136) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t136->has = abap_true.
        t136->value = t134.
        t89 = t136.
        DATA(t138) = VALUE string( ).
        IF t122->has( 2 - 1 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t122->load( ).
        READ TABLE t122->items INDEX 2 INTO t138.
        t90 = t138.
      ENDIF.
    ENDIF.
    DATA t140 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA t141 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
    DATA(t143) = |-|.
    DATA(t144) = strlen( t90 ).
    DATA t145 TYPE i.
    DATA(t146) = VALUE i( ).
    DATA(t147) = VALUE i( ).
    DATA t148 TYPE i.
    DATA(t149) = VALUE string( ).
    CREATE OBJECT t141.
    t148 = strlen( t143 ).
    t145 = 0.
    IF t148 = 0.
      WHILE t145 < t144.
        t149 = t90+t145(1).
        APPEND t149 TO t141->items.
        t145 = t145 + 1.
      ENDWHILE.
    ELSE.
      WHILE t145 <= t144.
        FIND FIRST OCCURRENCE OF t143 IN SECTION OFFSET t145 OF t90 MATCH OFFSET t146.
        IF sy-subrc = 0.
          t147 = t146 - t145.
        ELSE.
          t146 = -1.
          t147 = t144 - t145.
        ENDIF.
        CLEAR t149.
        IF t147 > 0.
          t149 = t90+t145(t147).
        ENDIF.
        APPEND t149 TO t141->items.
        IF t146 < 0.
          EXIT.
        ENDIF.
        t145 = t146 + t148.
      ENDWHILE.
    ENDIF.
    t140 = t141.
    DATA t150 TYPE REF TO zcl_lnt_abstract_type.
    DATA(t152) = VALUE abap_bool( ).
    DATA(t153) = VALUE abap_bool( ).
    IF t89 IS BOUND.
      IF t89->has = abap_true.
        t153 = xsdbool( strlen( t89->value ) > 0 ).
      ENDIF.
    ENDIF.
    t152 = t153.
    IF t153 = abap_true.
      DATA(t156) = VALUE i( ).
      DATA(t158) = |=>|.
      DATA(t159) = strlen( t2 ).
      IF t158 IS INITIAL.
        t156 = 0.
      ELSE.
        FIND t158 IN t2 MATCH OFFSET t156.
        IF sy-subrc <> 0.
          t156 = -1.
        ENDIF.
      ENDIF.
      t152 = xsdbool( t156 >= 0 ).
    ENDIF.
    IF t152 = abap_true.
      DATA t161 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t162 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA(t164) = |=>|.
      DATA(t165) = strlen( t2 ).
      DATA t166 TYPE i.
      DATA(t167) = VALUE i( ).
      DATA(t168) = VALUE i( ).
      DATA t169 TYPE i.
      DATA(t170) = VALUE string( ).
      CREATE OBJECT t162.
      t169 = strlen( t164 ).
      t166 = 0.
      IF t169 = 0.
        WHILE t166 < t165.
          t170 = t2+t166(1).
          APPEND t170 TO t162->items.
          t166 = t166 + 1.
        ENDWHILE.
      ELSE.
        WHILE t166 <= t165.
          FIND FIRST OCCURRENCE OF t164 IN SECTION OFFSET t166 OF t2 MATCH OFFSET t167.
          IF sy-subrc = 0.
            t168 = t167 - t166.
          ELSE.
            t167 = -1.
            t168 = t165 - t166.
          ENDIF.
          CLEAR t170.
          IF t168 > 0.
            t170 = t2+t166(t168).
          ENDIF.
          APPEND t170 TO t162->items.
          IF t167 < 0.
            EXIT.
          ENDIF.
          t166 = t167 + t169.
        ENDWHILE.
      ENDIF.
      t161 = t162.
      DATA(t171) = VALUE string( ).
      DATA(t172) = VALUE string( ).
      IF t161->has( 1 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t161->load( ).
      READ TABLE t161->items INDEX 1 INTO t172.
      t171 = t172.
      DATA(t174) = VALUE abap_bool( ).
      DATA t175 TYPE abap_bool.
      DATA t176 TYPE abap_bool.
      DATA t177 TYPE string.
      t177 = me->input_2fd0->scope->get_type( ).
      t176 = xsdbool( t177 = |interface| ).
      t175 = t176.
      IF t176 = abap_false.
        DATA t182 TYPE string.
        t182 = me->input_2fd0->scope->get_type( ).
        t175 = xsdbool( t182 = |class_definition| ).
      ENDIF.
      t174 = t175.
      IF t175 = abap_true.
        DATA t187 TYPE string.
        DATA t188 TYPE string.
        t188 = me->input_2fd0->scope->get_name( ).
        DATA(t191) = strlen( t188 ).
        t187 = t188.
        IF t187 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t187 TO UPPER CASE.
        ELSE.
          t187 = zlnt_runtime_uppe_91169605024d=>full( t187 ).
        ENDIF.
        DATA t192 TYPE string.
        DATA(t194) = strlen( t171 ).
        t192 = t171.
        IF t192 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
          TRANSLATE t192 TO UPPER CASE.
        ELSE.
          t192 = zlnt_runtime_uppe_91169605024d=>full( t192 ).
        ENDIF.
        t174 = xsdbool( t187 = t192 ).
      ENDIF.
      IF t174 = abap_true.
        DATA t195 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t198 TYPE REF TO zcl_lnt_current_scope.
        t198 = me->input_2fd0->scope.
        DATA t200 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t200 = t140->get( p0 = 0 ).
        DATA t204 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t206 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t206 = t200.
        DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t210) = VALUE abap_bool( ).
        IF t206 IS INITIAL.
          t210 = abap_true.
        ELSEIF t206->has = abap_false.
          t210 = abap_true.
        ENDIF.
        IF t210 = abap_true.
        ELSE.
          DATA t214 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t214 = t198->current.
          DATA t217 TYPE REF TO zcl_lnt_typed_identifier.
          IF xsdbool( t214 IS INITIAL ) = abap_true.
          ELSE.
            DATA t222 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            t222 = t214.
            DATA t224 TYPE string.
            t224 = t200->value.
            t217 = t222->find_type( i_name = t224 ).
          ENDIF.
          t204 = t217.
        ENDIF.
        t195 = t204.
        DATA t227 TYPE REF TO zcl_lnt_typed_identifier.
        t227 = t195.
        DATA t229 TYPE REF TO zcl_lnt_abstract_type.
        IF xsdbool( t227 IS INITIAL ) = abap_true.
        ELSE.
          t229 = t227->type_cba0.
        ENDIF.
        t150 = t229.
        DATA t242 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF xsdbool( t150 IS INITIAL ) = abap_true.
          DATA(t248) = |Could not resolve type |.
          DATA(t250) = strlen( t248 ).
          DATA t251 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          result = NEW zcl_lnt_unknown_type( i_error = |{ t248 }{ t2 }| i_qualified_name = t251 ).
          RETURN.
        ENDIF.
        DATA t252 TYPE REF TO zcl_lnt_abstract_token.
        DATA t254 TYPE REF TO zif_lnt_union_4cf1d054.
        DATA t255 TYPE REF TO zif_lnt_union_4cf1d054.
        DATA t256 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t257 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t258 TYPE REF TO zcl_lnt_abstract_node.
        t258 = t1.
        t257 = t258->children.
        t256 ?= t257.
        DATA t263 TYPE REF TO object.
        t263 = t256->get( p0 = 2 ).
        DATA t264 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t263 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t264 ?= t263.
          DATA t265 TYPE REF TO object.
          t265 = t264->as_ref( ).
          t255 ?= t265.
        ELSE.
          t255 ?= t263.
        ENDIF.
        t254 = t255.
        DATA t266 TYPE REF TO zcl_lnt_abstract_token.
        IF xsdbool( t254 IS INITIAL ) = abap_true.
        ELSE.
          t266 = t254->get_first_token( ).
        ENDIF.
        t252 = t266.
        DATA t274 TYPE REF TO zcl_lnt_abstract_token.
        t274 = t252.
        IF xsdbool( t274 IS BOUND ) = abap_true.
          DATA t276 TYPE REF TO zcl_lnt_current_scope.
          t276 = me->input_2fd0->scope.
          DATA t278 TYPE REF TO zcl_lnt_abstract_token.
          t278 = t252.
          DATA t284 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CREATE OBJECT t284.
          t284->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t284->sval = |Type|.
          DATA t286 TYPE string.
          t286 = me->input_2fd0->filename.
          DATA t288 TYPE REF TO zcl_lnt_ireference_extras.
          t276->add_reference( i_usage = t278 i_referencing = t195 i_type_9913 = t284 i_filename = t286 i_extra = t288 ).
        ENDIF.
      ELSE.
        DATA t289 TYPE REF TO zif_lnt_interface_definition.
        DATA t291 TYPE REF TO zcl_lnt_current_scope.
        t291 = me->input_2fd0->scope.
        DATA t294 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t298) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t298->has = abap_true.
        t298->value = t171.
        t294 = t298.
        DATA t300 TYPE REF TO zif_lnt_interface_definition.
        DATA t302 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t302 = t294.
        DATA t304 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t306) = VALUE abap_bool( ).
        IF t302 IS INITIAL.
          t306 = abap_true.
        ELSEIF t302->has = abap_false.
          t306 = abap_true.
        ENDIF.
        IF t306 = abap_true.
        ELSE.
          DATA t310 TYPE REF TO zif_lnt_class_definition.
          DATA t312 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t315 TYPE string.
          t315 = t294->value.
          DATA(t317) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t317->has = abap_true.
          t317->value = t315.
          t312 = t317.
          DATA t319 TYPE REF TO zif_lnt_class_definition.
          DATA t321 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t321 = t312.
          DATA t323 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t325) = VALUE abap_bool( ).
          IF t321 IS INITIAL.
            t325 = abap_true.
          ELSEIF t321->has = abap_false.
            t325 = abap_true.
          ENDIF.
          IF t325 = abap_true.
          ELSE.
            DATA t329 TYPE REF TO zif_lnt_class_definition.
            DATA t331 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            t331 = t291->current.
            DATA t334 TYPE REF TO zif_lnt_class_definition.
            IF xsdbool( t331 IS INITIAL ) = abap_true.
            ELSE.
              DATA t339 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              t339 = t331.
              DATA t341 TYPE string.
              t341 = t312->value.
              t334 = t339->find_class_definition( i_name = t341 ).
            ENDIF.
            t329 = t334.
            DATA t343 TYPE REF TO zif_lnt_class_definition.
            IF xsdbool( t329 IS BOUND ) = abap_true.
              t343 = t329.
            ELSE.
              DATA t352 TYPE REF TO zcl_lnt_class.
              DATA t353 TYPE REF TO zcl_lnt_class.
              DATA t355 TYPE REF TO zif_lnt_registry.
              t355 = t291->reg.
              DATA t357 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA(t360) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t360->has = abap_true.
              t360->value = |CLAS|.
              t357 = t360.
              DATA t364 TYPE string.
              t364 = t312->value.
              DATA(t366) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t366->has = abap_true.
              t366->value = t364.
              DATA t368 TYPE REF TO object.
              t368 = t355->get_object( i_type_9913 = t357 i_name = t366 ).
              t353 ?= t368.
              t352 = t353.
              DATA t369 TYPE REF TO zif_lnt_class_definition.
              IF xsdbool( t352 IS BOUND ) = abap_true.
                t369 = t352->gt_dfn_ins_src_obj_cls_ts_clss( ).
              ELSE.
                CLEAR t369.
              ENDIF.
              t343 = t369.
            ENDIF.
            t319 = t343.
          ENDIF.
          t310 = t319.
          DATA t376 TYPE REF TO zif_lnt_interface_definition.
          IF xsdbool( t310 IS BOUND ) = abap_true.
            DATA t379 TYPE REF TO zif_lnt_interface_definition.
            DATA t380 TYPE REF TO zif_lnt_class_definition.
            t380 = t310.
            t379 ?= t380.
            t376 = t379.
          ELSE.
            DATA t383 TYPE REF TO zif_lnt_interface_definition.
            DATA t385 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t388 TYPE string.
            t388 = t294->value.
            DATA(t390) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t390->has = abap_true.
            t390->value = t388.
            t385 = t390.
            DATA t392 TYPE REF TO zif_lnt_interface_definition.
            DATA t394 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            t394 = t385.
            DATA t396 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA(t398) = VALUE abap_bool( ).
            IF t394 IS INITIAL.
              t398 = abap_true.
            ELSEIF t394->has = abap_false.
              t398 = abap_true.
            ENDIF.
            IF t398 = abap_true.
            ELSE.
              DATA t402 TYPE REF TO zif_lnt_interface_definition.
              DATA t404 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              t404 = t291->current.
              DATA t407 TYPE REF TO zif_lnt_interface_definition.
              IF xsdbool( t404 IS INITIAL ) = abap_true.
              ELSE.
                DATA t412 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                t412 = t404.
                DATA t414 TYPE string.
                t414 = t385->value.
                t407 = t412->find_interface_definition( i_name = t414 ).
              ENDIF.
              t402 = t407.
              DATA t416 TYPE REF TO zif_lnt_interface_definition.
              IF xsdbool( t402 IS BOUND ) = abap_true.
                t416 = t402.
              ELSE.
                DATA t425 TYPE REF TO zcl_lnt_ob_interface.
                DATA t426 TYPE REF TO zcl_lnt_ob_interface.
                DATA t428 TYPE REF TO zif_lnt_registry.
                t428 = t291->reg.
                DATA t430 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA(t433) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t433->has = abap_true.
                t433->value = |INTF|.
                t430 = t433.
                DATA t437 TYPE string.
                t437 = t385->value.
                DATA(t439) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t439->has = abap_true.
                t439->value = t437.
                DATA t441 TYPE REF TO object.
                t441 = t428->get_object( i_type_9913 = t430 i_name = t439 ).
                t426 ?= t441.
                t425 = t426.
                DATA t442 TYPE REF TO zif_lnt_interface_definition.
                IF xsdbool( t425 IS BOUND ) = abap_true.
                  t442 = t425->def.
                ELSE.
                  CLEAR t442.
                ENDIF.
                t416 = t442.
              ENDIF.
              t392 = t416.
            ENDIF.
            t383 = t392.
            DATA t452 TYPE REF TO zif_lnt_interface_definition.
            IF xsdbool( t383 IS BOUND ) = abap_true.
              t452 = t383.
            ELSE.
              CLEAR t452.
            ENDIF.
            t376 = t452.
          ENDIF.
          t300 = t376.
        ENDIF.
        t289 = t300.
        DATA(t461) = VALUE abap_bool( ).
        DATA(t462) = VALUE abap_bool( ).
        DATA t465 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t462 = xsdbool( t289 IS INITIAL ).
        t461 = t462.
        IF t462 = abap_true.
          DATA t476 TYPE REF TO zcl_lnt_ddic.
          DATA t477 TYPE REF TO zif_lnt_registry.
          t477 = me->input_2fd0->scope->reg.
          t476 = NEW zcl_lnt_ddic( i_reg_f149 = t477 ).
          DATA t479 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t483) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t483->has = abap_true.
          t483->value = t171.
          t479 = t483.
          DATA(t485) = VALUE abap_bool( ).
          DATA t487 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t487 = t479.
          DATA t489 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t491) = VALUE abap_bool( ).
          IF t487 IS INITIAL.
            t491 = abap_true.
          ELSEIF t487->has = abap_false.
            t491 = abap_true.
          ENDIF.
          IF t491 = abap_true.
            t485 = abap_true.
          ELSE.
            DATA t495 TYPE REF TO zif_lnt_registry.
            t495 = t476->reg.
            DATA t497 TYPE string.
            t497 = t479->value.
            t485 = t495->in_error_namespace( i_name = t497 ).
          ENDIF.
          t461 = xsdbool( t485 = abap_false ).
        ENDIF.
        IF t461 = abap_true.
          DATA t500 TYPE REF TO zcl_lnt_current_scope.
          t500 = me->input_2fd0->scope.
          DATA t502 TYPE REF TO zcl_lnt_abstract_token.
          t502 = t1->get_first_token( ).
          DATA t507 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t508 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CREATE OBJECT t508.
          t508->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t508->sval = |Object (Void)|.
          DATA t510 TYPE string.
          t510 = me->input_2fd0->filename.
          DATA t514 TYPE REF TO zcl_lnt_ireference_extras.
          DATA t518 TYPE string.
          DATA(t520) = strlen( t171 ).
          t518 = t171.
          IF t518 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
            TRANSLATE t518 TO UPPER CASE.
          ELSE.
            t518 = zlnt_runtime_uppe_91169605024d=>full( t518 ).
          ENDIF.
          DATA(t521) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t521->has = abap_true.
          t521->value = t518.
          DATA t523 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA t525 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
          t514 = NEW zcl_lnt_ireference_extras( i_oo_name = t521 i_oo_type = t523 i_found_qualified = t525 ).
          CREATE OBJECT t514->zlnt_view_ownkeys_b0e8086400eb.
          t514->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t527 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t514->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooName` p1 = t527 ).
          CREATE OBJECT t514->zlnt_json_ownkeys_70e5fd461788.
          t514->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
          DATA t529 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t514->zlnt_json_ownkeys_70e5fd461788->put( p0 = |ooName| p1 = t529 ).
          t500->add_reference( i_usage = t502 i_referencing = t507 i_type_9913 = t508 i_filename = t510 i_extra = t514 ).
          DATA(t535) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t535->has = abap_true.
          t535->value = t171.
          DATA t537 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          result = zcl_lnt_void_type=>get_db65( i_voided = t535 i_qualified_name = t537 ).
          RETURN.
        ELSE.
          DATA t541 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF xsdbool( t289 IS INITIAL ) = abap_true.
            DATA t547 TYPE string.
            DATA(t548) = |Could not resolve top |.
            DATA(t550) = strlen( t548 ).
            t547 = |{ t548 }{ t171 }|.
            DATA(t552) = strlen( t547 ).
            DATA t553 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            result = NEW zcl_lnt_unknown_type( i_error = |{ t547 }{ |, resolveTypeChain| }| i_qualified_name = t553 ).
            RETURN.
          ENDIF.
        ENDIF.
        DATA(t555) = VALUE string( ).
        IF xsdbool( t289 IS BOUND AND t289 IS INSTANCE OF zcl_lnt_ty_class_definition ) = abap_true.
          t555 = |CLAS|.
        ELSE.
          t555 = |INTF|.
        ENDIF.
        DATA t560 TYPE REF TO zcl_lnt_current_scope.
        t560 = me->input_2fd0->scope.
        DATA t562 TYPE REF TO zcl_lnt_abstract_token.
        t562 = t1->get_first_token( ).
        DATA t567 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t569 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t570 TYPE REF TO zif_lnt_interface_definition.
        t570 = t289.
        t569 ?= t570.
        t567 = t569.
        DATA t573 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CREATE OBJECT t573.
        t573->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t573->sval = |Object|.
        DATA t575 TYPE string.
        t575 = me->input_2fd0->filename.
        DATA t579 TYPE REF TO zcl_lnt_ireference_extras.
        DATA t580 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t584) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t584->has = abap_true.
        t584->value = t555.
        t580 = t584.
        DATA(t590) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t590->has = abap_true.
        t590->value = t171.
        DATA t592 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        t579 = NEW zcl_lnt_ireference_extras( i_oo_name = t590 i_oo_type = t580 i_found_qualified = t592 ).
        CREATE OBJECT t579->zlnt_view_ownkeys_b0e8086400eb.
        t579->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t594 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t579->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooType` p1 = t594 ).
        DATA t595 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t579->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t579->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooName` p1 = t595 ).
        ENDIF.
        CREATE OBJECT t579->zlnt_json_ownkeys_70e5fd461788.
        t579->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t597 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t579->zlnt_json_ownkeys_70e5fd461788->put( p0 = |ooType| p1 = t597 ).
        DATA t599 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t579->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t579->zlnt_json_ownkeys_70e5fd461788->put( p0 = |ooName| p1 = t599 ).
        ENDIF.
        t560->add_reference( i_usage = t562 i_referencing = t567 i_type_9913 = t573 i_filename = t575 i_extra = t579 ).
        DATA t601 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t604 TYPE REF TO zcl_lnt_current_scope.
        t604 = me->input_2fd0->scope.
        t601 = NEW zcl_lnt_object_oriented( i_scope = t604 )->search_type_name( i_def = t289 i_name = t140->get( p0 = 0 ) ).
        DATA t615 TYPE REF TO zcl_lnt_typed_identifier.
        t615 = t601.
        DATA t617 TYPE REF TO zcl_lnt_abstract_type.
        IF xsdbool( t615 IS INITIAL ) = abap_true.
        ELSE.
          t617 = t615->type_cba0.
        ENDIF.
        t150 = t617.
        DATA(t627) = VALUE abap_bool( ).
        DATA(t628) = VALUE abap_bool( ).
        DATA t631 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t628 = xsdbool( t601 IS INITIAL ).
        t627 = t628.
        IF t628 = abap_false.
          DATA t638 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t627 = xsdbool( t150 IS INITIAL ).
        ENDIF.
        IF t627 = abap_true.
          DATA(t644) = VALUE string( ).
          IF t140->has( 1 - 1 ) = abap_false.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t140->load( ).
          READ TABLE t140->items INDEX 1 INTO t644.
          DATA(t647) = strlen( t644 ).
          DATA t648 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          result = NEW zcl_lnt_unknown_type( i_error = |{ t644 }{ | not found in class or interface| }| i_qualified_name = t648 ).
          RETURN.
        ENDIF.
        DATA t649 TYPE REF TO zcl_lnt_abstract_token.
        DATA t651 TYPE REF TO zif_lnt_union_4cf1d054.
        DATA t652 TYPE REF TO zif_lnt_union_4cf1d054.
        DATA t653 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t654 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        DATA t655 TYPE REF TO zcl_lnt_abstract_node.
        t655 = t1.
        t654 = t655->children.
        t653 ?= t654.
        DATA t660 TYPE REF TO object.
        t660 = t653->get( p0 = 2 ).
        DATA t661 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t660 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
          t661 ?= t660.
          DATA t662 TYPE REF TO object.
          t662 = t661->as_ref( ).
          t652 ?= t662.
        ELSE.
          t652 ?= t660.
        ENDIF.
        t651 = t652.
        DATA t663 TYPE REF TO zcl_lnt_abstract_token.
        IF xsdbool( t651 IS INITIAL ) = abap_true.
        ELSE.
          t663 = t651->get_first_token( ).
        ENDIF.
        t649 = t663.
        DATA t671 TYPE REF TO zcl_lnt_abstract_token.
        t671 = t649.
        IF xsdbool( t671 IS BOUND ) = abap_true.
          DATA t673 TYPE REF TO zcl_lnt_current_scope.
          t673 = me->input_2fd0->scope.
          DATA t675 TYPE REF TO zcl_lnt_abstract_token.
          t675 = t649.
          DATA t680 TYPE REF TO zcl_lnt_typed_identifier.
          t680 = t601.
          DATA t682 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CREATE OBJECT t682.
          t682->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t682->sval = |Type|.
          DATA t684 TYPE string.
          t684 = me->input_2fd0->filename.
          DATA t686 TYPE REF TO zcl_lnt_ireference_extras.
          t673->add_reference( i_usage = t675 i_referencing = t680 i_type_9913 = t682 i_filename = t684 i_extra = t686 ).
        ENDIF.
      ENDIF.
    ELSE.
      DATA(t687) = VALUE abap_bool( ).
      DATA(t688) = VALUE abap_bool( ).
      IF t89 IS BOUND.
        IF t89->has = abap_true.
          t688 = xsdbool( strlen( t89->value ) > 0 ).
        ENDIF.
      ENDIF.
      t687 = t688.
      IF t688 = abap_true.
        DATA(t691) = VALUE i( ).
        DATA(t693) = |->|.
        DATA(t694) = strlen( t2 ).
        IF t693 IS INITIAL.
          t691 = 0.
        ELSE.
          FIND t693 IN t2 MATCH OFFSET t691.
          IF sy-subrc <> 0.
            t691 = -1.
          ENDIF.
        ENDIF.
        t687 = xsdbool( t691 >= 0 ).
      ENDIF.
      IF t687 = abap_true.
        DATA t698 TYPE REF TO zcl_lnt_current_scope.
        t698 = me->input_2fd0->scope.
        DATA t701 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t704 TYPE string.
        t704 = t89->value.
        DATA(t706) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t706->has = abap_true.
        t706->value = t704.
        t701 = t706.
        DATA t708 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t710 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t710 = t701.
        DATA t712 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t714) = VALUE abap_bool( ).
        IF t710 IS INITIAL.
          t714 = abap_true.
        ELSEIF t710->has = abap_false.
          t714 = abap_true.
        ENDIF.
        IF t714 = abap_true.
        ELSE.
          DATA t718 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t720 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t720 = t698->current.
          DATA t723 TYPE REF TO zcl_lnt_typed_identifier.
          IF xsdbool( t720 IS INITIAL ) = abap_true.
          ELSE.
            DATA t728 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            t728 = t720.
            DATA t730 TYPE string.
            t730 = t701->value.
            t723 = t728->find_variable( i_name = t730 ).
          ENDIF.
          t718 = t723.
          DATA t732 TYPE REF TO zcl_lnt_typed_identifier.
          IF xsdbool( t718 IS BOUND ) = abap_true.
            t732 = t718.
          ELSE.
            DATA t744 TYPE string.
            t744 = t701->value.
            DATA(t746) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t746->has = abap_true.
            t746->value = t744.
            t732 = t698->find_type_pool_constant( i_name = t746 ).
          ENDIF.
          t708 = t732.
        ENDIF.
        DATA t748 TYPE REF TO zcl_lnt_abstract_type.
        DATA t750 TYPE REF TO zcl_lnt_typed_identifier.
        t750 = t708.
        DATA t752 TYPE REF TO zcl_lnt_abstract_type.
        IF xsdbool( t750 IS INITIAL ) = abap_true.
        ELSE.
          t752 = t750->type_cba0.
        ENDIF.
        t748 = t752.
        IF xsdbool( t748 IS BOUND AND t748 IS INSTANCE OF zcl_lnt_object_reference_type ) = abap_true.
          DATA(t764) = VALUE string( ).
          DATA(t765) = VALUE string( ).
          IF t140->has( 1 - 1 ) = abap_false.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t140->load( ).
          READ TABLE t140->items INDEX 1 INTO t765.
          t764 = t765.
          DATA t767 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t770 TYPE REF TO zcl_lnt_object_reference_type.
          t770 ?= t748.
          t767 = t770->identifier.
          DATA t775 TYPE abap_bool.
          DATA t776 TYPE abap_bool.
          DATA(t777) = t767.
          t776 = xsdbool( t777 IS BOUND AND t777 IS INSTANCE OF zcl_lnt_ty_class_definition ).
          t775 = t776.
          IF t776 = abap_false.
            DATA(t779) = t767.
            t775 = xsdbool( t779 IS BOUND AND t779 IS INSTANCE OF zcl_lnt_interface_definition ).
          ENDIF.
          IF xsdbool( t775 = abap_false ) = abap_true.
            DATA t780 TYPE REF TO zif_lnt_interface_definition.
            DATA t782 TYPE REF TO zcl_lnt_current_scope.
            t782 = me->input_2fd0->scope.
            DATA t785 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t790 TYPE REF TO zcl_lnt_object_reference_type.
            t790 ?= t748.
            DATA t797 TYPE string.
            t797 = t790->identifier->token->str.
            DATA(t805) = VALUE string( ).
            DATA(t806) = t797.
            DATA(t807) = 0.
            DATA(t808) = 1.
            DATA(t809) = strlen( t806 ).
            IF t807 < 0.
              t807 = t807 + t809.
              IF t807 < 0.
                t807 = 0.
              ENDIF.
            ENDIF.
            IF t807 > t809 OR t808 <= 0.
            ELSE.
              IF t808 > t809 - t807.
                t808 = t809 - t807.
              ENDIF.
              t805 = t806+t807(t808).
            ENDIF.
            IF xsdbool( t805 = |!| ) = abap_true.
              DATA t812 TYPE string.
              t812 = t797.
              DATA(t814) = VALUE string( ).
              DATA(t816) = 1.
              DATA t817 TYPE i.
              t817 = strlen( t812 ).
              DATA(t820) = strlen( t812 ).
              IF t816 < 0.
                t816 = t816 + t820.
                IF t816 < 0.
                  t816 = 0.
                ENDIF.
              ENDIF.
              IF t816 > t820 OR t817 <= 0.
              ELSE.
                IF t817 > t820 - t816.
                  t817 = t820 - t816.
                ENDIF.
                t814 = t812+t816(t817).
              ENDIF.
              t797 = t814.
            ENDIF.
            DATA(t822) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t822->has = abap_true.
            t822->value = t797.
            t785 = t822.
            DATA t824 TYPE REF TO zif_lnt_interface_definition.
            DATA t826 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            t826 = t785.
            DATA t828 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA(t830) = VALUE abap_bool( ).
            IF t826 IS INITIAL.
              t830 = abap_true.
            ELSEIF t826->has = abap_false.
              t830 = abap_true.
            ENDIF.
            IF t830 = abap_true.
            ELSE.
              DATA t834 TYPE REF TO zif_lnt_class_definition.
              DATA t836 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA t839 TYPE string.
              t839 = t785->value.
              DATA(t841) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t841->has = abap_true.
              t841->value = t839.
              t836 = t841.
              DATA t843 TYPE REF TO zif_lnt_class_definition.
              DATA t845 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              t845 = t836.
              DATA t847 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              DATA(t849) = VALUE abap_bool( ).
              IF t845 IS INITIAL.
                t849 = abap_true.
              ELSEIF t845->has = abap_false.
                t849 = abap_true.
              ENDIF.
              IF t849 = abap_true.
              ELSE.
                DATA t853 TYPE REF TO zif_lnt_class_definition.
                DATA t855 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                t855 = t782->current.
                DATA t858 TYPE REF TO zif_lnt_class_definition.
                IF xsdbool( t855 IS INITIAL ) = abap_true.
                ELSE.
                  DATA t863 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                  t863 = t855.
                  DATA t865 TYPE string.
                  t865 = t836->value.
                  t858 = t863->find_class_definition( i_name = t865 ).
                ENDIF.
                t853 = t858.
                DATA t867 TYPE REF TO zif_lnt_class_definition.
                IF xsdbool( t853 IS BOUND ) = abap_true.
                  t867 = t853.
                ELSE.
                  DATA t876 TYPE REF TO zcl_lnt_class.
                  DATA t877 TYPE REF TO zcl_lnt_class.
                  DATA t879 TYPE REF TO zif_lnt_registry.
                  t879 = t782->reg.
                  DATA t881 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  DATA(t884) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t884->has = abap_true.
                  t884->value = |CLAS|.
                  t881 = t884.
                  DATA t888 TYPE string.
                  t888 = t836->value.
                  DATA(t890) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t890->has = abap_true.
                  t890->value = t888.
                  DATA t892 TYPE REF TO object.
                  t892 = t879->get_object( i_type_9913 = t881 i_name = t890 ).
                  t877 ?= t892.
                  t876 = t877.
                  DATA t893 TYPE REF TO zif_lnt_class_definition.
                  IF xsdbool( t876 IS BOUND ) = abap_true.
                    t893 = t876->gt_dfn_ins_src_obj_cls_ts_clss( ).
                  ELSE.
                    CLEAR t893.
                  ENDIF.
                  t867 = t893.
                ENDIF.
                t843 = t867.
              ENDIF.
              t834 = t843.
              DATA t900 TYPE REF TO zif_lnt_interface_definition.
              IF xsdbool( t834 IS BOUND ) = abap_true.
                DATA t903 TYPE REF TO zif_lnt_interface_definition.
                DATA t904 TYPE REF TO zif_lnt_class_definition.
                t904 = t834.
                t903 ?= t904.
                t900 = t903.
              ELSE.
                DATA t907 TYPE REF TO zif_lnt_interface_definition.
                DATA t909 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA t912 TYPE string.
                t912 = t785->value.
                DATA(t914) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t914->has = abap_true.
                t914->value = t912.
                t909 = t914.
                DATA t916 TYPE REF TO zif_lnt_interface_definition.
                DATA t918 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                t918 = t909.
                DATA t920 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                DATA(t922) = VALUE abap_bool( ).
                IF t918 IS INITIAL.
                  t922 = abap_true.
                ELSEIF t918->has = abap_false.
                  t922 = abap_true.
                ENDIF.
                IF t922 = abap_true.
                ELSE.
                  DATA t926 TYPE REF TO zif_lnt_interface_definition.
                  DATA t928 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                  t928 = t782->current.
                  DATA t931 TYPE REF TO zif_lnt_interface_definition.
                  IF xsdbool( t928 IS INITIAL ) = abap_true.
                  ELSE.
                    DATA t936 TYPE REF TO zcl_lnt_spaghetti_scope_node.
                    t936 = t928.
                    DATA t938 TYPE string.
                    t938 = t909->value.
                    t931 = t936->find_interface_definition( i_name = t938 ).
                  ENDIF.
                  t926 = t931.
                  DATA t940 TYPE REF TO zif_lnt_interface_definition.
                  IF xsdbool( t926 IS BOUND ) = abap_true.
                    t940 = t926.
                  ELSE.
                    DATA t949 TYPE REF TO zcl_lnt_ob_interface.
                    DATA t950 TYPE REF TO zcl_lnt_ob_interface.
                    DATA t952 TYPE REF TO zif_lnt_registry.
                    t952 = t782->reg.
                    DATA t954 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    DATA(t957) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t957->has = abap_true.
                    t957->value = |INTF|.
                    t954 = t957.
                    DATA t961 TYPE string.
                    t961 = t909->value.
                    DATA(t963) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t963->has = abap_true.
                    t963->value = t961.
                    DATA t965 TYPE REF TO object.
                    t965 = t952->get_object( i_type_9913 = t954 i_name = t963 ).
                    t950 ?= t965.
                    t949 = t950.
                    DATA t966 TYPE REF TO zif_lnt_interface_definition.
                    IF xsdbool( t949 IS BOUND ) = abap_true.
                      t966 = t949->def.
                    ELSE.
                      CLEAR t966.
                    ENDIF.
                    t940 = t966.
                  ENDIF.
                  t916 = t940.
                ENDIF.
                t907 = t916.
                DATA t976 TYPE REF TO zif_lnt_interface_definition.
                IF xsdbool( t907 IS BOUND ) = abap_true.
                  t976 = t907.
                ELSE.
                  CLEAR t976.
                ENDIF.
                t900 = t976.
              ENDIF.
              t824 = t900.
            ENDIF.
            t780 = t824.
            IF xsdbool( t780 IS BOUND ) = abap_true.
              DATA t987 TYPE REF TO zcl_lnt_fi_identifier.
              DATA t988 TYPE REF TO zif_lnt_interface_definition.
              t988 = t780.
              t987 ?= t988.
              t767 = t987.
            ELSE.
              DATA(t992) = VALUE string( ).
              DATA t994 TYPE REF TO zcl_lnt_object_reference_type.
              t994 ?= t748.
              DATA t1001 TYPE string.
              t1001 = t994->identifier->token->str.
              DATA(t1009) = VALUE string( ).
              DATA(t1010) = t1001.
              DATA(t1011) = 0.
              DATA(t1012) = 1.
              DATA(t1013) = strlen( t1010 ).
              IF t1011 < 0.
                t1011 = t1011 + t1013.
                IF t1011 < 0.
                  t1011 = 0.
                ENDIF.
              ENDIF.
              IF t1011 > t1013 OR t1012 <= 0.
              ELSE.
                IF t1012 > t1013 - t1011.
                  t1012 = t1013 - t1011.
                ENDIF.
                t1009 = t1010+t1011(t1012).
              ENDIF.
              IF xsdbool( t1009 = |!| ) = abap_true.
                DATA t1016 TYPE string.
                t1016 = t1001.
                DATA(t1018) = VALUE string( ).
                DATA(t1020) = 1.
                DATA t1021 TYPE i.
                t1021 = strlen( t1016 ).
                DATA(t1024) = strlen( t1016 ).
                IF t1020 < 0.
                  t1020 = t1020 + t1024.
                  IF t1020 < 0.
                    t1020 = 0.
                  ENDIF.
                ENDIF.
                IF t1020 > t1024 OR t1021 <= 0.
                ELSE.
                  IF t1021 > t1024 - t1020.
                    t1021 = t1024 - t1020.
                  ENDIF.
                  t1018 = t1016+t1020(t1021).
                ENDIF.
                t1001 = t1018.
              ENDIF.
              t992 = t1001.
              DATA(t1027) = strlen( t992 ).
              DATA t1028 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              result = NEW zcl_lnt_unknown_type( i_error = |{ t992 }{ | not found in scope| }| i_qualified_name = t1028 ).
              RETURN.
            ENDIF.
          ENDIF.
          DATA t1029 TYPE abap_bool.
          DATA t1030 TYPE abap_bool.
          t1030 = xsdbool( t767 IS BOUND AND t767 IS INSTANCE OF zcl_lnt_ty_class_definition ).
          t1029 = t1030.
          IF t1030 = abap_false.
            t1029 = xsdbool( t767 IS BOUND AND t767 IS INSTANCE OF zcl_lnt_interface_definition ).
          ENDIF.
          IF t1029 = abap_true.
            DATA(t1035) = VALUE string( ).
            IF xsdbool( t767 IS BOUND AND t767 IS INSTANCE OF zcl_lnt_ty_class_definition ) = abap_true.
              t1035 = |CLAS|.
            ELSE.
              t1035 = |INTF|.
            ENDIF.
            DATA t1040 TYPE REF TO zcl_lnt_current_scope.
            t1040 = me->input_2fd0->scope.
            DATA t1042 TYPE REF TO zcl_lnt_abstract_token.
            t1042 = t1->get_first_token( ).
            DATA t1047 TYPE REF TO zcl_lnt_fi_identifier.
            DATA t1049 TYPE REF TO zcl_lnt_fi_identifier.
            DATA t1050 TYPE REF TO zif_lnt_union_865ccdda.
            t1050 ?= t767.
            t1049 ?= t1050.
            t1047 = t1049.
            DATA t1053 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CREATE OBJECT t1053.
            t1053->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
            t1053->sval = |Object|.
            DATA t1055 TYPE string.
            t1055 = me->input_2fd0->filename.
            DATA t1059 TYPE REF TO zcl_lnt_ireference_extras.
            DATA t1060 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t1064) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t1064->has = abap_true.
            t1064->value = t1035.
            t1060 = t1064.
            DATA t1069 TYPE string.
            DATA t1070 TYPE REF TO zif_lnt_union_865ccdda.
            t1070 ?= t767.
            t1069 = t1070->get_name( ).
            DATA(t1072) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t1072->has = abap_true.
            t1072->value = t1069.
            DATA t1074 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            t1059 = NEW zcl_lnt_ireference_extras( i_oo_name = t1072 i_oo_type = t1060 i_found_qualified = t1074 ).
            CREATE OBJECT t1059->zlnt_view_ownkeys_b0e8086400eb.
            t1059->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t1076 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            t1059->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooType` p1 = t1076 ).
            DATA t1077 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            IF t1059->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t1059->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooName` p1 = t1077 ).
            ENDIF.
            CREATE OBJECT t1059->zlnt_json_ownkeys_70e5fd461788.
            t1059->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t1079 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            t1059->zlnt_json_ownkeys_70e5fd461788->put( p0 = |ooType| p1 = t1079 ).
            DATA t1081 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            IF t1059->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t1059->zlnt_json_ownkeys_70e5fd461788->put( p0 = |ooName| p1 = t1081 ).
            ENDIF.
            t1040->add_reference( i_usage = t1042 i_referencing = t1047 i_type_9913 = t1053 i_filename = t1055 i_extra = t1059 ).
            DATA t1083 TYPE REF TO zcl_lnt_typed_identifier.
            DATA t1085 TYPE REF TO zcl_lnt_object_oriented.
            DATA t1086 TYPE REF TO zcl_lnt_current_scope.
            t1086 = me->input_2fd0->scope.
            t1085 = NEW zcl_lnt_object_oriented( i_scope = t1086 ).
            DATA t1088 TYPE REF TO zif_lnt_interface_definition.
            DATA t1089 TYPE REF TO zif_lnt_union_865ccdda.
            t1089 ?= t767.
            t1088 ?= t1089.
            DATA(t1094) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t1094->has = abap_true.
            t1094->value = t764.
            t1083 = t1085->search_type_name( i_def = t1088 i_name = t1094 ).
            DATA t1097 TYPE REF TO zcl_lnt_typed_identifier.
            t1097 = t1083.
            DATA t1099 TYPE REF TO zcl_lnt_abstract_type.
            IF xsdbool( t1097 IS INITIAL ) = abap_true.
            ELSE.
              t1099 = t1097->type_cba0.
            ENDIF.
            t150 = t1099.
            DATA(t1109) = VALUE abap_bool( ).
            DATA(t1110) = VALUE abap_bool( ).
            DATA t1113 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            t1110 = xsdbool( t1083 IS INITIAL ).
            t1109 = t1110.
            IF t1110 = abap_false.
              DATA t1120 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              t1109 = xsdbool( t150 IS INITIAL ).
            ENDIF.
            IF t1109 = abap_true.
              DATA(t1128) = strlen( t764 ).
              DATA t1129 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              result = NEW zcl_lnt_unknown_type( i_error = |{ t764 }{ | not found in class or interface| }| i_qualified_name = t1129 ).
              RETURN.
            ENDIF.
            DATA t1130 TYPE REF TO zcl_lnt_abstract_token.
            DATA t1132 TYPE REF TO zif_lnt_union_4cf1d054.
            DATA t1133 TYPE REF TO zif_lnt_union_4cf1d054.
            DATA t1134 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA t1135 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
            DATA t1136 TYPE REF TO zcl_lnt_abstract_node.
            t1136 = t1.
            t1135 = t1136->children.
            t1134 ?= t1135.
            DATA t1141 TYPE REF TO object.
            t1141 = t1134->get( p0 = 2 ).
            DATA t1142 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            IF t1141 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t1142 ?= t1141.
              DATA t1143 TYPE REF TO object.
              t1143 = t1142->as_ref( ).
              t1133 ?= t1143.
            ELSE.
              t1133 ?= t1141.
            ENDIF.
            t1132 = t1133.
            DATA t1144 TYPE REF TO zcl_lnt_abstract_token.
            IF xsdbool( t1132 IS INITIAL ) = abap_true.
            ELSE.
              t1144 = t1132->get_first_token( ).
            ENDIF.
            t1130 = t1144.
            DATA t1152 TYPE REF TO zcl_lnt_abstract_token.
            t1152 = t1130.
            IF xsdbool( t1152 IS BOUND ) = abap_true.
              DATA t1154 TYPE REF TO zcl_lnt_current_scope.
              t1154 = me->input_2fd0->scope.
              DATA t1156 TYPE REF TO zcl_lnt_abstract_token.
              t1156 = t1130.
              DATA t1161 TYPE REF TO zcl_lnt_typed_identifier.
              t1161 = t1083.
              DATA t1163 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              CREATE OBJECT t1163.
              t1163->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
              t1163->sval = |Type|.
              DATA t1165 TYPE string.
              t1165 = me->input_2fd0->filename.
              DATA t1167 TYPE REF TO zcl_lnt_ireference_extras.
              t1154->add_reference( i_usage = t1156 i_referencing = t1161 i_type_9913 = t1163 i_filename = t1165 i_extra = t1167 ).
            ENDIF.
          ELSE.
            DATA t1170 TYPE string.
            DATA t1171 TYPE string.
            DATA(t1172) = |Not an object reference, |.
            DATA t1173 TYPE string.
            t1173 = t89->value.
            DATA(t1175) = strlen( t1172 ).
            t1171 = |{ t1172 }{ t1173 }|.
            DATA(t1177) = strlen( t1171 ).
            t1170 = |{ t1171 }{ |, | }|.
            DATA t1178 TYPE string.
            t1178 = t767->zlnt_builtin_clas_3f891b097658( )->name.
            DATA(t1181) = strlen( t1170 ).
            DATA t1182 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            result = NEW zcl_lnt_unknown_type( i_error = |{ t1170 }{ t1178 }| i_qualified_name = t1182 ).
            RETURN.
          ENDIF.
        ELSE.
          DATA t1186 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF xsdbool( t748 IS INITIAL ) = abap_true.
            DATA t1192 TYPE string.
            t1192 = t89->value.
            DATA(t1195) = strlen( t1192 ).
            DATA t1196 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            result = NEW zcl_lnt_unknown_type( i_error = |{ t1192 }{ | not found in scope| }| i_qualified_name = t1196 ).
            RETURN.
          ELSE.
            DATA t1199 TYPE string.
            DATA t1200 TYPE string.
            DATA(t1201) = |Not an object reference, |.
            DATA t1202 TYPE string.
            t1202 = t89->value.
            DATA(t1204) = strlen( t1201 ).
            t1200 = |{ t1201 }{ t1202 }|.
            DATA(t1206) = strlen( t1200 ).
            t1199 = |{ t1200 }{ |, | }|.
            DATA t1207 TYPE string.
            t1207 = t748->zlnt_builtin_clas_3f891b097658( )->name.
            DATA(t1211) = strlen( t1199 ).
            DATA t1212 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            result = NEW zcl_lnt_unknown_type( i_error = |{ t1199 }{ t1207 }| i_qualified_name = t1212 ).
            RETURN.
          ENDIF.
        ENDIF.
      ELSE.
        DATA t1213 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t1216 TYPE REF TO zcl_lnt_current_scope.
        t1216 = me->input_2fd0->scope.
        DATA t1218 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t1218 = t140->get( p0 = 0 ).
        DATA t1222 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t1224 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t1224 = t1218.
        DATA t1226 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t1228) = VALUE abap_bool( ).
        IF t1224 IS INITIAL.
          t1228 = abap_true.
        ELSEIF t1224->has = abap_false.
          t1228 = abap_true.
        ENDIF.
        IF t1228 = abap_true.
        ELSE.
          DATA t1232 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t1232 = t1216->current.
          DATA t1235 TYPE REF TO zcl_lnt_typed_identifier.
          IF xsdbool( t1232 IS INITIAL ) = abap_true.
          ELSE.
            DATA t1240 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            t1240 = t1232.
            DATA t1242 TYPE string.
            t1242 = t1218->value.
            t1235 = t1240->find_type( i_name = t1242 ).
          ENDIF.
          t1222 = t1235.
        ENDIF.
        t1213 = t1222.
        DATA t1245 TYPE REF TO zcl_lnt_typed_identifier.
        t1245 = t1213.
        DATA t1247 TYPE REF TO zcl_lnt_abstract_type.
        IF xsdbool( t1245 IS INITIAL ) = abap_true.
        ELSE.
          t1247 = t1245->type_cba0.
        ENDIF.
        t150 = t1247.
        DATA t1260 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF xsdbool( t150 IS INITIAL ) = abap_true.
          DATA t1264 TYPE REF TO zcl_lnt_abstract_type.
          DATA t1266 TYPE REF TO zcl_lnt_typed_identifier.
          DATA t1268 TYPE REF TO zcl_lnt_current_scope.
          t1268 = me->input_2fd0->scope.
          DATA(t1270) = VALUE string( ).
          IF t140->has( 1 - 1 ) = abap_false.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t140->load( ).
          READ TABLE t140->items INDEX 1 INTO t1270.
          t1266 = t1268->find_type_pool_type( i_name = t1270 ).
          DATA t1272 TYPE REF TO zcl_lnt_abstract_type.
          IF xsdbool( t1266 IS INITIAL ) = abap_true.
          ELSE.
            t1272 = t1266->type_cba0.
          ENDIF.
          t1264 = t1272.
          IF xsdbool( t1264 IS BOUND ) = abap_true.
            t150 = t1264.
          ENDIF.
          DATA t1292 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          IF xsdbool( t150 IS INITIAL ) = abap_true.
            DATA t1296 TYPE REF TO zcl_lnt_ilookup_result.
            DATA t1298 TYPE REF TO zcl_lnt_ddic.
            DATA t1304 TYPE REF TO zif_lnt_registry.
            t1304 = me->input_2fd0->scope->reg.
            t1298 = NEW zcl_lnt_ddic( i_reg_f149 = t1304 ).
            DATA t1306 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            t1306 = t140->get( p0 = 0 ).
            DATA t1310 TYPE REF TO zcl_lnt_ilookup_result.
            DATA t1312 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            t1312 = t1306.
            DATA t1314 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA(t1316) = VALUE abap_bool( ).
            IF t1312 IS INITIAL.
              t1316 = abap_true.
            ELSEIF t1312->has = abap_false.
              t1316 = abap_true.
            ENDIF.
            IF t1316 = abap_true.
              DATA t1318 TYPE REF TO zcl_lnt_ilookup_result.
              DATA t1319 TYPE REF TO zcl_lnt_abstract_type.
              DATA t1322 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              t1319 = NEW zcl_lnt_unknown_type( i_error = |undefined, lookupTableOrView| i_qualified_name = t1322 ).
              DATA t1323 TYPE REF TO zif_lnt_object.
              t1318 = NEW zcl_lnt_ilookup_result( i_type_9913 = t1319 i_object_19cd = t1323 ).
              CREATE OBJECT t1318->zlnt_view_ownkeys_b0e8086400eb.
              t1318->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t1325 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              t1318->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1325 ).
              CREATE OBJECT t1318->zlnt_json_ownkeys_70e5fd461788.
              t1318->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              DATA t1327 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              t1318->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t1327 ).
              t1310 = t1318.
            ELSE.
              DATA t1329 TYPE REF TO zcl_lnt_table.
              DATA t1330 TYPE REF TO zcl_lnt_table.
              DATA t1332 TYPE REF TO zif_lnt_registry.
              t1332 = t1298->reg.
              DATA t1334 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA(t1337) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t1337->has = abap_true.
              t1337->value = |TABL|.
              t1334 = t1337.
              DATA t1341 TYPE string.
              t1341 = t1306->value.
              DATA(t1343) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t1343->has = abap_true.
              t1343->value = t1341.
              DATA t1345 TYPE REF TO object.
              t1345 = t1332->get_object( i_type_9913 = t1334 i_name = t1343 ).
              t1330 ?= t1345.
              t1329 = t1330.
              DATA t1346 TYPE REF TO zcl_lnt_ilookup_result.
              IF xsdbool( t1329 IS BOUND ) = abap_true.
                DATA t1349 TYPE REF TO zcl_lnt_ilookup_result.
                DATA t1350 TYPE REF TO zcl_lnt_abstract_type.
                DATA t1352 TYPE REF TO zcl_lnt_table.
                t1352 = t1329.
                DATA t1354 TYPE REF TO zif_lnt_registry.
                t1354 = t1298->reg.
                DATA t1356 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                DATA t1357 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                t1350 = t1352->parse_type( i_reg_f149 = t1354 i_data_element = t1356 i_description = t1357 ).
                DATA t1358 TYPE REF TO zif_lnt_object.
                t1358 = t1329.
                t1349 = NEW zcl_lnt_ilookup_result( i_type_9913 = t1350 i_object_19cd = t1358 ).
                CREATE OBJECT t1349->zlnt_view_ownkeys_b0e8086400eb.
                t1349->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t1361 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                t1349->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1361 ).
                DATA t1362 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                IF t1349->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                  t1349->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t1362 ).
                ENDIF.
                CREATE OBJECT t1349->zlnt_json_ownkeys_70e5fd461788.
                t1349->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                DATA t1364 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                t1349->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t1364 ).
                DATA t1366 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                IF t1349->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                  t1349->zlnt_json_ownkeys_70e5fd461788->put( p0 = |object| p1 = t1366 ).
                ENDIF.
                t1346 = t1349.
              ELSE.
                DATA t1368 TYPE REF TO zcl_lnt_ilookup_result.
                DATA t1373 TYPE string.
                t1373 = t1306->value.
                DATA(t1375) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                t1375->has = abap_true.
                t1375->value = t1373.
                t1368 = t1298->lookup_ddls( i_name = t1375 ).
                DATA t1377 TYPE REF TO zcl_lnt_ilookup_result.
                IF xsdbool( t1368 IS BOUND ) = abap_true.
                  t1377 = t1368.
                ELSE.
                  DATA t1383 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  DATA t1386 TYPE string.
                  t1386 = t1306->value.
                  DATA(t1388) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                  t1388->has = abap_true.
                  t1388->value = t1386.
                  t1383 = t1388.
                  DATA t1390 TYPE REF TO zcl_lnt_ilookup_result.
                  DATA t1392 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                  t1392 = t1383.
                  DATA t1394 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                  DATA(t1396) = VALUE abap_bool( ).
                  IF t1392 IS INITIAL.
                    t1396 = abap_true.
                  ELSEIF t1392->has = abap_false.
                    t1396 = abap_true.
                  ENDIF.
                  IF t1396 = abap_true.
                    DATA t1398 TYPE REF TO zcl_lnt_ilookup_result.
                    DATA t1399 TYPE REF TO zcl_lnt_abstract_type.
                    DATA t1402 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    t1399 = NEW zcl_lnt_unknown_type( i_error = |undefined, lookupView| i_qualified_name = t1402 ).
                    DATA t1403 TYPE REF TO zif_lnt_object.
                    t1398 = NEW zcl_lnt_ilookup_result( i_type_9913 = t1399 i_object_19cd = t1403 ).
                    CREATE OBJECT t1398->zlnt_view_ownkeys_b0e8086400eb.
                    t1398->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA t1405 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    t1398->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1405 ).
                    CREATE OBJECT t1398->zlnt_json_ownkeys_70e5fd461788.
                    t1398->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                    DATA t1407 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                    t1398->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t1407 ).
                    t1390 = t1398.
                  ELSE.
                    DATA t1409 TYPE REF TO zcl_lnt_table.
                    DATA t1410 TYPE REF TO zcl_lnt_table.
                    DATA t1412 TYPE REF TO zif_lnt_registry.
                    t1412 = t1298->reg.
                    DATA t1414 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                    DATA(t1417) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t1417->has = abap_true.
                    t1417->value = |VIEW|.
                    t1414 = t1417.
                    DATA t1421 TYPE string.
                    t1421 = t1383->value.
                    DATA(t1423) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                    t1423->has = abap_true.
                    t1423->value = t1421.
                    DATA t1425 TYPE REF TO object.
                    t1425 = t1412->get_object( i_type_9913 = t1414 i_name = t1423 ).
                    t1410 ?= t1425.
                    t1409 = t1410.
                    DATA t1426 TYPE REF TO zcl_lnt_ilookup_result.
                    IF xsdbool( t1409 IS BOUND ) = abap_true.
                      DATA t1429 TYPE REF TO zcl_lnt_ilookup_result.
                      DATA t1430 TYPE REF TO zcl_lnt_abstract_type.
                      DATA t1432 TYPE REF TO zcl_lnt_table.
                      t1432 = t1409.
                      DATA t1434 TYPE REF TO zif_lnt_registry.
                      t1434 = t1298->reg.
                      DATA t1436 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      DATA t1437 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                      t1430 = t1432->parse_type( i_reg_f149 = t1434 i_data_element = t1436 i_description = t1437 ).
                      DATA t1438 TYPE REF TO zif_lnt_object.
                      t1438 = t1409.
                      t1429 = NEW zcl_lnt_ilookup_result( i_type_9913 = t1430 i_object_19cd = t1438 ).
                      CREATE OBJECT t1429->zlnt_view_ownkeys_b0e8086400eb.
                      t1429->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA t1441 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      t1429->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1441 ).
                      DATA t1442 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      IF t1429->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
                        t1429->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t1442 ).
                      ENDIF.
                      CREATE OBJECT t1429->zlnt_json_ownkeys_70e5fd461788.
                      t1429->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                      DATA t1444 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      t1429->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t1444 ).
                      DATA t1446 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                      IF t1429->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
                        t1429->zlnt_json_ownkeys_70e5fd461788->put( p0 = |object| p1 = t1446 ).
                      ENDIF.
                      t1426 = t1429.
                    ELSE.
                      DATA t1447 TYPE REF TO zcl_lnt_ilookup_result.
                      DATA t1449 TYPE REF TO zif_lnt_registry.
                      t1449 = t1298->reg.
                      DATA t1451 TYPE string.
                      t1451 = t1383->value.
                      IF t1449->in_error_namespace( i_name = t1451 ) = abap_true.
                        DATA t1453 TYPE REF TO zcl_lnt_ilookup_result.
                        DATA t1454 TYPE REF TO zcl_lnt_abstract_type.
                        DATA t1457 TYPE string.
                        t1457 = t1383->value.
                        DATA(t1460) = strlen( t1457 ).
                        DATA t1461 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        t1454 = NEW zcl_lnt_unknown_type( i_error = |{ t1457 }{ | not found, lookupView| }| i_qualified_name = t1461 ).
                        DATA t1462 TYPE REF TO zif_lnt_object.
                        t1453 = NEW zcl_lnt_ilookup_result( i_type_9913 = t1454 i_object_19cd = t1462 ).
                        CREATE OBJECT t1453->zlnt_view_ownkeys_b0e8086400eb.
                        t1453->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                        DATA t1464 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        t1453->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1464 ).
                        CREATE OBJECT t1453->zlnt_json_ownkeys_70e5fd461788.
                        t1453->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                        DATA t1466 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        t1453->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t1466 ).
                        t1447 = t1453.
                      ELSE.
                        DATA t1467 TYPE REF TO zcl_lnt_ilookup_result.
                        DATA t1468 TYPE REF TO zcl_lnt_abstract_type.
                        DATA t1472 TYPE string.
                        t1472 = t1383->value.
                        DATA(t1474) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
                        t1474->has = abap_true.
                        t1474->value = t1472.
                        DATA t1476 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
                        t1468 = zcl_lnt_void_type=>get_db65( i_voided = t1474 i_qualified_name = t1476 ).
                        DATA t1477 TYPE REF TO zif_lnt_object.
                        t1467 = NEW zcl_lnt_ilookup_result( i_type_9913 = t1468 i_object_19cd = t1477 ).
                        CREATE OBJECT t1467->zlnt_view_ownkeys_b0e8086400eb.
                        t1467->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                        DATA t1479 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        t1467->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `type` p1 = t1479 ).
                        CREATE OBJECT t1467->zlnt_json_ownkeys_70e5fd461788.
                        t1467->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                        DATA t1481 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
                        t1467->zlnt_json_ownkeys_70e5fd461788->put( p0 = |type| p1 = t1481 ).
                        t1447 = t1467.
                      ENDIF.
                      t1426 = t1447.
                    ENDIF.
                    t1390 = t1426.
                  ENDIF.
                  t1377 = t1390.
                ENDIF.
                t1346 = t1377.
              ENDIF.
              t1310 = t1346.
            ENDIF.
            t1296 = t1310.
            DATA t1482 TYPE REF TO zif_lnt_ddic_references.
            t1482 = me->input_2fd0->scope->reg->get_ddic_references( ).
            DATA t1489 TYPE REF TO zif_lnt_object.
            t1489 = me->input_2fd0->scope->parent_obj.
            DATA t1497 TYPE REF TO zcl_lnt_iobject_and_token.
            DATA t1498 TYPE REF TO zif_lnt_object.
            t1498 = t1296->zlnt_view_read_sr_2de0200e6505( ).
            DATA t1504 TYPE string.
            t1504 = me->input_2fd0->filename.
            DATA(t1506) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t1506->has = abap_true.
            t1506->value = t1504.
            t1497 = NEW zcl_lnt_iobject_and_token( i_object_19cd = t1498 i_token = t1->get_first_token( ) i_filename = t1506 ).
            CREATE OBJECT t1497->zlnt_view_ownkeys_b0e8086400eb.
            t1497->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t1514 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            t1497->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `object` p1 = t1514 ).
            DATA t1515 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            IF t1497->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t1497->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `filename` p1 = t1515 ).
            ENDIF.
            DATA t1516 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            IF t1497->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
              t1497->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `token` p1 = t1516 ).
            ENDIF.
            CREATE OBJECT t1497->zlnt_json_ownkeys_70e5fd461788.
            t1497->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t1518 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            t1497->zlnt_json_ownkeys_70e5fd461788->put( p0 = |object| p1 = t1518 ).
            DATA t1520 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            IF t1497->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t1497->zlnt_json_ownkeys_70e5fd461788->put( p0 = |filename| p1 = t1520 ).
            ENDIF.
            DATA t1522 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            IF t1497->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
              t1497->zlnt_json_ownkeys_70e5fd461788->put( p0 = |token| p1 = t1522 ).
            ENDIF.
            t1482->add_using( i_obj_1ed0 = t1489 i_using = t1497 ).
            DATA t1524 TYPE REF TO zcl_lnt_abstract_type.
            t1524 = t1296->zlnt_view_read_sr_9be58e2d4893( ).
            t150 = t1296->zlnt_view_read_sr_9be58e2d4893( ).
          ENDIF.
        ELSE.
          DATA t1531 TYPE REF TO zcl_lnt_current_scope.
          t1531 = me->input_2fd0->scope.
          DATA t1533 TYPE REF TO zcl_lnt_abstract_token.
          t1533 = t1->get_first_token( ).
          DATA t1539 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CREATE OBJECT t1539.
          t1539->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t1539->sval = |Type|.
          DATA t1541 TYPE string.
          t1541 = me->input_2fd0->filename.
          DATA t1543 TYPE REF TO zcl_lnt_ireference_extras.
          t1531->add_reference( i_usage = t1533 i_referencing = t1213 i_type_9913 = t1539 i_filename = t1541 i_extra = t1543 ).
        ENDIF.
        DATA(t1544) = VALUE abap_bool( ).
        DATA(t1545) = VALUE abap_bool( ).
        DATA t1548 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t1545 = xsdbool( t150 IS INITIAL ).
        t1544 = t1545.
        IF t1545 = abap_true.
          DATA t1559 TYPE REF TO zcl_lnt_ddic.
          DATA t1560 TYPE REF TO zif_lnt_registry.
          t1560 = me->input_2fd0->scope->reg.
          t1559 = NEW zcl_lnt_ddic( i_reg_f149 = t1560 ).
          DATA t1562 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t1562 = t140->get( p0 = 0 ).
          DATA(t1566) = VALUE abap_bool( ).
          DATA t1568 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t1568 = t1562.
          DATA t1570 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t1572) = VALUE abap_bool( ).
          IF t1568 IS INITIAL.
            t1572 = abap_true.
          ELSEIF t1568->has = abap_false.
            t1572 = abap_true.
          ENDIF.
          IF t1572 = abap_true.
            t1566 = abap_true.
          ELSE.
            DATA t1576 TYPE REF TO zif_lnt_registry.
            t1576 = t1559->reg.
            DATA t1578 TYPE string.
            t1578 = t1562->value.
            t1566 = t1576->in_error_namespace( i_name = t1578 ).
          ENDIF.
          t1544 = xsdbool( t1566 = abap_false ).
        ENDIF.
        IF t1544 = abap_true.
          DATA t1581 TYPE REF TO zcl_lnt_current_scope.
          t1581 = me->input_2fd0->scope.
          DATA t1583 TYPE REF TO zcl_lnt_abstract_token.
          t1583 = t1->get_first_token( ).
          DATA t1588 TYPE REF TO zcl_lnt_fi_identifier.
          DATA t1589 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CREATE OBJECT t1589.
          t1589->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t1589->sval = |Type (Void)|.
          DATA t1591 TYPE string.
          t1591 = me->input_2fd0->filename.
          DATA t1593 TYPE REF TO zcl_lnt_ireference_extras.
          t1581->add_reference( i_usage = t1583 i_referencing = t1588 i_type_9913 = t1589 i_filename = t1591 i_extra = t1593 ).
          DATA t1598 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          result = zcl_lnt_void_type=>get_db65( i_voided = t140->get( p0 = 0 ) i_qualified_name = t1598 ).
          RETURN.
        ELSE.
          DATA(t1600) = t150.
          IF xsdbool( t1600 IS BOUND AND t1600 IS INSTANCE OF zcl_lnt_void_type ) = abap_true.
            DATA t1601 TYPE REF TO zcl_lnt_current_scope.
            t1601 = me->input_2fd0->scope.
            DATA t1603 TYPE REF TO zcl_lnt_abstract_token.
            t1603 = t1->get_first_token( ).
            DATA t1608 TYPE REF TO zcl_lnt_fi_identifier.
            DATA t1609 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CREATE OBJECT t1609.
            t1609->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
            t1609->sval = |Type (Void)|.
            DATA t1611 TYPE string.
            t1611 = me->input_2fd0->filename.
            DATA t1613 TYPE REF TO zcl_lnt_ireference_extras.
            t1601->add_reference( i_usage = t1603 i_referencing = t1608 i_type_9913 = t1609 i_filename = t1611 i_extra = t1613 ).
            DATA t1614 TYPE REF TO zcl_lnt_void_type.
            t1614 ?= t150.
            result = t1614.
            RETURN.
          ELSE.
            DATA t1619 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            IF xsdbool( t150 IS INITIAL ) = abap_true.
              DATA(t1625) = |Unknown type |.
              DATA(t1626) = VALUE string( ).
              IF t140->has( 1 - 1 ) = abap_false.
                RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
              ENDIF.
              t140->load( ).
              READ TABLE t140->items INDEX 1 INTO t1626.
              DATA(t1628) = strlen( t1625 ).
              DATA t1629 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              result = NEW zcl_lnt_unknown_type( i_error = |{ t1625 }{ t1626 }| i_qualified_name = t1629 ).
              RETURN.
            ENDIF.
          ENDIF.
        ENDIF.
      ENDIF.
    ENDIF.
    DATA t1630 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t1630 = t140->shift( ).
    DO.
      t140->load( ).
      IF xsdbool( lines( t140->items ) > 0 ) = abap_false.
        EXIT.
      ENDIF.
      DATA t1636 TYPE abap_bool.
      DATA t1637 TYPE abap_bool.
      DATA(t1638) = t150.
      t1637 = xsdbool( t1638 IS BOUND AND t1638 IS INSTANCE OF zcl_lnt_unknown_type ).
      t1636 = t1637.
      IF t1637 = abap_false.
        DATA(t1640) = t150.
        t1636 = xsdbool( t1640 IS BOUND AND t1640 IS INSTANCE OF zcl_lnt_void_type ).
      ENDIF.
      IF t1636 = abap_true.
        DATA t1643 TYPE REF TO zcl_lnt_abstract_type.
        DATA t1644 TYPE REF TO zif_lnt_union_adffe656.
        DATA t1645 TYPE REF TO zcl_lnt_abstract_type.
        t1645 = t150.
        t1644 ?= t1645.
        t1643 ?= t1644.
        result = t1643.
        RETURN.
      ENDIF.
      DATA(t1650) = t150.
      IF xsdbool( xsdbool( t1650 IS BOUND AND t1650 IS INSTANCE OF zcl_lnt_structure_type ) = abap_false ) = abap_true.
        DATA t1653 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1653.
        result = NEW zcl_lnt_unknown_type( i_error = |Not a structured type| i_qualified_name = t1653 ).
        RETURN.
      ENDIF.

      DATA t1656 TYPE REF TO zcl_lnt_structure_type.
      t1656 ?= t150.
      DATA(t1658) = VALUE string( ).
      DATA(t1659) = VALUE string( ).
      IF t140->has( 1 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t140->load( ).
      READ TABLE t140->items INDEX 1 INTO t1659.
      t1658 = t1659.
      DATA t1662 TYPE REF TO zlnt_runtime_map__41b3bb94df3d.
      t1662 = t1656->indexed.
      DATA t1664 TYPE string.
      DATA(t1666) = strlen( t1658 ).
      t1664 = t1658.
      IF t1664 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t1664 TO UPPER CASE.
      ELSE.
        t1664 = zlnt_runtime_uppe_91169605024d=>full( t1664 ).
      ENDIF.
      t150 = t1662->get( p0 = t1664 ).
      DATA t1670 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      CLEAR t1670.
      IF xsdbool( t150 IS INITIAL ) = abap_true.
        DATA(t1675) = VALUE string( ).
        DATA(t1676) = VALUE string( ).
        DATA(t1677) = |Field "|.
        DATA(t1678) = VALUE string( ).
        IF t140->has( 1 - 1 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t140->load( ).
        READ TABLE t140->items INDEX 1 INTO t1678.
        DATA(t1680) = strlen( t1677 ).
        t1676 = |{ t1677 }{ t1678 }|.
        DATA(t1682) = strlen( t1676 ).
        t1675 = |{ t1676 }{ |" not found in structure| }|.
        DATA t1683 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        CLEAR t1683.
        result = NEW zcl_lnt_unknown_type( i_error = t1675 i_qualified_name = t1683 ).
        RETURN.
      ENDIF.
      DATA t1684 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t1684 = t140->shift( ).
    ENDDO.
    result = t150.

  ENDMETHOD.

  METHOD resolve_constant_value.
    DATA(t1) = i_expr.
    DATA t4 TYPE REF TO zif_lnt_statement_runnable.
    t4 = t1->gt_in_sr_ab_nd_ex_nd_ts_exp_nd( ).
    IF xsdbool( xsdbool( t4 IS BOUND AND t4 IS INSTANCE OF zcl_lnt_simple_field_chain ) = abap_false ) = abap_true.
      DATA t6 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      DATA t7 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      DATA(t11) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t11->has = abap_true.
      t11->value = |resolveConstantValue|.
      t7 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t11 ).
      t6 = NEW #( ).
      t6->payload = t7.
      CLEAR t6->source_value.
      DATA t13 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t14 TYPE REF TO object.
      t14 = t7.
      TRY.
          t6->source_value ?= t14.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t6->source_value IS NOT BOUND.
        TRY.
            t13 ?= t7.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t13 IS BOUND.
          t6->source_value = t13->source( ).
        ENDIF.
        IF t6->source_value IS NOT BOUND.
          CREATE OBJECT t6->source_value.
          t6->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t6->source_value->oval = t7.
        ENDIF.
      ENDIF.
      RAISE EXCEPTION t6.
    ENDIF.
    DATA t15 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA t17 TYPE REF TO zif_lnt_union_4cf1d054.
    DATA t18 TYPE REF TO zif_lnt_node.
    DATA t19 TYPE REF TO zcl_lnt_abstract_node.
    t19 = t1.
    DATA t23 TYPE REF TO zif_lnt_node.
    DATA t24 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    t24 = t19->children.
    DATA t26 TYPE REF TO object.
    t24->load( ).
    READ TABLE t24->items INDEX 1 INTO t26.
    DATA t27 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF t26 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
      t27 ?= t26.
      DATA t28 TYPE REF TO object.
      t28 = t27->as_ref( ).
      t23 ?= t28.
    ELSE.
      t23 ?= t26.
    ENDIF.
    t18 = t23.
    t17 ?= t18.
    t15 = t17.
    DATA t30 TYPE REF TO zcl_lnt_abstract_token.
    t30 = t15->get_first_token( ).
    DATA(t33) = VALUE string( ).
    t33 = t30->str.
    DATA t40 TYPE REF TO object.
    t40 = t15->get_db65( ).
    IF xsdbool( t40 IS BOUND AND t40 IS INSTANCE OF zcl_lnt_st_expres_field ) = abap_true.
      DATA t42 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t44 TYPE REF TO zcl_lnt_current_scope.
      t44 = me->input_2fd0->scope.
      DATA t47 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t51) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t51->has = abap_true.
      t51->value = t33.
      t47 = t51.
      DATA t53 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t55 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t55 = t47.
      DATA t57 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t59) = VALUE abap_bool( ).
      IF t55 IS INITIAL.
        t59 = abap_true.
      ELSEIF t55->has = abap_false.
        t59 = abap_true.
      ENDIF.
      IF t59 = abap_true.
      ELSE.
        DATA t63 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t65 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t65 = t44->current.
        DATA t68 TYPE REF TO zcl_lnt_typed_identifier.
        IF xsdbool( t65 IS INITIAL ) = abap_true.
        ELSE.
          DATA t73 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t73 = t65.
          DATA(t75) = VALUE string( ).
          t75 = t47->value.
          t68 = t73->find_variable( i_name = t75 ).
        ENDIF.
        t63 = t68.
        DATA t77 TYPE REF TO zcl_lnt_typed_identifier.
        IF xsdbool( t63 IS BOUND ) = abap_true.
          t77 = t63.
        ELSE.
          DATA(t89) = VALUE string( ).
          t89 = t47->value.
          DATA(t91) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t91->has = abap_true.
          t91->value = t89.
          t77 = t44->find_type_pool_constant( i_name = t91 ).
        ENDIF.
        t53 = t77.
      ENDIF.
      t42 = t53.
      DATA t93 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t95 TYPE REF TO zcl_lnt_typed_identifier.
      t95 = t42.
      DATA t97 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF xsdbool( t95 IS INITIAL ) = abap_true.
      ELSE.
        t97 = t95->value.
      ENDIF.
      t93 = t97.
      DATA t107 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t108 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF xsdbool( t93 IS INITIAL ) = abap_true.
      ELSE.
        t108 = t93.
      ENDIF.
      t107 = t108.
      DATA(t115) = VALUE string( ).
      DATA t116 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t116 = t107.
      IF t116 IS BOUND.
        t115 = t116->type_of( ).
        IF t116->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref AND t116->oval IS INSTANCE OF zlnt_runtime_call_776cb4afcfb7.
          t115 = `function`.
        ENDIF.
      ELSE.
        t115 = `undefined`.
      ENDIF.
      IF xsdbool( t115 = |string| ) = abap_true.
        DATA t119 TYPE REF TO zcl_lnt_current_scope.
        t119 = me->input_2fd0->scope.
        DATA t121 TYPE REF TO zcl_lnt_abstract_token.
        t121 = t30.
        DATA t126 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CREATE OBJECT t126.
        t126->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t126->sval = |Read From|.
        DATA(t128) = VALUE string( ).
        t128 = me->input_2fd0->filename.
        DATA t130 TYPE REF TO zcl_lnt_ireference_extras.
        t119->add_reference( i_usage = t121 i_referencing = t42 i_type_9913 = t126 i_filename = t128 i_extra = t130 ).
        DATA(t133) = VALUE string( ).
        t133 = t107->as_string( ).
        DATA(t136) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t136->has = abap_true.
        t136->value = t133.
        result = t136.
        RETURN.
      ELSE.
        DATA t139 TYPE REF TO zcl_lnt_abstract_type.
        DATA t140 TYPE REF TO zcl_lnt_typed_identifier.
        t140 = t42.
        DATA t142 TYPE REF TO zcl_lnt_abstract_type.
        IF xsdbool( t140 IS INITIAL ) = abap_true.
        ELSE.
          t142 = t140->type_cba0.
        ENDIF.
        t139 = t142.
        IF xsdbool( t139 IS BOUND AND t139 IS INSTANCE OF zcl_lnt_structure_type ) = abap_true.
          DATA t152 TYPE REF TO zcl_lnt_current_scope.
          t152 = me->input_2fd0->scope.
          DATA t154 TYPE REF TO zcl_lnt_abstract_token.
          t154 = t30.
          DATA t158 TYPE REF TO zcl_lnt_typed_identifier.
          t158 = t42.
          DATA t160 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CREATE OBJECT t160.
          t160->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
          t160->sval = |Read From|.
          DATA(t162) = VALUE string( ).
          t162 = me->input_2fd0->filename.
          DATA t164 TYPE REF TO zcl_lnt_ireference_extras.
          t152->add_reference( i_usage = t154 i_referencing = t158 i_type_9913 = t160 i_filename = t162 i_extra = t164 ).
        ENDIF.
      ENDIF.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA(t166) = VALUE abap_bool( ).
    DATA(t167) = VALUE abap_bool( ).
    DATA(t168) = VALUE abap_bool( ).
    DATA t169 TYPE REF TO object.
    t169 = t15->get_db65( ).
    t168 = xsdbool( t169 IS BOUND AND t169 IS INSTANCE OF zcl_lnt_class_name ).
    t167 = t168.
    IF t168 = abap_true.
      DATA(t172) = VALUE string( ).
      DATA(t174) = strlen( t33 ).
      t172 = t33.
      TRANSLATE t172 TO LOWER CASE.
      DATA(t175) = VALUE string( ).
      DATA(t176) = VALUE string( ).
      t176 = me->input_2fd0->scope->get_name( ).
      DATA(t179) = strlen( t176 ).
      t175 = t176.
      TRANSLATE t175 TO LOWER CASE.
      t167 = xsdbool( t172 = t175 ).
    ENDIF.
    t166 = t167.
    IF t167 = abap_true.
      DATA(t180) = VALUE abap_bool( ).
      DATA(t181) = VALUE abap_bool( ).
      DATA(t182) = VALUE string( ).
      t182 = me->input_2fd0->scope->get_type( ).
      t181 = xsdbool( t182 = |interface| ).
      t180 = t181.
      IF t181 = abap_false.
        DATA(t187) = VALUE string( ).
        t187 = me->input_2fd0->scope->get_type( ).
        t180 = xsdbool( t187 = |class_definition| ).
      ENDIF.
      t166 = t180.
    ENDIF.
    IF t166 = abap_true.
      DATA t192 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t193 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t194 TYPE REF TO zcl_lnt_abstract_node.
      t194 = t1.
      t193 = t194->children.
      t192 ?= t193.
      DATA t200 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA t201 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA t204 TYPE REF TO object.
      t204 = t192->get( p0 = 2 ).
      DATA t205 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t204 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t205 ?= t204.
        DATA t206 TYPE REF TO object.
        t206 = t205->as_ref( ).
        t201 ?= t206.
      ELSE.
        t201 ?= t204.
      ENDIF.
      t200 = t201.
      DATA t207 TYPE REF TO zcl_lnt_abstract_token.
      IF xsdbool( t200 IS INITIAL ) = abap_true.
      ELSE.
        t207 = t200->get_first_token( ).
      ENDIF.
      DATA t214 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t216 TYPE REF TO zcl_lnt_current_scope.
      t216 = me->input_2fd0->scope.
      DATA t219 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t226) = VALUE string( ).
      t226 = t207->str.
      DATA(t228) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t228->has = abap_true.
      t228->value = t226.
      t219 = t228.
      DATA t230 TYPE REF TO zcl_lnt_typed_identifier.
      DATA t232 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t232 = t219.
      DATA t234 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t236) = VALUE abap_bool( ).
      IF t232 IS INITIAL.
        t236 = abap_true.
      ELSEIF t232->has = abap_false.
        t236 = abap_true.
      ENDIF.
      IF t236 = abap_true.
      ELSE.
        DATA t240 TYPE REF TO zcl_lnt_typed_identifier.
        DATA t242 TYPE REF TO zcl_lnt_spaghetti_scope_node.
        t242 = t216->current.
        DATA t245 TYPE REF TO zcl_lnt_typed_identifier.
        IF xsdbool( t242 IS INITIAL ) = abap_true.
        ELSE.
          DATA t250 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t250 = t242.
          DATA(t252) = VALUE string( ).
          t252 = t219->value.
          t245 = t250->find_variable( i_name = t252 ).
        ENDIF.
        t240 = t245.
        DATA t254 TYPE REF TO zcl_lnt_typed_identifier.
        IF xsdbool( t240 IS BOUND ) = abap_true.
          t254 = t240.
        ELSE.
          DATA(t266) = VALUE string( ).
          t266 = t219->value.
          DATA(t268) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t268->has = abap_true.
          t268->value = t266.
          t254 = t216->find_type_pool_constant( i_name = t268 ).
        ENDIF.
        t230 = t254.
      ENDIF.
      t214 = t230.
      DATA t270 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t272 TYPE REF TO zcl_lnt_typed_identifier.
      t272 = t214.
      DATA t274 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF xsdbool( t272 IS INITIAL ) = abap_true.
      ELSE.
        t274 = t272->value.
      ENDIF.
      t270 = t274.
      DATA t284 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA t285 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF xsdbool( t270 IS INITIAL ) = abap_true.
      ELSE.
        t285 = t270.
      ENDIF.
      t284 = t285.
      DATA(t292) = VALUE string( ).
      DATA t293 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      t293 = t284.
      IF t293 IS BOUND.
        t292 = t293->type_of( ).
        IF t293->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref AND t293->oval IS INSTANCE OF zlnt_runtime_call_776cb4afcfb7.
          t292 = `function`.
        ENDIF.
      ELSE.
        t292 = `undefined`.
      ENDIF.
      IF xsdbool( t292 = |string| ) = abap_true.
        DATA t296 TYPE REF TO zcl_lnt_current_scope.
        t296 = me->input_2fd0->scope.
        DATA t298 TYPE REF TO zcl_lnt_abstract_token.
        t298 = t30.
        DATA t303 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CREATE OBJECT t303.
        t303->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t303->sval = |Read From|.
        DATA(t305) = VALUE string( ).
        t305 = me->input_2fd0->filename.
        DATA t307 TYPE REF TO zcl_lnt_ireference_extras.
        t296->add_reference( i_usage = t298 i_referencing = t214 i_type_9913 = t303 i_filename = t305 i_extra = t307 ).
        DATA(t310) = VALUE string( ).
        t310 = t284->as_string( ).
        DATA(t313) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t313->has = abap_true.
        t313->value = t310.
        result = t313.
        RETURN.
      ENDIF.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t317 TYPE REF TO object.
    t317 = t15->get_db65( ).
    IF xsdbool( t317 IS BOUND AND t317 IS INSTANCE OF zcl_lnt_class_name ) = abap_true.
      DATA t319 TYPE REF TO zif_lnt_interface_definition.
      DATA t321 TYPE REF TO zcl_lnt_current_scope.
      t321 = me->input_2fd0->scope.
      DATA t324 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t328) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t328->has = abap_true.
      t328->value = t33.
      t324 = t328.
      DATA t330 TYPE REF TO zif_lnt_interface_definition.
      DATA t332 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t332 = t324.
      DATA t334 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t336) = VALUE abap_bool( ).
      IF t332 IS INITIAL.
        t336 = abap_true.
      ELSEIF t332->has = abap_false.
        t336 = abap_true.
      ENDIF.
      IF t336 = abap_true.
      ELSE.
        DATA t340 TYPE REF TO zif_lnt_class_definition.
        DATA t342 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t345) = VALUE string( ).
        t345 = t324->value.
        DATA(t347) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t347->has = abap_true.
        t347->value = t345.
        t342 = t347.
        DATA t349 TYPE REF TO zif_lnt_class_definition.
        DATA t351 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t351 = t342.
        DATA t353 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t355) = VALUE abap_bool( ).
        IF t351 IS INITIAL.
          t355 = abap_true.
        ELSEIF t351->has = abap_false.
          t355 = abap_true.
        ENDIF.
        IF t355 = abap_true.
        ELSE.
          DATA t359 TYPE REF TO zif_lnt_class_definition.
          DATA t361 TYPE REF TO zcl_lnt_spaghetti_scope_node.
          t361 = t321->current.
          DATA t364 TYPE REF TO zif_lnt_class_definition.
          IF xsdbool( t361 IS INITIAL ) = abap_true.
          ELSE.
            DATA t369 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            t369 = t361.
            DATA(t371) = VALUE string( ).
            t371 = t342->value.
            t364 = t369->find_class_definition( i_name = t371 ).
          ENDIF.
          t359 = t364.
          DATA t373 TYPE REF TO zif_lnt_class_definition.
          IF xsdbool( t359 IS BOUND ) = abap_true.
            t373 = t359.
          ELSE.
            DATA t382 TYPE REF TO zcl_lnt_class.
            DATA t383 TYPE REF TO zcl_lnt_class.
            DATA t385 TYPE REF TO zif_lnt_registry.
            t385 = t321->reg.
            DATA t387 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA(t390) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t390->has = abap_true.
            t390->value = |CLAS|.
            t387 = t390.
            DATA(t394) = VALUE string( ).
            t394 = t342->value.
            DATA(t396) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t396->has = abap_true.
            t396->value = t394.
            DATA t398 TYPE REF TO object.
            t398 = t385->get_object( i_type_9913 = t387 i_name = t396 ).
            t383 ?= t398.
            t382 = t383.
            DATA t399 TYPE REF TO zif_lnt_class_definition.
            IF xsdbool( t382 IS BOUND ) = abap_true.
              t399 = t382->gt_dfn_ins_src_obj_cls_ts_clss( ).
            ELSE.
              CLEAR t399.
            ENDIF.
            t373 = t399.
          ENDIF.
          t349 = t373.
        ENDIF.
        t340 = t349.
        DATA t406 TYPE REF TO zif_lnt_interface_definition.
        IF xsdbool( t340 IS BOUND ) = abap_true.
          DATA t409 TYPE REF TO zif_lnt_interface_definition.
          DATA t410 TYPE REF TO zif_lnt_class_definition.
          t410 = t340.
          t409 ?= t410.
          t406 = t409.
        ELSE.
          DATA t413 TYPE REF TO zif_lnt_interface_definition.
          DATA t415 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t418) = VALUE string( ).
          t418 = t324->value.
          DATA(t420) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t420->has = abap_true.
          t420->value = t418.
          t415 = t420.
          DATA t422 TYPE REF TO zif_lnt_interface_definition.
          DATA t424 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t424 = t415.
          DATA t426 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t428) = VALUE abap_bool( ).
          IF t424 IS INITIAL.
            t428 = abap_true.
          ELSEIF t424->has = abap_false.
            t428 = abap_true.
          ENDIF.
          IF t428 = abap_true.
          ELSE.
            DATA t432 TYPE REF TO zif_lnt_interface_definition.
            DATA t434 TYPE REF TO zcl_lnt_spaghetti_scope_node.
            t434 = t321->current.
            DATA t437 TYPE REF TO zif_lnt_interface_definition.
            IF xsdbool( t434 IS INITIAL ) = abap_true.
            ELSE.
              DATA t442 TYPE REF TO zcl_lnt_spaghetti_scope_node.
              t442 = t434.
              DATA(t444) = VALUE string( ).
              t444 = t415->value.
              t437 = t442->find_interface_definition( i_name = t444 ).
            ENDIF.
            t432 = t437.
            DATA t446 TYPE REF TO zif_lnt_interface_definition.
            IF xsdbool( t432 IS BOUND ) = abap_true.
              t446 = t432.
            ELSE.
              DATA t455 TYPE REF TO zcl_lnt_ob_interface.
              DATA t456 TYPE REF TO zcl_lnt_ob_interface.
              DATA t458 TYPE REF TO zif_lnt_registry.
              t458 = t321->reg.
              DATA t460 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
              DATA(t463) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t463->has = abap_true.
              t463->value = |INTF|.
              t460 = t463.
              DATA(t467) = VALUE string( ).
              t467 = t415->value.
              DATA(t469) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t469->has = abap_true.
              t469->value = t467.
              DATA t471 TYPE REF TO object.
              t471 = t458->get_object( i_type_9913 = t460 i_name = t469 ).
              t456 ?= t471.
              t455 = t456.
              DATA t472 TYPE REF TO zif_lnt_interface_definition.
              IF xsdbool( t455 IS BOUND ) = abap_true.
                t472 = t455->def.
              ELSE.
                CLEAR t472.
              ENDIF.
              t446 = t472.
            ENDIF.
            t422 = t446.
          ENDIF.
          t413 = t422.
          DATA t482 TYPE REF TO zif_lnt_interface_definition.
          IF xsdbool( t413 IS BOUND ) = abap_true.
            t482 = t413.
          ELSE.
            CLEAR t482.
          ENDIF.
          t406 = t482.
        ENDIF.
        t330 = t406.
      ENDIF.
      t319 = t330.
      DATA t494 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF xsdbool( t319 IS INITIAL ) = abap_true.
        DATA t500 TYPE REF TO zcl_lnt_shape_59e28496.
        DATA t501 TYPE REF TO zcl_lnt_current_scope.
        t501 = me->input_2fd0->scope.
        DATA(t506) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t506->has = abap_true.
        t506->value = t33.
        t500 = t501->exists_object( i_name = t506 ).
        DATA t508 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF xsdbool( xsdbool( t500 IS INITIAL ) = abap_false ) = abap_true.
          CLEAR result.
          RETURN.
        ELSE.
          DATA t521 TYPE REF TO zcl_lnt_ddic.
          DATA t522 TYPE REF TO zif_lnt_registry.
          t522 = me->input_2fd0->scope->reg.
          t521 = NEW zcl_lnt_ddic( i_reg_f149 = t522 ).
          DATA t524 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          DATA(t528) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t528->has = abap_true.
          t528->value = t33.
          t524 = t528.
          DATA(t530) = VALUE abap_bool( ).
          DATA t532 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
          t532 = t524.
          DATA t534 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          DATA(t536) = VALUE abap_bool( ).
          IF t532 IS INITIAL.
            t536 = abap_true.
          ELSEIF t532->has = abap_false.
            t536 = abap_true.
          ENDIF.
          IF t536 = abap_true.
            t530 = abap_true.
          ELSE.
            DATA t540 TYPE REF TO zif_lnt_registry.
            t540 = t521->reg.
            DATA(t542) = VALUE string( ).
            t542 = t524->value.
            t530 = t540->in_error_namespace( i_name = t542 ).
          ENDIF.
          IF xsdbool( t530 = abap_true ) = abap_true.
            DATA t545 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
            DATA t546 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
            DATA(t549) = VALUE string( ).
            DATA(t550) = |resolveConstantValue, not found: |.
            DATA(t552) = strlen( t550 ).
            t549 = |{ t550 }{ t33 }|.
            DATA(t553) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t553->has = abap_true.
            t553->value = t549.
            t546 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t553 ).
            t545 = NEW #( ).
            t545->payload = t546.
            CLEAR t545->source_value.
            DATA t555 TYPE REF TO zlnt_view_storage_74017ca272ac.
            DATA t556 TYPE REF TO object.
            t556 = t546.
            TRY.
                t545->source_value ?= t556.
              CATCH cx_sy_move_cast_error.
            ENDTRY.
            IF t545->source_value IS NOT BOUND.
              TRY.
                  t555 ?= t546.
                CATCH cx_sy_move_cast_error.
              ENDTRY.
              IF t555 IS BOUND.
                t545->source_value = t555->source( ).
              ENDIF.
              IF t545->source_value IS NOT BOUND.
                CREATE OBJECT t545->source_value.
                t545->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
                t545->source_value->oval = t546.
              ENDIF.
            ENDIF.
            RAISE EXCEPTION t545.
          ELSE.
            DATA t557 TYPE REF TO zcl_lnt_current_scope.
            t557 = me->input_2fd0->scope.
            DATA t559 TYPE REF TO zcl_lnt_abstract_token.
            t559 = t15->get_first_token( ).
            DATA t564 TYPE REF TO zcl_lnt_fi_identifier.
            DATA t565 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            CREATE OBJECT t565.
            t565->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
            t565->sval = |Object (Void)|.
            DATA(t567) = VALUE string( ).
            t567 = me->input_2fd0->filename.
            DATA t571 TYPE REF TO zcl_lnt_ireference_extras.
            DATA(t575) = VALUE string( ).
            DATA(t577) = strlen( t33 ).
            t575 = t33.
            IF t575 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
              TRANSLATE t575 TO UPPER CASE.
            ELSE.
              t575 = zlnt_runtime_uppe_91169605024d=>full( t575 ).
            ENDIF.
            DATA(t578) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t578->has = abap_true.
            t578->value = t575.
            DATA t580 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t582 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
            t571 = NEW zcl_lnt_ireference_extras( i_oo_name = t578 i_oo_type = t580 i_found_qualified = t582 ).
            CREATE OBJECT t571->zlnt_view_ownkeys_b0e8086400eb.
            t571->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t584 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            t571->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooName` p1 = t584 ).
            CREATE OBJECT t571->zlnt_json_ownkeys_70e5fd461788.
            t571->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
            DATA t586 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            t571->zlnt_json_ownkeys_70e5fd461788->put( p0 = |ooName| p1 = t586 ).
            t557->add_reference( i_usage = t559 i_referencing = t564 i_type_9913 = t565 i_filename = t567 i_extra = t571 ).
            CLEAR result.
            RETURN.
          ENDIF.
        ENDIF.
      ENDIF.
      DATA t589 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t590 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t591 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
      DATA t592 TYPE REF TO zcl_lnt_abstract_node.
      t592 = t1.
      t591 = t592->children.
      t590 ?= t591.
      t589 = t590.
      DATA t596 TYPE REF TO zcl_lnt_abstract_token.
      DATA t598 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA t599 TYPE REF TO zif_lnt_union_4cf1d054.
      DATA t602 TYPE REF TO object.
      t602 = t589->get( p0 = 2 ).
      DATA t603 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      IF t602 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
        t603 ?= t602.
        DATA t604 TYPE REF TO object.
        t604 = t603->as_ref( ).
        t599 ?= t604.
      ELSE.
        t599 ?= t602.
      ENDIF.
      t598 = t599.
      DATA t605 TYPE REF TO zcl_lnt_abstract_token.
      IF xsdbool( t598 IS INITIAL ) = abap_true.
      ELSE.
        t605 = t598->get_first_token( ).
      ENDIF.
      t596 = t605.
      DATA(t612) = VALUE string( ).
      t612 = t596->str.
      DATA t619 TYPE REF TO zcl_lnt_class_constant.
      DATA t621 TYPE REF TO zcl_lnt_object_oriented.
      DATA t622 TYPE REF TO zcl_lnt_current_scope.
      t622 = me->input_2fd0->scope.
      t621 = NEW zcl_lnt_object_oriented( i_scope = t622 ).
      DATA t624 TYPE REF TO zif_lnt_interface_definition.
      t624 = t319.
      DATA(t632) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t632->has = abap_true.
      t632->value = t612.
      t619 = t621->search_constant_name( i_def = t624 i_name = t632 ).
      IF xsdbool( t619 IS BOUND AND t619 IS INSTANCE OF zcl_lnt_class_constant ) = abap_true.
        DATA t636 TYPE REF TO zcl_lnt_current_scope.
        t636 = me->input_2fd0->scope.
        DATA t638 TYPE REF TO zcl_lnt_abstract_token.
        t638 = t30.
        DATA t642 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t644 TYPE REF TO zcl_lnt_fi_identifier.
        DATA t645 TYPE REF TO zif_lnt_interface_definition.
        t645 = t319.
        t644 ?= t645.
        t642 = t644.
        DATA t648 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CREATE OBJECT t648.
        t648->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t648->sval = |Object|.
        DATA(t650) = VALUE string( ).
        t650 = me->input_2fd0->filename.
        DATA t654 TYPE REF TO zcl_lnt_ireference_extras.
        DATA(t658) = VALUE string( ).
        t658 = t319->get_name( ).
        DATA(t661) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t661->has = abap_true.
        t661->value = t658.
        DATA t663 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t665 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        t654 = NEW zcl_lnt_ireference_extras( i_oo_name = t661 i_oo_type = t663 i_found_qualified = t665 ).
        CREATE OBJECT t654->zlnt_view_ownkeys_b0e8086400eb.
        t654->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t667 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t654->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooName` p1 = t667 ).
        CREATE OBJECT t654->zlnt_json_ownkeys_70e5fd461788.
        t654->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t669 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t654->zlnt_json_ownkeys_70e5fd461788->put( p0 = |ooName| p1 = t669 ).
        t636->add_reference( i_usage = t638 i_referencing = t642 i_type_9913 = t648 i_filename = t650 i_extra = t654 ).
        DATA t671 TYPE REF TO zcl_lnt_current_scope.
        t671 = me->input_2fd0->scope.
        DATA t673 TYPE REF TO zcl_lnt_abstract_token.
        t673 = t596.
        DATA t678 TYPE REF TO zcl_lnt_class_constant.
        t678 = t619.
        DATA t680 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CREATE OBJECT t680.
        t680->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t680->sval = |Read From|.
        DATA(t682) = VALUE string( ).
        t682 = me->input_2fd0->filename.
        DATA t684 TYPE REF TO zcl_lnt_ireference_extras.
        t671->add_reference( i_usage = t673 i_referencing = t678 i_type_9913 = t680 i_filename = t682 i_extra = t684 ).
        DATA t685 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA t689 TYPE REF TO zcl_lnt_typed_identifier.
        t689 = t619.
        t685 = t689->value.
        DATA(t696) = VALUE string( ).
        DATA t697 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t697 = t685.
        IF t697 IS BOUND.
          t696 = t697->type_of( ).
          IF t697->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref AND t697->oval IS INSTANCE OF zlnt_runtime_call_776cb4afcfb7.
            t696 = `function`.
          ENDIF.
        ELSE.
          t696 = `undefined`.
        ENDIF.
        IF xsdbool( t696 = |string| ) = abap_true.
          DATA(t702) = VALUE string( ).
          t702 = t685->as_string( ).
          DATA(t705) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t705->has = abap_true.
          t705->value = t702.
          result = t705.
          RETURN.
        ELSE.
          DATA(t707) = VALUE abap_bool( ).
          DATA(t708) = VALUE abap_bool( ).
          DATA t709 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          t709 = t685.
          DATA(t712) = VALUE string( ).
          IF xsdbool( t709 IS INITIAL ) = abap_true.
            t712 = |undefined|.
          ELSE.
            DATA(t716) = VALUE string( ).
            DATA t717 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            t717 = t709.
            IF t717 IS BOUND.
              t716 = t717->type_of( ).
              IF t717->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref AND t717->oval IS INSTANCE OF zlnt_runtime_call_776cb4afcfb7.
                t716 = `function`.
              ENDIF.
            ELSE.
              t716 = `undefined`.
            ENDIF.
            t712 = t716.
          ENDIF.
          t708 = xsdbool( t712 = |object| ).
          t707 = t708.
          IF t708 = abap_true.
            DATA t721 TYPE REF TO zif_lnt_union_4cf1d054.
            DATA t723 TYPE REF TO object.
            t589->load( ).
            READ TABLE t589->items INDEX 5 INTO t723.
            DATA t724 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            IF t723 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t724 ?= t723.
              DATA t725 TYPE REF TO object.
              t725 = t724->as_ref( ).
              t721 ?= t725.
            ELSE.
              t721 ?= t723.
            ENDIF.
            t707 = xsdbool( t721 IS BOUND ).
          ENDIF.
          IF t707 = abap_true.
            DATA(t726) = VALUE string( ).
            DATA t730 TYPE REF TO zif_lnt_union_4cf1d054.
            DATA t732 TYPE REF TO object.
            t589->load( ).
            READ TABLE t589->items INDEX 5 INTO t732.
            DATA t733 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            IF t732 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
              t733 ?= t732.
              DATA t734 TYPE REF TO object.
              t734 = t733->as_ref( ).
              t730 ?= t734.
            ELSE.
              t730 ?= t732.
            ENDIF.
            t726 = t730->get_first_token( )->str.
            DATA t738 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
            DATA t740 TYPE REF TO zlnt_runtime_map__a1006b231250.
            DATA t741 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            t741 = t685.
            DATA t743 TYPE REF TO object.
            IF t741 IS BOUND AND t741->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
              CREATE OBJECT t740.
              LOOP AT t741->entries INTO DATA(t744).
                DATA(t745) = CAST zlnt_runtime_dyna_a429568d5be8( t744-v ).
                DATA(t746) = CONV string( t745->as_string( ) ).
                t740->set( p0 = t744-k p1 = t746 ).
              ENDLOOP.
            ELSE.
              t743 = t741->as_ref( ).
              DATA t747 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
              TRY.
                  t740 ?= t743.
                CATCH cx_sy_move_cast_error.
                  t747 ?= t743.
                  CREATE OBJECT t740.
                  LOOP AT t747->entries INTO DATA(t748).
                    DATA(t749) = CAST zlnt_runtime_dyna_a429568d5be8( t748-v ).
                    DATA(t750) = CONV string( t749->as_string( ) ).
                    t740->set( p0 = t748-k p1 = t750 ).
                  ENDLOOP.
              ENDTRY.
            ENDIF.
            t738 = t740->get( p0 = t726 ).
            DATA t752 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
            DATA(t755) = VALUE abap_bool( ).
            IF t738 IS INITIAL.
              t755 = abap_true.
            ELSEIF t738->has = abap_false.
              t755 = abap_true.
            ENDIF.
            IF xsdbool( t755 = abap_false ) = abap_true.
              DATA t758 TYPE REF TO zlnt_runtime_map__a1006b231250.
              DATA t759 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
              t759 = t685.
              DATA t761 TYPE REF TO object.
              IF t759 IS BOUND AND t759->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
                CREATE OBJECT t758.
                LOOP AT t759->entries INTO DATA(t762).
                  DATA(t763) = CAST zlnt_runtime_dyna_a429568d5be8( t762-v ).
                  DATA(t764) = CONV string( t763->as_string( ) ).
                  t758->set( p0 = t762-k p1 = t764 ).
                ENDLOOP.
              ELSE.
                t761 = t759->as_ref( ).
                DATA t765 TYPE REF TO zlnt_runtime_map__abd6fd794ffb.
                TRY.
                    t758 ?= t761.
                  CATCH cx_sy_move_cast_error.
                    t765 ?= t761.
                    CREATE OBJECT t758.
                    LOOP AT t765->entries INTO DATA(t766).
                      DATA(t767) = CAST zlnt_runtime_dyna_a429568d5be8( t766-v ).
                      DATA(t768) = CONV string( t767->as_string( ) ).
                      t758->set( p0 = t766-k p1 = t768 ).
                    ENDLOOP.
                ENDTRY.
              ENDIF.
              result = t758->get( p0 = t726 ).
              RETURN.
            ENDIF.
          ENDIF.
        ENDIF.
        CLEAR result.
        RETURN.
      ENDIF.
      DATA t771 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      DATA t772 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      DATA(t775) = VALUE string( ).
      DATA(t776) = |resolveConstantValue, constant not found |.
      DATA(t778) = strlen( t776 ).
      t775 = |{ t776 }{ t612 }|.
      DATA(t779) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t779->has = abap_true.
      t779->value = t775.
      t772 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t779 ).
      t771 = NEW #( ).
      t771->payload = t772.
      CLEAR t771->source_value.
      DATA t781 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t782 TYPE REF TO object.
      t782 = t772.
      TRY.
          t771->source_value ?= t782.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t771->source_value IS NOT BOUND.
        TRY.
            t781 ?= t772.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t781 IS BOUND.
          t771->source_value = t781->source( ).
        ENDIF.
        IF t771->source_value IS NOT BOUND.
          CREATE OBJECT t771->source_value.
          t771->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t771->source_value->oval = t772.
        ENDIF.
      ENDIF.
      RAISE EXCEPTION t771.
    ENDIF.
    DATA t783 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
    DATA t784 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
    DATA(t788) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t788->has = abap_true.
    t788->value = |resolveConstantValue, unexpected structure|.
    t784 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t788 ).
    t783 = NEW #( ).
    t783->payload = t784.
    CLEAR t783->source_value.
    DATA t790 TYPE REF TO zlnt_view_storage_74017ca272ac.
    DATA t791 TYPE REF TO object.
    t791 = t784.
    TRY.
        t783->source_value ?= t791.
      CATCH cx_sy_move_cast_error.
    ENDTRY.
    IF t783->source_value IS NOT BOUND.
      TRY.
          t790 ?= t784.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t790 IS BOUND.
        t783->source_value = t790->source( ).
      ENDIF.
      IF t783->source_value IS NOT BOUND.
        CREATE OBJECT t783->source_value.
        t783->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        t783->source_value->oval = t784.
      ENDIF.
    ENDIF.
    RAISE EXCEPTION t783.



  ENDMETHOD.

  METHOD resolve_type_ref.
    DATA(t1) = i_chain_8ed6.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t1 IS INITIAL ) = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t10 TYPE string.
    t10 = t1->get_first_token( )->str.
    DATA t20 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t21 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
    DATA t22 TYPE REF TO zcl_lnt_abstract_node.
    t22 = t1.
    t21 = t22->children.
    t20 ?= t21.
    t20->load( ).
    IF xsdbool( lines( t20->items ) = 1 ) = abap_true.
      DATA t29 TYPE string.
      DATA(t31) = strlen( t10 ).
      t29 = t10.
      IF t29 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t29 TO UPPER CASE.
      ELSE.
        t29 = zlnt_runtime_uppe_91169605024d=>full( t29 ).
      ENDIF.
      IF xsdbool( t29 = |OBJECT| ) = abap_true.
        DATA t34 TYPE REF TO zcl_lnt_abstract_type_data.
        result = NEW zcl_lnt_gnrc_objct_rfrnc_typ( i_input_967e = t34 ).
        RETURN.
      ENDIF.
      DATA t35 TYPE REF TO zcl_lnt_shape_59e28496.
      DATA t37 TYPE REF TO zcl_lnt_current_scope.
      t37 = me->input_2fd0->scope.
      DATA(t42) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t42->has = abap_true.
      t42->value = t10.
      t35 = t37->exists_object( i_name = t42 ).
      DATA t45 TYPE REF TO zcl_lnt_fi_identifier.
      DATA t46 TYPE REF TO zcl_lnt_shape_59e28496.
      t46 = t35.
      DATA t48 TYPE REF TO zcl_lnt_fi_identifier.
      IF xsdbool( t46 IS INITIAL ) = abap_true.
      ELSE.
        t48 = t46->id.
      ENDIF.
      t45 = t48.
      IF xsdbool( t45 IS BOUND ) = abap_true.
        DATA t55 TYPE REF TO zcl_lnt_current_scope.
        t55 = me->input_2fd0->scope.
        DATA t57 TYPE REF TO zcl_lnt_abstract_token.
        t57 = t1->get_first_token( ).
        DATA t63 TYPE REF TO zcl_lnt_fi_identifier.
        t63 = t35->id.
        DATA t70 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        CREATE OBJECT t70.
        t70->tag = zlnt_runtime_dyna_a429568d5be8=>tag_string.
        t70->sval = |Object|.
        DATA t72 TYPE string.
        t72 = me->input_2fd0->filename.
        DATA t76 TYPE REF TO zcl_lnt_ireference_extras.
        DATA t77 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t77 = t35->oo_type.
        DATA(t85) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t85->has = abap_true.
        t85->value = t10.
        DATA t87 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        t76 = NEW zcl_lnt_ireference_extras( i_oo_name = t85 i_oo_type = t77 i_found_qualified = t87 ).
        CREATE OBJECT t76->zlnt_view_ownkeys_b0e8086400eb.
        t76->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t89 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t76->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooType` p1 = t89 ).
        DATA t90 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t76->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t76->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `ooName` p1 = t90 ).
        ENDIF.
        CREATE OBJECT t76->zlnt_json_ownkeys_70e5fd461788.
        t76->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t92 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t76->zlnt_json_ownkeys_70e5fd461788->put( p0 = |ooType| p1 = t92 ).
        DATA t94 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t76->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t76->zlnt_json_ownkeys_70e5fd461788->put( p0 = |ooName| p1 = t94 ).
        ENDIF.
        t55->add_reference( i_usage = t57 i_referencing = t63 i_type_9913 = t70 i_filename = t72 i_extra = t76 ).
        DATA t97 TYPE REF TO zcl_lnt_fi_identifier.
        t97 = t35->id.
        DATA t103 TYPE REF TO zcl_lnt_abstract_type_data.
        DATA t104 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t108) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t108->has = abap_true.
        t108->value = t10.
        t104 = t108.
        DATA t111 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t111 = t35->rtti_name.
        DATA t114 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t116 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
        DATA t118 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA t120 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t103 = NEW zcl_lnt_abstract_type_data( i_qualified_name = t104 i_conversion_exit = t114 i_derived_from_constant = t116 i_ddic_name = t118 i_rtti_name = t111 i_description = t120 ).
        CREATE OBJECT t103->zlnt_view_ownkeys_b0e8086400eb.
        t103->zlnt_view_ownkeys_b0e8086400eb->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t103->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `qualifiedName` p1 = t122 ).
        DATA t123 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t103->zlnt_view_ownkeys_b0e8086400eb IS BOUND.
          t103->zlnt_view_ownkeys_b0e8086400eb->put( p0 = `RTTIName` p1 = t123 ).
        ENDIF.
        CREATE OBJECT t103->zlnt_json_ownkeys_70e5fd461788.
        t103->zlnt_json_ownkeys_70e5fd461788->tag = zlnt_runtime_dyna_a429568d5be8=>tag_object.
        DATA t125 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        t103->zlnt_json_ownkeys_70e5fd461788->put( p0 = |qualifiedName| p1 = t125 ).
        DATA t127 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        IF t103->zlnt_json_ownkeys_70e5fd461788 IS BOUND.
          t103->zlnt_json_ownkeys_70e5fd461788->put( p0 = |RTTIName| p1 = t127 ).
        ENDIF.
        result = NEW zcl_lnt_object_reference_type( i_id = t97 i_extra = t103 ).
        RETURN.
      ENDIF.
    ENDIF.
    DATA t129 TYPE REF TO zcl_lnt_abstract_type.
    DATA t136 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t137 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
    DATA t138 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t129 = me->resolve_type_name( i_type_name = t1 i_length = t136 i_decimals_2eed = t137 i_qualified_name = t138 ).
    DATA t139 TYPE abap_bool.
    DATA t140 TYPE abap_bool.
    t140 = xsdbool( t129 IS BOUND ).
    t139 = t140.
    IF t140 = abap_true.
      DATA t143 TYPE REF TO zcl_lnt_abstract_type.
      t143 = t129.
      t139 = xsdbool( t143 IS BOUND AND t143 IS INSTANCE OF zcl_lnt_void_type ).
    ENDIF.
    IF t139 = abap_true.
      DATA t145 TYPE REF TO zcl_lnt_void_type.
      t145 ?= t129.
      result = t145.
      RETURN.
    ENDIF.
    DATA t147 TYPE abap_bool.
    DATA t148 TYPE abap_bool.
    t148 = xsdbool( t129 IS BOUND ).
    t147 = t148.
    IF t148 = abap_true.
      DATA t152 TYPE REF TO zcl_lnt_abstract_type.
      t152 = t129.
      t147 = xsdbool( xsdbool( t152 IS BOUND AND t152 IS INSTANCE OF zcl_lnt_unknown_type ) = abap_false ).
    ENDIF.
    IF t147 = abap_true.
      DATA t157 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      result = NEW zcl_lnt_data_reference( i_type_9913 = t129 i_qualified_name = t157 ).
      RETURN.
    ENDIF.
    DATA t159 TYPE string.
    DATA t160 TYPE string.
    t160 = t1->concat_tokens( ).
    DATA(t163) = strlen( t160 ).
    t159 = t160.
    IF t159 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t159 TO UPPER CASE.
    ELSE.
      t159 = zlnt_runtime_uppe_91169605024d=>full( t159 ).
    ENDIF.
    IF xsdbool( t159 = |DATA| ) = abap_true.
      DATA t167 TYPE REF TO zcl_lnt_abstract_type_data.
      DATA t168 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      result = NEW zcl_lnt_data_reference( i_type_9913 = NEW zcl_lnt_data_type( i_input_967e = t167 ) i_qualified_name = t168 ).
      RETURN.
    ENDIF.


    DATA t170 TYPE abap_bool.
    t170 = me->input_2fd0->scope->is_badi_def( i_name = t10 ).
    IF xsdbool( t170 = abap_true ) = abap_true.
      DATA(t179) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t179->has = abap_true.
      t179->value = t10.
      DATA t181 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      result = zcl_lnt_void_type=>get_db65( i_voided = t179 i_qualified_name = t181 ).
      RETURN.
    ENDIF.
    DATA(t182) = VALUE abap_bool( ).
    DATA t183 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA t184 TYPE REF TO zcl_lnt_ddic.
    DATA t190 TYPE REF TO zif_lnt_registry.
    t190 = me->input_2fd0->scope->reg.
    t184 = NEW zcl_lnt_ddic( i_reg_f149 = t190 ).
    DATA t192 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    IF xsdbool( t184 IS INITIAL ) = abap_true.
    ELSE.
      DATA t199 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t203) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t203->has = abap_true.
      t203->value = t10.
      t199 = t203.
      DATA(t205) = VALUE abap_bool( ).
      DATA t207 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t207 = t199.
      DATA t209 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t211) = VALUE abap_bool( ).
      IF t207 IS INITIAL.
        t211 = abap_true.
      ELSEIF t207->has = abap_false.
        t211 = abap_true.
      ENDIF.
      IF t211 = abap_true.
        t205 = abap_true.
      ELSE.
        DATA t215 TYPE REF TO zif_lnt_registry.
        t215 = t184->reg.
        DATA t217 TYPE string.
        t217 = t199->value.
        t205 = t215->in_error_namespace( i_name = t217 ).
      ENDIF.
      DATA(t219) = NEW zlnt_runtime_opti_7f2541396f43( ).
      t219->has = abap_true.
      t219->value = t205.
      t192 = t219.
    ENDIF.
    t183 = t192.
    DATA t220 TYPE REF TO zlnt_runtime_opti_7f2541396f43.
    DATA(t223) = NEW zlnt_runtime_opti_7f2541396f43( ).
    t223->has = abap_true.
    t223->value = abap_false.
    t220 = t223.
    DATA(t225) = VALUE abap_bool( ).
    DATA(t226) = VALUE abap_bool( ).
    IF t183 IS BOUND.
      t225 = t183->has.
    ENDIF.
    IF t220 IS BOUND.
      t226 = t220->has.
    ENDIF.
    IF t225 = t226.
      IF t225 = abap_false.
        t182 = abap_true.
      ELSEIF t183->value = t220->value.
        t182 = abap_true.
      ENDIF.
    ENDIF.
    IF t182 = abap_true.
      DATA(t231) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t231->has = abap_true.
      t231->value = t10.
      DATA t233 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      result = zcl_lnt_void_type=>get_db65( i_voided = t231 i_qualified_name = t233 ).
      RETURN.
    ENDIF.
    DATA(t236) = |REF, unable to resolve |.
    DATA(t238) = strlen( t236 ).
    DATA t239 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    result = NEW zcl_lnt_unknown_type( i_error = |{ t236 }{ t10 }| i_qualified_name = t239 ).

  ENDMETHOD.

  METHOD find_value.
    DATA t2 TYPE REF TO zcl_lnt_expression_node.
    DATA(t5) = zlnt_runtime_desc_78196487750d=>zlnt_member_d150_582536089a5b.
    t2 = i_node->find_first_expression( i_type_9913 = t5 ).
    DATA t9 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t2 IS INITIAL ) = abap_true.
      DATA t13 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      DATA t14 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      DATA(t18) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t18->has = abap_true.
      t18->value = |VALUE missing in expression|.
      t14 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t18 ).
      t13 = NEW #( ).
      t13->payload = t14.
      CLEAR t13->source_value.
      DATA t20 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t21 TYPE REF TO object.
      t21 = t14.
      TRY.
          t13->source_value ?= t21.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t13->source_value IS NOT BOUND.
        TRY.
            t20 ?= t14.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t20 IS BOUND.
          t13->source_value = t20->source( ).
        ENDIF.
        IF t13->source_value IS NOT BOUND.
          CREATE OBJECT t13->source_value.
          t13->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t13->source_value->oval = t14.
        ENDIF.
      ENDIF.
      RAISE EXCEPTION t13.
    ENDIF.
    DATA(t23) = VALUE string( ).
    DATA(t24) = VALUE string( ).
    t24 = t2->concat_tokens( ).
    DATA(t27) = strlen( t24 ).
    t23 = t24.
    IF t23 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
      TRANSLATE t23 TO UPPER CASE.
    ELSE.
      t23 = zlnt_runtime_uppe_91169605024d=>full( t23 ).
    ENDIF.
    IF xsdbool( t23 = |VALUE IS INITIAL| ) = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t30 TYPE REF TO zcl_lnt_expression_node.
    DATA t32 TYPE REF TO zcl_lnt_expression_node.
    t32 = t2.
    DATA(t34) = zlnt_runtime_desc_78196487750d=>zlnt_member_d121_2f7db81dd46d.
    t30 = t32->find_first_expression( i_type_9913 = t34 ).
    IF xsdbool( t30 IS BOUND ) = abap_true.
      DATA t37 TYPE REF TO zcl_lnt_expression_node.
      DATA t39 TYPE REF TO zcl_lnt_expression_node.
      t39 = t2.
      DATA(t41) = zlnt_runtime_desc_78196487750d=>zlnt_member_d134_34bac62ef421.
      t37 = t39->find_first_expression( i_type_9913 = t41 ).
      IF xsdbool( t37 IS BOUND ) = abap_true.
        DATA(t44) = VALUE string( ).
        DATA(t45) = VALUE string( ).
        DATA(t46) = VALUE string( ).
        t46 = t37->get_first_token( )->str.
        DATA(t53) = 0.
        DATA(t54) = 1.
        DATA(t55) = strlen( t46 ).
        t53 = COND i( WHEN t53 < 0 THEN 0 WHEN t53 > t55 THEN t55 ELSE t53 ).
        t54 = COND i( WHEN t54 < 0 THEN 0 WHEN t54 > t55 THEN t55 ELSE t54 ).
        IF t53 > t54.
          t55 = t53.
          t53 = t54.
          t54 = t55.
        ENDIF.
        t55 = t54 - t53.
        t45 = t46+t53(t55).
        t44 = t45.
        DATA(t56) = VALUE string( ).
        t56 = ||.
        DATA t58 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t58 = t37->get_all_tokens( ).
        DATA t61 TYPE REF TO zcl_lnt_abstract_token.
        DATA t62 TYPE REF TO object.
        DATA(t63) = VALUE i( ).
        DO.
          t58->load( ).
          IF t63 >= lines( t58->items ).
            EXIT.
          ENDIF.
          CLEAR t62.
          READ TABLE t58->items INDEX t63 + 1 INTO t62.
          t63 = t63 + 1.
          DATA t64 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
          CLEAR t64.
          CLEAR t61.
          IF t62 IS INSTANCE OF zlnt_runtime_dyna_a429568d5be8.
            t64 ?= t62.
            DATA t65 TYPE REF TO object.
            t65 = t64->as_ref( ).
            t61 ?= t65.
          ELSE.
            t61 ?= t62.
          ENDIF.
          IF xsdbool( t61->str = |&| ) = abap_true.
            CONTINUE.
          ELSE.
            DATA(t74) = t56.
            DATA(t75) = VALUE string( ).
            DATA(t76) = VALUE string( ).
            t76 = t61->str.
            DATA(t81) = 1.
            DATA(t82) = VALUE i( ).
            DATA(t83) = VALUE i( ).
            t83 = strlen( t61->str ).
            DATA(t90) = 1.
            t82 = t83 - t90.
            DATA(t91) = strlen( t76 ).
            t81 = COND i( WHEN t81 < 0 THEN 0 WHEN t81 > t91 THEN t91 ELSE t81 ).
            t82 = COND i( WHEN t82 < 0 THEN 0 WHEN t82 > t91 THEN t91 ELSE t82 ).
            IF t81 > t82.
              t91 = t81.
              t81 = t82.
              t82 = t91.
            ENDIF.
            t91 = t82 - t81.
            t75 = t76+t81(t91).
            DATA(t92) = strlen( t74 ).
            t56 = |{ t74 }{ t75 }|.
          ENDIF.
        ENDDO.
        DATA(t95) = VALUE string( ).
        DATA(t96) = VALUE string( ).
        DATA(t99) = strlen( t44 ).
        t96 = |{ t44 }{ t56 }|.
        DATA(t101) = strlen( t96 ).
        t95 = |{ t96 }{ t44 }|.
        DATA(t102) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t102->has = abap_true.
        t102->value = t95.
        result = t102.
        RETURN.
      ELSE.
        DATA(t106) = VALUE string( ).
        t106 = t30->concat_tokens( ).
        DATA(t109) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t109->has = abap_true.
        t109->value = t106.
        result = t109.
        RETURN.
      ENDIF.
    ENDIF.
    DATA t111 TYPE REF TO zcl_lnt_expression_node.
    DATA t113 TYPE REF TO zcl_lnt_expression_node.
    t113 = t2.
    DATA(t115) = zlnt_runtime_desc_78196487750d=>zlnt_member_d141_e96a425f6743.
    t111 = t113->find_first_expression( i_type_9913 = t115 ).
    IF xsdbool( t111 IS BOUND ) = abap_true.
      DATA(t118) = VALUE string( ).
      DATA(t119) = VALUE string( ).
      DATA(t120) = VALUE string( ).
      t120 = t111->concat_tokens( ).
      DATA(t123) = strlen( t120 ).
      t119 = t120.
      IF t119 CO ` !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_``abcdefghijklmnopqrstuvwxyz{|}~`.
        TRANSLATE t119 TO UPPER CASE.
      ELSE.
        t119 = zlnt_runtime_uppe_91169605024d=>full( t119 ).
      ENDIF.
      t118 = t119.
      DATA(t124) = VALUE abap_bool( ).
      DATA(t125) = VALUE abap_bool( ).
      t125 = xsdbool( t118 = |SY-DATUM| ).
      t124 = t125.
      IF t125 = abap_false.
        t124 = xsdbool( t118 = |SY-UZEIT| ).
      ENDIF.
      IF t124 = abap_true.
        DATA(t131) = VALUE string( ).
        DATA(t133) = VALUE string( ).
        DATA(t134) = |VALUE, |.
        DATA(t135) = VALUE string( ).
        DATA(t137) = strlen( t118 ).
        t135 = t118.
        TRANSLATE t135 TO LOWER CASE.
        DATA(t138) = strlen( t134 ).
        t133 = |{ t134 }{ t135 }|.
        DATA(t140) = strlen( t133 ).
        t131 = |{ t133 }{ | is not a constant| }|.
        DATA t141 TYPE REF TO zlnt_runtime_arra_c22708faf2e3.
        t141 = me->input_2fd0->issues.
        DATA t143 TYPE REF TO zcl_lnt_issue.
        DATA(t144) = me->input_2fd0.
        DATA t149 TYPE REF TO zlnt_runtime_map__4fdf767b61ba.
        t143 = zcl_lnt_syntax_input_module=>syntax_issue( i_input_967e = t144 i_token = t111->get_first_token( ) i_message_26cb = t131 i_fix = t149 ).
        t141->load( ).
        APPEND t143 TO t141->items.
        t141->save( ).
        CLEAR result.
        RETURN.
      ENDIF.
      result = me->resolve_constant_value( i_expr = t111 ).
      RETURN.
    ENDIF.
    DATA t154 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
    DATA t155 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
    DATA(t159) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t159->has = abap_true.
    t159->value = |findValue, unexpected|.
    t155 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t159 ).
    t154 = NEW #( ).
    t154->payload = t155.
    CLEAR t154->source_value.
    DATA t161 TYPE REF TO zlnt_view_storage_74017ca272ac.
    DATA t162 TYPE REF TO object.
    t162 = t155.
    TRY.
        t154->source_value ?= t162.
      CATCH cx_sy_move_cast_error.
    ENDTRY.
    IF t154->source_value IS NOT BOUND.
      TRY.
          t161 ?= t155.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t161 IS BOUND.
        t154->source_value = t161->source( ).
      ENDIF.
      IF t154->source_value IS NOT BOUND.
        CREATE OBJECT t154->source_value.
        t154->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        t154->source_value->oval = t155.
      ENDIF.
    ENDIF.
    RAISE EXCEPTION t154.
  ENDMETHOD.

  METHOD find_decimals.
    DATA t2 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    DATA t4 TYPE REF TO zcl_lnt_expression_node.
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    DATA(t9) = zlnt_runtime_desc_78196487750d=>zlnt_member_d149_69f1f4358f03.
    t6 = i_node->find_direct_expression( i_type_9913 = t9 ).
    DATA t10 TYPE REF TO zcl_lnt_expression_node.
    IF xsdbool( t6 IS INITIAL ) = abap_true.
    ELSE.
      DATA t15 TYPE REF TO zcl_lnt_expression_node.
      t15 = t6.
      DATA(t17) = zlnt_runtime_desc_78196487750d=>zlnt_member_d108_ef0500b17c81.
      t10 = t15->find_direct_expression( i_type_9913 = t17 ).
    ENDIF.
    t4 = t10.
    DATA t18 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    IF xsdbool( t4 IS INITIAL ) = abap_true.
    ELSE.
      DATA t22 TYPE string.
      t22 = t4->concat_tokens( ).
      DATA(t25) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t25->has = abap_true.
      t25->value = t22.
      t18 = t25.
    ENDIF.
    t2 = t18.
    DATA(t26) = VALUE abap_bool( ).
    IF t2 IS BOUND.
      IF t2->has = abap_true.
        t26 = xsdbool( strlen( t2->value ) > 0 ).
      ENDIF.
    ENDIF.
    IF t26 = abap_true.
      DATA t31 TYPE string.
      t31 = t2->value.
      result = zlnt_runtime_stri_248d3505915c=>int_optional( t31 ).
      RETURN.
    ENDIF.
    CLEAR result.

  ENDMETHOD.

  METHOD find_length.
    DATA(t1) = i_node.
    DATA t2 TYPE REF TO zcl_lnt_expression_node.
    DATA(t5) = zlnt_runtime_desc_78196487750d=>zlnt_member_d148_212592b80f97.
    t2 = t1->find_first_expression( i_type_9913 = t5 ).
    DATA t6 TYPE REF TO zcl_lnt_expression_node.
    DATA(t9) = zlnt_runtime_desc_78196487750d=>zlnt_member_d142_ab91f6798a5a.
    t6 = t1->find_first_expression( i_type_9913 = t9 ).
    DATA(t10) = VALUE abap_bool( ).
    DATA(t11) = VALUE abap_bool( ).
    t11 = xsdbool( t2 IS BOUND ).
    t10 = t11.
    IF t11 = abap_true.
      t10 = xsdbool( t6 IS BOUND ).
    ENDIF.
    IF t10 = abap_true.
      DATA t15 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
      DATA t16 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
      DATA(t20) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t20->has = abap_true.
      t20->value = |Only specify length once|.
      t16 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t20 ).
      t15 = NEW #( ).
      t15->payload = t16.
      CLEAR t15->source_value.
      DATA t22 TYPE REF TO zlnt_view_storage_74017ca272ac.
      DATA t23 TYPE REF TO object.
      t23 = t16.
      TRY.
          t15->source_value ?= t23.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t15->source_value IS NOT BOUND.
        TRY.
            t22 ?= t16.
          CATCH cx_sy_move_cast_error.
        ENDTRY.
        IF t22 IS BOUND.
          t15->source_value = t22->source( ).
        ENDIF.
        IF t15->source_value IS NOT BOUND.
          CREATE OBJECT t15->source_value.
          t15->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
          t15->source_value->oval = t16.
        ENDIF.
      ENDIF.
      RAISE EXCEPTION t15.
    ENDIF.
    IF xsdbool( t6 IS BOUND ) = abap_true.
      DATA t26 TYPE REF TO zcl_lnt_expression_node.
      DATA t28 TYPE REF TO zcl_lnt_expression_node.
      t28 = t6.
      DATA(t30) = zlnt_runtime_desc_78196487750d=>zlnt_member_d108_ef0500b17c81.
      t26 = t28->find_first_expression( i_type_9913 = t30 ).
      IF xsdbool( t26 IS BOUND ) = abap_true.
        DATA t34 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        DATA(t37) = VALUE string( ).
        t37 = t26->concat_tokens( ).
        DATA(t40) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t40->has = abap_true.
        t40->value = t37.
        t34 = t40.
        DATA t42 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t44 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t44 = t34.
        DATA t46 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t48) = VALUE abap_bool( ).
        IF t44 IS INITIAL.
          t48 = abap_true.
        ELSEIF t44->has = abap_false.
          t48 = abap_true.
        ENDIF.
        IF t48 = abap_true.
        ELSE.
          DATA(t52) = VALUE abap_bool( ).
          DATA(t53) = VALUE string( ).
          t53 = t34->value.
          DATA(t55) = |'|.
          DATA(t56) = strlen( t53 ).
          DATA(t57) = VALUE i( ).
          DATA(t58) = VALUE i( ).
          DATA(t59) = VALUE string( ).
          t57 = strlen( t55 ).
          IF t57 = 0.
            t52 = abap_true.
          ELSEIF t57 <= t56.
            t58 = 0.
            t59 = t53+t58(t57).
            IF t59 = t55.
              t52 = abap_true.
            ENDIF.
          ENDIF.
          IF t52 = abap_true.
            DATA(t62) = VALUE string( ).
            DATA t63 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA(t64) = VALUE string( ).
            t64 = t34->value.
            DATA(t66) = |'|.
            DATA(t67) = strlen( t64 ).
            DATA(t68) = VALUE i( ).
            DATA(t69) = VALUE i( ).
            DATA(t70) = VALUE i( ).
            DATA(t71) = VALUE i( ).
            DATA(t72) = VALUE string( ).
            CREATE OBJECT t63.
            t71 = strlen( t66 ).
            t68 = 0.
            IF t71 = 0.
              WHILE t68 < t67.
                t72 = t64+t68(1).
                APPEND t72 TO t63->items.
                t68 = t68 + 1.
              ENDWHILE.
            ELSE.
              WHILE t68 <= t67.
                FIND FIRST OCCURRENCE OF t66 IN SECTION OFFSET t68 OF t64 MATCH OFFSET t69.
                IF sy-subrc = 0.
                  t70 = t69 - t68.
                ELSE.
                  t69 = -1.
                  t70 = t67 - t68.
                ENDIF.
                CLEAR t72.
                IF t70 > 0.
                  t72 = t64+t68(t70).
                ENDIF.
                APPEND t72 TO t63->items.
                IF t69 < 0.
                  EXIT.
                ENDIF.
                t68 = t69 + t71.
              ENDWHILE.
            ENDIF.
            IF t63->has( 2 - 1 ) = abap_false.
              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
            ENDIF.
            t63->load( ).
            READ TABLE t63->items INDEX 2 INTO t62.
            DATA(t73) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t73->has = abap_true.
            t73->value = t62.
            t34 = t73.
          ELSE.
            DATA(t75) = VALUE abap_bool( ).
            DATA(t76) = VALUE string( ).
            t76 = t34->value.
            DATA(t78) = |`|.
            DATA(t79) = strlen( t76 ).
            DATA(t80) = VALUE i( ).
            DATA(t81) = VALUE i( ).
            DATA(t82) = VALUE string( ).
            t80 = strlen( t78 ).
            IF t80 = 0.
              t75 = abap_true.
            ELSEIF t80 <= t79.
              t81 = 0.
              t82 = t76+t81(t80).
              IF t82 = t78.
                t75 = abap_true.
              ENDIF.
            ENDIF.
            IF t75 = abap_true.
              DATA(t85) = VALUE string( ).
              DATA t86 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA(t87) = VALUE string( ).
              t87 = t34->value.
              DATA(t89) = |`|.
              DATA(t90) = strlen( t87 ).
              DATA(t91) = VALUE i( ).
              DATA(t92) = VALUE i( ).
              DATA(t93) = VALUE i( ).
              DATA(t94) = VALUE i( ).
              DATA(t95) = VALUE string( ).
              CREATE OBJECT t86.
              t94 = strlen( t89 ).
              t91 = 0.
              IF t94 = 0.
                WHILE t91 < t90.
                  t95 = t87+t91(1).
                  APPEND t95 TO t86->items.
                  t91 = t91 + 1.
                ENDWHILE.
              ELSE.
                WHILE t91 <= t90.
                  FIND FIRST OCCURRENCE OF t89 IN SECTION OFFSET t91 OF t87 MATCH OFFSET t92.
                  IF sy-subrc = 0.
                    t93 = t92 - t91.
                  ELSE.
                    t92 = -1.
                    t93 = t90 - t91.
                  ENDIF.
                  CLEAR t95.
                  IF t93 > 0.
                    t95 = t87+t91(t93).
                  ENDIF.
                  APPEND t95 TO t86->items.
                  IF t92 < 0.
                    EXIT.
                  ENDIF.
                  t91 = t92 + t94.
                ENDWHILE.
              ENDIF.
              IF t86->has( 2 - 1 ) = abap_false.
                RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
              ENDIF.
              t86->load( ).
              READ TABLE t86->items INDEX 2 INTO t85.
              DATA(t96) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t96->has = abap_true.
              t96->value = t85.
              t34 = t96.
            ENDIF.
          ENDIF.
          DATA(t101) = VALUE string( ).
          t101 = t34->value.
          t42 = zlnt_runtime_stri_248d3505915c=>int_optional( t101 ).
        ENDIF.
        result = t42.
        RETURN.
      ENDIF.
      DATA t104 TYPE REF TO zcl_lnt_expression_node.
      DATA t106 TYPE REF TO zcl_lnt_expression_node.
      t106 = t6.
      DATA(t108) = zlnt_runtime_desc_78196487750d=>zlnt_member_d141_e96a425f6743.
      t104 = t106->find_first_expression( i_type_9913 = t108 ).
      IF xsdbool( t104 IS BOUND ) = abap_true.
        DATA t116 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t116 = me->resolve_constant_value( i_expr = t104 ).
        DATA t118 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
        DATA t120 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
        t120 = t116.
        DATA t122 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
        DATA(t124) = VALUE abap_bool( ).
        IF t120 IS INITIAL.
          t124 = abap_true.
        ELSEIF t120->has = abap_false.
          t124 = abap_true.
        ENDIF.
        IF t124 = abap_true.
        ELSE.
          DATA(t128) = VALUE abap_bool( ).
          DATA(t129) = VALUE string( ).
          t129 = t116->value.
          DATA(t131) = |'|.
          DATA(t132) = strlen( t129 ).
          DATA(t133) = VALUE i( ).
          DATA(t134) = VALUE i( ).
          DATA(t135) = VALUE string( ).
          t133 = strlen( t131 ).
          IF t133 = 0.
            t128 = abap_true.
          ELSEIF t133 <= t132.
            t134 = 0.
            t135 = t129+t134(t133).
            IF t135 = t131.
              t128 = abap_true.
            ENDIF.
          ENDIF.
          IF t128 = abap_true.
            DATA(t138) = VALUE string( ).
            DATA t139 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA(t140) = VALUE string( ).
            t140 = t116->value.
            DATA(t142) = |'|.
            DATA(t143) = strlen( t140 ).
            DATA(t144) = VALUE i( ).
            DATA(t145) = VALUE i( ).
            DATA(t146) = VALUE i( ).
            DATA(t147) = VALUE i( ).
            DATA(t148) = VALUE string( ).
            CREATE OBJECT t139.
            t147 = strlen( t142 ).
            t144 = 0.
            IF t147 = 0.
              WHILE t144 < t143.
                t148 = t140+t144(1).
                APPEND t148 TO t139->items.
                t144 = t144 + 1.
              ENDWHILE.
            ELSE.
              WHILE t144 <= t143.
                FIND FIRST OCCURRENCE OF t142 IN SECTION OFFSET t144 OF t140 MATCH OFFSET t145.
                IF sy-subrc = 0.
                  t146 = t145 - t144.
                ELSE.
                  t145 = -1.
                  t146 = t143 - t144.
                ENDIF.
                CLEAR t148.
                IF t146 > 0.
                  t148 = t140+t144(t146).
                ENDIF.
                APPEND t148 TO t139->items.
                IF t145 < 0.
                  EXIT.
                ENDIF.
                t144 = t145 + t147.
              ENDWHILE.
            ENDIF.
            IF t139->has( 2 - 1 ) = abap_false.
              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
            ENDIF.
            t139->load( ).
            READ TABLE t139->items INDEX 2 INTO t138.
            DATA(t149) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t149->has = abap_true.
            t149->value = t138.
            t116 = t149.
          ELSE.
            DATA(t151) = VALUE abap_bool( ).
            DATA(t152) = VALUE string( ).
            t152 = t116->value.
            DATA(t154) = |`|.
            DATA(t155) = strlen( t152 ).
            DATA(t156) = VALUE i( ).
            DATA(t157) = VALUE i( ).
            DATA(t158) = VALUE string( ).
            t156 = strlen( t154 ).
            IF t156 = 0.
              t151 = abap_true.
            ELSEIF t156 <= t155.
              t157 = 0.
              t158 = t152+t157(t156).
              IF t158 = t154.
                t151 = abap_true.
              ENDIF.
            ENDIF.
            IF t151 = abap_true.
              DATA(t161) = VALUE string( ).
              DATA t162 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
              DATA(t163) = VALUE string( ).
              t163 = t116->value.
              DATA(t165) = |`|.
              DATA(t166) = strlen( t163 ).
              DATA(t167) = VALUE i( ).
              DATA(t168) = VALUE i( ).
              DATA(t169) = VALUE i( ).
              DATA(t170) = VALUE i( ).
              DATA(t171) = VALUE string( ).
              CREATE OBJECT t162.
              t170 = strlen( t165 ).
              t167 = 0.
              IF t170 = 0.
                WHILE t167 < t166.
                  t171 = t163+t167(1).
                  APPEND t171 TO t162->items.
                  t167 = t167 + 1.
                ENDWHILE.
              ELSE.
                WHILE t167 <= t166.
                  FIND FIRST OCCURRENCE OF t165 IN SECTION OFFSET t167 OF t163 MATCH OFFSET t168.
                  IF sy-subrc = 0.
                    t169 = t168 - t167.
                  ELSE.
                    t168 = -1.
                    t169 = t166 - t167.
                  ENDIF.
                  CLEAR t171.
                  IF t169 > 0.
                    t171 = t163+t167(t169).
                  ENDIF.
                  APPEND t171 TO t162->items.
                  IF t168 < 0.
                    EXIT.
                  ENDIF.
                  t167 = t168 + t170.
                ENDWHILE.
              ENDIF.
              IF t162->has( 2 - 1 ) = abap_false.
                RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
              ENDIF.
              t162->load( ).
              READ TABLE t162->items INDEX 2 INTO t161.
              DATA(t172) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
              t172->has = abap_true.
              t172->value = t161.
              t116 = t172.
            ENDIF.
          ENDIF.
          DATA(t177) = VALUE string( ).
          t177 = t116->value.
          t118 = zlnt_runtime_stri_248d3505915c=>int_optional( t177 ).
        ENDIF.
        result = t118.
        RETURN.
      ENDIF.
    ENDIF.
    DATA t183 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    IF xsdbool( t2 IS INITIAL ) = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA t188 TYPE REF TO zcl_lnt_expression_node.
    DATA t190 TYPE REF TO zcl_lnt_expression_node.
    t190 = t2.
    DATA(t192) = zlnt_runtime_desc_78196487750d=>zlnt_member_d108_ef0500b17c81.
    t188 = t190->find_first_expression( i_type_9913 = t192 ).
    IF xsdbool( t188 IS BOUND ) = abap_true.
      DATA t196 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t199) = VALUE string( ).
      t199 = t188->concat_tokens( ).
      DATA(t202) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t202->has = abap_true.
      t202->value = t199.
      t196 = t202.
      DATA t204 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t206 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t206 = t196.
      DATA t208 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t210) = VALUE abap_bool( ).
      IF t206 IS INITIAL.
        t210 = abap_true.
      ELSEIF t206->has = abap_false.
        t210 = abap_true.
      ENDIF.
      IF t210 = abap_true.
      ELSE.
        DATA(t214) = VALUE abap_bool( ).
        DATA(t215) = VALUE string( ).
        t215 = t196->value.
        DATA(t217) = |'|.
        DATA(t218) = strlen( t215 ).
        DATA(t219) = VALUE i( ).
        DATA(t220) = VALUE i( ).
        DATA(t221) = VALUE string( ).
        t219 = strlen( t217 ).
        IF t219 = 0.
          t214 = abap_true.
        ELSEIF t219 <= t218.
          t220 = 0.
          t221 = t215+t220(t219).
          IF t221 = t217.
            t214 = abap_true.
          ENDIF.
        ENDIF.
        IF t214 = abap_true.
          DATA(t224) = VALUE string( ).
          DATA t225 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA(t226) = VALUE string( ).
          t226 = t196->value.
          DATA(t228) = |'|.
          DATA(t229) = strlen( t226 ).
          DATA(t230) = VALUE i( ).
          DATA(t231) = VALUE i( ).
          DATA(t232) = VALUE i( ).
          DATA(t233) = VALUE i( ).
          DATA(t234) = VALUE string( ).
          CREATE OBJECT t225.
          t233 = strlen( t228 ).
          t230 = 0.
          IF t233 = 0.
            WHILE t230 < t229.
              t234 = t226+t230(1).
              APPEND t234 TO t225->items.
              t230 = t230 + 1.
            ENDWHILE.
          ELSE.
            WHILE t230 <= t229.
              FIND FIRST OCCURRENCE OF t228 IN SECTION OFFSET t230 OF t226 MATCH OFFSET t231.
              IF sy-subrc = 0.
                t232 = t231 - t230.
              ELSE.
                t231 = -1.
                t232 = t229 - t230.
              ENDIF.
              CLEAR t234.
              IF t232 > 0.
                t234 = t226+t230(t232).
              ENDIF.
              APPEND t234 TO t225->items.
              IF t231 < 0.
                EXIT.
              ENDIF.
              t230 = t231 + t233.
            ENDWHILE.
          ENDIF.
          IF t225->has( 2 - 1 ) = abap_false.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t225->load( ).
          READ TABLE t225->items INDEX 2 INTO t224.
          DATA(t235) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t235->has = abap_true.
          t235->value = t224.
          t196 = t235.
        ELSE.
          DATA(t237) = VALUE abap_bool( ).
          DATA(t238) = VALUE string( ).
          t238 = t196->value.
          DATA(t240) = |`|.
          DATA(t241) = strlen( t238 ).
          DATA(t242) = VALUE i( ).
          DATA(t243) = VALUE i( ).
          DATA(t244) = VALUE string( ).
          t242 = strlen( t240 ).
          IF t242 = 0.
            t237 = abap_true.
          ELSEIF t242 <= t241.
            t243 = 0.
            t244 = t238+t243(t242).
            IF t244 = t240.
              t237 = abap_true.
            ENDIF.
          ENDIF.
          IF t237 = abap_true.
            DATA(t247) = VALUE string( ).
            DATA t248 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA(t249) = VALUE string( ).
            t249 = t196->value.
            DATA(t251) = |`|.
            DATA(t252) = strlen( t249 ).
            DATA(t253) = VALUE i( ).
            DATA(t254) = VALUE i( ).
            DATA(t255) = VALUE i( ).
            DATA(t256) = VALUE i( ).
            DATA(t257) = VALUE string( ).
            CREATE OBJECT t248.
            t256 = strlen( t251 ).
            t253 = 0.
            IF t256 = 0.
              WHILE t253 < t252.
                t257 = t249+t253(1).
                APPEND t257 TO t248->items.
                t253 = t253 + 1.
              ENDWHILE.
            ELSE.
              WHILE t253 <= t252.
                FIND FIRST OCCURRENCE OF t251 IN SECTION OFFSET t253 OF t249 MATCH OFFSET t254.
                IF sy-subrc = 0.
                  t255 = t254 - t253.
                ELSE.
                  t254 = -1.
                  t255 = t252 - t253.
                ENDIF.
                CLEAR t257.
                IF t255 > 0.
                  t257 = t249+t253(t255).
                ENDIF.
                APPEND t257 TO t248->items.
                IF t254 < 0.
                  EXIT.
                ENDIF.
                t253 = t254 + t256.
              ENDWHILE.
            ENDIF.
            IF t248->has( 2 - 1 ) = abap_false.
              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
            ENDIF.
            t248->load( ).
            READ TABLE t248->items INDEX 2 INTO t247.
            DATA(t258) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t258->has = abap_true.
            t258->value = t247.
            t196 = t258.
          ENDIF.
        ENDIF.
        DATA(t263) = VALUE string( ).
        t263 = t196->value.
        t204 = zlnt_runtime_stri_248d3505915c=>int_optional( t263 ).
      ENDIF.
      result = t204.
      RETURN.
    ENDIF.
    DATA t266 TYPE REF TO zcl_lnt_expression_node.
    DATA t268 TYPE REF TO zcl_lnt_expression_node.
    t268 = t2.
    DATA(t270) = zlnt_runtime_desc_78196487750d=>zlnt_member_d140_ecb7e995244f.
    t266 = t268->find_first_expression( i_type_9913 = t270 ).
    IF xsdbool( t266 IS BOUND ) = abap_true.
      DATA t274 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      DATA(t277) = VALUE string( ).
      t277 = t266->concat_tokens( ).
      DATA(t280) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t280->has = abap_true.
      t280->value = t277.
      t274 = t280.
      DATA t282 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t284 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t284 = t274.
      DATA t286 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t288) = VALUE abap_bool( ).
      IF t284 IS INITIAL.
        t288 = abap_true.
      ELSEIF t284->has = abap_false.
        t288 = abap_true.
      ENDIF.
      IF t288 = abap_true.
      ELSE.
        DATA(t292) = VALUE abap_bool( ).
        DATA(t293) = VALUE string( ).
        t293 = t274->value.
        DATA(t295) = |'|.
        DATA(t296) = strlen( t293 ).
        DATA(t297) = VALUE i( ).
        DATA(t298) = VALUE i( ).
        DATA(t299) = VALUE string( ).
        t297 = strlen( t295 ).
        IF t297 = 0.
          t292 = abap_true.
        ELSEIF t297 <= t296.
          t298 = 0.
          t299 = t293+t298(t297).
          IF t299 = t295.
            t292 = abap_true.
          ENDIF.
        ENDIF.
        IF t292 = abap_true.
          DATA(t302) = VALUE string( ).
          DATA t303 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA(t304) = VALUE string( ).
          t304 = t274->value.
          DATA(t306) = |'|.
          DATA(t307) = strlen( t304 ).
          DATA(t308) = VALUE i( ).
          DATA(t309) = VALUE i( ).
          DATA(t310) = VALUE i( ).
          DATA(t311) = VALUE i( ).
          DATA(t312) = VALUE string( ).
          CREATE OBJECT t303.
          t311 = strlen( t306 ).
          t308 = 0.
          IF t311 = 0.
            WHILE t308 < t307.
              t312 = t304+t308(1).
              APPEND t312 TO t303->items.
              t308 = t308 + 1.
            ENDWHILE.
          ELSE.
            WHILE t308 <= t307.
              FIND FIRST OCCURRENCE OF t306 IN SECTION OFFSET t308 OF t304 MATCH OFFSET t309.
              IF sy-subrc = 0.
                t310 = t309 - t308.
              ELSE.
                t309 = -1.
                t310 = t307 - t308.
              ENDIF.
              CLEAR t312.
              IF t310 > 0.
                t312 = t304+t308(t310).
              ENDIF.
              APPEND t312 TO t303->items.
              IF t309 < 0.
                EXIT.
              ENDIF.
              t308 = t309 + t311.
            ENDWHILE.
          ENDIF.
          IF t303->has( 2 - 1 ) = abap_false.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t303->load( ).
          READ TABLE t303->items INDEX 2 INTO t302.
          DATA(t313) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t313->has = abap_true.
          t313->value = t302.
          t274 = t313.
        ELSE.
          DATA(t315) = VALUE abap_bool( ).
          DATA(t316) = VALUE string( ).
          t316 = t274->value.
          DATA(t318) = |`|.
          DATA(t319) = strlen( t316 ).
          DATA(t320) = VALUE i( ).
          DATA(t321) = VALUE i( ).
          DATA(t322) = VALUE string( ).
          t320 = strlen( t318 ).
          IF t320 = 0.
            t315 = abap_true.
          ELSEIF t320 <= t319.
            t321 = 0.
            t322 = t316+t321(t320).
            IF t322 = t318.
              t315 = abap_true.
            ENDIF.
          ENDIF.
          IF t315 = abap_true.
            DATA(t325) = VALUE string( ).
            DATA t326 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA(t327) = VALUE string( ).
            t327 = t274->value.
            DATA(t329) = |`|.
            DATA(t330) = strlen( t327 ).
            DATA(t331) = VALUE i( ).
            DATA(t332) = VALUE i( ).
            DATA(t333) = VALUE i( ).
            DATA(t334) = VALUE i( ).
            DATA(t335) = VALUE string( ).
            CREATE OBJECT t326.
            t334 = strlen( t329 ).
            t331 = 0.
            IF t334 = 0.
              WHILE t331 < t330.
                t335 = t327+t331(1).
                APPEND t335 TO t326->items.
                t331 = t331 + 1.
              ENDWHILE.
            ELSE.
              WHILE t331 <= t330.
                FIND FIRST OCCURRENCE OF t329 IN SECTION OFFSET t331 OF t327 MATCH OFFSET t332.
                IF sy-subrc = 0.
                  t333 = t332 - t331.
                ELSE.
                  t332 = -1.
                  t333 = t330 - t331.
                ENDIF.
                CLEAR t335.
                IF t333 > 0.
                  t335 = t327+t331(t333).
                ENDIF.
                APPEND t335 TO t326->items.
                IF t332 < 0.
                  EXIT.
                ENDIF.
                t331 = t332 + t334.
              ENDWHILE.
            ENDIF.
            IF t326->has( 2 - 1 ) = abap_false.
              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
            ENDIF.
            t326->load( ).
            READ TABLE t326->items INDEX 2 INTO t325.
            DATA(t336) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t336->has = abap_true.
            t336->value = t325.
            t274 = t336.
          ENDIF.
        ENDIF.
        DATA(t341) = VALUE string( ).
        t341 = t274->value.
        t282 = zlnt_runtime_stri_248d3505915c=>int_optional( t341 ).
      ENDIF.
      result = t282.
      RETURN.
    ENDIF.
    DATA t344 TYPE REF TO zcl_lnt_expression_node.
    DATA t346 TYPE REF TO zcl_lnt_expression_node.
    t346 = t2.
    DATA(t348) = zlnt_runtime_desc_78196487750d=>zlnt_member_d141_e96a425f6743.
    t344 = t346->find_first_expression( i_type_9913 = t348 ).
    IF xsdbool( t344 IS BOUND ) = abap_true.
      DATA t356 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t356 = me->resolve_constant_value( i_expr = t344 ).
      DATA t358 TYPE REF TO zlnt_runtime_opti_8df4f98f9a3a.
      DATA t360 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
      t360 = t356.
      DATA t362 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
      DATA(t364) = VALUE abap_bool( ).
      IF t360 IS INITIAL.
        t364 = abap_true.
      ELSEIF t360->has = abap_false.
        t364 = abap_true.
      ENDIF.
      IF t364 = abap_true.
      ELSE.
        DATA(t368) = VALUE abap_bool( ).
        DATA(t369) = VALUE string( ).
        t369 = t356->value.
        DATA(t371) = |'|.
        DATA(t372) = strlen( t369 ).
        DATA(t373) = VALUE i( ).
        DATA(t374) = VALUE i( ).
        DATA(t375) = VALUE string( ).
        t373 = strlen( t371 ).
        IF t373 = 0.
          t368 = abap_true.
        ELSEIF t373 <= t372.
          t374 = 0.
          t375 = t369+t374(t373).
          IF t375 = t371.
            t368 = abap_true.
          ENDIF.
        ENDIF.
        IF t368 = abap_true.
          DATA(t378) = VALUE string( ).
          DATA t379 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
          DATA(t380) = VALUE string( ).
          t380 = t356->value.
          DATA(t382) = |'|.
          DATA(t383) = strlen( t380 ).
          DATA(t384) = VALUE i( ).
          DATA(t385) = VALUE i( ).
          DATA(t386) = VALUE i( ).
          DATA(t387) = VALUE i( ).
          DATA(t388) = VALUE string( ).
          CREATE OBJECT t379.
          t387 = strlen( t382 ).
          t384 = 0.
          IF t387 = 0.
            WHILE t384 < t383.
              t388 = t380+t384(1).
              APPEND t388 TO t379->items.
              t384 = t384 + 1.
            ENDWHILE.
          ELSE.
            WHILE t384 <= t383.
              FIND FIRST OCCURRENCE OF t382 IN SECTION OFFSET t384 OF t380 MATCH OFFSET t385.
              IF sy-subrc = 0.
                t386 = t385 - t384.
              ELSE.
                t385 = -1.
                t386 = t383 - t384.
              ENDIF.
              CLEAR t388.
              IF t386 > 0.
                t388 = t380+t384(t386).
              ENDIF.
              APPEND t388 TO t379->items.
              IF t385 < 0.
                EXIT.
              ENDIF.
              t384 = t385 + t387.
            ENDWHILE.
          ENDIF.
          IF t379->has( 2 - 1 ) = abap_false.
            RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
          ENDIF.
          t379->load( ).
          READ TABLE t379->items INDEX 2 INTO t378.
          DATA(t389) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
          t389->has = abap_true.
          t389->value = t378.
          t356 = t389.
        ELSE.
          DATA(t391) = VALUE abap_bool( ).
          DATA(t392) = VALUE string( ).
          t392 = t356->value.
          DATA(t394) = |`|.
          DATA(t395) = strlen( t392 ).
          DATA(t396) = VALUE i( ).
          DATA(t397) = VALUE i( ).
          DATA(t398) = VALUE string( ).
          t396 = strlen( t394 ).
          IF t396 = 0.
            t391 = abap_true.
          ELSEIF t396 <= t395.
            t397 = 0.
            t398 = t392+t397(t396).
            IF t398 = t394.
              t391 = abap_true.
            ENDIF.
          ENDIF.
          IF t391 = abap_true.
            DATA(t401) = VALUE string( ).
            DATA t402 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
            DATA(t403) = VALUE string( ).
            t403 = t356->value.
            DATA(t405) = |`|.
            DATA(t406) = strlen( t403 ).
            DATA(t407) = VALUE i( ).
            DATA(t408) = VALUE i( ).
            DATA(t409) = VALUE i( ).
            DATA(t410) = VALUE i( ).
            DATA(t411) = VALUE string( ).
            CREATE OBJECT t402.
            t410 = strlen( t405 ).
            t407 = 0.
            IF t410 = 0.
              WHILE t407 < t406.
                t411 = t403+t407(1).
                APPEND t411 TO t402->items.
                t407 = t407 + 1.
              ENDWHILE.
            ELSE.
              WHILE t407 <= t406.
                FIND FIRST OCCURRENCE OF t405 IN SECTION OFFSET t407 OF t403 MATCH OFFSET t408.
                IF sy-subrc = 0.
                  t409 = t408 - t407.
                ELSE.
                  t408 = -1.
                  t409 = t406 - t407.
                ENDIF.
                CLEAR t411.
                IF t409 > 0.
                  t411 = t403+t407(t409).
                ENDIF.
                APPEND t411 TO t402->items.
                IF t408 < 0.
                  EXIT.
                ENDIF.
                t407 = t408 + t410.
              ENDWHILE.
            ENDIF.
            IF t402->has( 2 - 1 ) = abap_false.
              RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
            ENDIF.
            t402->load( ).
            READ TABLE t402->items INDEX 2 INTO t401.
            DATA(t412) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
            t412->has = abap_true.
            t412->value = t401.
            t356 = t412.
          ENDIF.
        ENDIF.
        DATA(t417) = VALUE string( ).
        t417 = t356->value.
        t358 = zlnt_runtime_stri_248d3505915c=>int_optional( t417 ).
      ENDIF.
      result = t358.
      RETURN.
    ENDIF.
    DATA t420 TYPE REF TO zlnt_exception_cl_30eec8e8805d.
    DATA t421 TYPE REF TO zcl_lnt_builtin_e8b3bd7e.
    DATA(t425) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
    t425->has = abap_true.
    t425->value = |Unexpected, findLength|.
    t421 = NEW zcl_lnt_builtin_e8b3bd7e( i_message_26cb = t425 ).
    t420 = NEW #( ).
    t420->payload = t421.
    CLEAR t420->source_value.
    DATA t427 TYPE REF TO zlnt_view_storage_74017ca272ac.
    DATA t428 TYPE REF TO object.
    t428 = t421.
    TRY.
        t420->source_value ?= t428.
      CATCH cx_sy_move_cast_error.
    ENDTRY.
    IF t420->source_value IS NOT BOUND.
      TRY.
          t427 ?= t421.
        CATCH cx_sy_move_cast_error.
      ENDTRY.
      IF t427 IS BOUND.
        t420->source_value = t427->source( ).
      ENDIF.
      IF t420->source_value IS NOT BOUND.
        CREATE OBJECT t420->source_value.
        t420->source_value->tag = zlnt_runtime_dyna_a429568d5be8=>tag_ref.
        t420->source_value->oval = t421.
      ENDIF.
    ENDIF.
    RAISE EXCEPTION t420.
  ENDMETHOD.

  METHOD parse_int.
    DATA(t1) = i_text.
    DATA t3 TYPE REF TO zlnt_runtime_opti_4ba3bdccd169.
    t3 = t1.
    DATA t5 TYPE REF TO zlnt_runtime_dyna_a429568d5be8.
    DATA(t7) = VALUE abap_bool( ).
    IF t3 IS INITIAL.
      t7 = abap_true.
    ELSEIF t3->has = abap_false.
      t7 = abap_true.
    ENDIF.
    IF t7 = abap_true.
      CLEAR result.
      RETURN.
    ENDIF.
    DATA(t10) = VALUE abap_bool( ).
    DATA t11 TYPE string.
    t11 = t1->value.
    DATA(t13) = |'|.
    DATA(t14) = strlen( t11 ).
    DATA t15 TYPE i.
    DATA(t16) = VALUE i( ).
    DATA(t17) = VALUE string( ).
    t15 = strlen( t13 ).
    IF t15 = 0.
      t10 = abap_true.
    ELSEIF t15 <= t14.
      t16 = 0.
      t17 = t11+t16(t15).
      IF t17 = t13.
        t10 = abap_true.
      ENDIF.
    ENDIF.
    IF t10 = abap_true.
      DATA(t20) = VALUE string( ).
      DATA t21 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
      DATA t22 TYPE string.
      t22 = t1->value.
      DATA(t24) = |'|.
      DATA(t25) = strlen( t22 ).
      DATA t26 TYPE i.
      DATA(t27) = VALUE i( ).
      DATA(t28) = VALUE i( ).
      DATA t29 TYPE i.
      DATA(t30) = VALUE string( ).
      CREATE OBJECT t21.
      t29 = strlen( t24 ).
      t26 = 0.
      IF t29 = 0.
        WHILE t26 < t25.
          t30 = t22+t26(1).
          APPEND t30 TO t21->items.
          t26 = t26 + 1.
        ENDWHILE.
      ELSE.
        WHILE t26 <= t25.
          FIND FIRST OCCURRENCE OF t24 IN SECTION OFFSET t26 OF t22 MATCH OFFSET t27.
          IF sy-subrc = 0.
            t28 = t27 - t26.
          ELSE.
            t27 = -1.
            t28 = t25 - t26.
          ENDIF.
          CLEAR t30.
          IF t28 > 0.
            t30 = t22+t26(t28).
          ENDIF.
          APPEND t30 TO t21->items.
          IF t27 < 0.
            EXIT.
          ENDIF.
          t26 = t27 + t29.
        ENDWHILE.
      ENDIF.
      IF t21->has( 2 - 1 ) = abap_false.
        RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
      ENDIF.
      t21->load( ).
      READ TABLE t21->items INDEX 2 INTO t20.
      DATA(t31) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
      t31->has = abap_true.
      t31->value = t20.
      t1 = t31.
    ELSE.
      DATA(t33) = VALUE abap_bool( ).
      DATA t34 TYPE string.
      t34 = t1->value.
      DATA(t36) = |`|.
      DATA(t37) = strlen( t34 ).
      DATA t38 TYPE i.
      DATA(t39) = VALUE i( ).
      DATA(t40) = VALUE string( ).
      t38 = strlen( t36 ).
      IF t38 = 0.
        t33 = abap_true.
      ELSEIF t38 <= t37.
        t39 = 0.
        t40 = t34+t39(t38).
        IF t40 = t36.
          t33 = abap_true.
        ENDIF.
      ENDIF.
      IF t33 = abap_true.
        DATA(t43) = VALUE string( ).
        DATA t44 TYPE REF TO zlnt_runtime_arra_8ecd6afe19e0.
        DATA t45 TYPE string.
        t45 = t1->value.
        DATA(t47) = |`|.
        DATA(t48) = strlen( t45 ).
        DATA t49 TYPE i.
        DATA(t50) = VALUE i( ).
        DATA(t51) = VALUE i( ).
        DATA t52 TYPE i.
        DATA(t53) = VALUE string( ).
        CREATE OBJECT t44.
        t52 = strlen( t47 ).
        t49 = 0.
        IF t52 = 0.
          WHILE t49 < t48.
            t53 = t45+t49(1).
            APPEND t53 TO t44->items.
            t49 = t49 + 1.
          ENDWHILE.
        ELSE.
          WHILE t49 <= t48.
            FIND FIRST OCCURRENCE OF t47 IN SECTION OFFSET t49 OF t45 MATCH OFFSET t50.
            IF sy-subrc = 0.
              t51 = t50 - t49.
            ELSE.
              t50 = -1.
              t51 = t48 - t49.
            ENDIF.
            CLEAR t53.
            IF t51 > 0.
              t53 = t45+t49(t51).
            ENDIF.
            APPEND t53 TO t44->items.
            IF t50 < 0.
              EXIT.
            ENDIF.
            t49 = t50 + t52.
          ENDWHILE.
        ENDIF.
        IF t44->has( 2 - 1 ) = abap_false.
          RAISE EXCEPTION TYPE cx_sy_range_out_of_bounds.
        ENDIF.
        t44->load( ).
        READ TABLE t44->items INDEX 2 INTO t43.
        DATA(t54) = NEW zlnt_runtime_opti_4ba3bdccd169( ).
        t54->has = abap_true.
        t54->value = t43.
        t1 = t54.
      ENDIF.
    ENDIF.
    DATA t59 TYPE string.
    t59 = t1->value.
    result = zlnt_runtime_stri_248d3505915c=>int_optional( t59 ).

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
    result = zlnt_runtime_desc_78196487750d=>zlnt_member_d782_35a94517cf75.
  ENDMETHOD.
ENDCLASS.
