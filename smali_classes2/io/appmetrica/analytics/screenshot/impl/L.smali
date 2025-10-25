.class public final Lio/appmetrica/analytics/screenshot/impl/L;
.super Lio/appmetrica/analytics/protobuf/nano/MessageNano;
.source "SourceFile"


# static fields
.field public static volatile d:[Lio/appmetrica/analytics/screenshot/impl/L;


# instance fields
.field public a:Z

.field public b:J

.field public c:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lio/appmetrica/analytics/screenshot/impl/L;->a()Lio/appmetrica/analytics/screenshot/impl/L;

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static a([B)Lio/appmetrica/analytics/screenshot/impl/L;
    .locals 1

    .line 17
    new-instance v0, Lio/appmetrica/analytics/screenshot/impl/L;

    invoke-direct {v0}, Lio/appmetrica/analytics/screenshot/impl/L;-><init>()V

    invoke-static {v0, p0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->mergeFrom(Lio/appmetrica/analytics/protobuf/nano/MessageNano;[B)Lio/appmetrica/analytics/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/screenshot/impl/L;

    return-object p0
.end method

.method public static b(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;)Lio/appmetrica/analytics/screenshot/impl/L;
    .locals 1

    .line 7
    new-instance v0, Lio/appmetrica/analytics/screenshot/impl/L;

    invoke-direct {v0}, Lio/appmetrica/analytics/screenshot/impl/L;-><init>()V

    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/screenshot/impl/L;->a(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;)Lio/appmetrica/analytics/screenshot/impl/L;

    move-result-object p0

    return-object p0
.end method

.method public static b()[Lio/appmetrica/analytics/screenshot/impl/L;
    .locals 2

    .line 1
    sget-object v0, Lio/appmetrica/analytics/screenshot/impl/L;->d:[Lio/appmetrica/analytics/screenshot/impl/L;

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lio/appmetrica/analytics/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lio/appmetrica/analytics/screenshot/impl/L;->d:[Lio/appmetrica/analytics/screenshot/impl/L;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lio/appmetrica/analytics/screenshot/impl/L;

    .line 4
    sput-object v1, Lio/appmetrica/analytics/screenshot/impl/L;->d:[Lio/appmetrica/analytics/screenshot/impl/L;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lio/appmetrica/analytics/screenshot/impl/L;->d:[Lio/appmetrica/analytics/screenshot/impl/L;

    return-object v0
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/screenshot/impl/L;
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/appmetrica/analytics/screenshot/impl/L;->a:Z

    const-wide/16 v0, 0x5

    .line 2
    iput-wide v0, p0, Lio/appmetrica/analytics/screenshot/impl/L;->b:J

    .line 3
    sget-object v0, Lio/appmetrica/analytics/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lio/appmetrica/analytics/screenshot/impl/L;->c:[Ljava/lang/String;

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method public final a(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;)Lio/appmetrica/analytics/screenshot/impl/L;
    .locals 5

    .line 5
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_7

    const/16 v1, 0x8

    if-eq v0, v1, :cond_6

    const/16 v1, 0x10

    if-eq v0, v1, :cond_5

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_1

    .line 6
    invoke-static {p1, v0}, Lio/appmetrica/analytics/protobuf/nano/WireFormatNano;->parseUnknownField(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 7
    :cond_1
    invoke-static {p1, v1}, Lio/appmetrica/analytics/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 8
    iget-object v1, p0, Lio/appmetrica/analytics/screenshot/impl/L;->c:[Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    array-length v3, v1

    :goto_1
    add-int/2addr v0, v3

    .line 9
    new-array v4, v0, [Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 10
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    :goto_2
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_4

    .line 11
    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v3

    .line 12
    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 13
    :cond_4
    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    .line 14
    iput-object v4, p0, Lio/appmetrica/analytics/screenshot/impl/L;->c:[Ljava/lang/String;

    goto :goto_0

    .line 15
    :cond_5
    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lio/appmetrica/analytics/screenshot/impl/L;->b:J

    goto :goto_0

    .line 16
    :cond_6
    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lio/appmetrica/analytics/screenshot/impl/L;->a:Z

    goto :goto_0

    :cond_7
    return-object p0
.end method

.method public final computeSerializedSize()I
    .locals 6

    .line 1
    invoke-super {p0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->computeSerializedSize()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-boolean v1, p0, Lio/appmetrica/analytics/screenshot/impl/L;->a:Z

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eq v1, v2, :cond_0

    .line 9
    .line 10
    invoke-static {v2, v1}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    add-int/2addr v0, v1

    .line 15
    :cond_0
    iget-wide v1, p0, Lio/appmetrica/analytics/screenshot/impl/L;->b:J

    .line 16
    .line 17
    const-wide/16 v3, 0x5

    .line 18
    .line 19
    cmp-long v3, v1, v3

    .line 20
    .line 21
    if-eqz v3, :cond_1

    .line 22
    .line 23
    const/4 v3, 0x2

    .line 24
    invoke-static {v3, v1, v2}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    add-int/2addr v0, v1

    .line 29
    :cond_1
    iget-object v1, p0, Lio/appmetrica/analytics/screenshot/impl/L;->c:[Ljava/lang/String;

    .line 30
    .line 31
    if-eqz v1, :cond_4

    .line 32
    .line 33
    array-length v1, v1

    .line 34
    if-lez v1, :cond_4

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    move v2, v1

    .line 38
    move v3, v2

    .line 39
    :goto_0
    iget-object v4, p0, Lio/appmetrica/analytics/screenshot/impl/L;->c:[Ljava/lang/String;

    .line 40
    .line 41
    array-length v5, v4

    .line 42
    if-ge v1, v5, :cond_3

    .line 43
    .line 44
    aget-object v4, v4, v1

    .line 45
    .line 46
    if-eqz v4, :cond_2

    .line 47
    .line 48
    add-int/lit8 v3, v3, 0x1

    .line 49
    .line 50
    invoke-static {v4}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    add-int/2addr v4, v2

    .line 55
    move v2, v4

    .line 56
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    add-int/2addr v0, v2

    .line 60
    add-int/2addr v0, v3

    .line 61
    :cond_4
    return v0
.end method

.method public final bridge synthetic mergeFrom(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;)Lio/appmetrica/analytics/protobuf/nano/MessageNano;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/screenshot/impl/L;->a(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;)Lio/appmetrica/analytics/screenshot/impl/L;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final writeTo(Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lio/appmetrica/analytics/screenshot/impl/L;->a:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p1, v1, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget-wide v0, p0, Lio/appmetrica/analytics/screenshot/impl/L;->b:J

    .line 10
    .line 11
    const-wide/16 v2, 0x5

    .line 12
    .line 13
    cmp-long v2, v0, v2

    .line 14
    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    invoke-virtual {p1, v2, v0, v1}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 19
    .line 20
    .line 21
    :cond_1
    iget-object v0, p0, Lio/appmetrica/analytics/screenshot/impl/L;->c:[Ljava/lang/String;

    .line 22
    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    array-length v0, v0

    .line 26
    if-lez v0, :cond_3

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    :goto_0
    iget-object v1, p0, Lio/appmetrica/analytics/screenshot/impl/L;->c:[Ljava/lang/String;

    .line 30
    .line 31
    array-length v2, v1

    .line 32
    if-ge v0, v2, :cond_3

    .line 33
    .line 34
    aget-object v1, v1, v0

    .line 35
    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    const/4 v2, 0x3

    .line 39
    invoke-virtual {p1, v2, v1}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_3
    invoke-super {p0, p1}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->writeTo(Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method
