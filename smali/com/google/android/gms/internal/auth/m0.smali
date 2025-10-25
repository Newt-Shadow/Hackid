.class public abstract Lcom/google/android/gms/internal/auth/m0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final f:Ljava/lang/Object;

.field private static volatile g:Lcom/google/android/gms/internal/auth/k0;

.field private static final h:Ljava/util/concurrent/atomic/AtomicReference;

.field private static final i:Lcom/google/android/gms/internal/auth/o0;

.field private static final j:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static final synthetic k:I


# instance fields
.field final a:Lcom/google/android/gms/internal/auth/i0;

.field final b:Ljava/lang/String;

.field private final c:Ljava/lang/Object;

.field private volatile d:I

.field private volatile e:Ljava/lang/Object;


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
    sput-object v0, Lcom/google/android/gms/internal/auth/m0;->f:Ljava/lang/Object;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/google/android/gms/internal/auth/m0;->h:Ljava/util/concurrent/atomic/AtomicReference;

    .line 14
    .line 15
    new-instance v0, Lcom/google/android/gms/internal/auth/o0;

    .line 16
    .line 17
    sget-object v1, Lcom/google/android/gms/internal/auth/d0;->a:Lcom/google/android/gms/internal/auth/d0;

    .line 18
    .line 19
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/auth/o0;-><init>(Lcom/google/android/gms/internal/auth/d0;)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lcom/google/android/gms/internal/auth/m0;->i:Lcom/google/android/gms/internal/auth/o0;

    .line 23
    .line 24
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/google/android/gms/internal/auth/m0;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 30
    .line 31
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/auth/i0;Ljava/lang/String;Ljava/lang/Object;ZLcom/google/android/gms/internal/auth/l0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 p4, -0x1

    .line 5
    iput p4, p0, Lcom/google/android/gms/internal/auth/m0;->d:I

    .line 6
    .line 7
    iget-object p4, p1, Lcom/google/android/gms/internal/auth/i0;->a:Landroid/net/Uri;

    .line 8
    .line 9
    if-eqz p4, :cond_0

    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/auth/m0;->a:Lcom/google/android/gms/internal/auth/i0;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/google/android/gms/internal/auth/m0;->b:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p3, p0, Lcom/google/android/gms/internal/auth/m0;->c:Ljava/lang/Object;

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 19
    .line 20
    const-string p2, "Must pass a valid SharedPreferences file name or ContentProvider URI"

    .line 21
    .line 22
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1
.end method

