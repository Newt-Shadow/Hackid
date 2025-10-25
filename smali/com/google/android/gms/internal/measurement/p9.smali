.class public abstract Lcom/google/android/gms/internal/measurement/p9;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final g:Ljava/lang/Object;

.field private static volatile h:Lcom/google/android/gms/internal/measurement/k9;

.field private static final i:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static final synthetic j:I


# instance fields
.field final a:Lcom/google/android/gms/internal/measurement/j9;

.field final b:Ljava/lang/String;

.field private c:Ljava/lang/Object;

.field private volatile d:I

.field private volatile e:Ljava/lang/Object;

.field private volatile f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/measurement/p9;->g:Ljava/lang/Object;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 11
    .line 12
    .line 13
    sget-object v0, Lcom/google/android/gms/internal/measurement/n9;->a:Lcom/google/android/gms/internal/measurement/n9;

    .line 14
    .line 15
    const-string v1, "BuildInfo must be non-null"

    .line 16
    .line 17
    invoke-static {v0, v1}, Ln6/m;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 23
    .line 24
    .line 25
    sput-object v0, Lcom/google/android/gms/internal/measurement/p9;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 26
    .line 27
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/j9;Ljava/lang/String;Ljava/lang/Object;Z[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 p4, -0x1

    .line 5
    iput p4, p0, Lcom/google/android/gms/internal/measurement/p9;->d:I

    .line 6
    .line 7
    iget-object p4, p1, Lcom/google/android/gms/internal/measurement/j9;->a:Landroid/net/Uri;

    .line 8
    .line 9
    if-eqz p4, :cond_0

    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/p9;->a:Lcom/google/android/gms/internal/measurement/j9;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/p9;->b:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/p9;->c:Ljava/lang/Object;

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/p9;->f:Z

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 22
    .line 23
    const-string p2, "Must pass a valid SharedPreferences file name or ContentProvider URI"

    .line 24
    .line 25
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p1
.end method

.method public static b(Landroid/content/Context;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/p9;->h:Lcom/google/android/gms/internal/measurement/k9;

    .line 2
    .line 3
    if-nez v0, :cond_6

    .line 4
    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/p9;->g:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/measurement/p9;->h:Lcom/google/android/gms/internal/measurement/k9;

    .line 12
    .line 13
    if-nez v1, :cond_5

    .line 14
    .line 15
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 16
    :try_start_1
    sget-object v1, Lcom/google/android/gms/internal/measurement/p9;->h:Lcom/google/android/gms/internal/measurement/k9;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    move-object p0, v2

    .line 25
    :cond_1
    if-eqz v1, :cond_2

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/k9;->a()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    if-eq v2, p0, :cond_4

    .line 32
    .line 33
    :cond_2
    if-eqz v1, :cond_3

    .line 34
    .line 35
    invoke-static {}, Lcom/google/android/gms/internal/measurement/u8;->f()V

    .line 36
    .line 37
    .line 38
    invoke-static {}, Lcom/google/android/gms/internal/measurement/r9;->d()V

    .line 39
    .line 40
    .line 41
    invoke-static {}, Lcom/google/android/gms/internal/measurement/a9;->e()V

    .line 42
    .line 43
    .line 44
    :cond_3
    new-instance v1, Lcom/google/android/gms/internal/measurement/o9;

    .line 45
    .line 46
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/measurement/o9;-><init>(Landroid/content/Context;)V

    .line 47
    .line 48
    .line 49
    invoke-static {v1}, Ln6/t;->a(Ln6/s;)Ln6/s;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    new-instance v2, Lcom/google/android/gms/internal/measurement/q8;

    .line 54
    .line 55
    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/internal/measurement/q8;-><init>(Landroid/content/Context;Ln6/s;)V

    .line 56
    .line 57
    .line 58
    sput-object v2, Lcom/google/android/gms/internal/measurement/p9;->h:Lcom/google/android/gms/internal/measurement/k9;

    .line 59
    .line 60
    sget-object p0, Lcom/google/android/gms/internal/measurement/p9;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 61
    .line 62
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 63
    .line 64
    .line 65
    :cond_4
    monitor-exit v0

    .line 66
    goto :goto_0

    .line 67
    :catchall_0
    move-exception p0

    .line 68
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    :try_start_2
    throw p0

    .line 70
    :cond_5
    :goto_0
    monitor-exit v0

    .line 71
    return-void

    .line 72
    :catchall_1
    move-exception p0

    .line 73
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 74
    throw p0

    .line 75
    :cond_6
    :goto_1
    return-void
.end method

.method public static c()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/p9;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method abstract a(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public final d()Ljava/lang/Object;
    .locals 9

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/p9;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lcom/google/android/gms/internal/measurement/p9;->d:I

    .line 8
    .line 9
    if-ge v1, v0, :cond_b

    .line 10
    .line 11
    monitor-enter p0

    .line 12
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/measurement/p9;->d:I

    .line 13
    .line 14
    if-ge v1, v0, :cond_a

    .line 15
    .line 16
    sget-object v1, Lcom/google/android/gms/internal/measurement/p9;->h:Lcom/google/android/gms/internal/measurement/k9;

    .line 17
    .line 18
    invoke-static {}, Ln6/l;->a()Ln6/l;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const/4 v3, 0x0

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/k9;->b()Ln6/s;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    if-eqz v4, :cond_0

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/k9;->b()Ln6/s;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-static {v2}, Ln6/m;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Ln6/s;

    .line 40
    .line 41
    invoke-interface {v2}, Ln6/s;->get()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Ln6/l;

    .line 46
    .line 47
    invoke-virtual {v2}, Ln6/l;->c()Z

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-eqz v4, :cond_0

    .line 52
    .line 53
    invoke-virtual {v2}, Ln6/l;->b()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    check-cast v4, Lcom/google/android/gms/internal/measurement/v8;

    .line 58
    .line 59
    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/p9;->a:Lcom/google/android/gms/internal/measurement/j9;

    .line 60
    .line 61
    iget-object v6, v5, Lcom/google/android/gms/internal/measurement/j9;->a:Landroid/net/Uri;

    .line 62
    .line 63
    iget-object v5, v5, Lcom/google/android/gms/internal/measurement/j9;->c:Ljava/lang/String;

    .line 64
    .line 65
    iget-object v7, p0, Lcom/google/android/gms/internal/measurement/p9;->b:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v4, v6, v3, v5, v7}, Lcom/google/android/gms/internal/measurement/v8;->a(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    goto :goto_0

    .line 72
    :cond_0
    move-object v4, v3

    .line 73
    :goto_0
    if-eqz v1, :cond_1

    .line 74
    .line 75
    const/4 v5, 0x1

    .line 76
    goto :goto_1

    .line 77
    :cond_1
    const/4 v5, 0x0

    .line 78
    :goto_1
    const-string v6, "Must call PhenotypeFlagInitializer.maybeInit() first"

    .line 79
    .line 80
    invoke-static {v5, v6}, Ln6/m;->o(ZLjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/p9;->a:Lcom/google/android/gms/internal/measurement/j9;

    .line 84
    .line 85
    iget-object v6, v5, Lcom/google/android/gms/internal/measurement/j9;->a:Landroid/net/Uri;

    .line 86
    .line 87
    if-eqz v6, :cond_3

    .line 88
    .line 89
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/k9;->a()Landroid/content/Context;

    .line 90
    .line 91
    .line 92
    move-result-object v7

    .line 93
    invoke-static {v7, v6}, Lcom/google/android/gms/internal/measurement/d9;->a(Landroid/content/Context;Landroid/net/Uri;)Z

    .line 94
    .line 95
    .line 96
    move-result v7

    .line 97
    if-eqz v7, :cond_2

    .line 98
    .line 99
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/k9;->a()Landroid/content/Context;

    .line 100
    .line 101
    .line 102
    move-result-object v7

    .line 103
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 104
    .line 105
    .line 106
    move-result-object v7

    .line 107
    sget-object v8, Lcom/google/android/gms/internal/measurement/m9;->a:Lcom/google/android/gms/internal/measurement/m9;

    .line 108
    .line 109
    invoke-static {v7, v6, v8}, Lcom/google/android/gms/internal/measurement/u8;->c(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/Runnable;)Lcom/google/android/gms/internal/measurement/u8;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    goto :goto_2

    .line 114
    :cond_2
    move-object v6, v3

    .line 115
    goto :goto_2

    .line 116
    :cond_3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/k9;->a()Landroid/content/Context;

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    invoke-static {v3}, Ln6/m;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v7

    .line 124
    check-cast v7, Ljava/lang/String;

    .line 125
    .line 126
    sget-object v8, Lcom/google/android/gms/internal/measurement/l9;->a:Lcom/google/android/gms/internal/measurement/l9;

    .line 127
    .line 128
    invoke-static {v6, v7, v8}, Lcom/google/android/gms/internal/measurement/r9;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)Lcom/google/android/gms/internal/measurement/r9;

    .line 129
    .line 130
    .line 131
    move-result-object v6

    .line 132
    :goto_2
    if-eqz v6, :cond_4

    .line 133
    .line 134
    iget-object v7, p0, Lcom/google/android/gms/internal/measurement/p9;->b:Ljava/lang/String;

    .line 135
    .line 136
    invoke-interface {v6, v7}, Lcom/google/android/gms/internal/measurement/x8;->a(Ljava/lang/String;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v6

    .line 140
    if-eqz v6, :cond_4

    .line 141
    .line 142
    invoke-virtual {p0, v6}, Lcom/google/android/gms/internal/measurement/p9;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v6

    .line 146
    goto :goto_3

    .line 147
    :cond_4
    move-object v6, v3

    .line 148
    :goto_3
    if-eqz v6, :cond_5

    .line 149
    .line 150
    goto :goto_4

    .line 151
    :cond_5
    iget-boolean v5, v5, Lcom/google/android/gms/internal/measurement/j9;->d:Z

    .line 152
    .line 153
    if-nez v5, :cond_6

    .line 154
    .line 155
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/k9;->a()Landroid/content/Context;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/a9;->c(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/a9;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/p9;->b:Ljava/lang/String;

    .line 164
    .line 165
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/measurement/a9;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    if-eqz v1, :cond_6

    .line 170
    .line 171
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/p9;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    :cond_6
    if-nez v3, :cond_7

    .line 176
    .line 177
    iget-object v6, p0, Lcom/google/android/gms/internal/measurement/p9;->c:Ljava/lang/Object;

    .line 178
    .line 179
    goto :goto_4

    .line 180
    :cond_7
    move-object v6, v3

    .line 181
    :goto_4
    invoke-virtual {v2}, Ln6/l;->c()Z

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    if-eqz v1, :cond_9

    .line 186
    .line 187
    if-nez v4, :cond_8

    .line 188
    .line 189
    iget-object v6, p0, Lcom/google/android/gms/internal/measurement/p9;->c:Ljava/lang/Object;

    .line 190
    .line 191
    goto :goto_5

    .line 192
    :cond_8
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/measurement/p9;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v6

    .line 196
    :cond_9
    :goto_5
    iput-object v6, p0, Lcom/google/android/gms/internal/measurement/p9;->e:Ljava/lang/Object;

    .line 197
    .line 198
    iput v0, p0, Lcom/google/android/gms/internal/measurement/p9;->d:I

    .line 199
    .line 200
    :cond_a
    monitor-exit p0

    .line 201
    goto :goto_6

    .line 202
    :catchall_0
    move-exception v0

    .line 203
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    throw v0

    .line 205
    :cond_b
    :goto_6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/p9;->e:Ljava/lang/Object;

    .line 206
    .line 207
    return-object v0
.end method
