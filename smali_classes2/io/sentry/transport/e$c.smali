.class final Lio/sentry/transport/e$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/transport/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field private final a:Lio/sentry/a4;

.field private final b:Lio/sentry/c0;

.field private final c:Lio/sentry/cache/g;

.field private final d:Lio/sentry/transport/b0;

.field final synthetic e:Lio/sentry/transport/e;


# direct methods
.method constructor <init>(Lio/sentry/transport/e;Lio/sentry/a4;Lio/sentry/c0;Lio/sentry/cache/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/transport/e$c;->e:Lio/sentry/transport/e;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lio/sentry/transport/b0;->a()Lio/sentry/transport/b0;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lio/sentry/transport/e$c;->d:Lio/sentry/transport/b0;

    .line 11
    .line 12
    const-string p1, "Envelope is required."

    .line 13
    .line 14
    invoke-static {p2, p1}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lio/sentry/a4;

    .line 19
    .line 20
    iput-object p1, p0, Lio/sentry/transport/e$c;->a:Lio/sentry/a4;

    .line 21
    .line 22
    iput-object p3, p0, Lio/sentry/transport/e$c;->b:Lio/sentry/c0;

    .line 23
    .line 24
    const-string p1, "EnvelopeCache is required."

    .line 25
    .line 26
    invoke-static {p4, p1}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Lio/sentry/cache/g;

    .line 31
    .line 32
    iput-object p1, p0, Lio/sentry/transport/e$c;->c:Lio/sentry/cache/g;

    .line 33
    .line 34
    return-void
.end method

.method public static synthetic a(Lio/sentry/transport/e$c;Lio/sentry/a4;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/sentry/transport/e$c;->n(Lio/sentry/a4;Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method

.method public static synthetic b(Lio/sentry/transport/e$c;Lio/sentry/a4;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/sentry/transport/e$c;->l(Lio/sentry/a4;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic c(Lio/sentry/transport/e$c;Lio/sentry/hints/f;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/sentry/transport/e$c;->k(Lio/sentry/hints/f;)V

    return-void
.end method

.method public static synthetic d(Lio/sentry/transport/e$c;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/sentry/transport/e$c;->p(Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method

.method public static synthetic e(Lio/sentry/hints/k;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/sentry/transport/e$c;->m(Lio/sentry/hints/k;)V

    return-void
.end method

.method public static synthetic f(Lio/sentry/hints/k;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/sentry/transport/e$c;->o(Lio/sentry/hints/k;)V

    return-void
.end method

.method public static synthetic g(Lio/sentry/transport/e$c;Lio/sentry/transport/b0;Lio/sentry/hints/p;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/sentry/transport/e$c;->q(Lio/sentry/transport/b0;Lio/sentry/hints/p;)V

    return-void
.end method

.method static synthetic h(Lio/sentry/transport/e$c;)Lio/sentry/c0;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/transport/e$c;->b:Lio/sentry/c0;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic i(Lio/sentry/transport/e$c;)Lio/sentry/a4;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/sentry/transport/e$c;->a:Lio/sentry/a4;

    .line 2
    .line 3
    return-object p0
.end method

.method private j()Lio/sentry/transport/b0;
    .locals 7

    .line 1
    iget-object v0, p0, Lio/sentry/transport/e$c;->d:Lio/sentry/transport/b0;

    .line 2
    .line 3
    iget-object v1, p0, Lio/sentry/transport/e$c;->a:Lio/sentry/a4;

    .line 4
    .line 5
    invoke-virtual {v1}, Lio/sentry/a4;->b()Lio/sentry/b4;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v1, v2}, Lio/sentry/b4;->d(Ljava/util/Date;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lio/sentry/transport/e$c;->c:Lio/sentry/cache/g;

    .line 14
    .line 15
    iget-object v2, p0, Lio/sentry/transport/e$c;->a:Lio/sentry/a4;

    .line 16
    .line 17
    iget-object v3, p0, Lio/sentry/transport/e$c;->b:Lio/sentry/c0;

    .line 18
    .line 19
    invoke-interface {v1, v2, v3}, Lio/sentry/cache/g;->W(Lio/sentry/a4;Lio/sentry/c0;)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lio/sentry/transport/e$c;->b:Lio/sentry/c0;

    .line 23
    .line 24
    new-instance v2, Lio/sentry/transport/g;

    .line 25
    .line 26
    invoke-direct {v2, p0}, Lio/sentry/transport/g;-><init>(Lio/sentry/transport/e$c;)V

    .line 27
    .line 28
    .line 29
    const-class v3, Lio/sentry/hints/f;

    .line 30
    .line 31
    invoke-static {v1, v3, v2}, Lio/sentry/util/j;->o(Lio/sentry/c0;Ljava/lang/Class;Lio/sentry/util/j$a;)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lio/sentry/transport/e$c;->e:Lio/sentry/transport/e;

    .line 35
    .line 36
    invoke-static {v1}, Lio/sentry/transport/e;->h(Lio/sentry/transport/e;)Lio/sentry/transport/r;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-interface {v1}, Lio/sentry/transport/r;->a()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    const-class v2, Lio/sentry/hints/k;

    .line 45
    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    iget-object v0, p0, Lio/sentry/transport/e$c;->e:Lio/sentry/transport/e;

    .line 49
    .line 50
    invoke-static {v0}, Lio/sentry/transport/e;->g(Lio/sentry/transport/e;)Lio/sentry/s5;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lio/sentry/s5;->getClientReportRecorder()Lio/sentry/clientreport/h;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iget-object v1, p0, Lio/sentry/transport/e$c;->a:Lio/sentry/a4;

    .line 59
    .line 60
    invoke-interface {v0, v1}, Lio/sentry/clientreport/h;->d(Lio/sentry/a4;)Lio/sentry/a4;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    :try_start_0
    iget-object v1, p0, Lio/sentry/transport/e$c;->e:Lio/sentry/transport/e;

    .line 65
    .line 66
    invoke-static {v1}, Lio/sentry/transport/e;->g(Lio/sentry/transport/e;)Lio/sentry/s5;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v1}, Lio/sentry/s5;->getDateProvider()Lio/sentry/z3;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-interface {v1}, Lio/sentry/z3;->a()Lio/sentry/y3;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v0}, Lio/sentry/a4;->b()Lio/sentry/b4;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-virtual {v1}, Lio/sentry/y3;->l()J

    .line 83
    .line 84
    .line 85
    move-result-wide v4

    .line 86
    invoke-static {v4, v5}, Lio/sentry/j;->j(J)Ljava/util/Date;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v3, v1}, Lio/sentry/b4;->d(Ljava/util/Date;)V

    .line 91
    .line 92
    .line 93
    iget-object v1, p0, Lio/sentry/transport/e$c;->e:Lio/sentry/transport/e;

    .line 94
    .line 95
    invoke-static {v1}, Lio/sentry/transport/e;->j(Lio/sentry/transport/e;)Lio/sentry/transport/o;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {v1, v0}, Lio/sentry/transport/o;->h(Lio/sentry/a4;)Lio/sentry/transport/b0;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {v1}, Lio/sentry/transport/b0;->d()Z

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    if-eqz v3, :cond_0

    .line 108
    .line 109
    iget-object v3, p0, Lio/sentry/transport/e$c;->c:Lio/sentry/cache/g;

    .line 110
    .line 111
    iget-object v4, p0, Lio/sentry/transport/e$c;->a:Lio/sentry/a4;

    .line 112
    .line 113
    invoke-interface {v3, v4}, Lio/sentry/cache/g;->z(Lio/sentry/a4;)V

    .line 114
    .line 115
    .line 116
    move-object v0, v1

    .line 117
    goto :goto_0

    .line 118
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .line 122
    .line 123
    const-string v4, "The transport failed to send the envelope with response code "

    .line 124
    .line 125
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1}, Lio/sentry/transport/b0;->c()I

    .line 129
    .line 130
    .line 131
    move-result v4

    .line 132
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    iget-object v4, p0, Lio/sentry/transport/e$c;->e:Lio/sentry/transport/e;

    .line 140
    .line 141
    invoke-static {v4}, Lio/sentry/transport/e;->g(Lio/sentry/transport/e;)Lio/sentry/s5;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    invoke-virtual {v4}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    sget-object v5, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 150
    .line 151
    const/4 v6, 0x0

    .line 152
    new-array v6, v6, [Ljava/lang/Object;

    .line 153
    .line 154
    invoke-interface {v4, v5, v3, v6}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1}, Lio/sentry/transport/b0;->c()I

    .line 158
    .line 159
    .line 160
    move-result v4

    .line 161
    const/16 v5, 0x190

    .line 162
    .line 163
    if-lt v4, v5, :cond_1

    .line 164
    .line 165
    invoke-virtual {v1}, Lio/sentry/transport/b0;->c()I

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    const/16 v4, 0x1ad

    .line 170
    .line 171
    if-eq v1, v4, :cond_1

    .line 172
    .line 173
    iget-object v1, p0, Lio/sentry/transport/e$c;->b:Lio/sentry/c0;

    .line 174
    .line 175
    new-instance v4, Lio/sentry/transport/h;

    .line 176
    .line 177
    invoke-direct {v4, p0, v0}, Lio/sentry/transport/h;-><init>(Lio/sentry/transport/e$c;Lio/sentry/a4;)V

    .line 178
    .line 179
    .line 180
    invoke-static {v1, v2, v4}, Lio/sentry/util/j;->n(Lio/sentry/c0;Ljava/lang/Class;Lio/sentry/util/j$c;)V

    .line 181
    .line 182
    .line 183
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 184
    .line 185
    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :catch_0
    move-exception v1

    .line 190
    iget-object v3, p0, Lio/sentry/transport/e$c;->b:Lio/sentry/c0;

    .line 191
    .line 192
    new-instance v4, Lio/sentry/transport/i;

    .line 193
    .line 194
    invoke-direct {v4}, Lio/sentry/transport/i;-><init>()V

    .line 195
    .line 196
    .line 197
    new-instance v5, Lio/sentry/transport/j;

    .line 198
    .line 199
    invoke-direct {v5, p0, v0}, Lio/sentry/transport/j;-><init>(Lio/sentry/transport/e$c;Lio/sentry/a4;)V

    .line 200
    .line 201
    .line 202
    invoke-static {v3, v2, v4, v5}, Lio/sentry/util/j;->p(Lio/sentry/c0;Ljava/lang/Class;Lio/sentry/util/j$a;Lio/sentry/util/j$b;)V

    .line 203
    .line 204
    .line 205
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 206
    .line 207
    const-string v2, "Sending the event failed."

    .line 208
    .line 209
    invoke-direct {v0, v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 210
    .line 211
    .line 212
    throw v0

    .line 213
    :cond_2
    iget-object v1, p0, Lio/sentry/transport/e$c;->b:Lio/sentry/c0;

    .line 214
    .line 215
    new-instance v3, Lio/sentry/transport/k;

    .line 216
    .line 217
    invoke-direct {v3}, Lio/sentry/transport/k;-><init>()V

    .line 218
    .line 219
    .line 220
    new-instance v4, Lio/sentry/transport/l;

    .line 221
    .line 222
    invoke-direct {v4, p0}, Lio/sentry/transport/l;-><init>(Lio/sentry/transport/e$c;)V

    .line 223
    .line 224
    .line 225
    invoke-static {v1, v2, v3, v4}, Lio/sentry/util/j;->p(Lio/sentry/c0;Ljava/lang/Class;Lio/sentry/util/j$a;Lio/sentry/util/j$b;)V

    .line 226
    .line 227
    .line 228
    :goto_0
    return-object v0
.end method

.method private synthetic k(Lio/sentry/hints/f;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/sentry/transport/e$c;->a:Lio/sentry/a4;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/a4;->b()Lio/sentry/b4;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lio/sentry/b4;->a()Lio/sentry/protocol/r;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {p1, v0}, Lio/sentry/hints/f;->f(Lio/sentry/protocol/r;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-interface {p1}, Lio/sentry/hints/f;->b()V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lio/sentry/transport/e$c;->e:Lio/sentry/transport/e;

    .line 22
    .line 23
    invoke-static {p1}, Lio/sentry/transport/e;->g(Lio/sentry/transport/e;)Lio/sentry/s5;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    sget-object v0, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 32
    .line 33
    const-string v2, "Disk flush envelope fired"

    .line 34
    .line 35
    new-array v1, v1, [Ljava/lang/Object;

    .line 36
    .line 37
    invoke-interface {p1, v0, v2, v1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    iget-object p1, p0, Lio/sentry/transport/e$c;->e:Lio/sentry/transport/e;

    .line 42
    .line 43
    invoke-static {p1}, Lio/sentry/transport/e;->g(Lio/sentry/transport/e;)Lio/sentry/s5;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    sget-object v0, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 52
    .line 53
    const-string v2, "Not firing envelope flush as there\'s an ongoing transaction"

    .line 54
    .line 55
    new-array v1, v1, [Ljava/lang/Object;

    .line 56
    .line 57
    invoke-interface {p1, v0, v2, v1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    :goto_0
    return-void
.end method

.method private synthetic l(Lio/sentry/a4;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lio/sentry/transport/e$c;->e:Lio/sentry/transport/e;

    .line 2
    .line 3
    invoke-static {p2}, Lio/sentry/transport/e;->g(Lio/sentry/transport/e;)Lio/sentry/s5;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {p2}, Lio/sentry/s5;->getClientReportRecorder()Lio/sentry/clientreport/h;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    sget-object v0, Lio/sentry/clientreport/f;->NETWORK_ERROR:Lio/sentry/clientreport/f;

    .line 12
    .line 13
    invoke-interface {p2, v0, p1}, Lio/sentry/clientreport/h;->b(Lio/sentry/clientreport/f;Lio/sentry/a4;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private static synthetic m(Lio/sentry/hints/k;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-interface {p0, v0}, Lio/sentry/hints/k;->d(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method private synthetic n(Lio/sentry/a4;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/transport/e$c;->e:Lio/sentry/transport/e;

    .line 2
    .line 3
    invoke-static {v0}, Lio/sentry/transport/e;->g(Lio/sentry/transport/e;)Lio/sentry/s5;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {p3, p2, v0}, Lio/sentry/util/n;->a(Ljava/lang/Class;Ljava/lang/Object;Lio/sentry/ILogger;)V

    .line 12
    .line 13
    .line 14
    iget-object p2, p0, Lio/sentry/transport/e$c;->e:Lio/sentry/transport/e;

    .line 15
    .line 16
    invoke-static {p2}, Lio/sentry/transport/e;->g(Lio/sentry/transport/e;)Lio/sentry/s5;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-virtual {p2}, Lio/sentry/s5;->getClientReportRecorder()Lio/sentry/clientreport/h;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    sget-object p3, Lio/sentry/clientreport/f;->NETWORK_ERROR:Lio/sentry/clientreport/f;

    .line 25
    .line 26
    invoke-interface {p2, p3, p1}, Lio/sentry/clientreport/h;->b(Lio/sentry/clientreport/f;Lio/sentry/a4;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method private static synthetic o(Lio/sentry/hints/k;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-interface {p0, v0}, Lio/sentry/hints/k;->d(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method private synthetic p(Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/transport/e$c;->e:Lio/sentry/transport/e;

    .line 2
    .line 3
    invoke-static {v0}, Lio/sentry/transport/e;->g(Lio/sentry/transport/e;)Lio/sentry/s5;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {p2, p1, v0}, Lio/sentry/util/n;->a(Ljava/lang/Class;Ljava/lang/Object;Lio/sentry/ILogger;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lio/sentry/transport/e$c;->e:Lio/sentry/transport/e;

    .line 15
    .line 16
    invoke-static {p1}, Lio/sentry/transport/e;->g(Lio/sentry/transport/e;)Lio/sentry/s5;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Lio/sentry/s5;->getClientReportRecorder()Lio/sentry/clientreport/h;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    sget-object p2, Lio/sentry/clientreport/f;->NETWORK_ERROR:Lio/sentry/clientreport/f;

    .line 25
    .line 26
    iget-object v0, p0, Lio/sentry/transport/e$c;->a:Lio/sentry/a4;

    .line 27
    .line 28
    invoke-interface {p1, p2, v0}, Lio/sentry/clientreport/h;->b(Lio/sentry/clientreport/f;Lio/sentry/a4;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method private synthetic q(Lio/sentry/transport/b0;Lio/sentry/hints/p;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/sentry/transport/e$c;->e:Lio/sentry/transport/e;

    .line 2
    .line 3
    invoke-static {v0}, Lio/sentry/transport/e;->g(Lio/sentry/transport/e;)Lio/sentry/s5;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 12
    .line 13
    invoke-virtual {p1}, Lio/sentry/transport/b0;->d()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const-string v3, "Marking envelope submission result: %s"

    .line 26
    .line 27
    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lio/sentry/transport/b0;->d()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    invoke-interface {p2, p1}, Lio/sentry/hints/p;->c(Z)V

    .line 35
    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    const-class v0, Lio/sentry/hints/p;

    .line 2
    .line 3
    iget-object v1, p0, Lio/sentry/transport/e$c;->e:Lio/sentry/transport/e;

    .line 4
    .line 5
    invoke-static {v1, p0}, Lio/sentry/transport/e;->f(Lio/sentry/transport/e;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lio/sentry/transport/e$c;->d:Lio/sentry/transport/b0;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x0

    .line 12
    :try_start_0
    invoke-direct {p0}, Lio/sentry/transport/e$c;->j()Lio/sentry/transport/b0;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget-object v4, p0, Lio/sentry/transport/e$c;->e:Lio/sentry/transport/e;

    .line 17
    .line 18
    invoke-static {v4}, Lio/sentry/transport/e;->g(Lio/sentry/transport/e;)Lio/sentry/s5;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    invoke-virtual {v4}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    sget-object v5, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 27
    .line 28
    const-string v6, "Envelope flushed"

    .line 29
    .line 30
    new-array v7, v2, [Ljava/lang/Object;

    .line 31
    .line 32
    invoke-interface {v4, v5, v6, v7}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    iget-object v2, p0, Lio/sentry/transport/e$c;->b:Lio/sentry/c0;

    .line 36
    .line 37
    new-instance v4, Lio/sentry/transport/f;

    .line 38
    .line 39
    invoke-direct {v4, p0, v1}, Lio/sentry/transport/f;-><init>(Lio/sentry/transport/e$c;Lio/sentry/transport/b0;)V

    .line 40
    .line 41
    .line 42
    invoke-static {v2, v0, v4}, Lio/sentry/util/j;->o(Lio/sentry/c0;Ljava/lang/Class;Lio/sentry/util/j$a;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lio/sentry/transport/e$c;->e:Lio/sentry/transport/e;

    .line 46
    .line 47
    invoke-static {v0, v3}, Lio/sentry/transport/e;->f(Lio/sentry/transport/e;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :catchall_0
    move-exception v4

    .line 52
    :try_start_1
    iget-object v5, p0, Lio/sentry/transport/e$c;->e:Lio/sentry/transport/e;

    .line 53
    .line 54
    invoke-static {v5}, Lio/sentry/transport/e;->g(Lio/sentry/transport/e;)Lio/sentry/s5;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    invoke-virtual {v5}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    sget-object v6, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 63
    .line 64
    const-string v7, "Envelope submission failed"

    .line 65
    .line 66
    new-array v2, v2, [Ljava/lang/Object;

    .line 67
    .line 68
    invoke-interface {v5, v6, v4, v7, v2}, Lio/sentry/ILogger;->a(Lio/sentry/j5;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 72
    :catchall_1
    move-exception v2

    .line 73
    iget-object v4, p0, Lio/sentry/transport/e$c;->b:Lio/sentry/c0;

    .line 74
    .line 75
    new-instance v5, Lio/sentry/transport/f;

    .line 76
    .line 77
    invoke-direct {v5, p0, v1}, Lio/sentry/transport/f;-><init>(Lio/sentry/transport/e$c;Lio/sentry/transport/b0;)V

    .line 78
    .line 79
    .line 80
    invoke-static {v4, v0, v5}, Lio/sentry/util/j;->o(Lio/sentry/c0;Ljava/lang/Class;Lio/sentry/util/j$a;)V

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lio/sentry/transport/e$c;->e:Lio/sentry/transport/e;

    .line 84
    .line 85
    invoke-static {v0, v3}, Lio/sentry/transport/e;->f(Lio/sentry/transport/e;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 86
    .line 87
    .line 88
    throw v2
.end method
