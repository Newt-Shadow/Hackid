.class public final Lcom/yandex/metrica/impl/ob/qf$d$a$c;
.super Lcom/google/protobuf/nano/ym/MessageNano;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/qf$d$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public a:[Lcom/yandex/metrica/impl/ob/of;

.field public b:[Lcom/yandex/metrica/impl/ob/rf;

.field public c:I

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/nano/ym/MessageNano;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/qf$d$a$c;->a()Lcom/yandex/metrica/impl/ob/qf$d$a$c;

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/ob/qf$d$a$c;
    .locals 1

    .line 1
    invoke-static {}, Lcom/yandex/metrica/impl/ob/of;->b()[Lcom/yandex/metrica/impl/ob/of;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a$c;->a:[Lcom/yandex/metrica/impl/ob/of;

    .line 6
    .line 7
    invoke-static {}, Lcom/yandex/metrica/impl/ob/rf;->b()[Lcom/yandex/metrica/impl/ob/rf;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a$c;->b:[Lcom/yandex/metrica/impl/ob/rf;

    .line 12
    .line 13
    const/4 v0, 0x2

    .line 14
    iput v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a$c;->c:I

    .line 15
    .line 16
    const-string v0, ""

    .line 17
    .line 18
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a$c;->d:Ljava/lang/String;

    .line 19
    .line 20
    const/4 v0, -0x1

    .line 21
    iput v0, p0, Lcom/google/protobuf/nano/ym/MessageNano;->cachedSize:I

    .line 22
    .line 23
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/google/protobuf/nano/ym/MessageNano;->computeSerializedSize()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/qf$d$a$c;->a:[Lcom/yandex/metrica/impl/ob/of;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    array-length v1, v1

    .line 11
    if-lez v1, :cond_1

    .line 12
    .line 13
    move v1, v2

    .line 14
    :goto_0
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/qf$d$a$c;->a:[Lcom/yandex/metrica/impl/ob/of;

    .line 15
    .line 16
    array-length v4, v3

    .line 17
    if-ge v1, v4, :cond_1

    .line 18
    .line 19
    aget-object v3, v3, v1

    .line 20
    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    const/4 v4, 0x1

    .line 24
    invoke-static {v4, v3}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/ym/MessageNano;)I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    add-int/2addr v0, v3

    .line 29
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/qf$d$a$c;->b:[Lcom/yandex/metrica/impl/ob/rf;

    .line 33
    .line 34
    const/4 v3, 0x2

    .line 35
    if-eqz v1, :cond_3

    .line 36
    .line 37
    array-length v1, v1

    .line 38
    if-lez v1, :cond_3

    .line 39
    .line 40
    :goto_1
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/qf$d$a$c;->b:[Lcom/yandex/metrica/impl/ob/rf;

    .line 41
    .line 42
    array-length v4, v1

    .line 43
    if-ge v2, v4, :cond_3

    .line 44
    .line 45
    aget-object v1, v1, v2

    .line 46
    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/ym/MessageNano;)I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    add-int/2addr v0, v1

    .line 54
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_3
    iget v1, p0, Lcom/yandex/metrica/impl/ob/qf$d$a$c;->c:I

    .line 58
    .line 59
    if-eq v1, v3, :cond_4

    .line 60
    .line 61
    const/4 v2, 0x3

    .line 62
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeInt32Size(II)I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    add-int/2addr v0, v1

    .line 67
    :cond_4
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/qf$d$a$c;->d:Ljava/lang/String;

    .line 68
    .line 69
    const-string v2, ""

    .line 70
    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-nez v1, :cond_5

    .line 76
    .line 77
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/qf$d$a$c;->d:Ljava/lang/String;

    .line 78
    .line 79
    const/4 v2, 0x4

    .line 80
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    add-int/2addr v0, v1

    .line 85
    :cond_5
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
    if-eqz v0, :cond_b

    .line 6
    .line 7
    const/16 v1, 0xa

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eq v0, v1, :cond_7

    .line 11
    .line 12
    const/16 v1, 0x12

    .line 13
    .line 14
    if-eq v0, v1, :cond_3

    .line 15
    .line 16
    const/16 v1, 0x18

    .line 17
    .line 18
    if-eq v0, v1, :cond_2

    .line 19
    .line 20
    const/16 v1, 0x22

    .line 21
    .line 22
    if-eq v0, v1, :cond_1

    .line 23
    .line 24
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/ym/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;I)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    goto/16 :goto_5

    .line 31
    .line 32
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a$c;->d:Ljava/lang/String;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readInt32()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    packed-switch v0, :pswitch_data_0

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :pswitch_0
    iput v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a$c;->c:I

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_3
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/ym/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;I)I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/qf$d$a$c;->b:[Lcom/yandex/metrica/impl/ob/rf;

    .line 55
    .line 56
    if-nez v1, :cond_4

    .line 57
    .line 58
    move v3, v2

    .line 59
    goto :goto_1

    .line 60
    :cond_4
    array-length v3, v1

    .line 61
    :goto_1
    add-int/2addr v0, v3

    .line 62
    new-array v4, v0, [Lcom/yandex/metrica/impl/ob/rf;

    .line 63
    .line 64
    if-eqz v3, :cond_5

    .line 65
    .line 66
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 67
    .line 68
    .line 69
    :cond_5
    :goto_2
    add-int/lit8 v1, v0, -0x1

    .line 70
    .line 71
    if-ge v3, v1, :cond_6

    .line 72
    .line 73
    new-instance v1, Lcom/yandex/metrica/impl/ob/rf;

    .line 74
    .line 75
    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/rf;-><init>()V

    .line 76
    .line 77
    .line 78
    aput-object v1, v4, v3

    .line 79
    .line 80
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/ym/MessageNano;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readTag()I

    .line 84
    .line 85
    .line 86
    add-int/lit8 v3, v3, 0x1

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_6
    new-instance v0, Lcom/yandex/metrica/impl/ob/rf;

    .line 90
    .line 91
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/rf;-><init>()V

    .line 92
    .line 93
    .line 94
    aput-object v0, v4, v3

    .line 95
    .line 96
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/ym/MessageNano;)V

    .line 97
    .line 98
    .line 99
    iput-object v4, p0, Lcom/yandex/metrica/impl/ob/qf$d$a$c;->b:[Lcom/yandex/metrica/impl/ob/rf;

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_7
    invoke-static {p1, v1}, Lcom/google/protobuf/nano/ym/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;I)I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/qf$d$a$c;->a:[Lcom/yandex/metrica/impl/ob/of;

    .line 107
    .line 108
    if-nez v1, :cond_8

    .line 109
    .line 110
    move v3, v2

    .line 111
    goto :goto_3

    .line 112
    :cond_8
    array-length v3, v1

    .line 113
    :goto_3
    add-int/2addr v0, v3

    .line 114
    new-array v4, v0, [Lcom/yandex/metrica/impl/ob/of;

    .line 115
    .line 116
    if-eqz v3, :cond_9

    .line 117
    .line 118
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 119
    .line 120
    .line 121
    :cond_9
    :goto_4
    add-int/lit8 v1, v0, -0x1

    .line 122
    .line 123
    if-ge v3, v1, :cond_a

    .line 124
    .line 125
    new-instance v1, Lcom/yandex/metrica/impl/ob/of;

    .line 126
    .line 127
    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/of;-><init>()V

    .line 128
    .line 129
    .line 130
    aput-object v1, v4, v3

    .line 131
    .line 132
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/ym/MessageNano;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readTag()I

    .line 136
    .line 137
    .line 138
    add-int/lit8 v3, v3, 0x1

    .line 139
    .line 140
    goto :goto_4

    .line 141
    :cond_a
    new-instance v0, Lcom/yandex/metrica/impl/ob/of;

    .line 142
    .line 143
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/of;-><init>()V

    .line 144
    .line 145
    .line 146
    aput-object v0, v4, v3

    .line 147
    .line 148
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/ym/MessageNano;)V

    .line 149
    .line 150
    .line 151
    iput-object v4, p0, Lcom/yandex/metrica/impl/ob/qf$d$a$c;->a:[Lcom/yandex/metrica/impl/ob/of;

    .line 152
    .line 153
    goto/16 :goto_0

    .line 154
    .line 155
    :cond_b
    :goto_5
    return-object p0

    .line 156
    nop

    .line 157
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public writeTo(Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a$c;->a:[Lcom/yandex/metrica/impl/ob/of;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    array-length v0, v0

    .line 7
    if-lez v0, :cond_1

    .line 8
    .line 9
    move v0, v1

    .line 10
    :goto_0
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/qf$d$a$c;->a:[Lcom/yandex/metrica/impl/ob/of;

    .line 11
    .line 12
    array-length v3, v2

    .line 13
    if-ge v0, v3, :cond_1

    .line 14
    .line 15
    aget-object v2, v2, v0

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/ym/MessageNano;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a$c;->b:[Lcom/yandex/metrica/impl/ob/rf;

    .line 27
    .line 28
    const/4 v2, 0x2

    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    array-length v0, v0

    .line 32
    if-lez v0, :cond_3

    .line 33
    .line 34
    :goto_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a$c;->b:[Lcom/yandex/metrica/impl/ob/rf;

    .line 35
    .line 36
    array-length v3, v0

    .line 37
    if-ge v1, v3, :cond_3

    .line 38
    .line 39
    aget-object v0, v0, v1

    .line 40
    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/ym/MessageNano;)V

    .line 44
    .line 45
    .line 46
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_3
    iget v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a$c;->c:I

    .line 50
    .line 51
    if-eq v0, v2, :cond_4

    .line 52
    .line 53
    const/4 v1, 0x3

    .line 54
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 55
    .line 56
    .line 57
    :cond_4
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a$c;->d:Ljava/lang/String;

    .line 58
    .line 59
    const-string v1, ""

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-nez v0, :cond_5

    .line 66
    .line 67
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$d$a$c;->d:Ljava/lang/String;

    .line 68
    .line 69
    const/4 v1, 0x4

    .line 70
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 71
    .line 72
    .line 73
    :cond_5
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ym/MessageNano;->writeTo(Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method
