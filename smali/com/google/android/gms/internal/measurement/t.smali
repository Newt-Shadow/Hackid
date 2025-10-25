.class public final Lcom/google/android/gms/internal/measurement/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lcom/google/android/gms/internal/measurement/p;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/t;->a:Ljava/lang/String;

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 10
    .line 11
    const-string v0, "StringValue cannot be null."

    .line 12
    .line 13
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw p1
.end method


# virtual methods
.method final synthetic d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/t;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/t;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/measurement/t;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/t;->a:Ljava/lang/String;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/t;->a:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/t;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/lang/Double;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/t;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    :try_start_0
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    .line 10
    .line 11
    .line 12
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return-object v0

    .line 14
    :catch_0
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 15
    .line 16
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0

    .line 21
    :cond_0
    const-wide/16 v0, 0x0

    .line 22
    .line 23
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0
.end method

.method public final h()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/t;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    xor-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/t;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final i()Ljava/util/Iterator;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/r;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/r;-><init>(Lcom/google/android/gms/internal/measurement/t;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/s;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/measurement/s;-><init>(Lcom/google/android/gms/internal/measurement/t;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final r()Lcom/google/android/gms/internal/measurement/p;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/t;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/t;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/t;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public final s(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/z4;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/p;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "charAt"

    .line 1
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "concat"

    const-string v7, "indexOf"

    const-string v8, "replace"

    const-string v9, "substring"

    const-string v10, "split"

    const-string v11, "slice"

    const-string v12, "match"

    const-string v13, "lastIndexOf"

    const-string v14, "toLocaleUpperCase"

    const-string v15, "search"

    const-string v2, "toLowerCase"

    const-string v0, "toLocaleLowerCase"

    const-string v3, "toString"

    move-object/from16 v16, v4

    const-string v4, "hasOwnProperty"

    move-object/from16 v17, v14

    const-string v14, "toUpperCase"

    if-nez v5, :cond_1

    .line 2
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 3
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 4
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 5
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 6
    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 7
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 8
    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 9
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 10
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 11
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 12
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 14
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 15
    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    move-object/from16 v5, v17

    .line 16
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2

    move-object/from16 v17, v4

    const-string v4, "trim"

    .line 17
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    filled-new-array/range {p1 .. p1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%s is not a String function"

    .line 19
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move-object/from16 v5, v17

    :cond_2
    move-object/from16 v17, v4

    .line 20
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    move-object/from16 v18, v3

    sparse-switch v4, :sswitch_data_0

    :cond_3
    move-object/from16 v4, v16

    :cond_4
    move-object/from16 v3, v17

    move-object/from16 v6, v18

    goto/16 :goto_3

    :sswitch_0
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    goto/16 :goto_1

    :sswitch_1
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_2
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0xa

    goto :goto_1

    :sswitch_3
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x9

    goto :goto_1

    :sswitch_4
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x8

    goto :goto_1

    :sswitch_5
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_6
    const-string v4, "trim"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x10

    goto :goto_1

    :sswitch_7
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0xf

    goto :goto_1

    :sswitch_8
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_9
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0xb

    goto :goto_1

    :sswitch_a
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x7

    goto :goto_1

    :sswitch_b
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0xd

    :goto_1
    move-object/from16 v4, v16

    goto :goto_2

    :sswitch_c
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 v4, v16

    move-object/from16 v3, v17

    move-object/from16 v6, v18

    const/4 v1, 0x1

    goto :goto_4

    :sswitch_d
    move-object/from16 v4, v16

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object/from16 v3, v17

    move-object/from16 v6, v18

    const/4 v1, 0x0

    goto :goto_4

    :sswitch_e
    move-object/from16 v4, v16

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0xc

    :goto_2
    move-object/from16 v3, v17

    move-object/from16 v6, v18

    goto :goto_4

    :sswitch_f
    move-object/from16 v4, v16

    move-object/from16 v6, v18

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0xe

    move-object/from16 v3, v17

    goto :goto_4

    :cond_5
    move-object/from16 v3, v17

    goto :goto_3

    :sswitch_10
    move-object/from16 v4, v16

    move-object/from16 v3, v17

    move-object/from16 v6, v18

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x2

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v1, -0x1

    :goto_4
    const-string v17, "undefined"

    move-object/from16 v19, v3

    move-object/from16 v18, v4

    packed-switch v1, :pswitch_data_0

    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Command not supported"

    .line 21
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    move-object/from16 v1, p3

    const/4 v3, 0x0

    .line 22
    invoke-static {v14, v3, v1}, Lcom/google/android/gms/internal/measurement/a6;->a(Ljava/lang/String;ILjava/util/List;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/t;->a:Ljava/lang/String;

    new-instance v2, Lcom/google/android/gms/internal/measurement/t;

    .line 23
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/measurement/t;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1a

    :pswitch_1
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 24
    invoke-static {v14, v3, v1}, Lcom/google/android/gms/internal/measurement/a6;->a(Ljava/lang/String;ILjava/util/List;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/t;->a:Ljava/lang/String;

    new-instance v2, Lcom/google/android/gms/internal/measurement/t;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 25
    invoke-virtual {v1, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/measurement/t;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1a

    :pswitch_2
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 26
    invoke-static {v6, v3, v1}, Lcom/google/android/gms/internal/measurement/a6;->a(Ljava/lang/String;ILjava/util/List;)V

    goto/16 :goto_17

    :pswitch_3
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 27
    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/measurement/a6;->a(Ljava/lang/String;ILjava/util/List;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/t;->a:Ljava/lang/String;

    new-instance v2, Lcom/google/android/gms/internal/measurement/t;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 28
    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/measurement/t;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1a

    :pswitch_4
    const/4 v3, 0x0

    move-object/from16 v1, p3

    move-object v2, v0

    move-object/from16 v0, p0

    .line 29
    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/measurement/a6;->a(Ljava/lang/String;ILjava/util/List;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/t;->a:Ljava/lang/String;

    new-instance v2, Lcom/google/android/gms/internal/measurement/t;

    .line 30
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/measurement/t;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1a

    :pswitch_5
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 31
    invoke-static {v5, v3, v1}, Lcom/google/android/gms/internal/measurement/a6;->a(Ljava/lang/String;ILjava/util/List;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/t;->a:Ljava/lang/String;

    new-instance v2, Lcom/google/android/gms/internal/measurement/t;

    .line 32
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/measurement/t;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1a

    :pswitch_6
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 33
    invoke-static {v9, v2, v1}, Lcom/google/android/gms/internal/measurement/a6;->c(Ljava/lang/String;ILjava/util/List;)V

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/t;->a:Ljava/lang/String;

    .line 34
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    .line 35
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/measurement/p;

    move-object/from16 v3, p2

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/measurement/z4;->a(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/p;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/internal/measurement/p;->g()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/a6;->i(D)D

    move-result-wide v4

    double-to-int v4, v4

    goto :goto_5

    :cond_7
    move-object/from16 v3, p2

    const/4 v4, 0x0

    .line 36
    :goto_5
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_8

    .line 37
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/p;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/measurement/z4;->a(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/p;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/p;->g()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/measurement/a6;->i(D)D

    move-result-wide v5

    double-to-int v1, v5

    goto :goto_6

    .line 38
    :cond_8
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    :goto_6
    const/4 v3, 0x0

    .line 39
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 40
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    new-instance v3, Lcom/google/android/gms/internal/measurement/t;

    .line 41
    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v2, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/measurement/t;-><init>(Ljava/lang/String;)V

    goto/16 :goto_f

    :pswitch_7
    move-object/from16 v0, p0

    move-object/from16 v3, p2

    move-object/from16 v1, p3

    const/4 v2, 0x2

    .line 42
    invoke-static {v10, v2, v1}, Lcom/google/android/gms/internal/measurement/a6;->c(Ljava/lang/String;ILjava/util/List;)V

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/t;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_9

    new-instance v2, Lcom/google/android/gms/internal/measurement/f;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/gms/internal/measurement/p;

    const/4 v4, 0x0

    aput-object v0, v1, v4

    .line 43
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/measurement/f;-><init>(Ljava/util/List;)V

    goto/16 :goto_1a

    :cond_9
    const/4 v4, 0x0

    new-instance v5, Ljava/util/ArrayList;

    .line 44
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 45
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 46
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 47
    :cond_a
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/p;

    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/measurement/z4;->a(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/p;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/internal/measurement/p;->f()Ljava/lang/String;

    move-result-object v4

    .line 48
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_b

    .line 49
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/p;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/measurement/z4;->a(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/p;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/p;->g()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/measurement/a6;->h(D)J

    move-result-wide v6

    goto :goto_7

    :cond_b
    const-wide/32 v6, 0x7fffffff

    :goto_7
    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-nez v1, :cond_c

    new-instance v2, Lcom/google/android/gms/internal/measurement/f;

    .line 50
    invoke-direct {v2}, Lcom/google/android/gms/internal/measurement/f;-><init>()V

    goto/16 :goto_1a

    :cond_c
    invoke-static {v4}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    long-to-int v3, v6

    const/4 v8, 0x1

    add-int/2addr v3, v8

    .line 51
    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 52
    array-length v2, v1

    .line 53
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_d

    if-lez v2, :cond_d

    const/4 v3, 0x0

    .line 54
    aget-object v3, v1, v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    add-int/lit8 v4, v2, -0x1

    .line 55
    aget-object v8, v1, v4

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_e

    move v4, v2

    goto :goto_8

    :cond_d
    move v4, v2

    const/4 v3, 0x0

    :cond_e
    :goto_8
    int-to-long v8, v2

    cmp-long v2, v8, v6

    if-lez v2, :cond_f

    add-int/lit8 v4, v4, -0x1

    :cond_f
    :goto_9
    if-ge v3, v4, :cond_10

    new-instance v2, Lcom/google/android/gms/internal/measurement/t;

    .line 56
    aget-object v6, v1, v3

    invoke-direct {v2, v6}, Lcom/google/android/gms/internal/measurement/t;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 57
    :cond_10
    :goto_a
    new-instance v2, Lcom/google/android/gms/internal/measurement/f;

    .line 58
    invoke-direct {v2, v5}, Lcom/google/android/gms/internal/measurement/f;-><init>(Ljava/util/List;)V

    goto/16 :goto_1a

    :pswitch_8
    move-object/from16 v0, p0

    move-object/from16 v3, p2

    move-object/from16 v1, p3

    const/4 v2, 0x2

    .line 59
    invoke-static {v11, v2, v1}, Lcom/google/android/gms/internal/measurement/a6;->c(Ljava/lang/String;ILjava/util/List;)V

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/t;->a:Ljava/lang/String;

    .line 60
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_11

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/p;

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/measurement/z4;->a(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/p;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/internal/measurement/p;->g()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    goto :goto_b

    :cond_11
    const-wide/16 v4, 0x0

    .line 61
    :goto_b
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/measurement/a6;->i(D)D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpg-double v8, v4, v6

    if-gez v8, :cond_12

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    int-to-double v8, v8

    add-double/2addr v8, v4

    .line 62
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    goto :goto_c

    .line 63
    :cond_12
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    int-to-double v6, v6

    .line 64
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    .line 65
    :goto_c
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_13

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/p;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/measurement/z4;->a(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/p;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/p;->g()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    goto :goto_d

    .line 66
    :cond_13
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    int-to-double v6, v1

    .line 67
    :goto_d
    invoke-static {v6, v7}, Lcom/google/android/gms/internal/measurement/a6;->i(D)D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpg-double v1, v6, v8

    if-gez v1, :cond_14

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    int-to-double v10, v1

    add-double/2addr v10, v6

    .line 68
    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    goto :goto_e

    .line 69
    :cond_14
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    int-to-double v8, v1

    .line 70
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    :goto_e
    double-to-int v1, v4

    double-to-int v3, v6

    sub-int/2addr v3, v1

    const/4 v4, 0x0

    .line 71
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v3, v1

    new-instance v4, Lcom/google/android/gms/internal/measurement/t;

    .line 72
    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/measurement/t;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    goto/16 :goto_1a

    :pswitch_9
    move-object/from16 v0, p0

    move-object/from16 v3, p2

    move-object/from16 v1, p3

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 73
    invoke-static {v15, v2, v1}, Lcom/google/android/gms/internal/measurement/a6;->c(Ljava/lang/String;ILjava/util/List;)V

    .line 74
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_15

    .line 75
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/p;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/measurement/z4;->a(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/p;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/p;->f()Ljava/lang/String;

    move-result-object v17

    :cond_15
    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/t;->a:Ljava/lang/String;

    invoke-static/range {v17 .. v17}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 76
    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 77
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_16

    new-instance v2, Lcom/google/android/gms/internal/measurement/i;

    .line 78
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    int-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/measurement/i;-><init>(Ljava/lang/Double;)V

    goto/16 :goto_1a

    :cond_16
    new-instance v2, Lcom/google/android/gms/internal/measurement/i;

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    .line 79
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/measurement/i;-><init>(Ljava/lang/Double;)V

    goto/16 :goto_1a

    :pswitch_a
    const/4 v2, 0x2

    move-object/from16 v0, p0

    move-object/from16 v3, p2

    move-object/from16 v1, p3

    .line 80
    invoke-static {v8, v2, v1}, Lcom/google/android/gms/internal/measurement/a6;->c(Ljava/lang/String;ILjava/util/List;)V

    sget-object v2, Lcom/google/android/gms/internal/measurement/p;->j0:Lcom/google/android/gms/internal/measurement/p;

    .line 81
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_17

    const/4 v4, 0x0

    .line 82
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/p;

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/measurement/z4;->a(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/p;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/internal/measurement/p;->f()Ljava/lang/String;

    move-result-object v17

    .line 83
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_17

    .line 84
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/p;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/measurement/z4;->a(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/p;

    move-result-object v2

    :cond_17
    move-object/from16 v1, v17

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/t;->a:Ljava/lang/String;

    .line 85
    invoke-virtual {v4, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_23

    instance-of v6, v2, Lcom/google/android/gms/internal/measurement/j;

    if-eqz v6, :cond_18

    .line 86
    check-cast v2, Lcom/google/android/gms/internal/measurement/j;

    const/4 v6, 0x3

    new-array v6, v6, [Lcom/google/android/gms/internal/measurement/p;

    new-instance v7, Lcom/google/android/gms/internal/measurement/t;

    invoke-direct {v7, v1}, Lcom/google/android/gms/internal/measurement/t;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    aput-object v7, v6, v8

    int-to-double v7, v5

    new-instance v9, Lcom/google/android/gms/internal/measurement/i;

    .line 87
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-direct {v9, v7}, Lcom/google/android/gms/internal/measurement/i;-><init>(Ljava/lang/Double;)V

    const/4 v7, 0x1

    aput-object v9, v6, v7

    const/4 v7, 0x2

    aput-object v0, v6, v7

    .line 88
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 89
    invoke-virtual {v2, v3, v6}, Lcom/google/android/gms/internal/measurement/j;->a(Lcom/google/android/gms/internal/measurement/z4;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/p;

    move-result-object v2

    :cond_18
    new-instance v3, Lcom/google/android/gms/internal/measurement/t;

    const/4 v6, 0x0

    .line 90
    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 91
    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/p;->f()Ljava/lang/String;

    move-result-object v2

    .line 92
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    add-int/2addr v4, v5

    add-int/2addr v4, v7

    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/measurement/t;-><init>(Ljava/lang/String;)V

    :goto_f
    move-object v2, v3

    goto/16 :goto_1a

    :pswitch_b
    move-object/from16 v0, p0

    move-object/from16 v3, p2

    move-object/from16 v1, p3

    const/4 v2, 0x1

    .line 93
    invoke-static {v12, v2, v1}, Lcom/google/android/gms/internal/measurement/a6;->c(Ljava/lang/String;ILjava/util/List;)V

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/t;->a:Ljava/lang/String;

    .line 94
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_19

    const-string v1, ""

    goto :goto_10

    :cond_19
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/p;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/measurement/z4;->a(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/p;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/p;->f()Ljava/lang/String;

    move-result-object v1

    :goto_10
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 95
    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 96
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1a

    new-instance v2, Lcom/google/android/gms/internal/measurement/f;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/google/android/gms/internal/measurement/p;

    new-instance v4, Lcom/google/android/gms/internal/measurement/t;

    .line 97
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/measurement/t;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 98
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/measurement/f;-><init>(Ljava/util/List;)V

    goto/16 :goto_1a

    :cond_1a
    sget-object v2, Lcom/google/android/gms/internal/measurement/p;->k0:Lcom/google/android/gms/internal/measurement/p;

    goto/16 :goto_1a

    :pswitch_c
    move-object/from16 v0, p0

    move-object/from16 v3, p2

    move-object/from16 v1, p3

    const/4 v2, 0x2

    const/4 v5, 0x0

    .line 99
    invoke-static {v13, v2, v1}, Lcom/google/android/gms/internal/measurement/a6;->c(Ljava/lang/String;ILjava/util/List;)V

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/t;->a:Ljava/lang/String;

    .line 100
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v6

    if-gtz v6, :cond_1b

    goto :goto_11

    .line 101
    :cond_1b
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/p;

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/measurement/z4;->a(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/p;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/internal/measurement/p;->f()Ljava/lang/String;

    move-result-object v17

    :goto_11
    move-object/from16 v5, v17

    .line 102
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v6, v2, :cond_1c

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    goto :goto_12

    :cond_1c
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/p;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/measurement/z4;->a(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/p;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/p;->g()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 103
    :goto_12
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_1d

    const-wide/high16 v1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_13

    .line 104
    :cond_1d
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/a6;->i(D)D

    move-result-wide v1

    :goto_13
    double-to-int v1, v1

    .line 105
    new-instance v2, Lcom/google/android/gms/internal/measurement/i;

    .line 106
    invoke-virtual {v4, v5, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v1

    int-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/measurement/i;-><init>(Ljava/lang/Double;)V

    goto/16 :goto_1a

    :pswitch_d
    move-object/from16 v0, p0

    move-object/from16 v3, p2

    move-object/from16 v1, p3

    const/4 v2, 0x2

    const-wide/16 v8, 0x0

    .line 107
    invoke-static {v7, v2, v1}, Lcom/google/android/gms/internal/measurement/a6;->c(Ljava/lang/String;ILjava/util/List;)V

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/t;->a:Ljava/lang/String;

    .line 108
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_1e

    goto :goto_14

    :cond_1e
    const/4 v5, 0x0

    .line 109
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/p;

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/measurement/z4;->a(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/p;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/internal/measurement/p;->f()Ljava/lang/String;

    move-result-object v17

    :goto_14
    move-object/from16 v5, v17

    .line 110
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v6, v2, :cond_1f

    move-wide v1, v8

    goto :goto_15

    :cond_1f
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/p;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/measurement/z4;->a(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/p;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/p;->g()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 111
    :goto_15
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/a6;->i(D)D

    move-result-wide v1

    double-to-int v1, v1

    new-instance v2, Lcom/google/android/gms/internal/measurement/i;

    .line 112
    invoke-virtual {v4, v5, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    int-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/measurement/i;-><init>(Ljava/lang/Double;)V

    goto/16 :goto_1a

    :pswitch_e
    move-object/from16 v0, p0

    move-object/from16 v3, p2

    move-object/from16 v1, p3

    move-object/from16 v2, v19

    const/4 v4, 0x1

    .line 113
    invoke-static {v2, v4, v1}, Lcom/google/android/gms/internal/measurement/a6;->a(Ljava/lang/String;ILjava/util/List;)V

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/t;->a:Ljava/lang/String;

    const/4 v4, 0x0

    .line 114
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/p;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/measurement/z4;->a(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/p;

    move-result-object v1

    .line 115
    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/p;->f()Ljava/lang/String;

    move-result-object v3

    const-string v4, "length"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    sget-object v2, Lcom/google/android/gms/internal/measurement/p;->o0:Lcom/google/android/gms/internal/measurement/p;

    goto/16 :goto_1a

    .line 116
    :cond_20
    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/p;->g()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 117
    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    cmpl-double v1, v3, v5

    if-nez v1, :cond_21

    double-to-int v1, v3

    if-ltz v1, :cond_21

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_21

    sget-object v2, Lcom/google/android/gms/internal/measurement/p;->o0:Lcom/google/android/gms/internal/measurement/p;

    goto/16 :goto_1a

    :cond_21
    sget-object v2, Lcom/google/android/gms/internal/measurement/p;->p0:Lcom/google/android/gms/internal/measurement/p;

    goto/16 :goto_1a

    :pswitch_f
    move-object/from16 v0, p0

    move-object/from16 v3, p2

    move-object/from16 v1, p3

    .line 118
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_23

    iget-object v2, v0, Lcom/google/android/gms/internal/measurement/t;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    .line 119
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 120
    :goto_16
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_22

    .line 121
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/p;

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/measurement/z4;->a(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/p;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/internal/measurement/p;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_22
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/measurement/t;

    .line 122
    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/measurement/t;-><init>(Ljava/lang/String;)V

    goto :goto_1a

    :cond_23
    :goto_17
    move-object v2, v0

    goto :goto_1a

    :pswitch_10
    move-object/from16 v0, p0

    move-object/from16 v3, p2

    move-object/from16 v1, p3

    move-object/from16 v4, v18

    const/4 v2, 0x1

    .line 123
    invoke-static {v4, v2, v1}, Lcom/google/android/gms/internal/measurement/a6;->c(Ljava/lang/String;ILjava/util/List;)V

    .line 124
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_24

    const/4 v2, 0x0

    .line 125
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/p;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/measurement/z4;->a(Lcom/google/android/gms/internal/measurement/p;)Lcom/google/android/gms/internal/measurement/p;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/p;->g()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/a6;->i(D)D

    move-result-wide v1

    double-to-int v3, v1

    goto :goto_18

    :cond_24
    const/4 v2, 0x0

    move v3, v2

    :goto_18
    iget-object v1, v0, Lcom/google/android/gms/internal/measurement/t;->a:Ljava/lang/String;

    if-ltz v3, :cond_26

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v3, v2, :cond_25

    goto :goto_19

    :cond_25
    new-instance v2, Lcom/google/android/gms/internal/measurement/t;

    .line 126
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/measurement/t;-><init>(Ljava/lang/String;)V

    goto :goto_1a

    .line 127
    :cond_26
    :goto_19
    sget-object v2, Lcom/google/android/gms/internal/measurement/p;->q0:Lcom/google/android/gms/internal/measurement/p;

    :goto_1a
    return-object v2

    :sswitch_data_0
    .sparse-switch
        -0x6aaca37f -> :sswitch_10
        -0x69e9ad94 -> :sswitch_f
        -0x57513364 -> :sswitch_e
        -0x5128e1d7 -> :sswitch_d
        -0x50c088ec -> :sswitch_c
        -0x43ce226a -> :sswitch_b
        -0x36059a58 -> :sswitch_a
        -0x2b53be43 -> :sswitch_9
        -0x1bdda92d -> :sswitch_8
        -0x17d0ad49 -> :sswitch_7
        0x367422 -> :sswitch_6
        0x62dd9c5 -> :sswitch_5
        0x6873d92 -> :sswitch_4
        0x6891b1a -> :sswitch_3
        0x1f9f6e51 -> :sswitch_2
        0x413cb2b4 -> :sswitch_1
        0x73d44649 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/t;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    add-int/lit8 v2, v2, 0x2

    .line 10
    .line 11
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 12
    .line 13
    .line 14
    const-string v2, "\""

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    return-object v0
.end method
