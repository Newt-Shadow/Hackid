.class public final Lio/appmetrica/analytics/screenshot/impl/K;
.super Lio/appmetrica/analytics/protobuf/nano/MessageNano;
.source "SourceFile"


# static fields
.field public static volatile b:[Lio/appmetrica/analytics/screenshot/impl/K;


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lio/appmetrica/analytics/screenshot/impl/K;->a()Lio/appmetrica/analytics/screenshot/impl/K;

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static a([B)Lio/appmetrica/analytics/screenshot/impl/K;
    .locals 1

    .line 6
    new-instance v0, Lio/appmetrica/analytics/screenshot/impl/K;

    invoke-direct {v0}, Lio/appmetrica/analytics/screenshot/impl/K;-><init>()V

    invoke-static {v0, p0}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->mergeFrom(Lio/appmetrica/analytics/protobuf/nano/MessageNano;[B)Lio/appmetrica/analytics/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/screenshot/impl/K;

    return-object p0
.end method

.method public static b(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;)Lio/appmetrica/analytics/screenshot/impl/K;
    .locals 1

    .line 7
    new-instance v0, Lio/appmetrica/analytics/screenshot/impl/K;

    invoke-direct {v0}, Lio/appmetrica/analytics/screenshot/impl/K;-><init>()V

    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/screenshot/impl/K;->a(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;)Lio/appmetrica/analytics/screenshot/impl/K;

    move-result-object p0

    return-object p0
.end method

.method public static b()[Lio/appmetrica/analytics/screenshot/impl/K;
    .locals 2

    .line 1
    sget-object v0, Lio/appmetrica/analytics/screenshot/impl/K;->b:[Lio/appmetrica/analytics/screenshot/impl/K;

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lio/appmetrica/analytics/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lio/appmetrica/analytics/screenshot/impl/K;->b:[Lio/appmetrica/analytics/screenshot/impl/K;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lio/appmetrica/analytics/screenshot/impl/K;

    .line 4
    sput-object v1, Lio/appmetrica/analytics/screenshot/impl/K;->b:[Lio/appmetrica/analytics/screenshot/impl/K;

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
    sget-object v0, Lio/appmetrica/analytics/screenshot/impl/K;->b:[Lio/appmetrica/analytics/screenshot/impl/K;

    return-object v0
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/screenshot/impl/K;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/appmetrica/analytics/screenshot/impl/K;->a:Z

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method public final a(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;)Lio/appmetrica/analytics/screenshot/impl/K;
    .locals 2

    .line 3
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 4
    invoke-static {p1, v0}, Lio/appmetrica/analytics/protobuf/nano/WireFormatNano;->parseUnknownField(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 5
    :cond_1
    invoke-virtual {p1}, Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lio/appmetrica/analytics/screenshot/impl/K;->a:Z

    goto :goto_0

    :cond_2
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
    iget-boolean v1, p0, Lio/appmetrica/analytics/screenshot/impl/K;->a:Z

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
    return v0
.end method

.method public final bridge synthetic mergeFrom(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;)Lio/appmetrica/analytics/protobuf/nano/MessageNano;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/screenshot/impl/K;->a(Lio/appmetrica/analytics/protobuf/nano/CodedInputByteBufferNano;)Lio/appmetrica/analytics/screenshot/impl/K;

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
    iget-boolean v0, p0, Lio/appmetrica/analytics/screenshot/impl/K;->a:Z

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
    invoke-super {p0, p1}, Lio/appmetrica/analytics/protobuf/nano/MessageNano;->writeTo(Lio/appmetrica/analytics/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
