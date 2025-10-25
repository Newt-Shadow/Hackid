.class public final Lte/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lne/u;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lte/j$a;
    }
.end annotation


# static fields
.field public static final b:Lte/j$a;


# instance fields
.field private final a:Lne/w;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lte/j$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lte/j$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lte/j;->b:Lte/j$a;

    return-void
.end method

.method public constructor <init>(Lne/w;)V
    .locals 1

    .line 1
    const-string v0, "client"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lte/j;->a:Lne/w;

    .line 10
    .line 11
    return-void
.end method

.method private final b(Lne/a0;Ljava/lang/String;)Lne/y;
    .locals 8

    .line 1
    iget-object v0, p0, Lte/j;->a:Lne/w;

    .line 2
    .line 3
    invoke-virtual {v0}, Lne/w;->p()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-object v1

    .line 11
    :cond_0
    const-string v0, "Location"

    .line 12
    .line 13
    const/4 v2, 0x2

    .line 14
    invoke-static {p1, v0, v1, v2, v1}, Lne/a0;->k(Lne/a0;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    return-object v1

    .line 21
    :cond_1
    invoke-virtual {p1}, Lne/a0;->H()Lne/y;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v2}, Lne/y;->i()Lne/t;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v2, v0}, Lne/t;->o(Ljava/lang/String;)Lne/t;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-nez v0, :cond_2

    .line 34
    .line 35
    return-object v1

    .line 36
    :cond_2
    invoke-virtual {v0}, Lne/t;->p()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {p1}, Lne/a0;->H()Lne/y;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v3}, Lne/y;->i()Lne/t;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {v3}, Lne/t;->p()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-static {v2, v3}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-nez v2, :cond_3

    .line 57
    .line 58
    iget-object v2, p0, Lte/j;->a:Lne/w;

    .line 59
    .line 60
    invoke-virtual {v2}, Lne/w;->q()Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-nez v2, :cond_3

    .line 65
    .line 66
    return-object v1

    .line 67
    :cond_3
    invoke-virtual {p1}, Lne/a0;->H()Lne/y;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v2}, Lne/y;->h()Lne/y$a;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-static {p2}, Lte/f;->a(Ljava/lang/String;)Z

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    if-eqz v3, :cond_8

    .line 80
    .line 81
    invoke-virtual {p1}, Lne/a0;->f()I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    sget-object v4, Lte/f;->a:Lte/f;

    .line 86
    .line 87
    invoke-virtual {v4, p2}, Lte/f;->c(Ljava/lang/String;)Z

    .line 88
    .line 89
    .line 90
    move-result v5

    .line 91
    const/16 v6, 0x133

    .line 92
    .line 93
    const/16 v7, 0x134

    .line 94
    .line 95
    if-nez v5, :cond_5

    .line 96
    .line 97
    if-eq v3, v7, :cond_5

    .line 98
    .line 99
    if-ne v3, v6, :cond_4

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_4
    const/4 v5, 0x0

    .line 103
    goto :goto_1

    .line 104
    :cond_5
    :goto_0
    const/4 v5, 0x1

    .line 105
    :goto_1
    invoke-virtual {v4, p2}, Lte/f;->b(Ljava/lang/String;)Z

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    if-eqz v4, :cond_6

    .line 110
    .line 111
    if-eq v3, v7, :cond_6

    .line 112
    .line 113
    if-eq v3, v6, :cond_6

    .line 114
    .line 115
    const-string p2, "GET"

    .line 116
    .line 117
    invoke-virtual {v2, p2, v1}, Lne/y$a;->f(Ljava/lang/String;Lne/z;)Lne/y$a;

    .line 118
    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_6
    if-eqz v5, :cond_7

    .line 122
    .line 123
    invoke-virtual {p1}, Lne/a0;->H()Lne/y;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-virtual {v1}, Lne/y;->a()Lne/z;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    :cond_7
    invoke-virtual {v2, p2, v1}, Lne/y$a;->f(Ljava/lang/String;Lne/z;)Lne/y$a;

    .line 132
    .line 133
    .line 134
    :goto_2
    if-nez v5, :cond_8

    .line 135
    .line 136
    const-string p2, "Transfer-Encoding"

    .line 137
    .line 138
    invoke-virtual {v2, p2}, Lne/y$a;->h(Ljava/lang/String;)Lne/y$a;

    .line 139
    .line 140
    .line 141
    const-string p2, "Content-Length"

    .line 142
    .line 143
    invoke-virtual {v2, p2}, Lne/y$a;->h(Ljava/lang/String;)Lne/y$a;

    .line 144
    .line 145
    .line 146
    const-string p2, "Content-Type"

    .line 147
    .line 148
    invoke-virtual {v2, p2}, Lne/y$a;->h(Ljava/lang/String;)Lne/y$a;

    .line 149
    .line 150
    .line 151
    :cond_8
    invoke-virtual {p1}, Lne/a0;->H()Lne/y;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-virtual {p1}, Lne/y;->i()Lne/t;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-static {p1, v0}, Loe/d;->j(Lne/t;Lne/t;)Z

    .line 160
    .line 161
    .line 162
    move-result p1

    .line 163
    if-nez p1, :cond_9

    .line 164
    .line 165
    const-string p1, "Authorization"

    .line 166
    .line 167
    invoke-virtual {v2, p1}, Lne/y$a;->h(Ljava/lang/String;)Lne/y$a;

    .line 168
    .line 169
    .line 170
    :cond_9
    invoke-virtual {v2, v0}, Lne/y$a;->n(Lne/t;)Lne/y$a;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    invoke-virtual {p1}, Lne/y$a;->a()Lne/y;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    return-object p1
