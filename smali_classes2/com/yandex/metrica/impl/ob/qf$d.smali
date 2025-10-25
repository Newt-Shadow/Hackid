.class public final Lcom/yandex/metrica/impl/ob/qf$d;
.super Lcom/google/protobuf/nano/ym/MessageNano;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/qf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/qf$d$b;,
        Lcom/yandex/metrica/impl/ob/qf$d$a;
    }
.end annotation


# static fields
.field private static volatile d:[Lcom/yandex/metrica/impl/ob/qf$d;


# instance fields
.field public a:J

.field public b:Lcom/yandex/metrica/impl/ob/qf$d$b;

.field public c:[Lcom/yandex/metrica/impl/ob/qf$d$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/nano/ym/MessageNano;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/qf$d;->a()Lcom/yandex/metrica/impl/ob/qf$d;

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static b()[Lcom/yandex/metrica/impl/ob/qf$d;
    .locals 2

    .line 1
    sget-object v0, Lcom/yandex/metrica/impl/ob/qf$d;->d:[Lcom/yandex/metrica/impl/ob/qf$d;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    sget-object v0, Lcom/google/protobuf/nano/ym/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/yandex/metrica/impl/ob/qf$d;->d:[Lcom/yandex/metrica/impl/ob/qf$d;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    new-array v1, v1, [Lcom/yandex/metrica/impl/ob/qf$d;

    .line 14
    .line 15
    sput-object v1, Lcom/yandex/metrica/impl/ob/qf$d;->d:[Lcom/yandex/metrica/impl/ob/qf$d;

    .line 16
    .line 17
    :cond_0
    monitor-exit v0

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception v1

    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw v1

    .line 22
    :cond_1
    :goto_0
    sget-object v0, Lcom/yandex/metrica/impl/ob/qf$d;->d:[Lcom/yandex/metrica/impl/ob/qf$d;

    .line 23
    .line 24
    return-object v0
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/ob/qf$d;
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/qf$d;->a:J

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$d;->b:Lcom/yandex/metrica/impl/ob/qf$d$b;

    .line 7
    .line 8
    invoke-static {}, Lcom/yandex/metrica/impl/ob/qf$d$a;->b()[Lcom/yandex/metrica/impl/ob/qf$d$a;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$d;->c:[Lcom/yandex/metrica/impl/ob/qf$d$a;

    .line 13
    .line 14
    const/4 v0, -0x1

    .line 15
    iput v0, p0, Lcom/google/protobuf/nano/ym/MessageNano;->cachedSize:I

    .line 16
    .line 17
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/google/protobuf/nano/ym/MessageNano;->computeSerializedSize()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/qf$d;->a:J

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    invoke-static {v3, v1, v2}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    add-int/2addr v0, v1

    .line 13
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/qf$d;->b:Lcom/yandex/metrica/impl/ob/qf$d$b;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/ym/MessageNano;)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    add-int/2addr v0, v1

    .line 23
    :cond_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/qf$d;->c:[Lcom/yandex/metrica/impl/ob/qf$d$a;

    .line 24
    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    array-length v1, v1

    .line 28
    if-lez v1, :cond_2

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    :goto_0
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/qf$d;->c:[Lcom/yandex/metrica/impl/ob/qf$d$a;

    .line 32
    .line 33
    array-length v3, v2

    .line 34
    if-ge v1, v3, :cond_2

    .line 35
    .line 36
    aget-object v2, v2, v1

    .line 37
    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    const/4 v3, 0x3

    .line 41
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/ym/MessageNano;)I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    add-int/2addr v0, v2

    .line 46
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/ym/MessageNano;
    .locals 5

    .line 1
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readTag()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_8

    .line 6
    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    if-eq v0, v1, :cond_7

    .line 10
    .line 11
    const/16 v1, 0x12

    .line 12
    .line 13
    if-eq v0, v1, :cond_5

    .line 14
    .line 15
    const/16 v1, 0x1a

    .line 16
    .line 17
    if-eq v0, v1, :cond_1

    .line 18
    .line 19
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/ym/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;I)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    goto :goto_3

    .line 26
    :cond_1
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/ym/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;I)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/qf$d;->c:[Lcom/yandex/metrica/impl/ob/qf$d$a;

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    if-nez v1, :cond_2

    .line 34
    .line 35
    move v3, v2

    .line 36
    goto :goto_1

    .line 37
    :cond_2
    array-length v3, v1

    .line 38
    :goto_1
    add-int/2addr v0, v3

    .line 39
    new-array v4, v0, [Lcom/yandex/metrica/impl/ob/qf$d$a;

    .line 40
    .line 41
    if-eqz v3, :cond_3

    .line 42
    .line 43
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 44
    .line 45
    .line 46
    :cond_3
    :goto_2
    add-int/lit8 v1, v0, -0x1

    .line 47
    .line 48
    if-ge v3, v1, :cond_4

    .line 49
    .line 50
    new-instance v1, Lcom/yandex/metrica/impl/ob/qf$d$a;

    .line 51
    .line 52
    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/qf$d$a;-><init>()V

    .line 53
    .line 54
    .line 55
    aput-object v1, v4, v3

    .line 56
    .line 57
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/ym/MessageNano;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readTag()I

    .line 61
    .line 62
    .line 63
    add-int/lit8 v3, v3, 0x1

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_4
    new-instance v0, Lcom/yandex/metrica/impl/ob/qf$d$a;

    .line 67
    .line 68
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/qf$d$a;-><init>()V

    .line 69
    .line 70
    .line 71
    aput-object v0, v4, v3

    .line 72
    .line 73
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/ym/MessageNano;)V

    .line 74
    .line 75
    .line 76
    iput-object v4, p0, Lcom/yandex/metrica/impl/ob/qf$d;->c:[Lcom/yandex/metrica/impl/ob/qf$d$a;

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_5
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$d;->b:Lcom/yandex/metrica/impl/ob/qf$d$b;

    .line 80
    .line 81
    if-nez v0, :cond_6

    .line 82
    .line 83
    new-instance v0, Lcom/yandex/metrica/impl/ob/qf$d$b;

    .line 84
    .line 85
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/qf$d$b;-><init>()V

    .line 86
    .line 87
    .line 88
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$d;->b:Lcom/yandex/metrica/impl/ob/qf$d$b;

    .line 89
    .line 90
    :cond_6
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$d;->b:Lcom/yandex/metrica/impl/ob/qf$d$b;

    .line 91
    .line 92
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/ym/MessageNano;)V

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readUInt64()J

    .line 97
    .line 98
    .line 99
    move-result-wide v0

    .line 100
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/qf$d;->a:J

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_8
    :goto_3
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;)V
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/qf$d;->a:J

    .line 2
    .line 3
    const/4 v2, 0x1

    .line 4
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$d;->b:Lcom/yandex/metrica/impl/ob/qf$d$b;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/ym/MessageNano;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$d;->c:[Lcom/yandex/metrica/impl/ob/qf$d$a;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    array-length v0, v0

    .line 20
    if-lez v0, :cond_2

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    :goto_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/qf$d;->c:[Lcom/yandex/metrica/impl/ob/qf$d$a;

    .line 24
    .line 25
    array-length v2, v1

    .line 26
    if-ge v0, v2, :cond_2

    .line 27
    .line 28
    aget-object v1, v1, v0

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    const/4 v2, 0x3

    .line 33
    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/ym/MessageNano;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ym/MessageNano;->writeTo(Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method
