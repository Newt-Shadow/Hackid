.class public final Lcom/yandex/metrica/impl/ob/qf$c;
.super Lcom/google/protobuf/nano/ym/MessageNano;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/qf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/qf$c$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Z

.field public h:I

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:I

.field public l:[Lcom/yandex/metrica/impl/ob/qf$c$a;

.field public m:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/nano/ym/MessageNano;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/qf$c;->a()Lcom/yandex/metrica/impl/ob/qf$c;

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/ob/qf$c;
    .locals 2

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$c;->a:Ljava/lang/String;

    .line 4
    .line 5
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$c;->b:Ljava/lang/String;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$c;->c:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput v1, p0, Lcom/yandex/metrica/impl/ob/qf$c;->d:I

    .line 11
    .line 12
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$c;->e:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$c;->f:Ljava/lang/String;

    .line 15
    .line 16
    iput-boolean v1, p0, Lcom/yandex/metrica/impl/ob/qf$c;->g:Z

    .line 17
    .line 18
    iput v1, p0, Lcom/yandex/metrica/impl/ob/qf$c;->h:I

    .line 19
    .line 20
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$c;->i:Ljava/lang/String;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$c;->j:Ljava/lang/String;

    .line 23
    .line 24
    iput v1, p0, Lcom/yandex/metrica/impl/ob/qf$c;->k:I

    .line 25
    .line 26
    invoke-static {}, Lcom/yandex/metrica/impl/ob/qf$c$a;->b()[Lcom/yandex/metrica/impl/ob/qf$c$a;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iput-object v1, p0, Lcom/yandex/metrica/impl/ob/qf$c;->l:[Lcom/yandex/metrica/impl/ob/qf$c$a;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$c;->m:Ljava/lang/String;

    .line 33
    .line 34
    const/4 v0, -0x1

    .line 35
    iput v0, p0, Lcom/google/protobuf/nano/ym/MessageNano;->cachedSize:I

    .line 36
    .line 37
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
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/qf$c;->a:Ljava/lang/String;

    .line 6
    .line 7
    const-string v2, ""

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/qf$c;->a:Ljava/lang/String;

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    add-int/2addr v0, v1

    .line 23
    :cond_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/qf$c;->b:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/qf$c;->b:Ljava/lang/String;

    .line 32
    .line 33
    const/4 v3, 0x2

    .line 34
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    add-int/2addr v0, v1

    .line 39
    :cond_1
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/qf$c;->c:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-nez v1, :cond_2

    .line 46
    .line 47
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/qf$c;->c:Ljava/lang/String;

    .line 48
    .line 49
    const/4 v3, 0x4

    .line 50
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    add-int/2addr v0, v1

    .line 55
    :cond_2
    iget v1, p0, Lcom/yandex/metrica/impl/ob/qf$c;->d:I

    .line 56
    .line 57
    if-eqz v1, :cond_3

    .line 58
    .line 59
    const/4 v3, 0x5

    .line 60
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    add-int/2addr v0, v1

    .line 65
    :cond_3
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/qf$c;->e:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-nez v1, :cond_4

    .line 72
    .line 73
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/qf$c;->e:Ljava/lang/String;

    .line 74
    .line 75
    const/16 v3, 0xa

    .line 76
    .line 77
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    add-int/2addr v0, v1

    .line 82
    :cond_4
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/qf$c;->f:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-nez v1, :cond_5

    .line 89
    .line 90
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/qf$c;->f:Ljava/lang/String;

    .line 91
    .line 92
    const/16 v3, 0xf

    .line 93
    .line 94
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    add-int/2addr v0, v1

    .line 99
    :cond_5
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/qf$c;->g:Z

    .line 100
    .line 101
    if-eqz v1, :cond_6

    .line 102
    .line 103
    const/16 v3, 0x11

    .line 104
    .line 105
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    add-int/2addr v0, v1

    .line 110
    :cond_6
    iget v1, p0, Lcom/yandex/metrica/impl/ob/qf$c;->h:I

    .line 111
    .line 112
    if-eqz v1, :cond_7

    .line 113
    .line 114
    const/16 v3, 0x12

    .line 115
    .line 116
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    add-int/2addr v0, v1

    .line 121
    :cond_7
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/qf$c;->i:Ljava/lang/String;

    .line 122
    .line 123
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    if-nez v1, :cond_8

    .line 128
    .line 129
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/qf$c;->i:Ljava/lang/String;

    .line 130
    .line 131
    const/16 v3, 0x13

    .line 132
    .line 133
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    add-int/2addr v0, v1

    .line 138
    :cond_8
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/qf$c;->j:Ljava/lang/String;

    .line 139
    .line 140
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    if-nez v1, :cond_9

    .line 145
    .line 146
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/qf$c;->j:Ljava/lang/String;

    .line 147
    .line 148
    const/16 v3, 0x15

    .line 149
    .line 150
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    add-int/2addr v0, v1

    .line 155
    :cond_9
    iget v1, p0, Lcom/yandex/metrica/impl/ob/qf$c;->k:I

    .line 156
    .line 157
    if-eqz v1, :cond_a

    .line 158
    .line 159
    const/16 v3, 0x16

    .line 160
    .line 161
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    add-int/2addr v0, v1

    .line 166
    :cond_a
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/qf$c;->l:[Lcom/yandex/metrica/impl/ob/qf$c$a;

    .line 167
    .line 168
    if-eqz v1, :cond_c

    .line 169
    .line 170
    array-length v1, v1

    .line 171
    if-lez v1, :cond_c

    .line 172
    .line 173
    const/4 v1, 0x0

    .line 174
    :goto_0
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/qf$c;->l:[Lcom/yandex/metrica/impl/ob/qf$c$a;

    .line 175
    .line 176
    array-length v4, v3

    .line 177
    if-ge v1, v4, :cond_c

    .line 178
    .line 179
    aget-object v3, v3, v1

    .line 180
    .line 181
    if-eqz v3, :cond_b

    .line 182
    .line 183
    const/16 v4, 0x17

    .line 184
    .line 185
    invoke-static {v4, v3}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/ym/MessageNano;)I

    .line 186
    .line 187
    .line 188
    move-result v3

    .line 189
    add-int/2addr v0, v3

    .line 190
    :cond_b
    add-int/lit8 v1, v1, 0x1

    .line 191
    .line 192
    goto :goto_0

    .line 193
    :cond_c
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/qf$c;->m:Ljava/lang/String;

    .line 194
    .line 195
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v1

    .line 199
    if-nez v1, :cond_d

    .line 200
    .line 201
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/qf$c;->m:Ljava/lang/String;

    .line 202
    .line 203
    const/16 v2, 0x18

    .line 204
    .line 205
    invoke-static {v2, v1}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    .line 206
    .line 207
    .line 208
    move-result v1

    .line 209
    add-int/2addr v0, v1

    .line 210
    :cond_d
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
    sparse-switch v0, :sswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/ym/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;I)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto/16 :goto_3

    .line 15
    .line 16
    :sswitch_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$c;->m:Ljava/lang/String;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :sswitch_1
    const/16 v0, 0xba

    .line 24
    .line 25
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/ym/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;I)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/qf$c;->l:[Lcom/yandex/metrica/impl/ob/qf$c$a;

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    if-nez v1, :cond_1

    .line 33
    .line 34
    move v3, v2

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    array-length v3, v1

    .line 37
    :goto_1
    add-int/2addr v0, v3

    .line 38
    new-array v4, v0, [Lcom/yandex/metrica/impl/ob/qf$c$a;

    .line 39
    .line 40
    if-eqz v3, :cond_2

    .line 41
    .line 42
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    .line 44
    .line 45
    :cond_2
    :goto_2
    add-int/lit8 v1, v0, -0x1

    .line 46
    .line 47
    if-ge v3, v1, :cond_3

    .line 48
    .line 49
    new-instance v1, Lcom/yandex/metrica/impl/ob/qf$c$a;

    .line 50
    .line 51
    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/qf$c$a;-><init>()V

    .line 52
    .line 53
    .line 54
    aput-object v1, v4, v3

    .line 55
    .line 56
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/ym/MessageNano;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readTag()I

    .line 60
    .line 61
    .line 62
    add-int/lit8 v3, v3, 0x1

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_3
    new-instance v0, Lcom/yandex/metrica/impl/ob/qf$c$a;

    .line 66
    .line 67
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/qf$c$a;-><init>()V

    .line 68
    .line 69
    .line 70
    aput-object v0, v4, v3

    .line 71
    .line 72
    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/ym/MessageNano;)V

    .line 73
    .line 74
    .line 75
    iput-object v4, p0, Lcom/yandex/metrica/impl/ob/qf$c;->l:[Lcom/yandex/metrica/impl/ob/qf$c$a;

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readUInt32()I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    iput v0, p0, Lcom/yandex/metrica/impl/ob/qf$c;->k:I

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$c;->j:Ljava/lang/String;

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$c;->i:Ljava/lang/String;

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readUInt32()I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    iput v0, p0, Lcom/yandex/metrica/impl/ob/qf$c;->h:I

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readBool()Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    iput-boolean v0, p0, Lcom/yandex/metrica/impl/ob/qf$c;->g:Z

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$c;->f:Ljava/lang/String;

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$c;->e:Ljava/lang/String;

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readUInt32()I

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    iput v0, p0, Lcom/yandex/metrica/impl/ob/qf$c;->d:I

    .line 132
    .line 133
    goto/16 :goto_0

    .line 134
    .line 135
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$c;->c:Ljava/lang/String;

    .line 140
    .line 141
    goto/16 :goto_0

    .line 142
    .line 143
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$c;->b:Ljava/lang/String;

    .line 148
    .line 149
    goto/16 :goto_0

    .line 150
    .line 151
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/ym/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$c;->a:Ljava/lang/String;

    .line 156
    .line 157
    goto/16 :goto_0

    .line 158
    .line 159
    :goto_3
    :sswitch_d
    return-object p0

    .line 160
    nop

    .line 161
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_c
        0x12 -> :sswitch_b
        0x22 -> :sswitch_a
        0x28 -> :sswitch_9
        0x52 -> :sswitch_8
        0x7a -> :sswitch_7
        0x88 -> :sswitch_6
        0x90 -> :sswitch_5
        0x9a -> :sswitch_4
        0xaa -> :sswitch_3
        0xb0 -> :sswitch_2
        0xba -> :sswitch_1
        0xc2 -> :sswitch_0
    .end sparse-switch
.end method

.method public writeTo(Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$c;->a:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$c;->a:Ljava/lang/String;

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$c;->b:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$c;->b:Ljava/lang/String;

    .line 26
    .line 27
    const/4 v2, 0x2

    .line 28
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$c;->c:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$c;->c:Ljava/lang/String;

    .line 40
    .line 41
    const/4 v2, 0x4

    .line 42
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :cond_2
    iget v0, p0, Lcom/yandex/metrica/impl/ob/qf$c;->d:I

    .line 46
    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    const/4 v2, 0x5

    .line 50
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 51
    .line 52
    .line 53
    :cond_3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$c;->e:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_4

    .line 60
    .line 61
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$c;->e:Ljava/lang/String;

    .line 62
    .line 63
    const/16 v2, 0xa

    .line 64
    .line 65
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :cond_4
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$c;->f:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-nez v0, :cond_5

    .line 75
    .line 76
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$c;->f:Ljava/lang/String;

    .line 77
    .line 78
    const/16 v2, 0xf

    .line 79
    .line 80
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    :cond_5
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/qf$c;->g:Z

    .line 84
    .line 85
    if-eqz v0, :cond_6

    .line 86
    .line 87
    const/16 v2, 0x11

    .line 88
    .line 89
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 90
    .line 91
    .line 92
    :cond_6
    iget v0, p0, Lcom/yandex/metrica/impl/ob/qf$c;->h:I

    .line 93
    .line 94
    if-eqz v0, :cond_7

    .line 95
    .line 96
    const/16 v2, 0x12

    .line 97
    .line 98
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 99
    .line 100
    .line 101
    :cond_7
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$c;->i:Ljava/lang/String;

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-nez v0, :cond_8

    .line 108
    .line 109
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$c;->i:Ljava/lang/String;

    .line 110
    .line 111
    const/16 v2, 0x13

    .line 112
    .line 113
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 114
    .line 115
    .line 116
    :cond_8
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$c;->j:Ljava/lang/String;

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-nez v0, :cond_9

    .line 123
    .line 124
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$c;->j:Ljava/lang/String;

    .line 125
    .line 126
    const/16 v2, 0x15

    .line 127
    .line 128
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 129
    .line 130
    .line 131
    :cond_9
    iget v0, p0, Lcom/yandex/metrica/impl/ob/qf$c;->k:I

    .line 132
    .line 133
    if-eqz v0, :cond_a

    .line 134
    .line 135
    const/16 v2, 0x16

    .line 136
    .line 137
    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeUInt32(II)V

    .line 138
    .line 139
    .line 140
    :cond_a
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$c;->l:[Lcom/yandex/metrica/impl/ob/qf$c$a;

    .line 141
    .line 142
    if-eqz v0, :cond_c

    .line 143
    .line 144
    array-length v0, v0

    .line 145
    if-lez v0, :cond_c

    .line 146
    .line 147
    const/4 v0, 0x0

    .line 148
    :goto_0
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/qf$c;->l:[Lcom/yandex/metrica/impl/ob/qf$c$a;

    .line 149
    .line 150
    array-length v3, v2

    .line 151
    if-ge v0, v3, :cond_c

    .line 152
    .line 153
    aget-object v2, v2, v0

    .line 154
    .line 155
    if-eqz v2, :cond_b

    .line 156
    .line 157
    const/16 v3, 0x17

    .line 158
    .line 159
    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/ym/MessageNano;)V

    .line 160
    .line 161
    .line 162
    :cond_b
    add-int/lit8 v0, v0, 0x1

    .line 163
    .line 164
    goto :goto_0

    .line 165
    :cond_c
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$c;->m:Ljava/lang/String;

    .line 166
    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    if-nez v0, :cond_d

    .line 172
    .line 173
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/qf$c;->m:Ljava/lang/String;

    .line 174
    .line 175
    const/16 v1, 0x18

    .line 176
    .line 177
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 178
    .line 179
    .line 180
    :cond_d
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ym/MessageNano;->writeTo(Lcom/google/protobuf/nano/ym/CodedOutputByteBufferNano;)V

    .line 181
    .line 182
    .line 183
    return-void
.end method
