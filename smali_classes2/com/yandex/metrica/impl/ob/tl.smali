.class public Lcom/yandex/metrica/impl/ob/tl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/tl$b;,
        Lcom/yandex/metrica/impl/ob/tl$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/tl$b;

.field private final b:Lcom/yandex/metrica/impl/ob/tl$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/tl$b;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/tl$b;-><init>()V

    new-instance v1, Lcom/yandex/metrica/impl/ob/tl$a;

    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/tl$a;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/tl;-><init>(Lcom/yandex/metrica/impl/ob/tl$b;Lcom/yandex/metrica/impl/ob/tl$a;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/tl$b;Lcom/yandex/metrica/impl/ob/tl$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/tl;->a:Lcom/yandex/metrica/impl/ob/tl$b;

    .line 4
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/tl;->b:Lcom/yandex/metrica/impl/ob/tl$a;

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lcom/yandex/metrica/impl/ob/Hk;Lcom/yandex/metrica/impl/ob/wl;Lcom/yandex/metrica/impl/ob/Ak;Lcom/yandex/metrica/impl/ob/yl;Lcom/yandex/metrica/impl/ob/sl;)Lcom/yandex/metrica/impl/ob/dl;
    .locals 15

    .line 1
    move-object v1, p0

    .line 2
    move-object/from16 v12, p3

    .line 3
    .line 4
    move-object/from16 v9, p5

    .line 5
    .line 6
    new-instance v13, Lcom/yandex/metrica/impl/ob/dl;

    .line 7
    .line 8
    invoke-direct {v13}, Lcom/yandex/metrica/impl/ob/dl;-><init>()V

    .line 9
    .line 10
    .line 11
    const v0, 0x1020002

    .line 12
    .line 13
    .line 14
    move-object/from16 v2, p1

    .line 15
    .line 16
    :try_start_0
    invoke-virtual {v2, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroid/view/ViewGroup;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception v0

    .line 24
    const-string v2, "ui_parsing_root"

    .line 25
    .line 26
    invoke-virtual {v9, v2, v0}, Lcom/yandex/metrica/impl/ob/yl;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    :goto_0
    if-eqz v0, :cond_0

    .line 31
    .line 32
    iget-object v2, v1, Lcom/yandex/metrica/impl/ob/tl;->a:Lcom/yandex/metrica/impl/ob/tl$b;

    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    new-instance v14, Lcom/yandex/metrica/impl/ob/Rk;

    .line 38
    .line 39
    new-instance v4, Lcom/yandex/metrica/impl/ob/Fl;

    .line 40
    .line 41
    invoke-direct {v4, v9}, Lcom/yandex/metrica/impl/ob/Fl;-><init>(Lcom/yandex/metrica/impl/ob/yl;)V

    .line 42
    .line 43
    .line 44
    new-instance v5, Lcom/yandex/metrica/impl/ob/sk;

    .line 45
    .line 46
    iget v2, v12, Lcom/yandex/metrica/impl/ob/wl;->c:I

    .line 47
    .line 48
    invoke-direct {v5, v2}, Lcom/yandex/metrica/impl/ob/sk;-><init>(I)V

    .line 49
    .line 50
    .line 51
    new-instance v2, Lcom/yandex/metrica/impl/ob/Mk;

    .line 52
    .line 53
    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/Mk;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object v7

    .line 60
    const/4 v2, 0x1

    .line 61
    new-array v2, v2, [Lcom/yandex/metrica/impl/ob/qk;

    .line 62
    .line 63
    new-instance v3, Lcom/yandex/metrica/impl/ob/al;

    .line 64
    .line 65
    iget v6, v12, Lcom/yandex/metrica/impl/ob/wl;->b:I

    .line 66
    .line 67
    invoke-direct {v3, v6}, Lcom/yandex/metrica/impl/ob/al;-><init>(I)V

    .line 68
    .line 69
    .line 70
    const/4 v6, 0x0

    .line 71
    aput-object v3, v2, v6

    .line 72
    .line 73
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object v8

    .line 77
    new-instance v11, Lcom/yandex/metrica/impl/ob/Hl;

    .line 78
    .line 79
    invoke-direct {v11}, Lcom/yandex/metrica/impl/ob/Hl;-><init>()V

    .line 80
    .line 81
    .line 82
    move-object v2, v14

    .line 83
    move-object/from16 v3, p3

    .line 84
    .line 85
    move-object/from16 v6, p4

    .line 86
    .line 87
    move-object/from16 v9, p5

    .line 88
    .line 89
    move-object/from16 v10, p6

    .line 90
    .line 91
    invoke-direct/range {v2 .. v11}, Lcom/yandex/metrica/impl/ob/Rk;-><init>(Lcom/yandex/metrica/impl/ob/wl;Lcom/yandex/metrica/impl/ob/Fl;Lcom/yandex/metrica/impl/ob/sk;Lcom/yandex/metrica/impl/ob/Ak;Ljava/util/List;Ljava/util/List;Lcom/yandex/metrica/impl/ob/yl;Lcom/yandex/metrica/impl/ob/sl;Lcom/yandex/metrica/impl/ob/Hl;)V

    .line 92
    .line 93
    .line 94
    move-object/from16 v2, p2

    .line 95
    .line 96
    invoke-virtual {v13, v14, v0, v2}, Lcom/yandex/metrica/impl/ob/dl;->a(Lcom/yandex/metrica/impl/ob/Rk;Landroid/view/View;Lcom/yandex/metrica/impl/ob/Hk;)V

    .line 97
    .line 98
    .line 99
    iget-boolean v0, v12, Lcom/yandex/metrica/impl/ob/wl;->e:Z

    .line 100
    .line 101
    if-eqz v0, :cond_0

    .line 102
    .line 103
    iget-object v0, v1, Lcom/yandex/metrica/impl/ob/tl;->b:Lcom/yandex/metrica/impl/ob/tl$a;

    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    new-instance v0, Lcom/yandex/metrica/impl/ob/rk;

    .line 109
    .line 110
    invoke-virtual {v14}, Lcom/yandex/metrica/impl/ob/Rk;->a()Ljava/util/TreeSet;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-direct {v0, v2}, Lcom/yandex/metrica/impl/ob/rk;-><init>(Ljava/util/TreeSet;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v14}, Lcom/yandex/metrica/impl/ob/Rk;->b()Ljava/util/List;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 126
    .line 127
    .line 128
    move-result v3

    .line 129
    if-eqz v3, :cond_0

    .line 130
    .line 131
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    check-cast v3, Lcom/yandex/metrica/impl/ob/bl;

    .line 136
    .line 137
    invoke-virtual {v0, v3}, Lcom/yandex/metrica/impl/ob/rk;->a(Lcom/yandex/metrica/impl/ob/bl;)V

    .line 138
    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_0
    return-object v13
.end method