.end method

.method private final c(Lne/a0;Lse/c;)Lne/y;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    :goto_0
    move-object v1, v0

    .line 5
    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {p2}, Lse/c;->h()Lse/f;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {v1}, Lse/f;->z()Lne/c0;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    :goto_1
    invoke-virtual {p1}, Lne/a0;->f()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-virtual {p1}, Lne/a0;->H()Lne/y;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v3}, Lne/y;->g()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    const/16 v4, 0x133

    .line 30
    .line 31
    if-eq v2, v4, :cond_11

    .line 32
    .line 33
    const/16 v4, 0x134

    .line 34
    .line 35
    if-eq v2, v4, :cond_11

    .line 36
    .line 37
    const/16 v4, 0x191

    .line 38
    .line 39
    if-eq v2, v4, :cond_10

    .line 40
    .line 41
    const/16 v4, 0x1a5

    .line 42
    .line 43
    if-eq v2, v4, :cond_c

    .line 44
    .line 45
    const/16 p2, 0x1f7

    .line 46
    .line 47
    if-eq v2, p2, :cond_9

    .line 48
    .line 49
    const/16 p2, 0x197

    .line 50
    .line 51
    if-eq v2, p2, :cond_7

    .line 52
    .line 53
    const/16 p2, 0x198

    .line 54
    .line 55
    if-eq v2, p2, :cond_2

    .line 56
    .line 57
    packed-switch v2, :pswitch_data_0

    .line 58
    .line 59
    .line 60
    return-object v0

    .line 61
    :cond_2
    iget-object v1, p0, Lte/j;->a:Lne/w;

    .line 62
    .line 63
    invoke-virtual {v1}, Lne/w;->D()Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-nez v1, :cond_3

    .line 68
    .line 69
    return-object v0

    .line 70
    :cond_3
    invoke-virtual {p1}, Lne/a0;->H()Lne/y;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v1}, Lne/y;->a()Lne/z;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    if-eqz v1, :cond_4

    .line 79
    .line 80
    invoke-virtual {v1}, Lne/z;->d()Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-eqz v1, :cond_4

    .line 85
    .line 86
    return-object v0

    .line 87
    :cond_4
    invoke-virtual {p1}, Lne/a0;->x()Lne/a0;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    if-eqz v1, :cond_5

    .line 92
    .line 93
    invoke-virtual {v1}, Lne/a0;->f()I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-ne v1, p2, :cond_5

    .line 98
    .line 99
    return-object v0

    .line 100
    :cond_5
    const/4 p2, 0x0

    .line 101
    invoke-direct {p0, p1, p2}, Lte/j;->g(Lne/a0;I)I

    .line 102
    .line 103
    .line 104
    move-result p2

    .line 105
    if-lez p2, :cond_6

    .line 106
    .line 107
    return-object v0

    .line 108
    :cond_6
    invoke-virtual {p1}, Lne/a0;->H()Lne/y;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    return-object p1

    .line 113
    :cond_7
    invoke-static {v1}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1}, Lne/c0;->b()Ljava/net/Proxy;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    invoke-virtual {p2}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    sget-object v0, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    .line 125
    .line 126
    if-ne p2, v0, :cond_8

    .line 127
    .line 128
    iget-object p2, p0, Lte/j;->a:Lne/w;

    .line 129
    .line 130
    invoke-virtual {p2}, Lne/w;->A()Lne/b;

    .line 131
    .line 132
    .line 133
    move-result-object p2

    .line 134
    invoke-interface {p2, v1, p1}, Lne/b;->a(Lne/c0;Lne/a0;)Lne/y;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    return-object p1

    .line 139
    :cond_8
    new-instance p1, Ljava/net/ProtocolException;

    .line 140
    .line 141
    const-string p2, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    .line 142
    .line 143
    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    throw p1

    .line 147
    :cond_9
    invoke-virtual {p1}, Lne/a0;->x()Lne/a0;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    if-eqz v1, :cond_a

    .line 152
    .line 153
    invoke-virtual {v1}, Lne/a0;->f()I

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    if-ne v1, p2, :cond_a

    .line 158
    .line 159
    return-object v0

    .line 160
    :cond_a
    const p2, 0x7fffffff

    .line 161
    .line 162
    .line 163
    invoke-direct {p0, p1, p2}, Lte/j;->g(Lne/a0;I)I

    .line 164
    .line 165
    .line 166
    move-result p2

    .line 167
    if-nez p2, :cond_b

    .line 168
    .line 169
    invoke-virtual {p1}, Lne/a0;->H()Lne/y;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    return-object p1

    .line 174
    :cond_b
    return-object v0

    .line 175
    :cond_c
    invoke-virtual {p1}, Lne/a0;->H()Lne/y;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    invoke-virtual {v1}, Lne/y;->a()Lne/z;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    if-eqz v1, :cond_d

    .line 184
    .line 185
    invoke-virtual {v1}, Lne/z;->d()Z

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    if-eqz v1, :cond_d

    .line 190
    .line 191
    return-object v0

    .line 192
    :cond_d
    if-eqz p2, :cond_f

    .line 193
    .line 194
    invoke-virtual {p2}, Lse/c;->l()Z

    .line 195
    .line 196
    .line 197
    move-result v1

    .line 198
    if-nez v1, :cond_e

    .line 199
    .line 200
    goto :goto_2

    .line 201
    :cond_e
    invoke-virtual {p2}, Lse/c;->h()Lse/f;

    .line 202
    .line 203
    .line 204
    move-result-object p2

    .line 205
    invoke-virtual {p2}, Lse/f;->x()V

    .line 206
    .line 207
    .line 208
    invoke-virtual {p1}, Lne/a0;->H()Lne/y;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    return-object p1

    .line 213
    :cond_f
    :goto_2
    return-object v0

    .line 214
    :cond_10
    iget-object p2, p0, Lte/j;->a:Lne/w;

    .line 215
    .line 216
    invoke-virtual {p2}, Lne/w;->c()Lne/b;

    .line 217
    .line 218
    .line 219
    move-result-object p2

    .line 220
    invoke-interface {p2, v1, p1}, Lne/b;->a(Lne/c0;Lne/a0;)Lne/y;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    return-object p1

    .line 225
    :cond_11
    :pswitch_0
    invoke-direct {p0, p1, v3}, Lte/j;->b(Lne/a0;Ljava/lang/String;)Lne/y;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    return-object p1

    .line 230
    nop

    .line 231
    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private final d(Ljava/io/IOException;Z)Z
    .locals 3

    .line 1
    instance-of v0, p1, Ljava/net/ProtocolException;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    instance-of v0, p1, Ljava/io/InterruptedIOException;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    instance-of p1, p1, Ljava/net/SocketTimeoutException;

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    if-nez p2, :cond_1

    .line 17
    .line 18
    move v1, v2

    .line 19
    :cond_1
    return v1

    .line 20
    :cond_2
    instance-of p2, p1, Ljavax/net/ssl/SSLHandshakeException;

    .line 21
    .line 22
    if-eqz p2, :cond_3

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    instance-of p2, p2, Ljava/security/cert/CertificateException;

    .line 29
    .line 30
    if-eqz p2, :cond_3

    .line 31
    .line 32
    return v1

    .line 33
    :cond_3
    instance-of p1, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    .line 34
    .line 35
    if-eqz p1, :cond_4

    .line 36
    .line 37
    return v1

    .line 38
    :cond_4
    return v2
