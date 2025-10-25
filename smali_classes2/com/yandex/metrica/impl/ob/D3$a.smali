.class public Lcom/yandex/metrica/impl/ob/D3$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/Dg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/D3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/impl/ob/Dg<",
        "Lcom/yandex/metrica/impl/ob/D3$a;",
        "Lcom/yandex/metrica/impl/ob/D3$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/Boolean;

.field public final f:Landroid/location/Location;

.field public final g:Ljava/lang/Boolean;

.field public final h:Ljava/lang/Integer;

.field public final i:Ljava/lang/Integer;

.field public final j:Ljava/lang/Integer;

.field public final k:Ljava/lang/Boolean;

.field public final l:Ljava/lang/Boolean;

.field public final m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final n:Ljava/lang/Integer;

.field public final o:Ljava/lang/Boolean;

.field public final p:Ljava/lang/Boolean;

.field public final q:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 36
    invoke-direct/range {v0 .. v17}, Lcom/yandex/metrica/impl/ob/D3$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Landroid/location/Location;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/metrica/CounterConfiguration;Ljava/util/Map;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/CounterConfiguration;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v13, p2

    .line 19
    invoke-virtual/range {p1 .. p1}, Lcom/yandex/metrica/CounterConfiguration;->v()Ljava/lang/String;

    move-result-object v1

    .line 20
    invoke-virtual/range {p1 .. p1}, Lcom/yandex/metrica/CounterConfiguration;->p()Ljava/lang/String;

    move-result-object v2

    .line 21
    invoke-virtual/range {p1 .. p1}, Lcom/yandex/metrica/CounterConfiguration;->j()Ljava/lang/String;

    move-result-object v3

    .line 22
    invoke-virtual/range {p1 .. p1}, Lcom/yandex/metrica/CounterConfiguration;->b()Ljava/lang/String;

    move-result-object v4

    .line 23
    invoke-virtual/range {p1 .. p1}, Lcom/yandex/metrica/CounterConfiguration;->Q()Ljava/lang/Boolean;

    move-result-object v5

    .line 24
    invoke-virtual/range {p1 .. p1}, Lcom/yandex/metrica/CounterConfiguration;->G()Landroid/location/Location;

    move-result-object v6

    .line 25
    invoke-virtual/range {p1 .. p1}, Lcom/yandex/metrica/CounterConfiguration;->P()Ljava/lang/Boolean;

    move-result-object v7

    .line 26
    invoke-virtual/range {p1 .. p1}, Lcom/yandex/metrica/CounterConfiguration;->N()Ljava/lang/Integer;

    move-result-object v8

    .line 27
    invoke-virtual/range {p1 .. p1}, Lcom/yandex/metrica/CounterConfiguration;->I()Ljava/lang/Integer;

    move-result-object v9

    .line 28
    invoke-virtual/range {p1 .. p1}, Lcom/yandex/metrica/CounterConfiguration;->C()Ljava/lang/Integer;

    move-result-object v10

    .line 29
    invoke-virtual/range {p1 .. p1}, Lcom/yandex/metrica/CounterConfiguration;->R()Ljava/lang/Boolean;

    move-result-object v11

    .line 30
    invoke-virtual/range {p1 .. p1}, Lcom/yandex/metrica/CounterConfiguration;->O()Ljava/lang/Boolean;

    move-result-object v12

    .line 31
    invoke-virtual/range {p1 .. p1}, Lcom/yandex/metrica/CounterConfiguration;->K()Ljava/lang/Integer;

    move-result-object v14

    .line 32
    invoke-virtual/range {p1 .. p1}, Lcom/yandex/metrica/CounterConfiguration;->L()Ljava/lang/Boolean;

    move-result-object v15

    .line 33
    invoke-virtual/range {p1 .. p1}, Lcom/yandex/metrica/CounterConfiguration;->E()Ljava/lang/Boolean;

    move-result-object v16

    .line 34
    invoke-virtual/range {p1 .. p1}, Lcom/yandex/metrica/CounterConfiguration;->S()Ljava/lang/Boolean;

    move-result-object v17

    .line 35
    invoke-direct/range {v0 .. v17}, Lcom/yandex/metrica/impl/ob/D3$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Landroid/location/Location;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Landroid/location/Location;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Landroid/location/Location;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 2
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/D3$a;->a:Ljava/lang/String;

    move-object v1, p2

    .line 3
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/D3$a;->b:Ljava/lang/String;

    move-object v1, p3

    .line 4
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/D3$a;->c:Ljava/lang/String;

    move-object v1, p4

    .line 5
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/D3$a;->d:Ljava/lang/String;

    move-object v1, p5

    .line 6
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/D3$a;->e:Ljava/lang/Boolean;

    move-object v1, p6

    .line 7
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/D3$a;->f:Landroid/location/Location;

    move-object v1, p7

    .line 8
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/D3$a;->g:Ljava/lang/Boolean;

    move-object v1, p8

    .line 9
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/D3$a;->h:Ljava/lang/Integer;

    move-object v1, p9

    .line 10
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/D3$a;->i:Ljava/lang/Integer;

    move-object v1, p10

    .line 11
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/D3$a;->j:Ljava/lang/Integer;

    move-object v1, p11

    .line 12
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/D3$a;->k:Ljava/lang/Boolean;

    move-object v1, p12

    .line 13
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/D3$a;->l:Ljava/lang/Boolean;

    move-object v1, p13

    .line 14
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/D3$a;->m:Ljava/util/Map;

    move-object/from16 v1, p14

    .line 15
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/D3$a;->n:Ljava/lang/Integer;

    move-object/from16 v1, p15

    .line 16
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/D3$a;->o:Ljava/lang/Boolean;

    move-object/from16 v1, p16

    .line 17
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/D3$a;->p:Ljava/lang/Boolean;

    move-object/from16 v1, p17

    .line 18
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/D3$a;->q:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/D3$a;)Lcom/yandex/metrica/impl/ob/D3$a;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2
    new-instance v19, Lcom/yandex/metrica/impl/ob/D3$a;

    iget-object v2, v0, Lcom/yandex/metrica/impl/ob/D3$a;->a:Ljava/lang/String;

    iget-object v3, v1, Lcom/yandex/metrica/impl/ob/D3$a;->a:Ljava/lang/String;

    if-nez v2, :cond_0

    move-object v2, v3

    .line 3
    :cond_0
    iget-object v3, v0, Lcom/yandex/metrica/impl/ob/D3$a;->b:Ljava/lang/String;

    iget-object v4, v1, Lcom/yandex/metrica/impl/ob/D3$a;->b:Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v3, v4

    .line 4
    :cond_1
    iget-object v4, v0, Lcom/yandex/metrica/impl/ob/D3$a;->c:Ljava/lang/String;

    iget-object v5, v1, Lcom/yandex/metrica/impl/ob/D3$a;->c:Ljava/lang/String;

    if-nez v4, :cond_2

    move-object v4, v5

    .line 5
    :cond_2
    iget-object v5, v0, Lcom/yandex/metrica/impl/ob/D3$a;->d:Ljava/lang/String;

    iget-object v6, v1, Lcom/yandex/metrica/impl/ob/D3$a;->d:Ljava/lang/String;

    if-nez v5, :cond_3

    move-object v5, v6

    .line 6
    :cond_3
    iget-object v6, v0, Lcom/yandex/metrica/impl/ob/D3$a;->e:Ljava/lang/Boolean;

    iget-object v7, v1, Lcom/yandex/metrica/impl/ob/D3$a;->e:Ljava/lang/Boolean;

    if-nez v6, :cond_4

    move-object v6, v7

    .line 7
    :cond_4
    iget-object v7, v0, Lcom/yandex/metrica/impl/ob/D3$a;->f:Landroid/location/Location;

    iget-object v8, v1, Lcom/yandex/metrica/impl/ob/D3$a;->f:Landroid/location/Location;

    if-nez v7, :cond_5

    move-object v7, v8

    .line 8
    :cond_5
    iget-object v8, v0, Lcom/yandex/metrica/impl/ob/D3$a;->g:Ljava/lang/Boolean;

    iget-object v9, v1, Lcom/yandex/metrica/impl/ob/D3$a;->g:Ljava/lang/Boolean;

    if-nez v8, :cond_6

    move-object v8, v9

    .line 9
    :cond_6
    iget-object v9, v0, Lcom/yandex/metrica/impl/ob/D3$a;->h:Ljava/lang/Integer;

    iget-object v10, v1, Lcom/yandex/metrica/impl/ob/D3$a;->h:Ljava/lang/Integer;

    if-nez v9, :cond_7

    move-object v9, v10

    .line 10
    :cond_7
    iget-object v10, v0, Lcom/yandex/metrica/impl/ob/D3$a;->i:Ljava/lang/Integer;

    iget-object v11, v1, Lcom/yandex/metrica/impl/ob/D3$a;->i:Ljava/lang/Integer;

    if-nez v10, :cond_8

    move-object v10, v11

    .line 11
    :cond_8
    iget-object v11, v0, Lcom/yandex/metrica/impl/ob/D3$a;->j:Ljava/lang/Integer;

    iget-object v12, v1, Lcom/yandex/metrica/impl/ob/D3$a;->j:Ljava/lang/Integer;

    if-nez v11, :cond_9

    move-object v11, v12

    .line 12
    :cond_9
    iget-object v12, v0, Lcom/yandex/metrica/impl/ob/D3$a;->k:Ljava/lang/Boolean;

    iget-object v13, v1, Lcom/yandex/metrica/impl/ob/D3$a;->k:Ljava/lang/Boolean;

    if-nez v12, :cond_a

    move-object v12, v13

    .line 13
    :cond_a
    iget-object v13, v0, Lcom/yandex/metrica/impl/ob/D3$a;->l:Ljava/lang/Boolean;

    iget-object v14, v1, Lcom/yandex/metrica/impl/ob/D3$a;->l:Ljava/lang/Boolean;

    if-nez v13, :cond_b

    move-object v13, v14

    .line 14
    :cond_b
    iget-object v14, v0, Lcom/yandex/metrica/impl/ob/D3$a;->m:Ljava/util/Map;

    iget-object v15, v1, Lcom/yandex/metrica/impl/ob/D3$a;->m:Ljava/util/Map;

    if-nez v14, :cond_c

    move-object v14, v15

    .line 15
    :cond_c
    iget-object v15, v0, Lcom/yandex/metrica/impl/ob/D3$a;->n:Ljava/lang/Integer;

    move-object/from16 v16, v14

    iget-object v14, v1, Lcom/yandex/metrica/impl/ob/D3$a;->n:Ljava/lang/Integer;

    if-nez v15, :cond_d

    move-object v15, v14

    .line 16
    :cond_d
    iget-object v14, v0, Lcom/yandex/metrica/impl/ob/D3$a;->o:Ljava/lang/Boolean;

    move-object/from16 v17, v15

    iget-object v15, v1, Lcom/yandex/metrica/impl/ob/D3$a;->o:Ljava/lang/Boolean;

    if-nez v14, :cond_e

    move-object/from16 v18, v15

    goto :goto_0

    :cond_e
    move-object/from16 v18, v14

    .line 17
    :goto_0
    iget-object v14, v0, Lcom/yandex/metrica/impl/ob/D3$a;->p:Ljava/lang/Boolean;

    iget-object v15, v1, Lcom/yandex/metrica/impl/ob/D3$a;->p:Ljava/lang/Boolean;

    if-nez v14, :cond_f

    move-object/from16 v20, v15

    goto :goto_1

    :cond_f
    move-object/from16 v20, v14

    .line 18
    :goto_1
    iget-object v14, v0, Lcom/yandex/metrica/impl/ob/D3$a;->q:Ljava/lang/Boolean;

    iget-object v1, v1, Lcom/yandex/metrica/impl/ob/D3$a;->q:Ljava/lang/Boolean;

    if-nez v14, :cond_10

    move-object/from16 v21, v1

    goto :goto_2

    :cond_10
    move-object/from16 v21, v14

    :goto_2
    move-object/from16 v1, v19

    move-object/from16 v14, v16

    move-object/from16 v15, v17

    move-object/from16 v16, v18

    move-object/from16 v17, v20

    move-object/from16 v18, v21

    .line 19
    invoke-direct/range {v1 .. v18}, Lcom/yandex/metrica/impl/ob/D3$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Landroid/location/Location;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-object v19
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/D3$a;

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/D3$a;->a(Lcom/yandex/metrica/impl/ob/D3$a;)Lcom/yandex/metrica/impl/ob/D3$a;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/D3$a;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/D3$a;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_24

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const-class v3, Lcom/yandex/metrica/impl/ob/D3$a;

    .line 13
    .line 14
    if-eq v3, v2, :cond_1

    .line 15
    .line 16
    goto/16 :goto_11

    .line 17
    .line 18
    :cond_1
    check-cast p1, Lcom/yandex/metrica/impl/ob/D3$a;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/D3$a;->a:Ljava/lang/String;

    .line 21
    .line 22
    if-eqz v2, :cond_2

    .line 23
    .line 24
    iget-object v3, p1, Lcom/yandex/metrica/impl/ob/D3$a;->a:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-nez v2, :cond_3

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/D3$a;->a:Ljava/lang/String;

    .line 34
    .line 35
    if-eqz v2, :cond_3

    .line 36
    .line 37
    :goto_0
    return v1

    .line 38
    :cond_3
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/D3$a;->b:Ljava/lang/String;

    .line 39
    .line 40
    if-eqz v2, :cond_4

    .line 41
    .line 42
    iget-object v3, p1, Lcom/yandex/metrica/impl/ob/D3$a;->b:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-nez v2, :cond_5

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_4
    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/D3$a;->b:Ljava/lang/String;

    .line 52
    .line 53
    if-eqz v2, :cond_5

    .line 54
    .line 55
    :goto_1
    return v1

    .line 56
    :cond_5
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/D3$a;->c:Ljava/lang/String;

    .line 57
    .line 58
    if-eqz v2, :cond_6

    .line 59
    .line 60
    iget-object v3, p1, Lcom/yandex/metrica/impl/ob/D3$a;->c:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-nez v2, :cond_7

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_6
    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/D3$a;->c:Ljava/lang/String;

    .line 70
    .line 71
    if-eqz v2, :cond_7

    .line 72
    .line 73
    :goto_2
    return v1

    .line 74
    :cond_7
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/D3$a;->d:Ljava/lang/String;

    .line 75
    .line 76
    if-eqz v2, :cond_8

    .line 77
    .line 78
    iget-object v3, p1, Lcom/yandex/metrica/impl/ob/D3$a;->d:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-nez v2, :cond_9

    .line 85
    .line 86
    goto :goto_3

    .line 87
    :cond_8
    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/D3$a;->d:Ljava/lang/String;

    .line 88
    .line 89
    if-eqz v2, :cond_9

    .line 90
    .line 91
    :goto_3
    return v1

    .line 92
    :cond_9
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/D3$a;->e:Ljava/lang/Boolean;

    .line 93
    .line 94
    if-eqz v2, :cond_a

    .line 95
    .line 96
    iget-object v3, p1, Lcom/yandex/metrica/impl/ob/D3$a;->e:Ljava/lang/Boolean;

    .line 97
    .line 98
    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    if-nez v2, :cond_b

    .line 103
    .line 104
    goto :goto_4

    .line 105
    :cond_a
    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/D3$a;->e:Ljava/lang/Boolean;

    .line 106
    .line 107
    if-eqz v2, :cond_b

    .line 108
    .line 109
    :goto_4
    return v1

    .line 110
    :cond_b
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/D3$a;->f:Landroid/location/Location;

    .line 111
    .line 112
    if-eqz v2, :cond_c

    .line 113
    .line 114
    iget-object v3, p1, Lcom/yandex/metrica/impl/ob/D3$a;->f:Landroid/location/Location;

    .line 115
    .line 116
    invoke-virtual {v2, v3}, Landroid/location/Location;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    if-nez v2, :cond_d

    .line 121
    .line 122
    goto :goto_5

    .line 123
    :cond_c
    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/D3$a;->f:Landroid/location/Location;

    .line 124
    .line 125
    if-eqz v2, :cond_d

    .line 126
    .line 127
    :goto_5
    return v1

    .line 128
    :cond_d
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/D3$a;->g:Ljava/lang/Boolean;

    .line 129
    .line 130
    if-eqz v2, :cond_e

    .line 131
    .line 132
    iget-object v3, p1, Lcom/yandex/metrica/impl/ob/D3$a;->g:Ljava/lang/Boolean;

    .line 133
    .line 134
    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    if-nez v2, :cond_f

    .line 139
    .line 140
    goto :goto_6

    .line 141
    :cond_e
    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/D3$a;->g:Ljava/lang/Boolean;

    .line 142
    .line 143
    if-eqz v2, :cond_f

    .line 144
    .line 145
    :goto_6
    return v1

    .line 146
    :cond_f
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/D3$a;->h:Ljava/lang/Integer;

    .line 147
    .line 148
    if-eqz v2, :cond_10

    .line 149
    .line 150
    iget-object v3, p1, Lcom/yandex/metrica/impl/ob/D3$a;->h:Ljava/lang/Integer;

    .line 151
    .line 152
    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    if-nez v2, :cond_11

    .line 157
    .line 158
    goto :goto_7

    .line 159
    :cond_10
    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/D3$a;->h:Ljava/lang/Integer;

    .line 160
    .line 161
    if-eqz v2, :cond_11

    .line 162
    .line 163
    :goto_7
    return v1

    .line 164
    :cond_11
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/D3$a;->i:Ljava/lang/Integer;

    .line 165
    .line 166
    if-eqz v2, :cond_12

    .line 167
    .line 168
    iget-object v3, p1, Lcom/yandex/metrica/impl/ob/D3$a;->i:Ljava/lang/Integer;

    .line 169
    .line 170
    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v2

    .line 174
    if-nez v2, :cond_13

    .line 175
    .line 176
    goto :goto_8

    .line 177
    :cond_12
    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/D3$a;->i:Ljava/lang/Integer;

    .line 178
    .line 179
    if-eqz v2, :cond_13

    .line 180
    .line 181
    :goto_8
    return v1

    .line 182
    :cond_13
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/D3$a;->j:Ljava/lang/Integer;

    .line 183
    .line 184
    if-eqz v2, :cond_14

    .line 185
    .line 186
    iget-object v3, p1, Lcom/yandex/metrica/impl/ob/D3$a;->j:Ljava/lang/Integer;

    .line 187
    .line 188
    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result v2

    .line 192
    if-nez v2, :cond_15

    .line 193
    .line 194
    goto :goto_9

    .line 195
    :cond_14
    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/D3$a;->j:Ljava/lang/Integer;

    .line 196
    .line 197
    if-eqz v2, :cond_15

    .line 198
    .line 199
    :goto_9
    return v1

    .line 200
    :cond_15
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/D3$a;->k:Ljava/lang/Boolean;

    .line 201
    .line 202
    if-eqz v2, :cond_16

    .line 203
    .line 204
    iget-object v3, p1, Lcom/yandex/metrica/impl/ob/D3$a;->k:Ljava/lang/Boolean;

    .line 205
    .line 206
    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result v2

    .line 210
    if-nez v2, :cond_17

    .line 211
    .line 212
    goto :goto_a

    .line 213
    :cond_16
    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/D3$a;->k:Ljava/lang/Boolean;

    .line 214
    .line 215
    if-eqz v2, :cond_17

    .line 216
    .line 217
    :goto_a
    return v1

    .line 218
    :cond_17
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/D3$a;->l:Ljava/lang/Boolean;

    .line 219
    .line 220
    if-eqz v2, :cond_18

    .line 221
    .line 222
    iget-object v3, p1, Lcom/yandex/metrica/impl/ob/D3$a;->l:Ljava/lang/Boolean;

    .line 223
    .line 224
    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    move-result v2

    .line 228
    if-nez v2, :cond_19

    .line 229
    .line 230
    goto :goto_b

    .line 231
    :cond_18
    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/D3$a;->l:Ljava/lang/Boolean;

    .line 232
    .line 233
    if-eqz v2, :cond_19

    .line 234
    .line 235
    :goto_b
    return v1

    .line 236
    :cond_19
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/D3$a;->m:Ljava/util/Map;

    .line 237
    .line 238
    if-eqz v2, :cond_1a

    .line 239
    .line 240
    iget-object v3, p1, Lcom/yandex/metrica/impl/ob/D3$a;->m:Ljava/util/Map;

    .line 241
    .line 242
    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    move-result v2

    .line 246
    if-nez v2, :cond_1b

    .line 247
    .line 248
    goto :goto_c

    .line 249
    :cond_1a
    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/D3$a;->m:Ljava/util/Map;

    .line 250
    .line 251
    if-eqz v2, :cond_1b

    .line 252
    .line 253
    :goto_c
    return v1

    .line 254
    :cond_1b
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/D3$a;->n:Ljava/lang/Integer;

    .line 255
    .line 256
    if-eqz v2, :cond_1c

    .line 257
    .line 258
    iget-object v3, p1, Lcom/yandex/metrica/impl/ob/D3$a;->n:Ljava/lang/Integer;

    .line 259
    .line 260
    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    move-result v2

    .line 264
    if-nez v2, :cond_1d

    .line 265
    .line 266
    goto :goto_d

    .line 267
    :cond_1c
    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/D3$a;->n:Ljava/lang/Integer;

    .line 268
    .line 269
    if-eqz v2, :cond_1d

    .line 270
    .line 271
    :goto_d
    return v1

    .line 272
    :cond_1d
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/D3$a;->o:Ljava/lang/Boolean;

    .line 273
    .line 274
    if-eqz v2, :cond_1e

    .line 275
    .line 276
    iget-object v3, p1, Lcom/yandex/metrica/impl/ob/D3$a;->o:Ljava/lang/Boolean;

    .line 277
    .line 278
    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    move-result v2

    .line 282
    if-nez v2, :cond_1f

    .line 283
    .line 284
    goto :goto_e

    .line 285
    :cond_1e
    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/D3$a;->o:Ljava/lang/Boolean;

    .line 286
    .line 287
    if-eqz v2, :cond_1f

    .line 288
    .line 289
    :goto_e
    return v1

    .line 290
    :cond_1f
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/D3$a;->p:Ljava/lang/Boolean;

    .line 291
    .line 292
    if-eqz v2, :cond_20

    .line 293
    .line 294
    iget-object v3, p1, Lcom/yandex/metrica/impl/ob/D3$a;->p:Ljava/lang/Boolean;

    .line 295
    .line 296
    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    move-result v2

    .line 300
    if-nez v2, :cond_21

    .line 301
    .line 302
    goto :goto_f

    .line 303
    :cond_20
    iget-object v2, p1, Lcom/yandex/metrica/impl/ob/D3$a;->p:Ljava/lang/Boolean;

    .line 304
    .line 305
    if-eqz v2, :cond_21

    .line 306
    .line 307
    :goto_f
    return v1

    .line 308
    :cond_21
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/D3$a;->q:Ljava/lang/Boolean;

    .line 309
    .line 310
    if-eqz v2, :cond_22

    .line 311
    .line 312
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/D3$a;->q:Ljava/lang/Boolean;

    .line 313
    .line 314
    invoke-virtual {v2, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    move-result v0

    .line 318
    goto :goto_10

    .line 319
    :cond_22
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/D3$a;->q:Ljava/lang/Boolean;

    .line 320
    .line 321
    if-nez p1, :cond_23

    .line 322
    .line 323
    goto :goto_10

    .line 324
    :cond_23
    move v0, v1

    .line 325
    :goto_10
    return v0

    .line 326
    :cond_24
    :goto_11
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/D3$a;->a:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v1

    .line 12
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/D3$a;->b:Ljava/lang/String;

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move v2, v1

    .line 24
    :goto_1
    add-int/2addr v0, v2

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/D3$a;->c:Ljava/lang/String;

    .line 28
    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    goto :goto_2

    .line 36
    :cond_2
    move v2, v1

    .line 37
    :goto_2
    add-int/2addr v0, v2

    .line 38
    mul-int/lit8 v0, v0, 0x1f

    .line 39
    .line 40
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/D3$a;->d:Ljava/lang/String;

    .line 41
    .line 42
    if-eqz v2, :cond_3

    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    goto :goto_3

    .line 49
    :cond_3
    move v2, v1

    .line 50
    :goto_3
    add-int/2addr v0, v2

    .line 51
    mul-int/lit8 v0, v0, 0x1f

    .line 52
    .line 53
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/D3$a;->e:Ljava/lang/Boolean;

    .line 54
    .line 55
    if-eqz v2, :cond_4

    .line 56
    .line 57
    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    goto :goto_4

    .line 62
    :cond_4
    move v2, v1

    .line 63
    :goto_4
    add-int/2addr v0, v2

    .line 64
    mul-int/lit8 v0, v0, 0x1f

    .line 65
    .line 66
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/D3$a;->f:Landroid/location/Location;

    .line 67
    .line 68
    if-eqz v2, :cond_5

    .line 69
    .line 70
    invoke-virtual {v2}, Landroid/location/Location;->hashCode()I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    goto :goto_5

    .line 75
    :cond_5
    move v2, v1

    .line 76
    :goto_5
    add-int/2addr v0, v2

    .line 77
    mul-int/lit8 v0, v0, 0x1f

    .line 78
    .line 79
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/D3$a;->g:Ljava/lang/Boolean;

    .line 80
    .line 81
    if-eqz v2, :cond_6

    .line 82
    .line 83
    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    goto :goto_6

    .line 88
    :cond_6
    move v2, v1

    .line 89
    :goto_6
    add-int/2addr v0, v2

    .line 90
    mul-int/lit8 v0, v0, 0x1f

    .line 91
    .line 92
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/D3$a;->h:Ljava/lang/Integer;

    .line 93
    .line 94
    if-eqz v2, :cond_7

    .line 95
    .line 96
    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    goto :goto_7

    .line 101
    :cond_7
    move v2, v1

    .line 102
    :goto_7
    add-int/2addr v0, v2

    .line 103
    mul-int/lit8 v0, v0, 0x1f

    .line 104
    .line 105
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/D3$a;->i:Ljava/lang/Integer;

    .line 106
    .line 107
    if-eqz v2, :cond_8

    .line 108
    .line 109
    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    goto :goto_8

    .line 114
    :cond_8
    move v2, v1

    .line 115
    :goto_8
    add-int/2addr v0, v2

    .line 116
    mul-int/lit8 v0, v0, 0x1f

    .line 117
    .line 118
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/D3$a;->j:Ljava/lang/Integer;

    .line 119
    .line 120
    if-eqz v2, :cond_9

    .line 121
    .line 122
    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    goto :goto_9

    .line 127
    :cond_9
    move v2, v1

    .line 128
    :goto_9
    add-int/2addr v0, v2

    .line 129
    mul-int/lit8 v0, v0, 0x1f

    .line 130
    .line 131
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/D3$a;->k:Ljava/lang/Boolean;

    .line 132
    .line 133
    if-eqz v2, :cond_a

    .line 134
    .line 135
    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    goto :goto_a

    .line 140
    :cond_a
    move v2, v1

    .line 141
    :goto_a
    add-int/2addr v0, v2

    .line 142
    mul-int/lit8 v0, v0, 0x1f

    .line 143
    .line 144
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/D3$a;->l:Ljava/lang/Boolean;

    .line 145
    .line 146
    if-eqz v2, :cond_b

    .line 147
    .line 148
    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    goto :goto_b

    .line 153
    :cond_b
    move v2, v1

    .line 154
    :goto_b
    add-int/2addr v0, v2

    .line 155
    mul-int/lit8 v0, v0, 0x1f

    .line 156
    .line 157
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/D3$a;->m:Ljava/util/Map;

    .line 158
    .line 159
    if-eqz v2, :cond_c

    .line 160
    .line 161
    invoke-interface {v2}, Ljava/util/Map;->hashCode()I

    .line 162
    .line 163
    .line 164
    move-result v2

    .line 165
    goto :goto_c

    .line 166
    :cond_c
    move v2, v1

    .line 167
    :goto_c
    add-int/2addr v0, v2

    .line 168
    mul-int/lit8 v0, v0, 0x1f

    .line 169
    .line 170
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/D3$a;->n:Ljava/lang/Integer;

    .line 171
    .line 172
    if-eqz v2, :cond_d

    .line 173
    .line 174
    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    .line 175
    .line 176
    .line 177
    move-result v2

    .line 178
    goto :goto_d

    .line 179
    :cond_d
    move v2, v1

    .line 180
    :goto_d
    add-int/2addr v0, v2

    .line 181
    mul-int/lit8 v0, v0, 0x1f

    .line 182
    .line 183
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/D3$a;->o:Ljava/lang/Boolean;

    .line 184
    .line 185
    if-eqz v2, :cond_e

    .line 186
    .line 187
    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    .line 188
    .line 189
    .line 190
    move-result v2

    .line 191
    goto :goto_e

    .line 192
    :cond_e
    move v2, v1

    .line 193
    :goto_e
    add-int/2addr v0, v2

    .line 194
    mul-int/lit8 v0, v0, 0x1f

    .line 195
    .line 196
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/D3$a;->p:Ljava/lang/Boolean;

    .line 197
    .line 198
    if-eqz v2, :cond_f

    .line 199
    .line 200
    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    .line 201
    .line 202
    .line 203
    move-result v2

    .line 204
    goto :goto_f

    .line 205
    :cond_f
    move v2, v1

    .line 206
    :goto_f
    add-int/2addr v0, v2

    .line 207
    mul-int/lit8 v0, v0, 0x1f

    .line 208
    .line 209
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/D3$a;->q:Ljava/lang/Boolean;

    .line 210
    .line 211
    if-eqz v2, :cond_10

    .line 212
    .line 213
    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    .line 214
    .line 215
    .line 216
    move-result v1

    .line 217
    :cond_10
    add-int/2addr v0, v1

    .line 218
    return v0
.end method
