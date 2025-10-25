.class public final Lcom/yandex/metrica/impl/ob/If$w;
.super Lcom/google/protobuf/nano/ym/MessageNano;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/If;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "w"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:J

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:[Lcom/yandex/metrica/impl/ob/If$y;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/nano/ym/MessageNano;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/If$w;->a()Lcom/yandex/metrica/impl/ob/If$w;

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/ob/If$w;
    .locals 2

    .line 1
    const/16 v0, 0x2710

    .line 2
    .line 3
    iput v0, p0, Lcom/yandex/metrica/impl/ob/If$w;->a:I

    .line 4
    .line 5
    const/16 v0, 0x3e8

    .line 6
    .line 7
    iput v0, p0, Lcom/yandex/metrica/impl/ob/If$w;->b:I

    .line 8
    .line 9
    const/16 v0, 0x64

    .line 10
    .line 11
    iput v0, p0, Lcom/yandex/metrica/impl/ob/If$w;->c:I

    .line 12
    .line 13
    const-wide/16 v0, 0x1388

    .line 14
    .line 15
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/If$w;->d:J

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$w;->e:Z

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    iput-boolean v1, p0, Lcom/yandex/metrica/impl/ob/If$w;->f:Z

    .line 22
    .line 23
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$w;->g:Z

    .line 24
    .line 25
    invoke-static {}, Lcom/yandex/metrica/impl/ob/If$y;->b()[Lcom/yandex/metrica/impl/ob/If$y;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/If$w;->h:[Lcom/yandex/metrica/impl/ob/If$y;

    .line 30
    .line 31
    const/4 v0, -0x1

    .line 32
    iput v0, p0, Lcom/google/protobuf/nano/ym/MessageNano;->cachedSize:I

    .line 33
    .line 34
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
    iget v1, p0, Lcom/yandex/metrica/impl/ob/If$w;->a:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    add-int/2addr v0, v1

    .line 13
    iget v1, p0, Lcom/yandex/metrica/impl/ob/If$w;->b:I

    .line 14
    .line 15
    const/4 v2, 0x2

    .line 16
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    add-int/2addr v0, v1

    .line 21
    iget v1, p0, Lcom/yandex/metrica/impl/ob/If$w;->c:I

    .line 22
    .line 23
    const/4 v2, 0x3

    .line 24
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    add-int/2addr v0, v1

    .line 29
    iget-wide v1, p0, Lcom/yandex/metrica/impl/ob/If$w;->d:J

    .line 30
    .line 31
    const/4 v3, 0x4

    .line 32
    invoke-static {v3, v1, v2}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    add-int/2addr v0, v1

    .line 37
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/If$w;->e:Z

    .line 38
    .line 39
    const/4 v2, 0x5

    .line 40
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    add-int/2addr v0, v1

    .line 45
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/If$w;->f:Z

    .line 46
    .line 47
    const/4 v2, 0x6

    .line 48
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    add-int/2addr v0, v1

    .line 53
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/If$w;->g:Z

    .line 54
    .line 55
    const/4 v2, 0x7

    .line 56
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    add-int/2addr v0, v1

    .line 61
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/If$w;->h:[Lcom/yandex/metrica/impl/ob/If$y;

    .line 62
    .line 63
    if-eqz v1, :cond_1

    .line 64
    .line 65
    array-length v1, v1

    .line 66
    if-lez v1, :cond_1

    .line 67
    .line 68
    const/4 v1, 0x0

    .line 69
    :goto_0
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/If$w;->h:[Lcom/yandex/metrica/impl/ob/If$y;

    .line 70
    .line 71
    array-length v3, v2

    .line 72
    if-ge v1, v3, :cond_1

    .line 73
    .line 74
    aget-object v2, v2, v1

    .line 75
    .line 76
    if-eqz v2, :cond_0

    .line 77
    .line 78
    const/16 v3, 0x8

    .line 79
    .line 80
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/ym/MessageNano;)I

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    add-int/2addr v0, v2

    .line 85
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_1
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
    if-eqz v0, :cond_c

    .line 6
    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    if-eq v0, v1, :cond_b

    .line 10
    .line 11
    const/16 v1, 0x10

    .line 12
    .line 13
    if-eq v0, v1, :cond_a

    .line 14
    .line 15
    const/16 v1, 0x18

    .line 16
    .line 17
    if-eq v0, v1, :cond_9

    .line 18
    .line 19
    const/16 v1, 0x20

    .line 20
    .line 21
    if-eq v0, v1, :cond_8

    .line 22
    .line 23
    const/16 v1, 0x28

    .line 24
    .line 25
    if-eq v0, v1, :cond_7

    .line 26
    .line 27
    const/16 v1, 0x30

    .line 28
    .line 29
    if-eq v0, v1, :cond_6

    .line 30
    .line 31
    const/16 v1, 0x38

    .line 32
    .line 33
    if-eq v0, v1, :cond_5

    .line 34
    .line 35
    const/16 v1, 0x42

    .line 36
    .line 37
    if-eq v0, v1, :cond_1

    .line 38
    .line 39
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/ym/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;I)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_0

    .line 44
    .line 45
    goto/16 :goto_3

    .line 46
    .line 47
    :cond_1
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/ym/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;I)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/If$w;->h:[Lcom/yandex/metrica/impl/ob/If$y;

    .line 52
    .line 53
    const/4 v2, 0x0

    .line 54
    if-nez v1, :cond_2

    .line 55
    .line 56
    move v3, v2

    .line 57
    goto :goto_1

    .line 58
    :cond_2
    array-length v3, v1

    .line 59
    :goto_1
    add-int/2addr v0, v3

    .line 60
    new-array v4, v0, [Lcom/yandex/metrica/impl/ob/If$y;

    .line 61
    .line 62
    if-eqz v3, :cond_3

    .line 63
    .line 64
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    .line 66
    .line 67
    :cond_3
    :goto_2
    add-int/lit8 v1, v0, -0x1

    .line 68
    .line 69
    if-ge v3, v1, :cond_4

    .line 70
    .line 71
    new-instance v1, Lcom/yandex/metrica/impl/ob/If$y;

    .line 72
    .line 73
    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/If$y;-><init>()V

    .line 74
    .line 75
    .line 76
    aput-object v1, v4, v3

    .line 77
    .line 78
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/ym/MessageNano;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readTag()I

    .line 82
    .line 83
    .line 84
    add-int/lit8 v3, v3, 0x1

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_4
    new-instance v0, Lcom/yandex/metrica/impl/ob/If$y;

    .line 88
    .line 89
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/If$y;-><init>()V

    .line 90
    .line 91
    .line 92
    aput-object v0, v4, v3

    .line 93
    .line 94
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/ym/MessageNano;)V

    .line 95
    .line 96
    .line 97
    iput-object v4, p0, Lcom/yandex/metrica/impl/ob/If$w;->h:[Lcom/yandex/metrica/impl/ob/If$y;

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readBool()Z

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$w;->g:Z

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readBool()Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$w;->f:Z

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readBool()Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$w;->e:Z

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readInt64()J

    .line 122
    .line 123
    .line 124
    move-result-wide v0

    .line 125
    iput-wide v0, p0, Lcom/yandex/metrica/impl/ob/If$w;->d:J

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readInt32()I

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    iput v0, p0, Lcom/yandex/metrica/impl/ob/If$w;->c:I

    .line 133
    .line 134
    goto/16 :goto_0

    .line 135
    .line 136
    :cond_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readInt32()I

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    iput v0, p0, Lcom/yandex/metrica/impl/ob/If$w;->b:I

    .line 141
    .line 142
    goto/16 :goto_0

    .line 143
    .line 144
    :cond_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readInt32()I

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    iput v0, p0, Lcom/yandex/metrica/impl/ob/If$w;->a:I

    .line 149
    .line 150
    goto/16 :goto_0

    .line 151
    .line 152
    :cond_c
    :goto_3
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/yandex/metrica/impl/ob/If$w;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 5
    .line 6
    .line 7
    iget v0, p0, Lcom/yandex/metrica/impl/ob/If$w;->b:I

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 11
    .line 12
    .line 13
    iget v0, p0, Lcom/yandex/metrica/impl/ob/If$w;->c:I

    .line 14
    .line 15
    const/4 v1, 0x3

    .line 16
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 17
    .line 18
    .line 19
    iget-wide v0, p0, Lcom/yandex/metrica/impl/ob/If$w;->d:J

    .line 20
    .line 21
    const/4 v2, 0x4

    .line 22
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 23
    .line 24
    .line 25
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$w;->e:Z

    .line 26
    .line 27
    const/4 v1, 0x5

    .line 28
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 29
    .line 30
    .line 31
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$w;->f:Z

    .line 32
    .line 33
    const/4 v1, 0x6

    .line 34
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 35
    .line 36
    .line 37
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/If$w;->g:Z

    .line 38
    .line 39
    const/4 v1, 0x7

    .line 40
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/If$w;->h:[Lcom/yandex/metrica/impl/ob/If$y;

    .line 44
    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    array-length v0, v0

    .line 48
    if-lez v0, :cond_1

    .line 49
    .line 50
    const/4 v0, 0x0

    .line 51
    :goto_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/If$w;->h:[Lcom/yandex/metrica/impl/ob/If$y;

    .line 52
    .line 53
    array-length v2, v1

    .line 54
    if-ge v0, v2, :cond_1

    .line 55
    .line 56
    aget-object v1, v1, v0

    .line 57
    .line 58
    if-eqz v1, :cond_0

    .line 59
    .line 60
    const/16 v2, 0x8

    .line 61
    .line 62
    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/ym/MessageNano;)V

    .line 63
    .line 64
    .line 65
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ym/MessageNano;->writeTo(Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method
