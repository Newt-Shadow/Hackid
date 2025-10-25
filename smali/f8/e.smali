.class final Lf8/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld8/e;
.implements Ld8/g;


# instance fields
.field private a:Lf8/e;

.field private b:Z

.field private final c:Landroid/util/JsonWriter;

.field private final d:Ljava/util/Map;

.field private final e:Ljava/util/Map;

.field private final f:Ld8/d;

.field private final g:Z


# direct methods
.method constructor <init>(Ljava/io/Writer;Ljava/util/Map;Ljava/util/Map;Ld8/d;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lf8/e;->a:Lf8/e;

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lf8/e;->b:Z

    .line 9
    .line 10
    new-instance v0, Landroid/util/JsonWriter;

    .line 11
    .line 12
    invoke-direct {v0, p1}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lf8/e;->c:Landroid/util/JsonWriter;

    .line 16
    .line 17
    iput-object p2, p0, Lf8/e;->d:Ljava/util/Map;

    .line 18
    .line 19
    iput-object p3, p0, Lf8/e;->e:Ljava/util/Map;

    .line 20
    .line 21
    iput-object p4, p0, Lf8/e;->f:Ld8/d;

    .line 22
    .line 23
    iput-boolean p5, p0, Lf8/e;->g:Z

    .line 24
    .line 25
    return-void
.end method

.method private t(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    instance-of v0, p1, Ljava/util/Collection;

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    instance-of v0, p1, Ljava/util/Date;

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    instance-of v0, p1, Ljava/lang/Enum;

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    instance-of p1, p1, Ljava/lang/Number;

    .line 26
    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 p1, 0x0

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 33
    :goto_1
    return p1
.end method

.method private w(Ljava/lang/String;Ljava/lang/Object;)Lf8/e;
    .locals 1

    .line 1
    invoke-direct {p0}, Lf8/e;->y()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lf8/e;->c:Landroid/util/JsonWriter;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 7
    .line 8
    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lf8/e;->c:Landroid/util/JsonWriter;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/util/JsonWriter;->nullValue()Landroid/util/JsonWriter;

    .line 14
    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    invoke-virtual {p0, p2, p1}, Lf8/e;->k(Ljava/lang/Object;Z)Lf8/e;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method

.method private x(Ljava/lang/String;Ljava/lang/Object;)Lf8/e;
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-object p0

    .line 4
    :cond_0
    invoke-direct {p0}, Lf8/e;->y()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lf8/e;->c:Landroid/util/JsonWriter;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    invoke-virtual {p0, p2, p1}, Lf8/e;->k(Ljava/lang/Object;Z)Lf8/e;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method private y()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lf8/e;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lf8/e;->a:Lf8/e;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-direct {v0}, Lf8/e;->y()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lf8/e;->a:Lf8/e;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    iput-boolean v1, v0, Lf8/e;->b:Z

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lf8/e;->a:Lf8/e;

    .line 19
    .line 20
    iget-object v0, p0, Lf8/e;->c:Landroid/util/JsonWriter;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void

    .line 26
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 27
    .line 28
    const-string v1, "Parent context used since this context was created. Cannot use this context anymore."

    .line 29
    .line 30
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw v0
.end method


# virtual methods
.method public a(Ld8/c;Z)Ld8/e;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ld8/c;->b()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1, p2}, Lf8/e;->q(Ljava/lang/String;Z)Lf8/e;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public b(Ld8/c;J)Ld8/e;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ld8/c;->b()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lf8/e;->o(Ljava/lang/String;J)Lf8/e;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public c(Ld8/c;Ljava/lang/Object;)Ld8/e;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ld8/c;->b()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1, p2}, Lf8/e;->p(Ljava/lang/String;Ljava/lang/Object;)Lf8/e;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public bridge synthetic d(Ljava/lang/String;)Ld8/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lf8/e;->l(Ljava/lang/String;)Lf8/e;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic e(Z)Ld8/g;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lf8/e;->r(Z)Lf8/e;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public f(Ld8/c;I)Ld8/e;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ld8/c;->b()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1, p2}, Lf8/e;->n(Ljava/lang/String;I)Lf8/e;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public g(Ld8/c;D)Ld8/e;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ld8/c;->b()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lf8/e;->m(Ljava/lang/String;D)Lf8/e;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public h(D)Lf8/e;
    .locals 1

    .line 1
    invoke-direct {p0}, Lf8/e;->y()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lf8/e;->c:Landroid/util/JsonWriter;

    .line 5
    .line 6
    invoke-virtual {v0, p1, p2}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public i(I)Lf8/e;
    .locals 3

    .line 1
    invoke-direct {p0}, Lf8/e;->y()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lf8/e;->c:Landroid/util/JsonWriter;

    .line 5
    .line 6
    int-to-long v1, p1

    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public j(J)Lf8/e;
    .locals 1

    .line 1
    invoke-direct {p0}, Lf8/e;->y()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lf8/e;->c:Landroid/util/JsonWriter;

    .line 5
    .line 6
    invoke-virtual {v0, p1, p2}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method k(Ljava/lang/Object;Z)Lf8/e;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_1

    .line 3
    .line 4
    invoke-direct {p0, p1}, Lf8/e;->t(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    new-instance p2, Ld8/b;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    new-array v1, v1, [Ljava/lang/Object;

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    :goto_0
    aput-object p1, v1, v0

    .line 24
    .line 25
    const-string p1, "%s cannot be encoded inline"

    .line 26
    .line 27
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-direct {p2, p1}, Ld8/b;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p2

    .line 35
    :cond_1
    if-nez p1, :cond_2

    .line 36
    .line 37
    iget-object p1, p0, Lf8/e;->c:Landroid/util/JsonWriter;

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/util/JsonWriter;->nullValue()Landroid/util/JsonWriter;

    .line 40
    .line 41
    .line 42
    return-object p0

    .line 43
    :cond_2
    instance-of v1, p1, Ljava/lang/Number;

    .line 44
    .line 45
    if-eqz v1, :cond_3

    .line 46
    .line 47
    iget-object p2, p0, Lf8/e;->c:Landroid/util/JsonWriter;

    .line 48
    .line 49
    check-cast p1, Ljava/lang/Number;

    .line 50
    .line 51
    invoke-virtual {p2, p1}, Landroid/util/JsonWriter;->value(Ljava/lang/Number;)Landroid/util/JsonWriter;

    .line 52
    .line 53
    .line 54
    return-object p0

    .line 55
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_b

    .line 64
    .line 65
    instance-of p2, p1, [B

    .line 66
    .line 67
    if-eqz p2, :cond_4

    .line 68
    .line 69
    check-cast p1, [B

    .line 70
    .line 71
    invoke-virtual {p0, p1}, Lf8/e;->s([B)Lf8/e;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    return-object p1

    .line 76
    :cond_4
    iget-object p2, p0, Lf8/e;->c:Landroid/util/JsonWriter;

    .line 77
    .line 78
    invoke-virtual {p2}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 79
    .line 80
    .line 81
    instance-of p2, p1, [I

    .line 82
    .line 83
    if-eqz p2, :cond_5

    .line 84
    .line 85
    check-cast p1, [I

    .line 86
    .line 87
    array-length p2, p1

    .line 88
    :goto_1
    if-ge v0, p2, :cond_a

    .line 89
    .line 90
    aget v1, p1, v0

    .line 91
    .line 92
    iget-object v2, p0, Lf8/e;->c:Landroid/util/JsonWriter;

    .line 93
    .line 94
    int-to-long v3, v1

    .line 95
    invoke-virtual {v2, v3, v4}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 96
    .line 97
    .line 98
    add-int/lit8 v0, v0, 0x1

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_5
    instance-of p2, p1, [J

    .line 102
    .line 103
    if-eqz p2, :cond_6

    .line 104
    .line 105
    check-cast p1, [J

    .line 106
    .line 107
    array-length p2, p1

    .line 108
    :goto_2
    if-ge v0, p2, :cond_a

    .line 109
    .line 110
    aget-wide v1, p1, v0

    .line 111
    .line 112
    invoke-virtual {p0, v1, v2}, Lf8/e;->j(J)Lf8/e;

    .line 113
    .line 114
    .line 115
    add-int/lit8 v0, v0, 0x1

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_6
    instance-of p2, p1, [D

    .line 119
    .line 120
    if-eqz p2, :cond_7

    .line 121
    .line 122
    check-cast p1, [D

    .line 123
    .line 124
    array-length p2, p1

    .line 125
    :goto_3
    if-ge v0, p2, :cond_a

    .line 126
    .line 127
    aget-wide v1, p1, v0

    .line 128
    .line 129
    iget-object v3, p0, Lf8/e;->c:Landroid/util/JsonWriter;

    .line 130
    .line 131
    invoke-virtual {v3, v1, v2}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    .line 132
    .line 133
    .line 134
    add-int/lit8 v0, v0, 0x1

    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_7
    instance-of p2, p1, [Z

    .line 138
    .line 139
    if-eqz p2, :cond_8

    .line 140
    .line 141
    check-cast p1, [Z

    .line 142
    .line 143
    array-length p2, p1

    .line 144
    :goto_4
    if-ge v0, p2, :cond_a

    .line 145
    .line 146
    aget-boolean v1, p1, v0

    .line 147
    .line 148
    iget-object v2, p0, Lf8/e;->c:Landroid/util/JsonWriter;

    .line 149
    .line 150
    invoke-virtual {v2, v1}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    .line 151
    .line 152
    .line 153
    add-int/lit8 v0, v0, 0x1

    .line 154
    .line 155
    goto :goto_4

    .line 156
    :cond_8
    instance-of p2, p1, [Ljava/lang/Number;

    .line 157
    .line 158
    if-eqz p2, :cond_9

    .line 159
    .line 160
    check-cast p1, [Ljava/lang/Number;

    .line 161
    .line 162
    array-length p2, p1

    .line 163
    move v1, v0

    .line 164
    :goto_5
    if-ge v1, p2, :cond_a

    .line 165
    .line 166
    aget-object v2, p1, v1

    .line 167
    .line 168
    invoke-virtual {p0, v2, v0}, Lf8/e;->k(Ljava/lang/Object;Z)Lf8/e;

    .line 169
    .line 170
    .line 171
    add-int/lit8 v1, v1, 0x1

    .line 172
    .line 173
    goto :goto_5

    .line 174
    :cond_9
    check-cast p1, [Ljava/lang/Object;

    .line 175
    .line 176
    array-length p2, p1

    .line 177
    move v1, v0

    .line 178
    :goto_6
    if-ge v1, p2, :cond_a

    .line 179
    .line 180
    aget-object v2, p1, v1

    .line 181
    .line 182
    invoke-virtual {p0, v2, v0}, Lf8/e;->k(Ljava/lang/Object;Z)Lf8/e;

    .line 183
    .line 184
    .line 185
    add-int/lit8 v1, v1, 0x1

    .line 186
    .line 187
    goto :goto_6

    .line 188
    :cond_a
    iget-object p1, p0, Lf8/e;->c:Landroid/util/JsonWriter;

    .line 189
    .line 190
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    .line 191
    .line 192
    .line 193
    return-object p0

    .line 194
    :cond_b
    instance-of v1, p1, Ljava/util/Collection;

    .line 195
    .line 196
    if-eqz v1, :cond_d

    .line 197
    .line 198
    check-cast p1, Ljava/util/Collection;

    .line 199
    .line 200
    iget-object p2, p0, Lf8/e;->c:Landroid/util/JsonWriter;

    .line 201
    .line 202
    invoke-virtual {p2}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 203
    .line 204
    .line 205
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 210
    .line 211
    .line 212
    move-result p2

    .line 213
    if-eqz p2, :cond_c

    .line 214
    .line 215
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object p2

    .line 219
    invoke-virtual {p0, p2, v0}, Lf8/e;->k(Ljava/lang/Object;Z)Lf8/e;

    .line 220
    .line 221
    .line 222
    goto :goto_7

    .line 223
    :cond_c
    iget-object p1, p0, Lf8/e;->c:Landroid/util/JsonWriter;

    .line 224
    .line 225
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    .line 226
    .line 227
    .line 228
    return-object p0

    .line 229
    :cond_d
    instance-of v0, p1, Ljava/util/Map;

    .line 230
    .line 231
    if-eqz v0, :cond_f

    .line 232
    .line 233
    check-cast p1, Ljava/util/Map;

    .line 234
    .line 235
    iget-object p2, p0, Lf8/e;->c:Landroid/util/JsonWriter;

    .line 236
    .line 237
    invoke-virtual {p2}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 238
    .line 239
    .line 240
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 241
    .line 242
    .line 243
    move-result-object p1

    .line 244
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 245
    .line 246
    .line 247
    move-result-object p1

    .line 248
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 249
    .line 250
    .line 251
    move-result p2

    .line 252
    if-eqz p2, :cond_e

    .line 253
    .line 254
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object p2

    .line 258
    check-cast p2, Ljava/util/Map$Entry;

    .line 259
    .line 260
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    :try_start_0
    move-object v1, v0

    .line 265
    check-cast v1, Ljava/lang/String;

    .line 266
    .line 267
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object p2

    .line 271
    invoke-virtual {p0, v1, p2}, Lf8/e;->p(Ljava/lang/String;Ljava/lang/Object;)Lf8/e;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    .line 273
    .line 274
    goto :goto_8

    .line 275
    :catch_0
    move-exception p1

    .line 276
    new-instance p2, Ld8/b;

    .line 277
    .line 278
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 279
    .line 280
    .line 281
    move-result-object v1

    .line 282
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    const-string v1, "Only String keys are currently supported in maps, got %s of type %s instead."

    .line 287
    .line 288
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    invoke-direct {p2, v0, p1}, Ld8/b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 293
    .line 294
    .line 295
    throw p2

    .line 296
    :cond_e
    iget-object p1, p0, Lf8/e;->c:Landroid/util/JsonWriter;

    .line 297
    .line 298
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 299
    .line 300
    .line 301
    return-object p0

    .line 302
    :cond_f
    iget-object v0, p0, Lf8/e;->d:Ljava/util/Map;

    .line 303
    .line 304
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 305
    .line 306
    .line 307
    move-result-object v1

    .line 308
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    check-cast v0, Ld8/d;

    .line 313
    .line 314
    if-eqz v0, :cond_10

    .line 315
    .line 316
    invoke-virtual {p0, v0, p1, p2}, Lf8/e;->v(Ld8/d;Ljava/lang/Object;Z)Lf8/e;

    .line 317
    .line 318
    .line 319
    move-result-object p1

    .line 320
    return-object p1

    .line 321
    :cond_10
    iget-object v0, p0, Lf8/e;->e:Ljava/util/Map;

    .line 322
    .line 323
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 324
    .line 325
    .line 326
    move-result-object v1

    .line 327
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    check-cast v0, Ld8/f;

    .line 332
    .line 333
    if-eqz v0, :cond_11

    .line 334
    .line 335
    invoke-interface {v0, p1, p0}, Ld8/f;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 336
    .line 337
    .line 338
    return-object p0

    .line 339
    :cond_11
    instance-of v0, p1, Ljava/lang/Enum;

    .line 340
    .line 341
    if-eqz v0, :cond_13

    .line 342
    .line 343
    instance-of p2, p1, Lf8/f;

    .line 344
    .line 345
    if-eqz p2, :cond_12

    .line 346
    .line 347
    check-cast p1, Lf8/f;

    .line 348
    .line 349
    invoke-interface {p1}, Lf8/f;->c()I

    .line 350
    .line 351
    .line 352
    move-result p1

    .line 353
    invoke-virtual {p0, p1}, Lf8/e;->i(I)Lf8/e;

    .line 354
    .line 355
    .line 356
    goto :goto_9

    .line 357
    :cond_12
    check-cast p1, Ljava/lang/Enum;

    .line 358
    .line 359
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object p1

    .line 363
    invoke-virtual {p0, p1}, Lf8/e;->l(Ljava/lang/String;)Lf8/e;

    .line 364
    .line 365
    .line 366
    :goto_9
    return-object p0

    .line 367
    :cond_13
    iget-object v0, p0, Lf8/e;->f:Ld8/d;

    .line 368
    .line 369
    invoke-virtual {p0, v0, p1, p2}, Lf8/e;->v(Ld8/d;Ljava/lang/Object;Z)Lf8/e;

    .line 370
    .line 371
    .line 372
    move-result-object p1

    .line 373
    return-object p1
.end method

.method public l(Ljava/lang/String;)Lf8/e;
    .locals 1

    .line 1
    invoke-direct {p0}, Lf8/e;->y()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lf8/e;->c:Landroid/util/JsonWriter;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public m(Ljava/lang/String;D)Lf8/e;
    .locals 1

    .line 1
    invoke-direct {p0}, Lf8/e;->y()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lf8/e;->c:Landroid/util/JsonWriter;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p2, p3}, Lf8/e;->h(D)Lf8/e;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public n(Ljava/lang/String;I)Lf8/e;
    .locals 1

    .line 1
    invoke-direct {p0}, Lf8/e;->y()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lf8/e;->c:Landroid/util/JsonWriter;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p2}, Lf8/e;->i(I)Lf8/e;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public o(Ljava/lang/String;J)Lf8/e;
    .locals 1

    .line 1
    invoke-direct {p0}, Lf8/e;->y()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lf8/e;->c:Landroid/util/JsonWriter;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p2, p3}, Lf8/e;->j(J)Lf8/e;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public p(Ljava/lang/String;Ljava/lang/Object;)Lf8/e;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lf8/e;->g:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0, p1, p2}, Lf8/e;->x(Ljava/lang/String;Ljava/lang/Object;)Lf8/e;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    invoke-direct {p0, p1, p2}, Lf8/e;->w(Ljava/lang/String;Ljava/lang/Object;)Lf8/e;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public q(Ljava/lang/String;Z)Lf8/e;
    .locals 1

    .line 1
    invoke-direct {p0}, Lf8/e;->y()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lf8/e;->c:Landroid/util/JsonWriter;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p2}, Lf8/e;->r(Z)Lf8/e;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public r(Z)Lf8/e;
    .locals 1

    .line 1
    invoke-direct {p0}, Lf8/e;->y()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lf8/e;->c:Landroid/util/JsonWriter;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public s([B)Lf8/e;
    .locals 2

    .line 1
    invoke-direct {p0}, Lf8/e;->y()V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lf8/e;->c:Landroid/util/JsonWriter;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/util/JsonWriter;->nullValue()Landroid/util/JsonWriter;

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lf8/e;->c:Landroid/util/JsonWriter;

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    invoke-static {p1, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {v0, p1}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 20
    .line 21
    .line 22
    :goto_0
    return-object p0
.end method

.method u()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lf8/e;->y()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lf8/e;->c:Landroid/util/JsonWriter;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/util/JsonWriter;->flush()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method v(Ld8/d;Ljava/lang/Object;Z)Lf8/e;
    .locals 1

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lf8/e;->c:Landroid/util/JsonWriter;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-interface {p1, p2, p0}, Ld8/d;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    if-nez p3, :cond_1

    .line 12
    .line 13
    iget-object p1, p0, Lf8/e;->c:Landroid/util/JsonWriter;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 16
    .line 17
    .line 18
    :cond_1
    return-object p0
.end method
