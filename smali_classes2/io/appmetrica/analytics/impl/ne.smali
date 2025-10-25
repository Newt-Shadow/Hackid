.class public final Lio/appmetrica/analytics/impl/ne;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/l8;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/qe;

.field public final b:Lio/appmetrica/analytics/impl/B3;

.field public final c:Lio/appmetrica/analytics/impl/Ea;

.field public final d:Lio/appmetrica/analytics/impl/Ff;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/qe;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/qe;-><init>()V

    new-instance v1, Lio/appmetrica/analytics/impl/B3;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/B3;-><init>()V

    new-instance v2, Lio/appmetrica/analytics/impl/Ea;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Lio/appmetrica/analytics/impl/Ea;-><init>(I)V

    new-instance v3, Lio/appmetrica/analytics/impl/Ff;

    invoke-direct {v3}, Lio/appmetrica/analytics/impl/Ff;-><init>()V

    invoke-direct {p0, v0, v1, v2, v3}, Lio/appmetrica/analytics/impl/ne;-><init>(Lio/appmetrica/analytics/impl/qe;Lio/appmetrica/analytics/impl/B3;Lio/appmetrica/analytics/impl/Ea;Lio/appmetrica/analytics/impl/Ff;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/qe;Lio/appmetrica/analytics/impl/B3;Lio/appmetrica/analytics/impl/Ea;Lio/appmetrica/analytics/impl/Ff;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/appmetrica/analytics/impl/ne;->a:Lio/appmetrica/analytics/impl/qe;

    .line 4
    iput-object p2, p0, Lio/appmetrica/analytics/impl/ne;->b:Lio/appmetrica/analytics/impl/B3;

    .line 5
    iput-object p3, p0, Lio/appmetrica/analytics/impl/ne;->c:Lio/appmetrica/analytics/impl/Ea;

    .line 6
    iput-object p4, p0, Lio/appmetrica/analytics/impl/ne;->d:Lio/appmetrica/analytics/impl/Ff;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Lio/appmetrica/analytics/impl/me;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/appmetrica/analytics/impl/Ci;",
            ">;)",
            "Lio/appmetrica/analytics/impl/me;"
        }
    .end annotation

    .line 74
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final a(Lio/appmetrica/analytics/impl/me;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/me;",
            ")",
            "Ljava/util/List<",
            "Lio/appmetrica/analytics/impl/Ci;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    new-instance v2, Lio/appmetrica/analytics/impl/E8;

    invoke-direct {v2}, Lio/appmetrica/analytics/impl/E8;-><init>()V

    .line 2
    iget v3, v1, Lio/appmetrica/analytics/impl/me;->a:I

    iput v3, v2, Lio/appmetrica/analytics/impl/E8;->a:I

    .line 3
    new-instance v3, Lio/appmetrica/analytics/impl/t8;

    invoke-direct {v3}, Lio/appmetrica/analytics/impl/t8;-><init>()V

    iput-object v3, v2, Lio/appmetrica/analytics/impl/E8;->f:Lio/appmetrica/analytics/impl/t8;

    .line 4
    iget-object v1, v1, Lio/appmetrica/analytics/impl/me;->b:Lio/appmetrica/analytics/impl/oe;

    .line 5
    new-instance v3, Lio/appmetrica/analytics/impl/r8;

    invoke-direct {v3}, Lio/appmetrica/analytics/impl/r8;-><init>()V

    .line 6
    iget-object v4, v1, Lio/appmetrica/analytics/impl/oe;->a:Ljava/lang/String;

    invoke-static {v4}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->getUTF8Bytes(Ljava/lang/String;)[B

    move-result-object v4

    iput-object v4, v3, Lio/appmetrica/analytics/impl/r8;->a:[B

    .line 7
    iget-object v4, v0, Lio/appmetrica/analytics/impl/ne;->c:Lio/appmetrica/analytics/impl/Ea;

    iget-object v5, v1, Lio/appmetrica/analytics/impl/oe;->b:Ljava/lang/String;

    .line 8
    invoke-virtual {v4, v5}, Lio/appmetrica/analytics/impl/Ea;->a(Ljava/lang/String;)Lio/appmetrica/analytics/impl/sn;

    move-result-object v4

    .line 9
    iget-object v5, v4, Lio/appmetrica/analytics/impl/sn;->a:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->getUTF8Bytes(Ljava/lang/String;)[B

    move-result-object v5

    iput-object v5, v3, Lio/appmetrica/analytics/impl/r8;->b:[B

    .line 10
    iget-object v5, v1, Lio/appmetrica/analytics/impl/oe;->c:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iput v5, v3, Lio/appmetrica/analytics/impl/r8;->e:I

    .line 11
    iget-object v5, v1, Lio/appmetrica/analytics/impl/oe;->d:Ljava/util/Map;

    if-eqz v5, :cond_0

    .line 12
    iget-object v6, v0, Lio/appmetrica/analytics/impl/ne;->a:Lio/appmetrica/analytics/impl/qe;

    invoke-virtual {v6, v5}, Lio/appmetrica/analytics/impl/qe;->a(Ljava/util/Map;)Lio/appmetrica/analytics/impl/Ci;

    move-result-object v5

    .line 13
    iget-object v6, v5, Lio/appmetrica/analytics/impl/Ci;->a:Ljava/lang/Object;

    check-cast v6, Lio/appmetrica/analytics/impl/v8;

    iput-object v6, v3, Lio/appmetrica/analytics/impl/r8;->c:Lio/appmetrica/analytics/impl/v8;

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 14
    :goto_0
    iget-object v6, v2, Lio/appmetrica/analytics/impl/E8;->f:Lio/appmetrica/analytics/impl/t8;

    iput-object v3, v6, Lio/appmetrica/analytics/impl/t8;->a:Lio/appmetrica/analytics/impl/r8;

    const/4 v3, 0x2

    new-array v6, v3, [Lio/appmetrica/analytics/impl/t3;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const/4 v4, 0x1

    aput-object v5, v6, v4

    .line 15
    new-instance v5, Lio/appmetrica/analytics/impl/s3;

    invoke-static {v6}, Lio/appmetrica/analytics/impl/s3;->b([Lio/appmetrica/analytics/impl/t3;)I

    move-result v6

    invoke-direct {v5, v6}, Lio/appmetrica/analytics/impl/s3;-><init>(I)V

    .line 16
    iget-object v1, v1, Lio/appmetrica/analytics/impl/oe;->c:Ljava/util/List;

    .line 17
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 18
    iget-object v8, v0, Lio/appmetrica/analytics/impl/ne;->d:Lio/appmetrica/analytics/impl/Ff;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    iget v8, v2, Lio/appmetrica/analytics/impl/E8;->a:I

    new-instance v9, Lio/appmetrica/analytics/impl/E8;

    invoke-direct {v9}, Lio/appmetrica/analytics/impl/E8;-><init>()V

    iget v9, v9, Lio/appmetrica/analytics/impl/E8;->a:I

    if-eq v8, v9, :cond_1

    .line 20
    iget v8, v2, Lio/appmetrica/analytics/impl/E8;->a:I

    invoke-static {v4, v8}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v8

    goto :goto_1

    :cond_1
    move v8, v7

    .line 21
    :goto_1
    iget-object v9, v2, Lio/appmetrica/analytics/impl/E8;->b:Lio/appmetrica/analytics/impl/D8;

    if-eqz v9, :cond_2

    .line 22
    invoke-static {v3, v9}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)I

    move-result v9

    add-int/2addr v8, v9

    .line 23
    :cond_2
    iget-object v9, v2, Lio/appmetrica/analytics/impl/E8;->c:Lio/appmetrica/analytics/impl/B8;

    if-eqz v9, :cond_3

    const/4 v10, 0x3

    .line 24
    invoke-static {v10, v9}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)I

    move-result v9

    add-int/2addr v8, v9

    .line 25
    :cond_3
    iget-object v9, v2, Lio/appmetrica/analytics/impl/E8;->d:Lio/appmetrica/analytics/impl/C8;

    const/4 v10, 0x4

    if-eqz v9, :cond_4

    .line 26
    invoke-static {v10, v9}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)I

    move-result v9

    add-int/2addr v8, v9

    .line 27
    :cond_4
    iget-object v9, v2, Lio/appmetrica/analytics/impl/E8;->e:Lio/appmetrica/analytics/impl/n8;

    if-eqz v9, :cond_5

    const/4 v11, 0x5

    .line 28
    invoke-static {v11, v9}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)I

    move-result v9

    add-int/2addr v8, v9

    .line 29
    :cond_5
    iget-object v9, v2, Lio/appmetrica/analytics/impl/E8;->f:Lio/appmetrica/analytics/impl/t8;

    if-eqz v9, :cond_6

    const/4 v11, 0x6

    .line 30
    invoke-static {v11, v9}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)I

    move-result v9

    add-int/2addr v8, v9

    .line 31
    :cond_6
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 32
    new-instance v11, Lio/appmetrica/analytics/impl/E8;

    invoke-direct {v11}, Lio/appmetrica/analytics/impl/E8;-><init>()V

    .line 33
    iget v12, v2, Lio/appmetrica/analytics/impl/E8;->a:I

    iput v12, v11, Lio/appmetrica/analytics/impl/E8;->a:I

    .line 34
    new-instance v12, Lio/appmetrica/analytics/impl/t8;

    invoke-direct {v12}, Lio/appmetrica/analytics/impl/t8;-><init>()V

    iput-object v12, v11, Lio/appmetrica/analytics/impl/E8;->f:Lio/appmetrica/analytics/impl/t8;

    .line 35
    new-instance v13, Lio/appmetrica/analytics/impl/r8;

    invoke-direct {v13}, Lio/appmetrica/analytics/impl/r8;-><init>()V

    iput-object v13, v12, Lio/appmetrica/analytics/impl/t8;->a:Lio/appmetrica/analytics/impl/r8;

    .line 36
    iget-object v12, v11, Lio/appmetrica/analytics/impl/E8;->f:Lio/appmetrica/analytics/impl/t8;

    iget-object v12, v12, Lio/appmetrica/analytics/impl/t8;->a:Lio/appmetrica/analytics/impl/r8;

    iget-object v13, v2, Lio/appmetrica/analytics/impl/E8;->f:Lio/appmetrica/analytics/impl/t8;

    iget-object v13, v13, Lio/appmetrica/analytics/impl/t8;->a:Lio/appmetrica/analytics/impl/r8;

    iget-object v14, v13, Lio/appmetrica/analytics/impl/r8;->b:[B

    iput-object v14, v12, Lio/appmetrica/analytics/impl/r8;->b:[B

    .line 37
    iget-object v14, v13, Lio/appmetrica/analytics/impl/r8;->a:[B

    iput-object v14, v12, Lio/appmetrica/analytics/impl/r8;->a:[B

    .line 38
    iget v14, v13, Lio/appmetrica/analytics/impl/r8;->e:I

    iput v14, v12, Lio/appmetrica/analytics/impl/r8;->e:I

    .line 39
    iget-object v13, v13, Lio/appmetrica/analytics/impl/r8;->c:Lio/appmetrica/analytics/impl/v8;

    iput-object v13, v12, Lio/appmetrica/analytics/impl/r8;->c:Lio/appmetrica/analytics/impl/v8;

    move-object v13, v5

    move v12, v7

    move v14, v8

    .line 40
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v15

    if-ge v12, v15, :cond_9

    .line 41
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lio/appmetrica/analytics/impl/C3;

    .line 42
    new-instance v4, Lio/appmetrica/analytics/impl/s8;

    invoke-direct {v4}, Lio/appmetrica/analytics/impl/s8;-><init>()V

    .line 43
    iput v12, v4, Lio/appmetrica/analytics/impl/s8;->a:I

    .line 44
    iget-object v7, v0, Lio/appmetrica/analytics/impl/ne;->b:Lio/appmetrica/analytics/impl/B3;

    .line 45
    invoke-virtual {v7, v15}, Lio/appmetrica/analytics/impl/B3;->a(Lio/appmetrica/analytics/impl/C3;)Lio/appmetrica/analytics/impl/Ci;

    move-result-object v7

    .line 46
    iget-object v15, v7, Lio/appmetrica/analytics/impl/Ci;->a:Ljava/lang/Object;

    check-cast v15, Lio/appmetrica/analytics/impl/o8;

    iput-object v15, v4, Lio/appmetrica/analytics/impl/s8;->b:Lio/appmetrica/analytics/impl/o8;

    .line 47
    iget-object v15, v7, Lio/appmetrica/analytics/impl/Ci;->b:Lio/appmetrica/analytics/impl/t3;

    invoke-interface {v15}, Lio/appmetrica/analytics/impl/t3;->getBytesTruncated()I

    .line 48
    new-instance v15, Lio/appmetrica/analytics/impl/Ci;

    invoke-direct {v15, v4, v7}, Lio/appmetrica/analytics/impl/Ci;-><init>(Ljava/lang/Object;Lio/appmetrica/analytics/impl/t3;)V

    .line 49
    iget-object v4, v0, Lio/appmetrica/analytics/impl/ne;->d:Lio/appmetrica/analytics/impl/Ff;

    iget-object v7, v15, Lio/appmetrica/analytics/impl/Ci;->a:Ljava/lang/Object;

    check-cast v7, Lio/appmetrica/analytics/impl/s8;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    invoke-static {v10}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v4

    .line 51
    invoke-static {v7}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSizeNoTag(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)I

    move-result v7

    and-int/lit8 v16, v7, -0x80

    if-nez v16, :cond_7

    const/16 v16, 0x0

    goto :goto_3

    .line 52
    :cond_7
    invoke-static {v7}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v16

    :goto_3
    add-int/2addr v4, v7

    add-int v4, v4, v16

    .line 53
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_8

    add-int v7, v14, v4

    const v10, 0x32000

    if-le v7, v10, :cond_8

    .line 54
    iget-object v7, v11, Lio/appmetrica/analytics/impl/E8;->f:Lio/appmetrica/analytics/impl/t8;

    iget-object v7, v7, Lio/appmetrica/analytics/impl/t8;->a:Lio/appmetrica/analytics/impl/r8;

    .line 55
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    new-array v10, v10, [Lio/appmetrica/analytics/impl/s8;

    invoke-interface {v9, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lio/appmetrica/analytics/impl/s8;

    .line 56
    iput-object v9, v7, Lio/appmetrica/analytics/impl/r8;->d:[Lio/appmetrica/analytics/impl/s8;

    .line 57
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 58
    new-instance v9, Lio/appmetrica/analytics/impl/Ci;

    invoke-direct {v9, v11, v13}, Lio/appmetrica/analytics/impl/Ci;-><init>(Ljava/lang/Object;Lio/appmetrica/analytics/impl/t3;)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    new-instance v9, Lio/appmetrica/analytics/impl/E8;

    invoke-direct {v9}, Lio/appmetrica/analytics/impl/E8;-><init>()V

    .line 60
    iget v10, v2, Lio/appmetrica/analytics/impl/E8;->a:I

    iput v10, v9, Lio/appmetrica/analytics/impl/E8;->a:I

    .line 61
    new-instance v10, Lio/appmetrica/analytics/impl/t8;

    invoke-direct {v10}, Lio/appmetrica/analytics/impl/t8;-><init>()V

    iput-object v10, v9, Lio/appmetrica/analytics/impl/E8;->f:Lio/appmetrica/analytics/impl/t8;

    .line 62
    new-instance v11, Lio/appmetrica/analytics/impl/r8;

    invoke-direct {v11}, Lio/appmetrica/analytics/impl/r8;-><init>()V

    iput-object v11, v10, Lio/appmetrica/analytics/impl/t8;->a:Lio/appmetrica/analytics/impl/r8;

    .line 63
    iget-object v10, v9, Lio/appmetrica/analytics/impl/E8;->f:Lio/appmetrica/analytics/impl/t8;

    iget-object v10, v10, Lio/appmetrica/analytics/impl/t8;->a:Lio/appmetrica/analytics/impl/r8;

    iget-object v11, v2, Lio/appmetrica/analytics/impl/E8;->f:Lio/appmetrica/analytics/impl/t8;

    iget-object v11, v11, Lio/appmetrica/analytics/impl/t8;->a:Lio/appmetrica/analytics/impl/r8;

    iget-object v13, v11, Lio/appmetrica/analytics/impl/r8;->b:[B

    iput-object v13, v10, Lio/appmetrica/analytics/impl/r8;->b:[B

    .line 64
    iget-object v13, v11, Lio/appmetrica/analytics/impl/r8;->a:[B

    iput-object v13, v10, Lio/appmetrica/analytics/impl/r8;->a:[B

    .line 65
    iget v13, v11, Lio/appmetrica/analytics/impl/r8;->e:I

    iput v13, v10, Lio/appmetrica/analytics/impl/r8;->e:I

    .line 66
    iget-object v11, v11, Lio/appmetrica/analytics/impl/r8;->c:Lio/appmetrica/analytics/impl/v8;

    iput-object v11, v10, Lio/appmetrica/analytics/impl/r8;->c:Lio/appmetrica/analytics/impl/v8;

    move-object v13, v5

    move v14, v8

    move-object v11, v9

    move-object v9, v7

    .line 67
    :cond_8
    iget-object v7, v15, Lio/appmetrica/analytics/impl/Ci;->a:Ljava/lang/Object;

    check-cast v7, Lio/appmetrica/analytics/impl/s8;

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v7, v3, [Lio/appmetrica/analytics/impl/t3;

    const/4 v10, 0x0

    aput-object v13, v7, v10

    .line 68
    iget-object v13, v15, Lio/appmetrica/analytics/impl/Ci;->b:Lio/appmetrica/analytics/impl/t3;

    const/4 v15, 0x1

    aput-object v13, v7, v15

    .line 69
    new-instance v13, Lio/appmetrica/analytics/impl/s3;

    invoke-static {v7}, Lio/appmetrica/analytics/impl/s3;->b([Lio/appmetrica/analytics/impl/t3;)I

    move-result v7

    invoke-direct {v13, v7}, Lio/appmetrica/analytics/impl/s3;-><init>(I)V

    add-int/2addr v14, v4

    add-int/lit8 v12, v12, 0x1

    move v7, v10

    move v4, v15

    const/4 v10, 0x4

    goto/16 :goto_2

    .line 70
    :cond_9
    iget-object v1, v11, Lio/appmetrica/analytics/impl/E8;->f:Lio/appmetrica/analytics/impl/t8;

    iget-object v1, v1, Lio/appmetrica/analytics/impl/t8;->a:Lio/appmetrica/analytics/impl/r8;

    .line 71
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lio/appmetrica/analytics/impl/s8;

    invoke-interface {v9, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lio/appmetrica/analytics/impl/s8;

    .line 72
    iput-object v2, v1, Lio/appmetrica/analytics/impl/r8;->d:[Lio/appmetrica/analytics/impl/s8;

    .line 73
    new-instance v1, Lio/appmetrica/analytics/impl/Ci;

    invoke-direct {v1, v11, v13}, Lio/appmetrica/analytics/impl/Ci;-><init>(Ljava/lang/Object;Lio/appmetrica/analytics/impl/t3;)V

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v6
.end method

.method public final bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lio/appmetrica/analytics/impl/me;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/ne;->a(Lio/appmetrica/analytics/impl/me;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    .line 3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 4
    .line 5
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 6
    .line 7
    .line 8
    throw p1
.end method
