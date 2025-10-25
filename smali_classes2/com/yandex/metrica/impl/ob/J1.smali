.class public final Lcom/yandex/metrica/impl/ob/J1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/yandex/metrica/impl/ob/f6;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/yandex/metrica/impl/ob/f6;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/yandex/metrica/impl/ob/a1;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/yandex/metrica/impl/ob/a1;",
            "Lcom/yandex/metrica/impl/ob/re;",
            ">;"
        }
    .end annotation
.end field

.field public static final synthetic e:I


# direct methods
.method static constructor <clinit>()V
    .locals 48

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    sget-object v1, Lcom/yandex/metrica/impl/ob/f6;->b:Lcom/yandex/metrica/impl/ob/f6;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v3, Lcom/yandex/metrica/impl/ob/f6;->c:Lcom/yandex/metrica/impl/ob/f6;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/yandex/metrica/impl/ob/J1;->a:Ljava/util/Map;

    .line 5
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 6
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7
    invoke-virtual {v0, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 8
    sput-object v0, Lcom/yandex/metrica/impl/ob/J1;->b:Landroid/util/SparseArray;

    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 10
    sget-object v1, Lcom/yandex/metrica/impl/ob/a1;->d:Lcom/yandex/metrica/impl/ob/a1;

    .line 11
    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object v2, Lcom/yandex/metrica/impl/ob/a1;->e:Lcom/yandex/metrica/impl/ob/a1;

    const/4 v3, 0x4

    .line 13
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 14
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v3, Lcom/yandex/metrica/impl/ob/a1;->z:Lcom/yandex/metrica/impl/ob/a1;

    const/4 v4, 0x5

    .line 16
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 17
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v4, Lcom/yandex/metrica/impl/ob/a1;->h:Lcom/yandex/metrica/impl/ob/a1;

    const/4 v5, 0x7

    .line 19
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 20
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v5, Lcom/yandex/metrica/impl/ob/a1;->D:Lcom/yandex/metrica/impl/ob/a1;

    const/4 v6, 0x3

    .line 22
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 23
    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v7, Lcom/yandex/metrica/impl/ob/a1;->G:Lcom/yandex/metrica/impl/ob/a1;

    const/16 v8, 0x1a

    .line 25
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 26
    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v9, Lcom/yandex/metrica/impl/ob/a1;->F:Lcom/yandex/metrica/impl/ob/a1;

    .line 28
    invoke-virtual {v0, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v10, Lcom/yandex/metrica/impl/ob/a1;->E:Lcom/yandex/metrica/impl/ob/a1;

    .line 30
    invoke-virtual {v0, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v11, Lcom/yandex/metrica/impl/ob/a1;->N:Lcom/yandex/metrica/impl/ob/a1;

    const/16 v12, 0x19

    .line 32
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 33
    invoke-virtual {v0, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v12, Lcom/yandex/metrica/impl/ob/a1;->q:Lcom/yandex/metrica/impl/ob/a1;

    .line 35
    invoke-virtual {v0, v12, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v13, Lcom/yandex/metrica/impl/ob/a1;->I:Lcom/yandex/metrica/impl/ob/a1;

    .line 37
    invoke-virtual {v0, v13, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v14, Lcom/yandex/metrica/impl/ob/a1;->r:Lcom/yandex/metrica/impl/ob/a1;

    .line 39
    invoke-virtual {v0, v14, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v6, Lcom/yandex/metrica/impl/ob/a1;->J:Lcom/yandex/metrica/impl/ob/a1;

    .line 41
    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v15, Lcom/yandex/metrica/impl/ob/a1;->M:Lcom/yandex/metrica/impl/ob/a1;

    .line 43
    invoke-virtual {v0, v15, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v16, v1

    .line 44
    sget-object v1, Lcom/yandex/metrica/impl/ob/a1;->K:Lcom/yandex/metrica/impl/ob/a1;

    .line 45
    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v8, Lcom/yandex/metrica/impl/ob/a1;->g:Lcom/yandex/metrica/impl/ob/a1;

    const/16 v17, 0x6

    move-object/from16 v18, v11

    .line 47
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 48
    invoke-virtual {v0, v8, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v11, Lcom/yandex/metrica/impl/ob/a1;->H:Lcom/yandex/metrica/impl/ob/a1;

    const/16 v17, 0x1b

    move-object/from16 v19, v10

    .line 50
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 51
    invoke-virtual {v0, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v17, v9

    .line 52
    sget-object v9, Lcom/yandex/metrica/impl/ob/a1;->L:Lcom/yandex/metrica/impl/ob/a1;

    .line 53
    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v10, Lcom/yandex/metrica/impl/ob/a1;->t:Lcom/yandex/metrica/impl/ob/a1;

    const/16 v20, 0x8

    move-object/from16 v21, v7

    .line 55
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 56
    invoke-virtual {v0, v10, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v7, Lcom/yandex/metrica/impl/ob/a1;->u:Lcom/yandex/metrica/impl/ob/a1;

    const/16 v20, 0x1c

    move-object/from16 v22, v5

    .line 58
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 59
    invoke-virtual {v0, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v5, Lcom/yandex/metrica/impl/ob/a1;->y:Lcom/yandex/metrica/impl/ob/a1;

    const/16 v7, 0xb

    .line 61
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 62
    invoke-virtual {v0, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v7, Lcom/yandex/metrica/impl/ob/a1;->i:Lcom/yandex/metrica/impl/ob/a1;

    const/16 v20, 0xc

    move-object/from16 v23, v5

    .line 64
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 65
    invoke-virtual {v0, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v20, v7

    .line 66
    sget-object v7, Lcom/yandex/metrica/impl/ob/a1;->j:Lcom/yandex/metrica/impl/ob/a1;

    .line 67
    invoke-virtual {v0, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v5, Lcom/yandex/metrica/impl/ob/a1;->P:Lcom/yandex/metrica/impl/ob/a1;

    const/16 v24, 0xd

    move-object/from16 v25, v7

    .line 69
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 70
    invoke-virtual {v0, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v7, Lcom/yandex/metrica/impl/ob/a1;->Q:Lcom/yandex/metrica/impl/ob/a1;

    const/16 v24, 0x2

    move-object/from16 v26, v5

    .line 72
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 73
    invoke-virtual {v0, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v5, Lcom/yandex/metrica/impl/ob/a1;->T:Lcom/yandex/metrica/impl/ob/a1;

    const/16 v24, 0x10

    move-object/from16 v27, v7

    .line 75
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 76
    invoke-virtual {v0, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v7, Lcom/yandex/metrica/impl/ob/a1;->U:Lcom/yandex/metrica/impl/ob/a1;

    const/16 v24, 0x11

    move-object/from16 v28, v5

    .line 78
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 79
    invoke-virtual {v0, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v5, Lcom/yandex/metrica/impl/ob/a1;->V:Lcom/yandex/metrica/impl/ob/a1;

    const/16 v24, 0x12

    move-object/from16 v29, v7

    .line 81
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 82
    invoke-virtual {v0, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v7, Lcom/yandex/metrica/impl/ob/a1;->W:Lcom/yandex/metrica/impl/ob/a1;

    const/16 v24, 0x13

    move-object/from16 v30, v5

    .line 84
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 85
    invoke-virtual {v0, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v5, Lcom/yandex/metrica/impl/ob/a1;->k:Lcom/yandex/metrica/impl/ob/a1;

    const/16 v24, 0x14

    move-object/from16 v31, v7

    .line 87
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 88
    invoke-virtual {v0, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v7, Lcom/yandex/metrica/impl/ob/a1;->m:Lcom/yandex/metrica/impl/ob/a1;

    const/16 v24, 0x15

    move-object/from16 v32, v5

    .line 90
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 91
    invoke-virtual {v0, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v5, Lcom/yandex/metrica/impl/ob/a1;->n:Lcom/yandex/metrica/impl/ob/a1;

    const/16 v24, 0x28

    move-object/from16 v33, v7

    .line 93
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 94
    invoke-virtual {v0, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v7, Lcom/yandex/metrica/impl/ob/a1;->o:Lcom/yandex/metrica/impl/ob/a1;

    const/16 v24, 0x23

    move-object/from16 v34, v5

    .line 96
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 97
    invoke-virtual {v0, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v5, Lcom/yandex/metrica/impl/ob/a1;->Y:Lcom/yandex/metrica/impl/ob/a1;

    const/16 v24, 0x1d

    move-object/from16 v35, v7

    .line 99
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 100
    invoke-virtual {v0, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v5, Lcom/yandex/metrica/impl/ob/a1;->Z:Lcom/yandex/metrica/impl/ob/a1;

    const/16 v7, 0x1e

    .line 102
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 103
    invoke-virtual {v0, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v7, Lcom/yandex/metrica/impl/ob/a1;->a0:Lcom/yandex/metrica/impl/ob/a1;

    const/16 v24, 0x22

    move-object/from16 v36, v5

    .line 105
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 106
    invoke-virtual {v0, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v5, Lcom/yandex/metrica/impl/ob/a1;->c0:Lcom/yandex/metrica/impl/ob/a1;

    const/16 v24, 0x24

    move-object/from16 v37, v7

    .line 108
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 109
    invoke-virtual {v0, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v7, Lcom/yandex/metrica/impl/ob/a1;->d0:Lcom/yandex/metrica/impl/ob/a1;

    const/16 v24, 0x26

    move-object/from16 v38, v5

    .line 111
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 112
    invoke-virtual {v0, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/yandex/metrica/impl/ob/J1;->c:Ljava/util/Map;

    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 115
    new-instance v5, Lcom/yandex/metrica/impl/ob/me;

    invoke-direct {v5}, Lcom/yandex/metrica/impl/ob/me;-><init>()V

    move-object/from16 v24, v7

    .line 116
    new-instance v7, Lcom/yandex/metrica/impl/ob/pe;

    invoke-direct {v7}, Lcom/yandex/metrica/impl/ob/pe;-><init>()V

    move-object/from16 v39, v10

    .line 117
    new-instance v10, Lcom/yandex/metrica/impl/ob/ne;

    invoke-direct {v10}, Lcom/yandex/metrica/impl/ob/ne;-><init>()V

    move-object/from16 v40, v9

    .line 118
    new-instance v9, Lcom/yandex/metrica/impl/ob/je;

    invoke-direct {v9}, Lcom/yandex/metrica/impl/ob/je;-><init>()V

    move-object/from16 v41, v11

    .line 119
    new-instance v11, Lcom/yandex/metrica/impl/ob/Fe;

    invoke-direct {v11}, Lcom/yandex/metrica/impl/ob/Fe;-><init>()V

    move-object/from16 v42, v8

    .line 120
    new-instance v8, Lcom/yandex/metrica/impl/ob/Be;

    invoke-direct {v8}, Lcom/yandex/metrica/impl/ob/Be;-><init>()V

    move-object/from16 v43, v1

    .line 121
    invoke-static {}, Lcom/yandex/metrica/impl/ob/re;->a()Lcom/yandex/metrica/impl/ob/re$b;

    move-result-object v1

    .line 122
    invoke-virtual {v1, v8}, Lcom/yandex/metrica/impl/ob/re$b;->a(Lcom/yandex/metrica/impl/ob/Ge;)Lcom/yandex/metrica/impl/ob/re$b;

    move-result-object v1

    .line 123
    invoke-virtual {v1, v8}, Lcom/yandex/metrica/impl/ob/re$b;->a(Lcom/yandex/metrica/impl/ob/oe;)Lcom/yandex/metrica/impl/ob/re$b;

    move-result-object v1

    .line 124
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/re$b;->a()Lcom/yandex/metrica/impl/ob/re;

    move-result-object v1

    .line 125
    invoke-static {}, Lcom/yandex/metrica/impl/ob/re;->a()Lcom/yandex/metrica/impl/ob/re$b;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/yandex/metrica/impl/ob/re$b;->a(Lcom/yandex/metrica/impl/ob/Ge;)Lcom/yandex/metrica/impl/ob/re$b;

    move-result-object v8

    invoke-virtual {v8}, Lcom/yandex/metrica/impl/ob/re$b;->a()Lcom/yandex/metrica/impl/ob/re;

    move-result-object v8

    move-object/from16 v44, v7

    .line 126
    invoke-static {}, Lcom/yandex/metrica/impl/ob/re;->a()Lcom/yandex/metrica/impl/ob/re$b;

    move-result-object v7

    invoke-virtual {v7, v9}, Lcom/yandex/metrica/impl/ob/re$b;->a(Lcom/yandex/metrica/impl/ob/Ge;)Lcom/yandex/metrica/impl/ob/re$b;

    move-result-object v7

    invoke-virtual {v7}, Lcom/yandex/metrica/impl/ob/re$b;->a()Lcom/yandex/metrica/impl/ob/re;

    move-result-object v7

    move-object/from16 v45, v9

    .line 127
    invoke-static {}, Lcom/yandex/metrica/impl/ob/re;->a()Lcom/yandex/metrica/impl/ob/re$b;

    move-result-object v9

    .line 128
    invoke-virtual {v9, v11}, Lcom/yandex/metrica/impl/ob/re$b;->a(Lcom/yandex/metrica/impl/ob/Ge;)Lcom/yandex/metrica/impl/ob/re$b;

    move-result-object v9

    invoke-virtual {v9}, Lcom/yandex/metrica/impl/ob/re$b;->a()Lcom/yandex/metrica/impl/ob/re;

    move-result-object v9

    .line 129
    invoke-static {}, Lcom/yandex/metrica/impl/ob/re;->a()Lcom/yandex/metrica/impl/ob/re$b;

    move-result-object v11

    invoke-virtual {v11, v5}, Lcom/yandex/metrica/impl/ob/re$b;->a(Lcom/yandex/metrica/impl/ob/ye;)Lcom/yandex/metrica/impl/ob/re$b;

    move-result-object v11

    invoke-virtual {v11}, Lcom/yandex/metrica/impl/ob/re$b;->a()Lcom/yandex/metrica/impl/ob/re;

    move-result-object v11

    move-object/from16 v46, v9

    .line 130
    invoke-static {}, Lcom/yandex/metrica/impl/ob/re;->a()Lcom/yandex/metrica/impl/ob/re$b;

    move-result-object v9

    move-object/from16 v47, v11

    new-instance v11, Lcom/yandex/metrica/impl/ob/He;

    invoke-direct {v11}, Lcom/yandex/metrica/impl/ob/He;-><init>()V

    .line 131
    invoke-virtual {v9, v11}, Lcom/yandex/metrica/impl/ob/re$b;->a(Lcom/yandex/metrica/impl/ob/Ge;)Lcom/yandex/metrica/impl/ob/re$b;

    move-result-object v9

    invoke-virtual {v9}, Lcom/yandex/metrica/impl/ob/re$b;->a()Lcom/yandex/metrica/impl/ob/re;

    move-result-object v9

    .line 132
    invoke-virtual {v0, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    invoke-static {}, Lcom/yandex/metrica/impl/ob/re;->a()Lcom/yandex/metrica/impl/ob/re$b;

    move-result-object v2

    new-instance v11, Lcom/yandex/metrica/impl/ob/J1$a;

    invoke-direct {v11}, Lcom/yandex/metrica/impl/ob/J1$a;-><init>()V

    invoke-virtual {v2, v11}, Lcom/yandex/metrica/impl/ob/re$b;->a(Lcom/yandex/metrica/impl/ob/Ge;)Lcom/yandex/metrica/impl/ob/re$b;

    move-result-object v2

    .line 134
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/re$b;->a()Lcom/yandex/metrica/impl/ob/re;

    move-result-object v2

    .line 135
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    invoke-static {}, Lcom/yandex/metrica/impl/ob/re;->a()Lcom/yandex/metrica/impl/ob/re$b;

    move-result-object v2

    .line 137
    invoke-virtual {v2, v5}, Lcom/yandex/metrica/impl/ob/re$b;->a(Lcom/yandex/metrica/impl/ob/ye;)Lcom/yandex/metrica/impl/ob/re$b;

    move-result-object v2

    .line 138
    invoke-virtual {v2, v10}, Lcom/yandex/metrica/impl/ob/re$b;->a(Lcom/yandex/metrica/impl/ob/Ge;)Lcom/yandex/metrica/impl/ob/re$b;

    move-result-object v2

    new-instance v3, Lcom/yandex/metrica/impl/ob/ke;

    invoke-direct {v3}, Lcom/yandex/metrica/impl/ob/ke;-><init>()V

    .line 139
    invoke-virtual {v2, v3}, Lcom/yandex/metrica/impl/ob/re$b;->a(Lcom/yandex/metrica/impl/ob/xe;)Lcom/yandex/metrica/impl/ob/re$b;

    move-result-object v2

    new-instance v3, Lcom/yandex/metrica/impl/ob/le;

    invoke-direct {v3}, Lcom/yandex/metrica/impl/ob/le;-><init>()V

    .line 140
    invoke-virtual {v2, v3}, Lcom/yandex/metrica/impl/ob/re$b;->a(Lcom/yandex/metrica/impl/ob/ze;)Lcom/yandex/metrica/impl/ob/re$b;

    move-result-object v2

    .line 141
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/re$b;->a()Lcom/yandex/metrica/impl/ob/re;

    move-result-object v2

    .line 142
    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    invoke-virtual {v0, v13, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    invoke-virtual {v0, v15, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v2, v43

    .line 148
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v42

    .line 149
    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v41

    .line 150
    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v40

    .line 151
    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    invoke-static {}, Lcom/yandex/metrica/impl/ob/re;->a()Lcom/yandex/metrica/impl/ob/re$b;

    move-result-object v1

    move-object/from16 v2, v44

    .line 153
    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/ob/re$b;->a(Lcom/yandex/metrica/impl/ob/Ge;)Lcom/yandex/metrica/impl/ob/re$b;

    move-result-object v1

    new-instance v2, Lcom/yandex/metrica/impl/ob/we;

    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/we;-><init>()V

    .line 154
    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/ob/re$b;->a(Lcom/yandex/metrica/impl/ob/oe;)Lcom/yandex/metrica/impl/ob/re$b;

    move-result-object v1

    .line 155
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/re$b;->a()Lcom/yandex/metrica/impl/ob/re;

    move-result-object v1

    move-object/from16 v2, v39

    .line 156
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v23

    .line 157
    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v20

    .line 158
    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v25

    .line 159
    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v22

    .line 160
    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v21

    .line 161
    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v17

    .line 162
    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v19

    .line 163
    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v18

    .line 164
    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    invoke-static {}, Lcom/yandex/metrica/impl/ob/re;->a()Lcom/yandex/metrica/impl/ob/re$b;

    move-result-object v1

    new-instance v2, Lcom/yandex/metrica/impl/ob/me;

    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/me;-><init>()V

    .line 166
    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/ob/re$b;->a(Lcom/yandex/metrica/impl/ob/ye;)Lcom/yandex/metrica/impl/ob/re$b;

    move-result-object v1

    move-object/from16 v2, v45

    .line 167
    invoke-virtual {v1, v2}, Lcom/yandex/metrica/impl/ob/re$b;->a(Lcom/yandex/metrica/impl/ob/Ge;)Lcom/yandex/metrica/impl/ob/re$b;

    move-result-object v1

    .line 168
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/re$b;->a()Lcom/yandex/metrica/impl/ob/re;

    move-result-object v1

    move-object/from16 v2, v27

    .line 169
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v1, Lcom/yandex/metrica/impl/ob/a1;->R:Lcom/yandex/metrica/impl/ob/a1;

    .line 171
    invoke-static {}, Lcom/yandex/metrica/impl/ob/re;->a()Lcom/yandex/metrica/impl/ob/re$b;

    move-result-object v2

    new-instance v3, Lcom/yandex/metrica/impl/ob/J1$b;

    invoke-direct {v3}, Lcom/yandex/metrica/impl/ob/J1$b;-><init>()V

    invoke-virtual {v2, v3}, Lcom/yandex/metrica/impl/ob/re$b;->a(Lcom/yandex/metrica/impl/ob/se;)Lcom/yandex/metrica/impl/ob/re$b;

    move-result-object v2

    .line 172
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/re$b;->a()Lcom/yandex/metrica/impl/ob/re;

    move-result-object v2

    .line 173
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v28

    .line 174
    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v30

    move-object/from16 v2, v47

    .line 175
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v31

    .line 176
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v32

    .line 177
    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v33

    .line 178
    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v34

    .line 179
    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v35

    move-object/from16 v2, v46

    .line 180
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v36

    .line 181
    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v37

    .line 182
    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v16

    .line 183
    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v29

    .line 184
    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v26

    .line 185
    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v38

    .line 186
    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v24

    .line 187
    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/yandex/metrica/impl/ob/J1;->d:Ljava/util/Map;

    return-void
.end method

.method public static a(Lcom/yandex/metrica/impl/ob/E$b$a;)I
    .locals 1

    .line 30
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method static a(Lcom/yandex/metrica/impl/ob/f6;)I
    .locals 1

    .line 26
    sget-object v0, Lcom/yandex/metrica/impl/ob/J1;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    .line 27
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static a(Lcom/yandex/metrica/impl/ob/oc$a;)I
    .locals 2

    .line 31
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    return v0

    :cond_0
    return v1

    :cond_1
    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method static a(I)Lcom/yandex/metrica/impl/ob/f6;
    .locals 1

    .line 13
    sget-object v0, Lcom/yandex/metrica/impl/ob/J1;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/metrica/impl/ob/f6;

    if-nez p0, :cond_0

    .line 14
    sget-object p0, Lcom/yandex/metrica/impl/ob/f6;->b:Lcom/yandex/metrica/impl/ob/f6;

    :cond_0
    return-object p0
.end method

.method public static a(Landroid/content/ContentValues;)Lcom/yandex/metrica/impl/ob/qf$f;
    .locals 7

    const-string v0, "start_time"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "server_time_offset"

    .line 2
    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "obtained_before_first_sync"

    .line 3
    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    .line 4
    new-instance v2, Lcom/yandex/metrica/impl/ob/qf$f;

    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/qf$f;-><init>()V

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/yandex/metrica/impl/ob/qf$f;->a:J

    .line 6
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 7
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    check-cast v0, Ljava/util/GregorianCalendar;

    .line 8
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    .line 9
    invoke-virtual {v0, v3, v4}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    .line 10
    iput v0, v2, Lcom/yandex/metrica/impl/ob/qf$f;->b:I

    :cond_0
    if-eqz v1, :cond_1

    .line 11
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, v2, Lcom/yandex/metrica/impl/ob/qf$f;->c:J

    :cond_1
    if-eqz p0, :cond_2

    .line 12
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    iput-boolean p0, v2, Lcom/yandex/metrica/impl/ob/qf$f;->d:Z

    :cond_2
    return-object v2
.end method

.method public static a(Lcom/yandex/metrica/impl/ob/a1;)Lcom/yandex/metrica/impl/ob/re;
    .locals 1

    if-eqz p0, :cond_0

    .line 28
    sget-object v0, Lcom/yandex/metrica/impl/ob/J1;->d:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/metrica/impl/ob/re;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    .line 29
    invoke-static {}, Lcom/yandex/metrica/impl/ob/re;->b()Lcom/yandex/metrica/impl/ob/re;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method private static a(Lorg/json/JSONObject;)Lcom/yandex/metrica/impl/ob/rf;
    .locals 5

    const-string v0, "mac"

    .line 18
    :try_start_0
    new-instance v1, Lcom/yandex/metrica/impl/ob/rf;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/rf;-><init>()V

    .line 19
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/yandex/metrica/impl/ob/rf;->a:Ljava/lang/String;

    const-string v2, "signal_strength"

    .line 20
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/yandex/metrica/impl/ob/rf;->b:I

    const-string v2, "ssid"

    .line 21
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/yandex/metrica/impl/ob/rf;->c:Ljava/lang/String;

    const-string v2, "is_connected"

    .line 22
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/yandex/metrica/impl/ob/rf;->d:Z

    const-string v2, "last_visible_offset_seconds"

    const-wide/16 v3, 0x0

    .line 23
    invoke-virtual {p0, v2, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/yandex/metrica/impl/ob/rf;->e:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 24
    :catchall_0
    new-instance v1, Lcom/yandex/metrica/impl/ob/rf;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/rf;-><init>()V

    .line 25
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/yandex/metrica/impl/ob/rf;->a:Ljava/lang/String;

    return-object v1
.end method

.method public static a(Lorg/json/JSONArray;)[Lcom/yandex/metrica/impl/ob/rf;
    .locals 3

    .line 15
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Lcom/yandex/metrica/impl/ob/rf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    .line 16
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 17
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/yandex/metrica/impl/ob/J1;->a(Lorg/json/JSONObject;)Lcom/yandex/metrica/impl/ob/rf;

    move-result-object v2

    aput-object v2, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    const/4 p0, 0x0

    move-object v0, p0

    :catchall_1
    :cond_0
    return-object v0
.end method

.method public static b(Lorg/json/JSONObject;)Lcom/yandex/metrica/impl/ob/of;
    .locals 4

    .line 5
    new-instance v0, Lcom/yandex/metrica/impl/ob/of;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/of;-><init>()V

    .line 6
    iget v1, v0, Lcom/yandex/metrica/impl/ob/of;->b:I

    const-string v2, "signal_strength"

    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 7
    iput v1, v0, Lcom/yandex/metrica/impl/ob/of;->b:I

    .line 8
    :cond_0
    iget v1, v0, Lcom/yandex/metrica/impl/ob/of;->a:I

    const-string v2, "cell_id"

    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/yandex/metrica/impl/ob/of;->a:I

    .line 9
    iget v1, v0, Lcom/yandex/metrica/impl/ob/of;->c:I

    const-string v2, "lac"

    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/yandex/metrica/impl/ob/of;->c:I

    .line 10
    iget v1, v0, Lcom/yandex/metrica/impl/ob/of;->d:I

    const-string v2, "country_code"

    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/yandex/metrica/impl/ob/of;->d:I

    .line 11
    iget v1, v0, Lcom/yandex/metrica/impl/ob/of;->e:I

    const-string v2, "operator_id"

    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/yandex/metrica/impl/ob/of;->e:I

    .line 12
    iget-object v1, v0, Lcom/yandex/metrica/impl/ob/of;->f:Ljava/lang/String;

    const-string v2, "operator_name"

    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/of;->f:Ljava/lang/String;

    .line 13
    iget-boolean v1, v0, Lcom/yandex/metrica/impl/ob/of;->g:Z

    const-string v2, "is_connected"

    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/yandex/metrica/impl/ob/of;->g:Z

    const-string v1, "cell_type"

    const/4 v2, 0x0

    .line 14
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/yandex/metrica/impl/ob/of;->h:I

    .line 15
    iget v1, v0, Lcom/yandex/metrica/impl/ob/of;->i:I

    const-string v2, "pci"

    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/yandex/metrica/impl/ob/of;->i:I

    .line 16
    iget-wide v1, v0, Lcom/yandex/metrica/impl/ob/of;->j:J

    const-string v3, "last_visible_time_offset"

    invoke-virtual {p0, v3, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/yandex/metrica/impl/ob/of;->j:J

    .line 17
    iget v1, v0, Lcom/yandex/metrica/impl/ob/of;->k:I

    const-string v2, "lte_rsrq"

    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/yandex/metrica/impl/ob/of;->k:I

    .line 18
    iget v1, v0, Lcom/yandex/metrica/impl/ob/of;->l:I

    const-string v2, "lte_rssnr"

    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/yandex/metrica/impl/ob/of;->l:I

    .line 19
    iget v1, v0, Lcom/yandex/metrica/impl/ob/of;->n:I

    const-string v2, "arfcn"

    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/yandex/metrica/impl/ob/of;->n:I

    .line 20
    iget v1, v0, Lcom/yandex/metrica/impl/ob/of;->m:I

    const-string v2, "lte_rssi"

    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/yandex/metrica/impl/ob/of;->m:I

    .line 21
    iget v1, v0, Lcom/yandex/metrica/impl/ob/of;->o:I

    const-string v2, "lte_bandwidth"

    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/yandex/metrica/impl/ob/of;->o:I

    .line 22
    iget v1, v0, Lcom/yandex/metrica/impl/ob/of;->p:I

    const-string v2, "lte_cqi"

    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    iput p0, v0, Lcom/yandex/metrica/impl/ob/of;->p:I

    return-object v0
.end method

.method public static b(Lcom/yandex/metrica/impl/ob/a1;)Ljava/lang/Integer;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 23
    :cond_0
    sget-object v0, Lcom/yandex/metrica/impl/ob/J1;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    :goto_0
    return-object p0
.end method

.method public static b(Lorg/json/JSONArray;)[Lcom/yandex/metrica/impl/ob/of;
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Lcom/yandex/metrica/impl/ob/of;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    .line 2
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    invoke-static {v2}, Lcom/yandex/metrica/impl/ob/J1;->b(Lorg/json/JSONObject;)Lcom/yandex/metrica/impl/ob/of;

    move-result-object v2

    aput-object v2, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    const/4 p0, 0x0

    move-object v0, p0

    :catchall_1
    :cond_1
    return-object v0
.end method
