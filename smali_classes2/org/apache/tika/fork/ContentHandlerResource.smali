.class Lorg/apache/tika/fork/ContentHandlerResource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/tika/fork/ForkResource;


# instance fields
.field private final handler:Lorg/xml/sax/ContentHandler;


# direct methods
.method public constructor <init>(Lorg/xml/sax/ContentHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/apache/tika/fork/ContentHandlerResource;->handler:Lorg/xml/sax/ContentHandler;

    .line 5
    .line 6
    return-void
.end method

.method private internalProcess(Ljava/io/DataInputStream;)V
    .locals 12

    .line 1
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lorg/apache/tika/fork/ContentHandlerResource;->handler:Lorg/xml/sax/ContentHandler;

    .line 9
    .line 10
    invoke-interface {p1}, Lorg/xml/sax/ContentHandler;->startDocument()V

    .line 11
    .line 12
    .line 13
    goto/16 :goto_1

    .line 14
    .line 15
    :cond_0
    const/4 v1, 0x2

    .line 16
    if-ne v0, v1, :cond_1

    .line 17
    .line 18
    iget-object p1, p0, Lorg/apache/tika/fork/ContentHandlerResource;->handler:Lorg/xml/sax/ContentHandler;

    .line 19
    .line 20
    invoke-interface {p1}, Lorg/xml/sax/ContentHandler;->endDocument()V

    .line 21
    .line 22
    .line 23
    goto/16 :goto_1

    .line 24
    .line 25
    :cond_1
    const/4 v1, 0x3

    .line 26
    if-ne v0, v1, :cond_2

    .line 27
    .line 28
    iget-object v0, p0, Lorg/apache/tika/fork/ContentHandlerResource;->handler:Lorg/xml/sax/ContentHandler;

    .line 29
    .line 30
    invoke-direct {p0, p1}, Lorg/apache/tika/fork/ContentHandlerResource;->readString(Ljava/io/DataInputStream;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-direct {p0, p1}, Lorg/apache/tika/fork/ContentHandlerResource;->readString(Ljava/io/DataInputStream;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-interface {v0, v1, p1}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    goto/16 :goto_1

    .line 42
    .line 43
    :cond_2
    const/4 v1, 0x4

    .line 44
    if-ne v0, v1, :cond_3

    .line 45
    .line 46
    iget-object v0, p0, Lorg/apache/tika/fork/ContentHandlerResource;->handler:Lorg/xml/sax/ContentHandler;

    .line 47
    .line 48
    invoke-direct {p0, p1}, Lorg/apache/tika/fork/ContentHandlerResource;->readString(Ljava/io/DataInputStream;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-interface {v0, p1}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    goto/16 :goto_1

    .line 56
    .line 57
    :cond_3
    const/4 v1, 0x5

    .line 58
    const/4 v2, 0x0

    .line 59
    if-ne v0, v1, :cond_6

    .line 60
    .line 61
    invoke-direct {p0, p1}, Lorg/apache/tika/fork/ContentHandlerResource;->readString(Ljava/io/DataInputStream;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-direct {p0, p1}, Lorg/apache/tika/fork/ContentHandlerResource;->readString(Ljava/io/DataInputStream;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-direct {p0, p1}, Lorg/apache/tika/fork/ContentHandlerResource;->readString(Ljava/io/DataInputStream;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    if-ltz v4, :cond_4

    .line 78
    .line 79
    new-instance v11, Lorg/xml/sax/helpers/AttributesImpl;

    .line 80
    .line 81
    invoke-direct {v11}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    .line 82
    .line 83
    .line 84
    :goto_0
    if-ge v2, v4, :cond_5

    .line 85
    .line 86
    invoke-direct {p0, p1}, Lorg/apache/tika/fork/ContentHandlerResource;->readString(Ljava/io/DataInputStream;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    invoke-direct {p0, p1}, Lorg/apache/tika/fork/ContentHandlerResource;->readString(Ljava/io/DataInputStream;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v7

    .line 94
    invoke-direct {p0, p1}, Lorg/apache/tika/fork/ContentHandlerResource;->readString(Ljava/io/DataInputStream;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v8

    .line 98
    invoke-direct {p0, p1}, Lorg/apache/tika/fork/ContentHandlerResource;->readString(Ljava/io/DataInputStream;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v9

    .line 102
    invoke-direct {p0, p1}, Lorg/apache/tika/fork/ContentHandlerResource;->readString(Ljava/io/DataInputStream;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v10

    .line 106
    move-object v5, v11

    .line 107
    invoke-virtual/range {v5 .. v10}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    add-int/lit8 v2, v2, 0x1

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_4
    const/4 v11, 0x0

    .line 114
    :cond_5
    iget-object p1, p0, Lorg/apache/tika/fork/ContentHandlerResource;->handler:Lorg/xml/sax/ContentHandler;

    .line 115
    .line 116
    invoke-interface {p1, v0, v1, v3, v11}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_6
    const/4 v1, 0x6

    .line 121
    if-ne v0, v1, :cond_7

    .line 122
    .line 123
    invoke-direct {p0, p1}, Lorg/apache/tika/fork/ContentHandlerResource;->readString(Ljava/io/DataInputStream;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-direct {p0, p1}, Lorg/apache/tika/fork/ContentHandlerResource;->readString(Ljava/io/DataInputStream;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-direct {p0, p1}, Lorg/apache/tika/fork/ContentHandlerResource;->readString(Ljava/io/DataInputStream;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    iget-object v2, p0, Lorg/apache/tika/fork/ContentHandlerResource;->handler:Lorg/xml/sax/ContentHandler;

    .line 136
    .line 137
    invoke-interface {v2, v0, v1, p1}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_7
    const/4 v1, 0x7

    .line 142
    if-ne v0, v1, :cond_8

    .line 143
    .line 144
    invoke-direct {p0, p1}, Lorg/apache/tika/fork/ContentHandlerResource;->readCharacters(Ljava/io/DataInputStream;)[C

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    iget-object v0, p0, Lorg/apache/tika/fork/ContentHandlerResource;->handler:Lorg/xml/sax/ContentHandler;

    .line 149
    .line 150
    array-length v1, p1

    .line 151
    invoke-interface {v0, p1, v2, v1}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    .line 152
    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_8
    const/16 v1, 0x8

    .line 156
    .line 157
    if-ne v0, v1, :cond_9

    .line 158
    .line 159
    invoke-direct {p0, p1}, Lorg/apache/tika/fork/ContentHandlerResource;->readCharacters(Ljava/io/DataInputStream;)[C

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    iget-object v0, p0, Lorg/apache/tika/fork/ContentHandlerResource;->handler:Lorg/xml/sax/ContentHandler;

    .line 164
    .line 165
    array-length v1, p1

    .line 166
    invoke-interface {v0, p1, v2, v1}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    .line 167
    .line 168
    .line 169
    goto :goto_1

    .line 170
    :cond_9
    const/16 v1, 0x9

    .line 171
    .line 172
    if-ne v0, v1, :cond_a

    .line 173
    .line 174
    iget-object v0, p0, Lorg/apache/tika/fork/ContentHandlerResource;->handler:Lorg/xml/sax/ContentHandler;

    .line 175
    .line 176
    invoke-direct {p0, p1}, Lorg/apache/tika/fork/ContentHandlerResource;->readString(Ljava/io/DataInputStream;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    invoke-direct {p0, p1}, Lorg/apache/tika/fork/ContentHandlerResource;->readString(Ljava/io/DataInputStream;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    invoke-interface {v0, v1, p1}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    goto :goto_1

    .line 188
    :cond_a
    const/16 v1, 0xa

    .line 189
    .line 190
    if-ne v0, v1, :cond_b

    .line 191
    .line 192
    iget-object v0, p0, Lorg/apache/tika/fork/ContentHandlerResource;->handler:Lorg/xml/sax/ContentHandler;

    .line 193
    .line 194
    invoke-direct {p0, p1}, Lorg/apache/tika/fork/ContentHandlerResource;->readString(Ljava/io/DataInputStream;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    invoke-interface {v0, p1}, Lorg/xml/sax/ContentHandler;->skippedEntity(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    :cond_b
    :goto_1
    return-void
.end method

.method private readCharacters(Ljava/io/DataInputStream;)[C
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/tika/fork/ContentHandlerResource;->readStringUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method private readString(Ljava/io/DataInputStream;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0, p1}, Lorg/apache/tika/fork/ContentHandlerResource;->readStringUTF(Ljava/io/DataInputStream;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    return-object p1
.end method

.method private readStringUTF(Ljava/io/DataInputStream;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-ge v2, v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    add-int/lit8 v2, v2, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1
.end method


# virtual methods
.method public process(Ljava/io/DataInputStream;Ljava/io/DataOutputStream;)Ljava/lang/Throwable;
    .locals 0

    .line 1
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/tika/fork/ContentHandlerResource;->internalProcess(Ljava/io/DataInputStream;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    return-object p1

    .line 6
    :catch_0
    move-exception p1

    .line 7
    return-object p1
.end method
