.class public final Lio/appmetrica/analytics/impl/n7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/ProtobufConverter;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/ke;

.field public final b:Lio/appmetrica/analytics/impl/v7;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 1
    invoke-direct {p0, v0, v0, v1, v0}, Lio/appmetrica/analytics/impl/n7;-><init>(Lio/appmetrica/analytics/impl/ke;Lio/appmetrica/analytics/impl/v7;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/ke;Lio/appmetrica/analytics/impl/v7;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/appmetrica/analytics/impl/n7;->a:Lio/appmetrica/analytics/impl/ke;

    .line 4
    iput-object p2, p0, Lio/appmetrica/analytics/impl/n7;->b:Lio/appmetrica/analytics/impl/v7;

    return-void
.end method

.method public synthetic constructor <init>(Lio/appmetrica/analytics/impl/ke;Lio/appmetrica/analytics/impl/v7;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 5
    new-instance p1, Lio/appmetrica/analytics/impl/ke;

    invoke-direct {p1}, Lio/appmetrica/analytics/impl/ke;-><init>()V

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 6
    new-instance p2, Lio/appmetrica/analytics/impl/v7;

    const/4 p3, 0x0

    const/4 p4, 0x1

    invoke-direct {p2, p3, p4, p3}, Lio/appmetrica/analytics/impl/v7;-><init>(Lio/appmetrica/analytics/impl/ke;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 7
    :cond_1
    invoke-direct {p0, p1, p2}, Lio/appmetrica/analytics/impl/n7;-><init>(Lio/appmetrica/analytics/impl/ke;Lio/appmetrica/analytics/impl/v7;)V

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/y7;)Lio/appmetrica/analytics/impl/p7;
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 46
    new-instance v2, Lio/appmetrica/analytics/impl/y7;

    invoke-direct {v2}, Lio/appmetrica/analytics/impl/y7;-><init>()V

    .line 47
    iget v3, v1, Lio/appmetrica/analytics/impl/y7;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v4

    iget v5, v2, Lio/appmetrica/analytics/impl/y7;->a:I

    if-eq v4, v5, :cond_0

    move-object v8, v3

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    .line 48
    :goto_0
    iget-object v3, v1, Lio/appmetrica/analytics/impl/y7;->b:Ljava/lang/String;

    iget-object v4, v2, Lio/appmetrica/analytics/impl/y7;->b:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    move-object v9, v3

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    .line 49
    :goto_1
    iget-object v3, v1, Lio/appmetrica/analytics/impl/y7;->c:Ljava/lang/String;

    iget-object v4, v2, Lio/appmetrica/analytics/impl/y7;->c:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    move-object v10, v3

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    .line 50
    :goto_2
    iget-wide v3, v1, Lio/appmetrica/analytics/impl/y7;->d:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    iget-wide v11, v2, Lio/appmetrica/analytics/impl/y7;->d:J

    cmp-long v4, v4, v11

    if-eqz v4, :cond_3

    move-object v11, v3

    goto :goto_3

    :cond_3
    const/4 v11, 0x0

    .line 51
    :goto_3
    iget-object v3, v0, Lio/appmetrica/analytics/impl/n7;->b:Lio/appmetrica/analytics/impl/v7;

    iget-object v4, v1, Lio/appmetrica/analytics/impl/y7;->e:Lio/appmetrica/analytics/impl/z7;

    invoke-virtual {v3, v4}, Lio/appmetrica/analytics/impl/v7;->a(Lio/appmetrica/analytics/impl/z7;)Lio/appmetrica/analytics/impl/u7;

    move-result-object v12

    .line 52
    iget-object v3, v1, Lio/appmetrica/analytics/impl/y7;->f:Ljava/lang/String;

    iget-object v4, v2, Lio/appmetrica/analytics/impl/y7;->f:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_4

    move-object v13, v3

    goto :goto_4

    :cond_4
    const/4 v13, 0x0

    .line 53
    :goto_4
    iget-object v3, v1, Lio/appmetrica/analytics/impl/y7;->g:Ljava/lang/String;

    iget-object v4, v2, Lio/appmetrica/analytics/impl/y7;->g:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_5

    move-object v14, v3

    goto :goto_5

    :cond_5
    const/4 v14, 0x0

    .line 54
    :goto_5
    iget-wide v3, v1, Lio/appmetrica/analytics/impl/y7;->h:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    iget-wide v6, v2, Lio/appmetrica/analytics/impl/y7;->h:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_6

    goto :goto_6

    :cond_6
    const/4 v3, 0x0

    .line 55
    :goto_6
    iget v4, v1, Lio/appmetrica/analytics/impl/y7;->i:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v5

    iget v6, v2, Lio/appmetrica/analytics/impl/y7;->i:I

    if-eq v5, v6, :cond_7

    move-object/from16 v16, v4

    goto :goto_7

    :cond_7
    const/16 v16, 0x0

    .line 56
    :goto_7
    iget v4, v1, Lio/appmetrica/analytics/impl/y7;->j:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v5

    iget v6, v2, Lio/appmetrica/analytics/impl/y7;->j:I

    if-eq v5, v6, :cond_8

    move-object/from16 v17, v4

    goto :goto_8

    :cond_8
    const/16 v17, 0x0

    .line 57
    :goto_8
    iget-object v4, v1, Lio/appmetrica/analytics/impl/y7;->k:Ljava/lang/String;

    iget-object v5, v2, Lio/appmetrica/analytics/impl/y7;->k:Ljava/lang/String;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_9

    move-object/from16 v18, v4

    goto :goto_9

    :cond_9
    const/16 v18, 0x0

    .line 58
    :goto_9
    iget v4, v1, Lio/appmetrica/analytics/impl/y7;->l:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v5

    iget v6, v2, Lio/appmetrica/analytics/impl/y7;->l:I

    if-eq v5, v6, :cond_a

    goto :goto_a

    :cond_a
    const/4 v4, 0x0

    :goto_a
    if-eqz v4, :cond_b

    .line 59
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lio/appmetrica/analytics/impl/R8;->a(Ljava/lang/Integer;)Lio/appmetrica/analytics/impl/R8;

    move-result-object v4

    move-object/from16 v19, v4

    goto :goto_b

    :cond_b
    const/16 v19, 0x0

    .line 60
    :goto_b
    iget-object v4, v1, Lio/appmetrica/analytics/impl/y7;->m:Ljava/lang/String;

    iget-object v5, v2, Lio/appmetrica/analytics/impl/y7;->m:Ljava/lang/String;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_c

    move-object/from16 v20, v4

    goto :goto_c

    :cond_c
    const/16 v20, 0x0

    .line 61
    :goto_c
    iget v4, v1, Lio/appmetrica/analytics/impl/y7;->n:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v5

    iget v6, v2, Lio/appmetrica/analytics/impl/y7;->n:I

    if-eq v5, v6, :cond_d

    goto :goto_d

    :cond_d
    const/4 v4, 0x0

    :goto_d
    if-eqz v4, :cond_e

    .line 62
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lio/appmetrica/analytics/impl/pa;->a(Ljava/lang/Integer;)Lio/appmetrica/analytics/impl/pa;

    move-result-object v4

    move-object/from16 v21, v4

    goto :goto_e

    :cond_e
    const/16 v21, 0x0

    .line 63
    :goto_e
    iget v4, v1, Lio/appmetrica/analytics/impl/y7;->o:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v5

    iget v6, v2, Lio/appmetrica/analytics/impl/y7;->o:I

    if-eq v5, v6, :cond_f

    goto :goto_f

    :cond_f
    const/4 v4, 0x0

    :goto_f
    if-eqz v4, :cond_12

    .line 64
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 65
    invoke-static {}, Lio/appmetrica/analytics/impl/x9;->values()[Lio/appmetrica/analytics/impl/x9;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    :goto_10
    if-ge v7, v6, :cond_11

    aget-object v15, v5, v7

    move-object/from16 v23, v5

    .line 66
    iget v5, v15, Lio/appmetrica/analytics/impl/x9;->a:I

    if-ne v5, v4, :cond_10

    move-object v4, v15

    goto :goto_11

    :cond_10
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v5, v23

    goto :goto_10

    .line 67
    :cond_11
    sget-object v4, Lio/appmetrica/analytics/impl/x9;->b:Lio/appmetrica/analytics/impl/x9;

    goto :goto_11

    :cond_12
    const/4 v4, 0x0

    .line 68
    :goto_11
    iget-object v5, v0, Lio/appmetrica/analytics/impl/n7;->a:Lio/appmetrica/analytics/impl/ke;

    iget v6, v1, Lio/appmetrica/analytics/impl/y7;->p:I

    invoke-virtual {v5, v6}, Lio/appmetrica/analytics/impl/ke;->a(I)Ljava/lang/Boolean;

    move-result-object v23

    .line 69
    iget v5, v1, Lio/appmetrica/analytics/impl/y7;->q:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v6

    iget v7, v2, Lio/appmetrica/analytics/impl/y7;->q:I

    if-eq v6, v7, :cond_13

    move-object/from16 v24, v5

    goto :goto_12

    :cond_13
    const/16 v24, 0x0

    .line 70
    :goto_12
    iget-object v1, v1, Lio/appmetrica/analytics/impl/y7;->r:[B

    iget-object v2, v2, Lio/appmetrica/analytics/impl/y7;->r:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_14

    move-object/from16 v25, v1

    goto :goto_13

    :cond_14
    const/16 v25, 0x0

    .line 71
    :goto_13
    new-instance v1, Lio/appmetrica/analytics/impl/p7;

    move-object v7, v1

    move-object v15, v3

    move-object/from16 v22, v4

    invoke-direct/range {v7 .. v25}, Lio/appmetrica/analytics/impl/p7;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lio/appmetrica/analytics/impl/u7;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lio/appmetrica/analytics/impl/R8;Ljava/lang/String;Lio/appmetrica/analytics/impl/pa;Lio/appmetrica/analytics/impl/x9;Ljava/lang/Boolean;Ljava/lang/Integer;[B)V

    return-object v1
.end method

.method public final a(Lio/appmetrica/analytics/impl/p7;)Lio/appmetrica/analytics/impl/y7;
    .locals 3

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/y7;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/y7;-><init>()V

    .line 2
    iget-object v1, p1, Lio/appmetrica/analytics/impl/p7;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 4
    iput v1, v0, Lio/appmetrica/analytics/impl/y7;->a:I

    .line 5
    :cond_0
    iget-object v1, p1, Lio/appmetrica/analytics/impl/p7;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 6
    invoke-static {v1}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->correctIllFormedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lio/appmetrica/analytics/impl/y7;->b:Ljava/lang/String;

    .line 7
    :cond_1
    iget-object v1, p1, Lio/appmetrica/analytics/impl/p7;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 8
    invoke-static {v1}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->correctIllFormedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lio/appmetrica/analytics/impl/y7;->c:Ljava/lang/String;

    .line 9
    :cond_2
    iget-object v1, p1, Lio/appmetrica/analytics/impl/p7;->d:Ljava/lang/Long;

    if-eqz v1, :cond_3

    .line 10
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 11
    iput-wide v1, v0, Lio/appmetrica/analytics/impl/y7;->d:J

    .line 12
    :cond_3
    iget-object v1, p1, Lio/appmetrica/analytics/impl/p7;->e:Lio/appmetrica/analytics/impl/u7;

    if-eqz v1, :cond_4

    .line 13
    iget-object v2, p0, Lio/appmetrica/analytics/impl/n7;->b:Lio/appmetrica/analytics/impl/v7;

    invoke-virtual {v2, v1}, Lio/appmetrica/analytics/impl/v7;->a(Lio/appmetrica/analytics/impl/u7;)Lio/appmetrica/analytics/impl/z7;

    move-result-object v1

    iput-object v1, v0, Lio/appmetrica/analytics/impl/y7;->e:Lio/appmetrica/analytics/impl/z7;

    .line 14
    :cond_4
    iget-object v1, p1, Lio/appmetrica/analytics/impl/p7;->f:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 15
    iput-object v1, v0, Lio/appmetrica/analytics/impl/y7;->f:Ljava/lang/String;

    .line 16
    :cond_5
    iget-object v1, p1, Lio/appmetrica/analytics/impl/p7;->g:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 17
    iput-object v1, v0, Lio/appmetrica/analytics/impl/y7;->g:Ljava/lang/String;

    .line 18
    :cond_6
    iget-object v1, p1, Lio/appmetrica/analytics/impl/p7;->h:Ljava/lang/Long;

    if-eqz v1, :cond_7

    .line 19
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 20
    iput-wide v1, v0, Lio/appmetrica/analytics/impl/y7;->h:J

    .line 21
    :cond_7
    iget-object v1, p1, Lio/appmetrica/analytics/impl/p7;->i:Ljava/lang/Integer;

    if-eqz v1, :cond_8

    .line 22
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 23
    iput v1, v0, Lio/appmetrica/analytics/impl/y7;->i:I

    .line 24
    :cond_8
    iget-object v1, p1, Lio/appmetrica/analytics/impl/p7;->j:Ljava/lang/Integer;

    if-eqz v1, :cond_9

    .line 25
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 26
    iput v1, v0, Lio/appmetrica/analytics/impl/y7;->j:I

    .line 27
    :cond_9
    iget-object v1, p1, Lio/appmetrica/analytics/impl/p7;->k:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 28
    iput-object v1, v0, Lio/appmetrica/analytics/impl/y7;->k:Ljava/lang/String;

    .line 29
    :cond_a
    iget-object v1, p1, Lio/appmetrica/analytics/impl/p7;->l:Lio/appmetrica/analytics/impl/R8;

    if-eqz v1, :cond_b

    .line 30
    iget v1, v1, Lio/appmetrica/analytics/impl/R8;->a:I

    .line 31
    iput v1, v0, Lio/appmetrica/analytics/impl/y7;->l:I

    .line 32
    :cond_b
    iget-object v1, p1, Lio/appmetrica/analytics/impl/p7;->m:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 33
    iput-object v1, v0, Lio/appmetrica/analytics/impl/y7;->m:Ljava/lang/String;

    .line 34
    :cond_c
    iget-object v1, p1, Lio/appmetrica/analytics/impl/p7;->n:Lio/appmetrica/analytics/impl/pa;

    if-eqz v1, :cond_d

    .line 35
    iget v1, v1, Lio/appmetrica/analytics/impl/pa;->a:I

    iput v1, v0, Lio/appmetrica/analytics/impl/y7;->n:I

    .line 36
    :cond_d
    iget-object v1, p1, Lio/appmetrica/analytics/impl/p7;->o:Lio/appmetrica/analytics/impl/x9;

    if-eqz v1, :cond_e

    .line 37
    iget v1, v1, Lio/appmetrica/analytics/impl/x9;->a:I

    iput v1, v0, Lio/appmetrica/analytics/impl/y7;->o:I

    .line 38
    :cond_e
    iget-object v1, p1, Lio/appmetrica/analytics/impl/p7;->p:Ljava/lang/Boolean;

    if-eqz v1, :cond_f

    .line 39
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 40
    iget-object v2, p0, Lio/appmetrica/analytics/impl/n7;->a:Lio/appmetrica/analytics/impl/ke;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v1}, Lio/appmetrica/analytics/impl/ke;->a(Ljava/lang/Boolean;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lio/appmetrica/analytics/impl/y7;->p:I

    .line 41
    :cond_f
    iget-object v1, p1, Lio/appmetrica/analytics/impl/p7;->q:Ljava/lang/Integer;

    if-eqz v1, :cond_10

    .line 42
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 43
    iput v1, v0, Lio/appmetrica/analytics/impl/y7;->q:I

    .line 44
    :cond_10
    iget-object p1, p1, Lio/appmetrica/analytics/impl/p7;->r:[B

    if-eqz p1, :cond_11

    .line 45
    iput-object p1, v0, Lio/appmetrica/analytics/impl/y7;->r:[B

    :cond_11
    return-object v0
.end method

.method public final bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lio/appmetrica/analytics/impl/p7;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/n7;->a(Lio/appmetrica/analytics/impl/p7;)Lio/appmetrica/analytics/impl/y7;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final bridge synthetic toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lio/appmetrica/analytics/impl/y7;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/n7;->a(Lio/appmetrica/analytics/impl/y7;)Lio/appmetrica/analytics/impl/p7;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
