.class public final Lcom/yandex/metrica/impl/ob/kf;
.super Lcom/google/protobuf/nano/ym/MessageNano;
.source "SourceFile"


# static fields
.field private static volatile g:[Lcom/yandex/metrica/impl/ob/kf;


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:J

.field public d:Ljava/lang/String;

.field public e:I

.field public f:[Lcom/yandex/metrica/impl/ob/jf;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/nano/ym/MessageNano;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/kf;->a()Lcom/yandex/metrica/impl/ob/kf;

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static b()[Lcom/yandex/metrica/impl/ob/kf;
    .locals 2

    .line 1
    sget-object v0, Lcom/yandex/metrica/impl/ob/kf;->g:[Lcom/yandex/metrica/impl/ob/kf;

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
    sget-object v1, Lcom/yandex/metrica/impl/ob/kf;->g:[Lcom/yandex/metrica/impl/ob/kf;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    new-array v1, v1, [Lcom/yandex/metrica/impl/ob/kf;

    .line 14
    .line 15
    sput-object v1, Lcom/yandex/metrica/impl/ob/kf;->g:[Lcom/yandex/metrica/impl/ob/kf;

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
    sget-object v0, Lcom/yandex/metrica/impl/ob/kf;->g:[Lcom/yandex/metrica/impl/ob/kf;

    .line 23
    .line 24
    return-object v0
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/ob/kf;
    .locals 4

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/kf;->a:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iput v1, p0, Lcom/yandex/metrica/impl/ob/kf;->b:I

    .line 7
    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    iput-wide v2, p0, Lcom/yandex/metrica/impl/ob/kf;->c:J

    .line 11
    .line 12
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/kf;->d:Ljava/lang/String;

    .line 13
    .line 14
    iput v1, p0, Lcom/yandex/metrica/impl/ob/kf;->e:I

    .line 15
    .line 16
    invoke-static {}, Lcom/yandex/metrica/impl/ob/jf;->b()[Lcom/yandex/metrica/impl/ob/jf;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/kf;->f:[Lcom/yandex/metrica/impl/ob/jf;

    .line 21
    .line 22
    const/4 v0, -0x1

    .line 23
    iput v0, p0, Lcom/google/protobuf/nano/ym/MessageNano;->cachedSize:I

    .line 24
    .line 25
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
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/kf;->a:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    add-int/2addr v0, v1

    .line 13
    iget v1, p0, Lcom/yandex/metrica/impl/ob/kf;->b:I

    .line 14
    .line 15
    const/4 v2, 0x2

    .line 16
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeSInt32Size(II)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    add-int/2addr v0, v1

    .line 21
    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/kf;->c:J

    .line 22
    .line 23
    const/4 v3, 0x3

    .line 24
    invoke-static {v3, v1, v2}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeSInt64Size(IJ)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    add-int/2addr v0, v1

    .line 29
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/kf;->d:Ljava/lang/String;

    .line 30
    .line 31
    const-string v2, ""

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_0

    .line 38
    .line 39
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/kf;->d:Ljava/lang/String;

    .line 40
    .line 41
    const/4 v2, 0x4

    .line 42
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    add-int/2addr v0, v1

    .line 47
    :cond_0
    iget v1, p0, Lcom/yandex/metrica/impl/ob/kf;->e:I

    .line 48
    .line 49
    if-eqz v1, :cond_1

    .line 50
    .line 51
    const/4 v2, 0x5

    .line 52
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    add-int/2addr v0, v1

    .line 57
    :cond_1
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/kf;->f:[Lcom/yandex/metrica/impl/ob/jf;

    .line 58
    .line 59
    if-eqz v1, :cond_3

    .line 60
    .line 61
    array-length v1, v1

    .line 62
    if-lez v1, :cond_3

    .line 63
    .line 64
    const/4 v1, 0x0

    .line 65
    :goto_0
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/kf;->f:[Lcom/yandex/metrica/impl/ob/jf;

    .line 66
    .line 67
    array-length v3, v2

    .line 68
    if-ge v1, v3, :cond_3

    .line 69
    .line 70
    aget-object v2, v2, v1

    .line 71
    .line 72
    if-eqz v2, :cond_2

    .line 73
    .line 74
    const/4 v3, 0x6

    .line 75
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/ym/MessageNano;)I

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    add-int/2addr v0, v2

    .line 80
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_3
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
    if-eqz v0, :cond_a

    .line 6
    .line 7
    const/16 v1, 0xa

    .line 8
    .line 9
    if-eq v0, v1, :cond_9

    .line 10
    .line 11
    const/16 v1, 0x10

    .line 12
    .line 13
    if-eq v0, v1, :cond_8

    .line 14
    .line 15
    const/16 v1, 0x18

    .line 16
    .line 17
    if-eq v0, v1, :cond_7

    .line 18
    .line 19
    const/16 v1, 0x22

    .line 20
    .line 21
    if-eq v0, v1, :cond_6

    .line 22
    .line 23
    const/16 v1, 0x28

    .line 24
    .line 25
    if-eq v0, v1, :cond_5

    .line 26
    .line 27
    const/16 v1, 0x32

    .line 28
    .line 29
    if-eq v0, v1, :cond_1

    .line 30
    .line 31
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/ym/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;I)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_0

    .line 36
    .line 37
    goto :goto_3

    .line 38
    :cond_1
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/ym/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;I)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/kf;->f:[Lcom/yandex/metrica/impl/ob/jf;

    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    if-nez v1, :cond_2

    .line 46
    .line 47
    move v3, v2

    .line 48
    goto :goto_1

    .line 49
    :cond_2
    array-length v3, v1

    .line 50
    :goto_1
    add-int/2addr v0, v3

    .line 51
    new-array v4, v0, [Lcom/yandex/metrica/impl/ob/jf;

    .line 52
    .line 53
    if-eqz v3, :cond_3

    .line 54
    .line 55
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    .line 57
    .line 58
    :cond_3
    :goto_2
    add-int/lit8 v1, v0, -0x1

    .line 59
    .line 60
    if-ge v3, v1, :cond_4

    .line 61
    .line 62
    new-instance v1, Lcom/yandex/metrica/impl/ob/jf;

    .line 63
    .line 64
    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/jf;-><init>()V

    .line 65
    .line 66
    .line 67
    aput-object v1, v4, v3

    .line 68
    .line 69
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/ym/MessageNano;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readTag()I

    .line 73
    .line 74
    .line 75
    add-int/lit8 v3, v3, 0x1

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_4
    new-instance v0, Lcom/yandex/metrica/impl/ob/jf;

    .line 79
    .line 80
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/jf;-><init>()V

    .line 81
    .line 82
    .line 83
    aput-object v0, v4, v3

    .line 84
    .line 85
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/ym/MessageNano;)V

    .line 86
    .line 87
    .line 88
    iput-object v4, p0, Lcom/yandex/metrica/impl/ob/kf;->f:[Lcom/yandex/metrica/impl/ob/jf;

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readUInt32()I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    iput v0, p0, Lcom/yandex/metrica/impl/ob/kf;->e:I

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/kf;->d:Ljava/lang/String;

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readSInt64()J

    .line 106
    .line 107
    .line 108
    move-result-wide v0

    .line 109
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/kf;->c:J

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readSInt32()I

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    iput v0, p0, Lcom/yandex/metrica/impl/ob/kf;->b:I

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/kf;->a:Ljava/lang/String;

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_a
    :goto_3
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/kf;->a:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget v0, p0, Lcom/yandex/metrica/impl/ob/kf;->b:I

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeSInt32(II)V

    .line 11
    .line 12
    .line 13
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/kf;->c:J

    .line 14
    .line 15
    const/4 v2, 0x3

    .line 16
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeSInt64(IJ)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/kf;->d:Ljava/lang/String;

    .line 20
    .line 21
    const-string v1, ""

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/kf;->d:Ljava/lang/String;

    .line 30
    .line 31
    const/4 v1, 0x4

    .line 32
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    iget v0, p0, Lcom/yandex/metrica/impl/ob/kf;->e:I

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    const/4 v1, 0x5

    .line 40
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 41
    .line 42
    .line 43
    :cond_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/kf;->f:[Lcom/yandex/metrica/impl/ob/jf;

    .line 44
    .line 45
    if-eqz v0, :cond_3

    .line 46
    .line 47
    array-length v0, v0

    .line 48
    if-lez v0, :cond_3

    .line 49
    .line 50
    const/4 v0, 0x0

    .line 51
    :goto_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/kf;->f:[Lcom/yandex/metrica/impl/ob/jf;

    .line 52
    .line 53
    array-length v2, v1

    .line 54
    if-ge v0, v2, :cond_3

    .line 55
    .line 56
    aget-object v1, v1, v0

    .line 57
    .line 58
    if-eqz v1, :cond_2

    .line 59
    .line 60
    const/4 v2, 0x6

    .line 61
    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/ym/MessageNano;)V

    .line 62
    .line 63
    .line 64
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ym/MessageNano;->writeTo(Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method
