.class public final Lio/appmetrica/analytics/impl/C8;
.super Lio/appmetrica/analytics/protobuf/nano/MessageNano;
.source "SourceFile"


# static fields
.field public static volatile c:[Lio/appmetrica/analytics/impl/C8;


# instance fields
.field public a:Lio/appmetrica/analytics/impl/x8;

.field public b:Lio/appmetrica/analytics/impl/z8;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/C8;->a()Lio/appmetrica/analytics/impl/C8;

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static a([B)Lio/appmetrica/analytics/impl/C8;
    .locals 1

    .line 12
    new-instance v0, Lio/appmetrica/analytics/impl/C8;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/C8;-><init>()V

    invoke-static {v0, p0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->mergeFrom(Lio/appmetrica/analytics/protobuf/nano/MessageNano;[B)Lio/appmetrica/analytics/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/impl/C8;

    return-object p0
.end method

.method public static b(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;)Lio/appmetrica/analytics/impl/C8;
    .locals 1

    .line 7
    new-instance v0, Lio/appmetrica/analytics/impl/C8;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/C8;-><init>()V

    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/impl/C8;->a(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;)Lio/appmetrica/analytics/impl/C8;

    move-result-object p0

    return-object p0
.end method

.method public static b()[Lio/appmetrica/analytics/impl/C8;
    .locals 2

    .line 1
    sget-object v0, Lio/appmetrica/analytics/impl/C8;->c:[Lio/appmetrica/analytics/impl/C8;

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lio/appmetrica/analytics/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lio/appmetrica/analytics/impl/C8;->c:[Lio/appmetrica/analytics/impl/C8;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lio/appmetrica/analytics/impl/C8;

    .line 4
    sput-object v1, Lio/appmetrica/analytics/impl/C8;->c:[Lio/appmetrica/analytics/impl/C8;

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
    sget-object v0, Lio/appmetrica/analytics/impl/C8;->c:[Lio/appmetrica/analytics/impl/C8;

    return-object v0
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/impl/C8;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lio/appmetrica/analytics/impl/C8;->a:Lio/appmetrica/analytics/impl/x8;

    .line 2
    iput-object v0, p0, Lio/appmetrica/analytics/impl/C8;->b:Lio/appmetrica/analytics/impl/z8;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method public final a(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;)Lio/appmetrica/analytics/impl/C8;
    .locals 2

    .line 4
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_5

    const/16 v1, 0xa

    if-eq v0, v1, :cond_3

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1

    .line 5
    invoke-static {p1, v0}, Lio/appmetrica/analytics/protobuf/nano/WireFormatNano;->parseUnknownField(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 6
    :cond_1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/C8;->b:Lio/appmetrica/analytics/impl/z8;

    if-nez v0, :cond_2

    .line 7
    new-instance v0, Lio/appmetrica/analytics/impl/z8;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/z8;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/C8;->b:Lio/appmetrica/analytics/impl/z8;

    .line 8
    :cond_2
    iget-object v0, p0, Lio/appmetrica/analytics/impl/C8;->b:Lio/appmetrica/analytics/impl/z8;

    invoke-virtual {p1, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 9
    :cond_3
    iget-object v0, p0, Lio/appmetrica/analytics/impl/C8;->a:Lio/appmetrica/analytics/impl/x8;

    if-nez v0, :cond_4

    .line 10
    new-instance v0, Lio/appmetrica/analytics/impl/x8;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/x8;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/C8;->a:Lio/appmetrica/analytics/impl/x8;

    .line 11
    :cond_4
    iget-object v0, p0, Lio/appmetrica/analytics/impl/C8;->a:Lio/appmetrica/analytics/impl/x8;

    invoke-virtual {p1, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lio/appmetrica/analytics/protobuf/nano/MessageNano;)V

    goto :goto_0

    :cond_5
    return-object p0
.end method

.method public final computeSerializedSize()I
    .locals 3

    .line 1
    invoke-super {p0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->computeSerializedSize()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lio/appmetrica/analytics/impl/C8;->a:Lio/appmetrica/analytics/impl/x8;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-static {v2, v1}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    add-int/2addr v0, v1

    .line 15
    :cond_0
    iget-object v1, p0, Lio/appmetrica/analytics/impl/C8;->b:Lio/appmetrica/analytics/impl/z8;

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    const/4 v2, 0x2

    .line 20
    invoke-static {v2, v1}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    add-int/2addr v0, v1

    .line 25
    :cond_1
    return v0
.end method

.method public final bridge synthetic mergeFrom(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;)Lio/appmetrica/analytics/protobuf/nano/MessageNano;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/C8;->a(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;)Lio/appmetrica/analytics/impl/C8;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final writeTo(Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/C8;->a:Lio/appmetrica/analytics/impl/x8;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {p1, v1, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/C8;->b:Lio/appmetrica/analytics/impl/z8;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    invoke-virtual {p1, v1, v0}, Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILio/appmetrica/analytics/protobuf/nano/MessageNano;)V

    .line 15
    .line 16
    .line 17
    :cond_1
    invoke-super {p0, p1}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->writeTo(Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
