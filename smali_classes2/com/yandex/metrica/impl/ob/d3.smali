.class public final Lcom/yandex/metrica/impl/ob/d3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lzb/b;Lcom/yandex/metrica/impl/ob/n;Lcom/yandex/metrica/impl/ob/m;)Lcom/yandex/metrica/impl/ob/k;
    .locals 16

    .line 1
    move-object/from16 v4, p5

    .line 2
    .line 3
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    new-instance v0, Lcom/yandex/metrica/impl/ob/g3;

    .line 13
    .line 14
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/g3;-><init>()V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance v8, Lyb/h;

    .line 19
    .line 20
    new-instance v6, Lcom/yandex/metrica/impl/ob/f;

    .line 21
    .line 22
    invoke-direct {v6, v4}, Lcom/yandex/metrica/impl/ob/f;-><init>(Lcom/yandex/metrica/impl/ob/n;)V

    .line 23
    .line 24
    .line 25
    new-instance v7, Lcom/yandex/metrica/impl/ob/h;

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    invoke-direct {v7, v0, v1}, Lcom/yandex/metrica/impl/ob/h;-><init>(Lzb/g;I)V

    .line 29
    .line 30
    .line 31
    move-object v0, v8

    .line 32
    move-object/from16 v1, p1

    .line 33
    .line 34
    move-object/from16 v2, p2

    .line 35
    .line 36
    move-object/from16 v3, p3

    .line 37
    .line 38
    move-object/from16 v4, p5

    .line 39
    .line 40
    move-object/from16 v5, p6

    .line 41
    .line 42
    invoke-direct/range {v0 .. v7}, Lyb/h;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/yandex/metrica/impl/ob/n;Lcom/yandex/metrica/impl/ob/m;Lcom/yandex/metrica/impl/ob/l;Lcom/yandex/metrica/impl/ob/o;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    new-instance v0, Lxb/g;

    .line 47
    .line 48
    new-instance v13, Lcom/yandex/metrica/impl/ob/c;

    .line 49
    .line 50
    invoke-direct {v13, v4}, Lcom/yandex/metrica/impl/ob/c;-><init>(Lcom/yandex/metrica/impl/ob/n;)V

    .line 51
    .line 52
    .line 53
    new-instance v14, Lcom/yandex/metrica/impl/ob/d;

    .line 54
    .line 55
    invoke-direct {v14}, Lcom/yandex/metrica/impl/ob/d;-><init>()V

    .line 56
    .line 57
    .line 58
    move-object v9, v0

    .line 59
    move-object/from16 v10, p1

    .line 60
    .line 61
    move-object/from16 v11, p2

    .line 62
    .line 63
    move-object/from16 v12, p3

    .line 64
    .line 65
    move-object/from16 v15, p6

    .line 66
    .line 67
    invoke-direct/range {v9 .. v15}, Lxb/g;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/yandex/metrica/impl/ob/l;Lcom/yandex/metrica/impl/ob/o;Lcom/yandex/metrica/impl/ob/m;)V

    .line 68
    .line 69
    .line 70
    :goto_0
    return-object v0
.end method