.end method

.method private final e(Ljava/io/IOException;Lse/e;Lne/y;Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lte/j;->a:Lne/w;

    .line 2
    .line 3
    invoke-virtual {v0}, Lne/w;->D()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    if-eqz p4, :cond_1

    .line 12
    .line 13
    invoke-direct {p0, p1, p3}, Lte/j;->f(Ljava/io/IOException;Lne/y;)Z

    .line 14
    .line 15
    .line 16
    move-result p3

    .line 17
    if-eqz p3, :cond_1

    .line 18
    .line 19
    return v1

    .line 20
    :cond_1
    invoke-direct {p0, p1, p4}, Lte/j;->d(Ljava/io/IOException;Z)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-nez p1, :cond_2

    .line 25
    .line 26
    return v1

    .line 27
    :cond_2
    invoke-virtual {p2}, Lse/e;->v()Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-nez p1, :cond_3

    .line 32
    .line 33
    return v1

    .line 34
    :cond_3
    const/4 p1, 0x1

    .line 35
    return p1
.end method

.method private final f(Ljava/io/IOException;Lne/y;)Z
    .locals 0

    .line 1
    invoke-virtual {p2}, Lne/y;->a()Lne/z;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    invoke-virtual {p2}, Lne/z;->d()Z

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    if-nez p2, :cond_1

    .line 12
    .line 13
    :cond_0
    instance-of p1, p1, Ljava/io/FileNotFoundException;

    .line 14
    .line 15
    if-eqz p1, :cond_2

    .line 16
    .line 17
    :cond_1
    const/4 p1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_2
    const/4 p1, 0x0

    .line 20
    :goto_0
    return p1
.end method

.method private final g(Lne/a0;I)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x2

    .line 3
    const-string v2, "Retry-After"

    .line 4
    .line 5
    invoke-static {p1, v2, v0, v1, v0}, Lne/a0;->k(Lne/a0;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    return p2

    .line 12
    :cond_0
    new-instance p2, Lrd/l;

    .line 13
    .line 14
    const-string v0, "\\d+"

    .line 15
    .line 16
    invoke-direct {p2, v0}, Lrd/l;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, p1}, Lrd/l;->d(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    if-eqz p2, :cond_1

    .line 24
    .line 25
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const-string p2, "valueOf(header)"

    .line 30
    .line 31
    invoke-static {p1, p2}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    return p1

    .line 39
    :cond_1
    const p1, 0x7fffffff

    .line 40
    .line 41
    .line 42
    return p1
.end method


# virtual methods
.method public a(Lne/u$a;)Lne/a0;
    .locals 10

    .line 1
    const-string v0, "chain"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    check-cast p1, Lte/g;

    .line 7
    .line 8
    invoke-virtual {p1}, Lte/g;->i()Lne/y;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p1}, Lte/g;->e()Lse/e;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-static {}, Lyc/m;->h()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const/4 v3, 0x0

    .line 21
    const/4 v4, 0x0

    .line 22
    const/4 v5, 0x1

    .line 23
    move v8, v3

    .line 24
    move-object v7, v4

    .line 25
    :goto_0
    move v6, v5

    .line 26
    :goto_1
    invoke-virtual {v1, v0, v6}, Lse/e;->i(Lne/y;Z)V

    .line 27
    .line 28
    .line 29
    :try_start_0
    invoke-virtual {v1}, Lse/e;->q()Z

    .line 30
    .line 31
    .line 32
    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    if-nez v6, :cond_9

    .line 34
    .line 35
    :try_start_1
    invoke-virtual {p1, v0}, Lte/g;->a(Lne/y;)Lne/a0;

    .line 36
    .line 37
    .line 38
    move-result-object v0
    :try_end_1
    .catch Lse/i; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    if-eqz v7, :cond_0

    .line 40
    .line 41
    :try_start_2
    invoke-virtual {v0}, Lne/a0;->w()Lne/a0$a;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v7}, Lne/a0;->w()Lne/a0$a;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    invoke-virtual {v6, v4}, Lne/a0$a;->b(Lne/b0;)Lne/a0$a;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    invoke-virtual {v6}, Lne/a0$a;->c()Lne/a0;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    invoke-virtual {v0, v6}, Lne/a0$a;->p(Lne/a0;)Lne/a0$a;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lne/a0$a;->c()Lne/a0;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    :cond_0
    move-object v7, v0

    .line 66
    invoke-virtual {v1}, Lse/e;->n()Lse/c;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-direct {p0, v7, v0}, Lte/j;->c(Lne/a0;Lse/c;)Lne/y;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    if-nez v6, :cond_2

    .line 75
    .line 76
    if-eqz v0, :cond_1

    .line 77
    .line 78
    invoke-virtual {v0}, Lse/c;->m()Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-eqz p1, :cond_1

    .line 83
    .line 84
    invoke-virtual {v1}, Lse/e;->x()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 85
    .line 86
    .line 87
    :cond_1
    invoke-virtual {v1, v3}, Lse/e;->j(Z)V

    .line 88
    .line 89
    .line 90
    return-object v7

    .line 91
    :cond_2
    :try_start_3
    invoke-virtual {v6}, Lne/y;->a()Lne/z;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    if-eqz v0, :cond_3

    .line 96
    .line 97
    invoke-virtual {v0}, Lne/z;->d()Z

    .line 98
    .line 99
    .line 100
    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 101
    if-eqz v0, :cond_3

    .line 102
    .line 103
    invoke-virtual {v1, v3}, Lse/e;->j(Z)V

    .line 104
    .line 105
    .line 106
    return-object v7

    .line 107
    :cond_3
    :try_start_4
    invoke-virtual {v7}, Lne/a0;->a()Lne/b0;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    if-nez v0, :cond_4

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_4
    invoke-static {v0}, Loe/d;->l(Ljava/io/Closeable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 115
    .line 116
    .line 117
    :goto_2
    add-int/lit8 v8, v8, 0x1

    .line 118
    .line 119
    const/16 v0, 0x14

    .line 120
    .line 121
    if-gt v8, v0, :cond_5

    .line 122
    .line 123
    invoke-virtual {v1, v5}, Lse/e;->j(Z)V

    .line 124
    .line 125
    .line 126
    move-object v0, v6

    .line 127
    goto :goto_0

    .line 128
    :cond_5
    :try_start_5
    new-instance p1, Ljava/net/ProtocolException;

    .line 129
    .line 130
    const-string v0, "Too many follow-up requests: "

    .line 131
    .line 132
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    invoke-static {v0, v2}, Lkotlin/jvm/internal/m;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    throw p1

    .line 144
    :catch_0
    move-exception v6

    .line 145
    instance-of v9, v6, Lve/a;

    .line 146
    .line 147
    if-nez v9, :cond_6

    .line 148
    .line 149
    move v9, v5

    .line 150
    goto :goto_3

    .line 151
    :cond_6
    move v9, v3

    .line 152
    :goto_3
    invoke-direct {p0, v6, v1, v0, v9}, Lte/j;->e(Ljava/io/IOException;Lse/e;Lne/y;Z)Z

    .line 153
    .line 154
    .line 155
    move-result v9

    .line 156
    if-eqz v9, :cond_7

    .line 157
    .line 158
    check-cast v2, Ljava/util/Collection;

    .line 159
    .line 160
    invoke-static {v2, v6}, Lyc/m;->d0(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    goto :goto_4

    .line 165
    :cond_7
    invoke-static {v6, v2}, Loe/d;->X(Ljava/lang/Exception;Ljava/util/List;)Ljava/lang/Throwable;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    throw p1

    .line 170
    :catch_1
    move-exception v6

    .line 171
    invoke-virtual {v6}, Lse/i;->c()Ljava/io/IOException;

    .line 172
    .line 173
    .line 174
    move-result-object v9

    .line 175
    invoke-direct {p0, v9, v1, v0, v3}, Lte/j;->e(Ljava/io/IOException;Lse/e;Lne/y;Z)Z

    .line 176
    .line 177
    .line 178
    move-result v9

    .line 179
    if-eqz v9, :cond_8

    .line 180
    .line 181
    check-cast v2, Ljava/util/Collection;

    .line 182
    .line 183
    invoke-virtual {v6}, Lse/i;->b()Ljava/io/IOException;

    .line 184
    .line 185
    .line 186
    move-result-object v6

    .line 187
    invoke-static {v2, v6}, Lyc/m;->d0(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    .line 188
    .line 189
    .line 190
    move-result-object v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 191
    :goto_4
    invoke-virtual {v1, v5}, Lse/e;->j(Z)V

    .line 192
    .line 193
    .line 194
    move v6, v3

    .line 195
    goto/16 :goto_1

    .line 196
    .line 197
    :cond_8
    :try_start_6
    invoke-virtual {v6}, Lse/i;->b()Ljava/io/IOException;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    invoke-static {p1, v2}, Loe/d;->X(Ljava/lang/Exception;Ljava/util/List;)Ljava/lang/Throwable;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    throw p1

    .line 206
    :cond_9
    new-instance p1, Ljava/io/IOException;

    .line 207
    .line 208
    const-string v0, "Canceled"

    .line 209
    .line 210
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 214
    :catchall_0
    move-exception p1

    .line 215
    invoke-virtual {v1, v5}, Lse/e;->j(Z)V

    .line 216
    .line 217
    .line 218
    throw p1
.end method
