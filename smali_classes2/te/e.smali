.class public abstract Lte/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Laf/g;

.field private static final b:Laf/g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Laf/g;->d:Laf/g$a;

    .line 2
    .line 3
    const-string v1, "\"\\"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Laf/g$a;->c(Ljava/lang/String;)Laf/g;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sput-object v1, Lte/e;->a:Laf/g;

    .line 10
    .line 11
    const-string v1, "\t ,="

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Laf/g$a;->c(Ljava/lang/String;)Laf/g;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lte/e;->b:Laf/g;

    .line 18
    .line 19
    return-void
.end method

.method public static final a(Lne/s;Ljava/lang/String;)Ljava/util/List;
    .locals 7

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "headerName"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lne/s;->size()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/4 v2, 0x0

    .line 21
    :goto_0
    if-ge v2, v1, :cond_1

    .line 22
    .line 23
    add-int/lit8 v3, v2, 0x1

    .line 24
    .line 25
    invoke-virtual {p0, v2}, Lne/s;->i(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    const/4 v5, 0x1

    .line 30
    invoke-static {p1, v4, v5}, Lrd/n;->x(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-eqz v4, :cond_0

    .line 35
    .line 36
    new-instance v4, Laf/d;

    .line 37
    .line 38
    invoke-direct {v4}, Laf/d;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v2}, Lne/s;->m(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v4, v2}, Laf/d;->d1(Ljava/lang/String;)Laf/d;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    :try_start_0
    invoke-static {v2, v0}, Lte/e;->c(Laf/d;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :catch_0
    move-exception v2

    .line 54
    sget-object v4, Lwe/j;->a:Lwe/j$a;

    .line 55
    .line 56
    invoke-virtual {v4}, Lwe/j$a;->g()Lwe/j;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    const-string v5, "Unable to parse challenge"

    .line 61
    .line 62
    const/4 v6, 0x5

    .line 63
    invoke-virtual {v4, v5, v6, v2}, Lwe/j;->j(Ljava/lang/String;ILjava/lang/Throwable;)V

    .line 64
    .line 65
    .line 66
    :cond_0
    :goto_1
    move v2, v3

    .line 67
    goto :goto_0

    .line 68
    :cond_1
    return-object v0
.end method

.method public static final b(Lne/a0;)Z
    .locals 8

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lne/a0;->H()Lne/y;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lne/y;->g()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "HEAD"

    .line 15
    .line 16
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    return v1

    .line 24
    :cond_0
    invoke-virtual {p0}, Lne/a0;->f()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/16 v2, 0x64

    .line 29
    .line 30
    const/4 v3, 0x1

    .line 31
    if-lt v0, v2, :cond_1

    .line 32
    .line 33
    const/16 v2, 0xc8

    .line 34
    .line 35
    if-lt v0, v2, :cond_2

    .line 36
    .line 37
    :cond_1
    const/16 v2, 0xcc

    .line 38
    .line 39
    if-eq v0, v2, :cond_2

    .line 40
    .line 41
    const/16 v2, 0x130

    .line 42
    .line 43
    if-eq v0, v2, :cond_2

    .line 44
    .line 45
    return v3

    .line 46
    :cond_2
    invoke-static {p0}, Loe/d;->u(Lne/a0;)J

    .line 47
    .line 48
    .line 49
    move-result-wide v4

    .line 50
    const-wide/16 v6, -0x1

    .line 51
    .line 52
    cmp-long v0, v4, v6

    .line 53
    .line 54
    if-nez v0, :cond_4

    .line 55
    .line 56
    const-string v0, "Transfer-Encoding"

    .line 57
    .line 58
    const/4 v2, 0x2

    .line 59
    const/4 v4, 0x0

    .line 60
    invoke-static {p0, v0, v4, v2, v4}, Lne/a0;->k(Lne/a0;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    const-string v0, "chunked"

    .line 65
    .line 66
    invoke-static {v0, p0, v3}, Lrd/n;->x(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    if-eqz p0, :cond_3

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_3
    return v1

    .line 74
    :cond_4
    :goto_0
    return v3
.end method

.method private static final c(Laf/d;Ljava/util/List;)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    move-object v1, v0

    .line 3
    :goto_1
    if-nez v1, :cond_0

    .line 4
    .line 5
    invoke-static {p0}, Lte/e;->g(Laf/d;)Z

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Lte/e;->e(Laf/d;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-static {p0}, Lte/e;->g(Laf/d;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-static {p0}, Lte/e;->e(Laf/d;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    if-nez v3, :cond_2

    .line 24
    .line 25
    invoke-virtual {p0}, Laf/d;->N()Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-nez p0, :cond_1

    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    new-instance p0, Lne/g;

    .line 33
    .line 34
    invoke-static {}, Lyc/e0;->e()Ljava/util/Map;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-direct {p0, v1, v0}, Lne/g;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 39
    .line 40
    .line 41
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_2
    const/16 v4, 0x3d

    .line 46
    .line 47
    invoke-static {p0, v4}, Loe/d;->J(Laf/d;B)I

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    invoke-static {p0}, Lte/e;->g(Laf/d;)Z

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    if-nez v2, :cond_4

    .line 56
    .line 57
    if-nez v6, :cond_3

    .line 58
    .line 59
    invoke-virtual {p0}, Laf/d;->N()Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-eqz v2, :cond_4

    .line 64
    .line 65
    :cond_3
    new-instance v2, Lne/g;

    .line 66
    .line 67
    const-string v4, "="

    .line 68
    .line 69
    invoke-static {v4, v5}, Lrd/n;->z(Ljava/lang/CharSequence;I)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-static {v3, v4}, Lkotlin/jvm/internal/m;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-static {v0, v3}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    const-string v4, "singletonMap<String, Str\u2026ek + \"=\".repeat(eqCount))"

    .line 82
    .line 83
    invoke-static {v3, v4}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-direct {v2, v1, v3}, Lne/g;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 87
    .line 88
    .line 89
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_4
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 94
    .line 95
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 96
    .line 97
    .line 98
    invoke-static {p0, v4}, Loe/d;->J(Laf/d;B)I

    .line 99
    .line 100
    .line 101
    move-result v6

    .line 102
    add-int/2addr v5, v6

    .line 103
    :goto_2
    if-nez v3, :cond_6

    .line 104
    .line 105
    invoke-static {p0}, Lte/e;->e(Laf/d;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    invoke-static {p0}, Lte/e;->g(Laf/d;)Z

    .line 110
    .line 111
    .line 112
    move-result v5

    .line 113
    if-eqz v5, :cond_5

    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_5
    invoke-static {p0, v4}, Loe/d;->J(Laf/d;B)I

    .line 117
    .line 118
    .line 119
    move-result v5

    .line 120
    :cond_6
    if-nez v5, :cond_7

    .line 121
    .line 122
    :goto_3
    new-instance v4, Lne/g;

    .line 123
    .line 124
    invoke-direct {v4, v1, v2}, Lne/g;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 125
    .line 126
    .line 127
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-object v1, v3

    .line 131
    goto/16 :goto_1

    .line 132
    .line 133
    :cond_7
    const/4 v6, 0x1

    .line 134
    if-le v5, v6, :cond_8

    .line 135
    .line 136
    return-void

    .line 137
    :cond_8
    invoke-static {p0}, Lte/e;->g(Laf/d;)Z

    .line 138
    .line 139
    .line 140
    move-result v6

    .line 141
    if-eqz v6, :cond_9

    .line 142
    .line 143
    return-void

    .line 144
    :cond_9
    const/16 v6, 0x22

    .line 145
    .line 146
    invoke-static {p0, v6}, Lte/e;->h(Laf/d;B)Z

    .line 147
    .line 148
    .line 149
    move-result v6

    .line 150
    if-eqz v6, :cond_a

    .line 151
    .line 152
    invoke-static {p0}, Lte/e;->d(Laf/d;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v6

    .line 156
    goto :goto_4

    .line 157
    :cond_a
    invoke-static {p0}, Lte/e;->e(Laf/d;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v6

    .line 161
    :goto_4
    if-nez v6, :cond_b

    .line 162
    .line 163
    return-void

    .line 164
    :cond_b
    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    check-cast v3, Ljava/lang/String;

    .line 169
    .line 170
    if-eqz v3, :cond_c

    .line 171
    .line 172
    return-void

    .line 173
    :cond_c
    invoke-static {p0}, Lte/e;->g(Laf/d;)Z

    .line 174
    .line 175
    .line 176
    move-result v3

    .line 177
    if-nez v3, :cond_d

    .line 178
    .line 179
    invoke-virtual {p0}, Laf/d;->N()Z

    .line 180
    .line 181
    .line 182
    move-result v3

    .line 183
    if-nez v3, :cond_d

    .line 184
    .line 185
    return-void

    .line 186
    :cond_d
    move-object v3, v0

    .line 187
    goto :goto_2
.end method

.method private static final d(Laf/d;)Ljava/lang/String;
    .locals 12

    .line 1
    invoke-virtual {p0}, Laf/d;->readByte()B

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x22

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    if-eqz v0, :cond_4

    .line 13
    .line 14
    new-instance v0, Laf/d;

    .line 15
    .line 16
    invoke-direct {v0}, Laf/d;-><init>()V

    .line 17
    .line 18
    .line 19
    :goto_1
    sget-object v2, Lte/e;->a:Laf/g;

    .line 20
    .line 21
    invoke-virtual {p0, v2}, Laf/d;->u(Laf/g;)J

    .line 22
    .line 23
    .line 24
    move-result-wide v2

    .line 25
    const-wide/16 v4, -0x1

    .line 26
    .line 27
    cmp-long v4, v2, v4

    .line 28
    .line 29
    const/4 v5, 0x0

    .line 30
    if-nez v4, :cond_1

    .line 31
    .line 32
    return-object v5

    .line 33
    :cond_1
    invoke-virtual {p0, v2, v3}, Laf/d;->k(J)B

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-ne v4, v1, :cond_2

    .line 38
    .line 39
    invoke-virtual {v0, p0, v2, v3}, Laf/d;->c0(Laf/d;J)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Laf/d;->readByte()B

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Laf/d;->X()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0

    .line 50
    :cond_2
    invoke-virtual {p0}, Laf/d;->k0()J

    .line 51
    .line 52
    .line 53
    move-result-wide v6

    .line 54
    const-wide/16 v8, 0x1

    .line 55
    .line 56
    add-long v10, v2, v8

    .line 57
    .line 58
    cmp-long v4, v6, v10

    .line 59
    .line 60
    if-nez v4, :cond_3

    .line 61
    .line 62
    return-object v5

    .line 63
    :cond_3
    invoke-virtual {v0, p0, v2, v3}, Laf/d;->c0(Laf/d;J)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Laf/d;->readByte()B

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, p0, v8, v9}, Laf/d;->c0(Laf/d;J)V

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 74
    .line 75
    const-string v0, "Failed requirement."

    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw p0
.end method

.method private static final e(Laf/d;)Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Lte/e;->b:Laf/g;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Laf/d;->u(Laf/g;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/16 v2, -0x1

    .line 8
    .line 9
    cmp-long v2, v0, v2

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Laf/d;->k0()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    :cond_0
    const-wide/16 v2, 0x0

    .line 18
    .line 19
    cmp-long v2, v0, v2

    .line 20
    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0, v0, v1}, Laf/d;->A(J)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 p0, 0x0

    .line 29
    :goto_0
    return-object p0
.end method

.method public static final f(Lne/m;Lne/t;Lne/s;)V
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "url"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "headers"

    .line 12
    .line 13
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object v0, Lne/m;->b:Lne/m;

    .line 17
    .line 18
    if-ne p0, v0, :cond_0

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    sget-object v0, Lne/l;->j:Lne/l$a;

    .line 22
    .line 23
    invoke-virtual {v0, p1, p2}, Lne/l$a;->e(Lne/t;Lne/s;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    invoke-interface {p0, p1, p2}, Lne/m;->a(Lne/t;Ljava/util/List;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method private static final g(Laf/d;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    invoke-virtual {p0}, Laf/d;->N()Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-nez v2, :cond_3

    .line 8
    .line 9
    const-wide/16 v2, 0x0

    .line 10
    .line 11
    invoke-virtual {p0, v2, v3}, Laf/d;->k(J)B

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/16 v3, 0x2c

    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    if-ne v2, v3, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Laf/d;->readByte()B

    .line 21
    .line 22
    .line 23
    move v1, v4

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/16 v3, 0x20

    .line 26
    .line 27
    if-ne v2, v3, :cond_1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    const/16 v3, 0x9

    .line 31
    .line 32
    if-ne v2, v3, :cond_2

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_2
    move v4, v0

    .line 36
    :goto_1
    if-eqz v4, :cond_3

    .line 37
    .line 38
    invoke-virtual {p0}, Laf/d;->readByte()B

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_3
    return v1
.end method

.method private static final h(Laf/d;B)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Laf/d;->N()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    invoke-virtual {p0, v0, v1}, Laf/d;->k(J)B

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-ne p0, p1, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    :goto_0
    return p0
.end method
