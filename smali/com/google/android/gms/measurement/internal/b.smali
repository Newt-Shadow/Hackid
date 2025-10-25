.class final Lcom/google/android/gms/measurement/internal/b;
.super Lcom/google/android/gms/measurement/internal/c;
.source "SourceFile"


# instance fields
.field private final g:Lcom/google/android/gms/internal/measurement/e4;

.field final synthetic h:Lcom/google/android/gms/measurement/internal/e;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/e;Ljava/lang/String;ILcom/google/android/gms/internal/measurement/e4;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/b;->h:Lcom/google/android/gms/measurement/internal/e;

    .line 5
    .line 6
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/measurement/internal/c;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/b;->g:Lcom/google/android/gms/internal/measurement/e4;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method final a()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/b;->g:Lcom/google/android/gms/internal/measurement/e4;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/e4;->D()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method final b()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method final c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/b;->g:Lcom/google/android/gms/internal/measurement/e4;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/e4;->I()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method final k(Ljava/lang/Long;Ljava/lang/Long;Lcom/google/android/gms/internal/measurement/t6;JLcom/google/android/gms/measurement/internal/c0;Z)Z
    .locals 16

    move-object/from16 v0, p0

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/re;->a()Z

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/b;->h:Lcom/google/android/gms/measurement/internal/e;

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 2
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v3

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/c;->a:Ljava/lang/String;

    .line 3
    sget-object v5, Lcom/google/android/gms/measurement/internal/c5;->G0:Lcom/google/android/gms/measurement/internal/b5;

    .line 4
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/m;->H(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/b5;)Z

    move-result v3

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/b;->g:Lcom/google/android/gms/internal/measurement/e4;

    .line 5
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/e4;->N()Z

    move-result v6

    if-eqz v6, :cond_0

    move-object/from16 v6, p6

    iget-wide v6, v6, Lcom/google/android/gms/measurement/internal/c0;->e:J

    goto :goto_0

    :cond_0
    move-wide/from16 v6, p4

    .line 6
    :goto_0
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    move-result-object v8

    .line 7
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/p5;->z()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_2

    .line 8
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    move-result-object v8

    .line 9
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/p5;->w()Lcom/google/android/gms/measurement/internal/n5;

    move-result-object v8

    iget v10, v0, Lcom/google/android/gms/measurement/internal/c;->b:I

    .line 10
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 11
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/e4;->C()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/e4;->D()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto :goto_1

    :cond_1
    move-object v11, v9

    .line 12
    :goto_1
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->D()Lcom/google/android/gms/measurement/internal/i5;

    move-result-object v12

    .line 13
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/e4;->E()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/google/android/gms/measurement/internal/i5;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "Evaluating filter. audience, filter, event"

    .line 14
    invoke-virtual {v8, v13, v10, v11, v12}, Lcom/google/android/gms/measurement/internal/n5;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 15
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    move-result-object v8

    .line 16
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/p5;->w()Lcom/google/android/gms/measurement/internal/n5;

    move-result-object v8

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/vc;->b:Lcom/google/android/gms/measurement/internal/pd;

    .line 17
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/pd;->K0()Lcom/google/android/gms/measurement/internal/td;

    move-result-object v1

    .line 18
    invoke-virtual {v1, v5}, Lcom/google/android/gms/measurement/internal/td;->L(Lcom/google/android/gms/internal/measurement/e4;)Ljava/lang/String;

    move-result-object v1

    const-string v10, "Filter definition"

    invoke-virtual {v8, v10, v1}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 19
    :cond_2
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/e4;->C()Z

    move-result v1

    const/4 v8, 0x0

    if-eqz v1, :cond_2c

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/e4;->D()I

    move-result v1

    const/16 v10, 0x100

    if-le v1, v10, :cond_3

    goto/16 :goto_f

    .line 20
    :cond_3
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/e4;->K()Z

    move-result v1

    .line 21
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/e4;->L()Z

    move-result v4

    .line 22
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/e4;->N()Z

    move-result v10

    const/4 v11, 0x1

    if-nez v1, :cond_5

    if-nez v4, :cond_5

    if-eqz v10, :cond_4

    goto :goto_2

    :cond_4
    move v1, v8

    goto :goto_3

    :cond_5
    :goto_2
    move v1, v11

    :goto_3
    if-eqz p7, :cond_7

    if-nez v1, :cond_7

    .line 23
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    move-result-object v1

    .line 24
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p5;->w()Lcom/google/android/gms/measurement/internal/n5;

    move-result-object v1

    iget v2, v0, Lcom/google/android/gms/measurement/internal/c;->b:I

    .line 25
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 26
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/e4;->C()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/e4;->D()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    :cond_6
    const-string v3, "Event filter already evaluated true and it is not associated with an enhanced audience. audience ID, filter ID"

    .line 27
    invoke-virtual {v1, v3, v2, v9}, Lcom/google/android/gms/measurement/internal/n5;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v11

    :cond_7
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/t6;->F()Ljava/lang/String;

    move-result-object v4

    .line 28
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/e4;->I()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 29
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/e4;->J()Lcom/google/android/gms/internal/measurement/k4;

    move-result-object v10

    invoke-static {v6, v7, v10}, Lcom/google/android/gms/measurement/internal/c;->g(JLcom/google/android/gms/internal/measurement/k4;)Ljava/lang/Boolean;

    move-result-object v6

    if-nez v6, :cond_8

    goto/16 :goto_a

    .line 30
    :cond_8
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_9

    .line 31
    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_a

    :cond_9
    new-instance v6, Ljava/util/HashSet;

    .line 32
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 33
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/e4;->F()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/g4;

    .line 34
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/g4;->J()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_a

    .line 35
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    move-result-object v6

    .line 36
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/p5;->r()Lcom/google/android/gms/measurement/internal/n5;

    move-result-object v6

    .line 37
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->D()Lcom/google/android/gms/measurement/internal/i5;

    move-result-object v7

    .line 38
    invoke-virtual {v7, v4}, Lcom/google/android/gms/measurement/internal/i5;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "null or empty param name in filter. event"

    .line 39
    invoke-virtual {v6, v7, v4}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_a

    .line 40
    :cond_a
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/g4;->J()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 41
    :cond_b
    new-instance v7, Lr/a;

    invoke-direct {v7}, Lr/a;-><init>()V

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/t6;->C()Ljava/util/List;

    move-result-object v10

    .line 42
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_c
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_12

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/measurement/x6;

    .line 43
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/x6;->D()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v6, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 44
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/x6;->G()Z

    move-result v13

    if-eqz v13, :cond_e

    .line 45
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/x6;->D()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/x6;->G()Z

    move-result v14

    if-eqz v14, :cond_d

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/x6;->H()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    goto :goto_6

    :cond_d
    move-object v12, v9

    :goto_6
    invoke-interface {v7, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 46
    :cond_e
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/x6;->K()Z

    move-result v13

    if-eqz v13, :cond_10

    .line 47
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/x6;->D()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/x6;->K()Z

    move-result v14

    if-eqz v14, :cond_f

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/x6;->L()D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    goto :goto_7

    :cond_f
    move-object v12, v9

    .line 48
    :goto_7
    invoke-interface {v7, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 49
    :cond_10
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/x6;->E()Z

    move-result v13

    if-eqz v13, :cond_11

    .line 50
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/x6;->D()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/x6;->F()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v7, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 51
    :cond_11
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    move-result-object v6

    .line 52
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/p5;->r()Lcom/google/android/gms/measurement/internal/n5;

    move-result-object v6

    .line 53
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->D()Lcom/google/android/gms/measurement/internal/i5;

    move-result-object v7

    .line 54
    invoke-virtual {v7, v4}, Lcom/google/android/gms/measurement/internal/i5;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 55
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->D()Lcom/google/android/gms/measurement/internal/i5;

    move-result-object v7

    .line 56
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/x6;->D()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/google/android/gms/measurement/internal/i5;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v10, "Unknown value for param. event, param"

    .line 57
    invoke-virtual {v6, v10, v4, v7}, Lcom/google/android/gms/measurement/internal/n5;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_a

    .line 58
    :cond_12
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/e4;->F()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_13
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_22

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/g4;

    .line 59
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/g4;->G()Z

    move-result v12

    if-eqz v12, :cond_14

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/g4;->H()Z

    move-result v12

    if-eqz v12, :cond_14

    move v12, v11

    goto :goto_8

    :cond_14
    move v12, v8

    .line 60
    :goto_8
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/g4;->J()Ljava/lang/String;

    move-result-object v13

    .line 61
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_15

    .line 62
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    move-result-object v6

    .line 63
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/p5;->r()Lcom/google/android/gms/measurement/internal/n5;

    move-result-object v6

    .line 64
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->D()Lcom/google/android/gms/measurement/internal/i5;

    move-result-object v7

    .line 65
    invoke-virtual {v7, v4}, Lcom/google/android/gms/measurement/internal/i5;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "Event has empty param name. event"

    .line 66
    invoke-virtual {v6, v7, v4}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_a

    .line 67
    :cond_15
    invoke-interface {v7, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 68
    instance-of v15, v14, Ljava/lang/Long;

    if-eqz v15, :cond_18

    .line 69
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/g4;->E()Z

    move-result v15

    if-nez v15, :cond_16

    .line 70
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    move-result-object v6

    .line 71
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/p5;->r()Lcom/google/android/gms/measurement/internal/n5;

    move-result-object v6

    .line 72
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->D()Lcom/google/android/gms/measurement/internal/i5;

    move-result-object v7

    .line 73
    invoke-virtual {v7, v4}, Lcom/google/android/gms/measurement/internal/i5;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 74
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->D()Lcom/google/android/gms/measurement/internal/i5;

    move-result-object v7

    .line 75
    invoke-virtual {v7, v13}, Lcom/google/android/gms/measurement/internal/i5;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v10, "No number filter for long param. event, param"

    .line 76
    invoke-virtual {v6, v10, v4, v7}, Lcom/google/android/gms/measurement/internal/n5;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_a

    .line 77
    :cond_16
    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/g4;->F()Lcom/google/android/gms/internal/measurement/k4;

    move-result-object v10

    invoke-static {v13, v14, v10}, Lcom/google/android/gms/measurement/internal/c;->g(JLcom/google/android/gms/internal/measurement/k4;)Ljava/lang/Boolean;

    move-result-object v10

    if-nez v10, :cond_17

    goto/16 :goto_a

    .line 78
    :cond_17
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-ne v10, v12, :cond_13

    .line 79
    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_a

    .line 80
    :cond_18
    instance-of v15, v14, Ljava/lang/Double;

    if-eqz v15, :cond_1b

    .line 81
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/g4;->E()Z

    move-result v15

    if-nez v15, :cond_19

    .line 82
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    move-result-object v6

    .line 83
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/p5;->r()Lcom/google/android/gms/measurement/internal/n5;

    move-result-object v6

    .line 84
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->D()Lcom/google/android/gms/measurement/internal/i5;

    move-result-object v7

    .line 85
    invoke-virtual {v7, v4}, Lcom/google/android/gms/measurement/internal/i5;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 86
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->D()Lcom/google/android/gms/measurement/internal/i5;

    move-result-object v7

    .line 87
    invoke-virtual {v7, v13}, Lcom/google/android/gms/measurement/internal/i5;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v10, "No number filter for double param. event, param"

    .line 88
    invoke-virtual {v6, v10, v4, v7}, Lcom/google/android/gms/measurement/internal/n5;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_a

    .line 89
    :cond_19
    check-cast v14, Ljava/lang/Double;

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/g4;->F()Lcom/google/android/gms/internal/measurement/k4;

    move-result-object v10

    invoke-static {v13, v14, v10}, Lcom/google/android/gms/measurement/internal/c;->h(DLcom/google/android/gms/internal/measurement/k4;)Ljava/lang/Boolean;

    move-result-object v10

    if-nez v10, :cond_1a

    goto/16 :goto_a

    .line 90
    :cond_1a
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-ne v10, v12, :cond_13

    .line 91
    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_a

    .line 92
    :cond_1b
    instance-of v15, v14, Ljava/lang/String;

    if-eqz v15, :cond_20

    .line 93
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/g4;->C()Z

    move-result v15

    if-eqz v15, :cond_1c

    .line 94
    check-cast v14, Ljava/lang/String;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/g4;->D()Lcom/google/android/gms/internal/measurement/q4;

    move-result-object v10

    .line 95
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    move-result-object v13

    .line 96
    invoke-static {v14, v10, v13}, Lcom/google/android/gms/measurement/internal/c;->f(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/q4;Lcom/google/android/gms/measurement/internal/p5;)Ljava/lang/Boolean;

    move-result-object v10

    goto :goto_9

    .line 97
    :cond_1c
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/g4;->E()Z

    move-result v15

    if-eqz v15, :cond_1f

    .line 98
    check-cast v14, Ljava/lang/String;

    invoke-static {v14}, Lcom/google/android/gms/measurement/internal/td;->O(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1e

    .line 99
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/g4;->F()Lcom/google/android/gms/internal/measurement/k4;

    move-result-object v10

    invoke-static {v14, v10}, Lcom/google/android/gms/measurement/internal/c;->i(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/k4;)Ljava/lang/Boolean;

    move-result-object v10

    :goto_9
    if-nez v10, :cond_1d

    goto/16 :goto_a

    .line 100
    :cond_1d
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-ne v10, v12, :cond_13

    .line 101
    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_a

    .line 102
    :cond_1e
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    move-result-object v6

    .line 103
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/p5;->r()Lcom/google/android/gms/measurement/internal/n5;

    move-result-object v6

    .line 104
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->D()Lcom/google/android/gms/measurement/internal/i5;

    move-result-object v7

    .line 105
    invoke-virtual {v7, v4}, Lcom/google/android/gms/measurement/internal/i5;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 106
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->D()Lcom/google/android/gms/measurement/internal/i5;

    move-result-object v7

    .line 107
    invoke-virtual {v7, v13}, Lcom/google/android/gms/measurement/internal/i5;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v10, "Invalid param value for number filter. event, param"

    .line 108
    invoke-virtual {v6, v10, v4, v7}, Lcom/google/android/gms/measurement/internal/n5;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_a

    .line 109
    :cond_1f
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    move-result-object v6

    .line 110
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/p5;->r()Lcom/google/android/gms/measurement/internal/n5;

    move-result-object v6

    .line 111
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->D()Lcom/google/android/gms/measurement/internal/i5;

    move-result-object v7

    .line 112
    invoke-virtual {v7, v4}, Lcom/google/android/gms/measurement/internal/i5;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 113
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->D()Lcom/google/android/gms/measurement/internal/i5;

    move-result-object v7

    .line 114
    invoke-virtual {v7, v13}, Lcom/google/android/gms/measurement/internal/i5;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v10, "No filter for String param. event, param"

    .line 115
    invoke-virtual {v6, v10, v4, v7}, Lcom/google/android/gms/measurement/internal/n5;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_a

    :cond_20
    if-nez v14, :cond_21

    .line 116
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    move-result-object v6

    .line 117
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/p5;->w()Lcom/google/android/gms/measurement/internal/n5;

    move-result-object v6

    .line 118
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->D()Lcom/google/android/gms/measurement/internal/i5;

    move-result-object v7

    .line 119
    invoke-virtual {v7, v4}, Lcom/google/android/gms/measurement/internal/i5;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 120
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->D()Lcom/google/android/gms/measurement/internal/i5;

    move-result-object v7

    .line 121
    invoke-virtual {v7, v13}, Lcom/google/android/gms/measurement/internal/i5;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "Missing param for filter. event, param"

    .line 122
    invoke-virtual {v6, v9, v4, v7}, Lcom/google/android/gms/measurement/internal/n5;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 123
    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_a

    .line 124
    :cond_21
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    move-result-object v6

    .line 125
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/p5;->r()Lcom/google/android/gms/measurement/internal/n5;

    move-result-object v6

    .line 126
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->D()Lcom/google/android/gms/measurement/internal/i5;

    move-result-object v7

    .line 127
    invoke-virtual {v7, v4}, Lcom/google/android/gms/measurement/internal/i5;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 128
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->D()Lcom/google/android/gms/measurement/internal/i5;

    move-result-object v7

    .line 129
    invoke-virtual {v7, v13}, Lcom/google/android/gms/measurement/internal/i5;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v10, "Unknown param type. event, param"

    .line 130
    invoke-virtual {v6, v10, v4, v7}, Lcom/google/android/gms/measurement/internal/n5;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_a

    .line 131
    :cond_22
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 132
    :goto_a
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    move-result-object v2

    .line 133
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p5;->w()Lcom/google/android/gms/measurement/internal/n5;

    move-result-object v2

    if-nez v9, :cond_23

    const-string v4, "null"

    goto :goto_b

    :cond_23
    move-object v4, v9

    :goto_b
    const-string v6, "Event filter result"

    invoke-virtual {v2, v6, v4}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez v9, :cond_24

    return v8

    .line 134
    :cond_24
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v2, v0, Lcom/google/android/gms/measurement/internal/c;->c:Ljava/lang/Boolean;

    .line 135
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_25

    return v11

    :cond_25
    iput-object v2, v0, Lcom/google/android/gms/measurement/internal/c;->d:Ljava/lang/Boolean;

    if-eqz v1, :cond_2b

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/t6;->G()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/measurement/t6;->H()J

    move-result-wide v1

    .line 136
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 137
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/e4;->L()Z

    move-result v2

    if-eqz v2, :cond_28

    if-eqz v3, :cond_27

    .line 138
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/e4;->I()Z

    move-result v2

    if-nez v2, :cond_26

    goto :goto_c

    :cond_26
    move-object/from16 v1, p1

    :cond_27
    :goto_c
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/c;->f:Ljava/lang/Long;

    goto :goto_e

    :cond_28
    if-eqz v3, :cond_2a

    .line 139
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/e4;->I()Z

    move-result v2

    if-nez v2, :cond_29

    goto :goto_d

    :cond_29
    move-object/from16 v1, p2

    :cond_2a
    :goto_d
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/c;->e:Ljava/lang/Long;

    :cond_2b
    :goto_e
    return v11

    .line 140
    :cond_2c
    :goto_f
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    move-result-object v1

    .line 141
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p5;->r()Lcom/google/android/gms/measurement/internal/n5;

    move-result-object v1

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/p5;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 142
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/e4;->C()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/e4;->D()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    :cond_2d
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Invalid event filter ID. appId, id"

    .line 143
    invoke-virtual {v1, v4, v2, v3}, Lcom/google/android/gms/measurement/internal/n5;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v8
.end method