.method public static c()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/auth/m0;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static d(Landroid/content/Context;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/auth/m0;->g:Lcom/google/android/gms/internal/auth/k0;

    .line 2
    .line 3
    if-nez v0, :cond_5

    .line 4
    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/auth/m0;->f:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/auth/m0;->g:Lcom/google/android/gms/internal/auth/k0;

    .line 12
    .line 13
    if-nez v1, :cond_4

    .line 14
    .line 15
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 16
    :try_start_1
    sget-object v1, Lcom/google/android/gms/internal/auth/m0;->g:Lcom/google/android/gms/internal/auth/k0;

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
    invoke-virtual {v1}, Lcom/google/android/gms/internal/auth/k0;->a()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    if-eq v1, p0, :cond_3

    .line 32
    .line 33
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/auth/q;->d()V

    .line 34
    .line 35
    .line 36
    invoke-static {}, Lcom/google/android/gms/internal/auth/n0;->c()V

    .line 37
    .line 38
    .line 39
    invoke-static {}, Lcom/google/android/gms/internal/auth/x;->e()V

    .line 40
    .line 41
    .line 42
    new-instance v1, Lcom/google/android/gms/internal/auth/c0;

    .line 43
    .line 44
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/auth/c0;-><init>(Landroid/content/Context;)V

    .line 45
    .line 46
    .line 47
    invoke-static {v1}, Lcom/google/android/gms/internal/auth/y0;->a(Lcom/google/android/gms/internal/auth/t0;)Lcom/google/android/gms/internal/auth/t0;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    new-instance v2, Lcom/google/android/gms/internal/auth/n;

    .line 52
    .line 53
    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/internal/auth/n;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/auth/t0;)V

    .line 54
    .line 55
    .line 56
    sput-object v2, Lcom/google/android/gms/internal/auth/m0;->g:Lcom/google/android/gms/internal/auth/k0;

    .line 57
    .line 58
    sget-object p0, Lcom/google/android/gms/internal/auth/m0;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 59
    .line 60
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 61
    .line 62
    .line 63
    :cond_3
    monitor-exit v0

    .line 64
    goto :goto_0

    .line 65
    :catchall_0
    move-exception p0

    .line 66
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    :try_start_2
    throw p0

    .line 68
    :cond_4
    :goto_0
    monitor-exit v0

    .line 69
    return-void

    .line 70
    :catchall_1
    move-exception p0

    .line 71
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 72
    throw p0

    .line 73
    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method abstract a(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public final b()Ljava/lang/Object;
    .locals 8

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/auth/m0;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lcom/google/android/gms/internal/auth/m0;->d:I

    .line 8
    .line 9
    if-ge v1, v0, :cond_c

    .line 10
    .line 11
    monitor-enter p0

    .line 12
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/auth/m0;->d:I

    .line 13
    .line 14
    if-ge v1, v0, :cond_b

    .line 15
    .line 16
    sget-object v1, Lcom/google/android/gms/internal/auth/m0;->g:Lcom/google/android/gms/internal/auth/k0;

    .line 17
    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/auth/r0;->c()Lcom/google/android/gms/internal/auth/r0;

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
    invoke-virtual {v1}, Lcom/google/android/gms/internal/auth/k0;->b()Lcom/google/android/gms/internal/auth/t0;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-interface {v2}, Lcom/google/android/gms/internal/auth/t0;->zza()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Lcom/google/android/gms/internal/auth/r0;

    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/google/android/gms/internal/auth/r0;->b()Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-eqz v4, :cond_0

    .line 40
    .line 41
    invoke-virtual {v2}, Lcom/google/android/gms/internal/auth/r0;->a()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    check-cast v4, Lcom/google/android/gms/internal/auth/r;

    .line 46
    .line 47
    iget-object v5, p0, Lcom/google/android/gms/internal/auth/m0;->a:Lcom/google/android/gms/internal/auth/i0;

    .line 48
    .line 49
    iget-object v6, v5, Lcom/google/android/gms/internal/auth/i0;->a:Landroid/net/Uri;

    .line 50
    .line 51
    iget-object v5, v5, Lcom/google/android/gms/internal/auth/i0;->c:Ljava/lang/String;

    .line 52
    .line 53
    iget-object v7, p0, Lcom/google/android/gms/internal/auth/m0;->b:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v4, v6, v3, v5, v7}, Lcom/google/android/gms/internal/auth/r;->a(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    goto :goto_0

    .line 60
    :cond_0
    move-object v4, v3

    .line 61
    :goto_0
    const-string v5, "Must call PhenotypeFlag.init() first"

    .line 62
    .line 63
    if-eqz v1, :cond_a

    .line 64
    .line 65
    iget-object v5, p0, Lcom/google/android/gms/internal/auth/m0;->a:Lcom/google/android/gms/internal/auth/i0;

    .line 66
    .line 67
    iget-object v5, v5, Lcom/google/android/gms/internal/auth/i0;->a:Landroid/net/Uri;

    .line 68
    .line 69
    if-eqz v5, :cond_1

    .line 70
    .line 71
    invoke-virtual {v1}, Lcom/google/android/gms/internal/auth/k0;->a()Landroid/content/Context;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    invoke-static {v6, v5}, Lcom/google/android/gms/internal/auth/z;->a(Landroid/content/Context;Landroid/net/Uri;)Z

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    if-eqz v5, :cond_2

    .line 80
    .line 81
    invoke-virtual {v1}, Lcom/google/android/gms/internal/auth/k0;->a()Landroid/content/Context;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    iget-object v6, p0, Lcom/google/android/gms/internal/auth/m0;->a:Lcom/google/android/gms/internal/auth/i0;

    .line 90
    .line 91
    iget-object v6, v6, Lcom/google/android/gms/internal/auth/i0;->a:Landroid/net/Uri;

    .line 92
    .line 93
    sget-object v7, Lcom/google/android/gms/internal/auth/b0;->a:Lcom/google/android/gms/internal/auth/b0;

    .line 94
    .line 95
    invoke-static {v5, v6, v7}, Lcom/google/android/gms/internal/auth/q;->b(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/Runnable;)Lcom/google/android/gms/internal/auth/q;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    goto :goto_1

    .line 100
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/auth/k0;->a()Landroid/content/Context;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    sget-object v6, Lcom/google/android/gms/internal/auth/b0;->a:Lcom/google/android/gms/internal/auth/b0;

    .line 105
    .line 106
    invoke-static {v5, v3, v6}, Lcom/google/android/gms/internal/auth/n0;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)Lcom/google/android/gms/internal/auth/n0;

    .line 107
    .line 108
    .line 109
    :cond_2
    move-object v5, v3

    .line 110
    :goto_1
    if-eqz v5, :cond_3

    .line 111
    .line 112
    iget-object v6, p0, Lcom/google/android/gms/internal/auth/m0;->b:Ljava/lang/String;

    .line 113
    .line 114
    invoke-interface {v5, v6}, Lcom/google/android/gms/internal/auth/u;->a(Ljava/lang/String;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    if-eqz v5, :cond_3

    .line 119
    .line 120
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/auth/m0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    goto :goto_2

    .line 125
    :cond_3
    move-object v5, v3

    .line 126
    :goto_2
    if-nez v5, :cond_7

    .line 127
    .line 128
    iget-object v5, p0, Lcom/google/android/gms/internal/auth/m0;->a:Lcom/google/android/gms/internal/auth/i0;

    .line 129
    .line 130
    iget-boolean v5, v5, Lcom/google/android/gms/internal/auth/i0;->d:Z

    .line 131
    .line 132
    if-nez v5, :cond_5

    .line 133
    .line 134
    invoke-virtual {v1}, Lcom/google/android/gms/internal/auth/k0;->a()Landroid/content/Context;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-static {v1}, Lcom/google/android/gms/internal/auth/x;->b(Landroid/content/Context;)Lcom/google/android/gms/internal/auth/x;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    iget-object v5, p0, Lcom/google/android/gms/internal/auth/m0;->a:Lcom/google/android/gms/internal/auth/i0;

    .line 143
    .line 144
    iget-boolean v5, v5, Lcom/google/android/gms/internal/auth/i0;->d:Z

    .line 145
    .line 146
    if-eqz v5, :cond_4

    .line 147
    .line 148
    move-object v5, v3

    .line 149
    goto :goto_3

    .line 150
    :cond_4
    iget-object v5, p0, Lcom/google/android/gms/internal/auth/m0;->b:Ljava/lang/String;

    .line 151
    .line 152
    :goto_3
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/auth/x;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    if-eqz v1, :cond_5

    .line 157
    .line 158
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/auth/m0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v3

    .line 162
    :cond_5
    if-nez v3, :cond_6

    .line 163
    .line 164
    iget-object v5, p0, Lcom/google/android/gms/internal/auth/m0;->c:Ljava/lang/Object;

    .line 165
    .line 166
    goto :goto_4

    .line 167
    :cond_6
    move-object v5, v3

    .line 168
    :cond_7
    :goto_4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/auth/r0;->b()Z

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    if-eqz v1, :cond_9

    .line 173
    .line 174
    if-nez v4, :cond_8

    .line 175
    .line 176
    iget-object v5, p0, Lcom/google/android/gms/internal/auth/m0;->c:Ljava/lang/Object;

    .line 177
    .line 178
    goto :goto_5

    .line 179
    :cond_8
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/auth/m0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v5

    .line 183
    :cond_9
    :goto_5
    iput-object v5, p0, Lcom/google/android/gms/internal/auth/m0;->e:Ljava/lang/Object;

    .line 184
    .line 185
    iput v0, p0, Lcom/google/android/gms/internal/auth/m0;->d:I

    .line 186
    .line 187
    goto :goto_6

    .line 188
    :catchall_0
    move-exception v0

    .line 189
    goto :goto_7

    .line 190
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 191
    .line 192
    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    throw v0

    .line 196
    :cond_b
    :goto_6
    monitor-exit p0

    .line 197
    goto :goto_8

    .line 198
    :goto_7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    throw v0

    .line 200
    :cond_c
    :goto_8
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/m0;->e:Ljava/lang/Object;

    .line 201
    .line 202
    return-object v0
.end method
