.class public final Llb/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Leb/d;

.field private final b:Llb/c;

.field private final c:Ljava/util/concurrent/ExecutorService;

.field private d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final f:Ljava/lang/Object;

.field private final g:Ljava/lang/Object;

.field private h:Ljava/util/Map;

.field private i:Ljava/util/Map;

.field private j:Ljava/util/Map;

.field private k:Ljava/lang/String;

.field private l:Ljava/util/List;

.field private volatile m:Z

.field private volatile n:Z

.field private volatile o:Z

.field private volatile p:Lid/a;


# direct methods
.method public constructor <init>(Leb/d;Llb/c;Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    .line 1
    const-string v0, "config"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "api"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "executor"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Llb/u;->a:Leb/d;

    .line 20
    .line 21
    iput-object p2, p0, Llb/u;->b:Llb/c;

    .line 22
    .line 23
    iput-object p3, p0, Llb/u;->c:Ljava/util/concurrent/ExecutorService;

    .line 24
    .line 25
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    .line 27
    const/4 p2, 0x0

    .line 28
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Llb/u;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 32
    .line 33
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 34
    .line 35
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Llb/u;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 39
    .line 40
    new-instance p1, Ljava/lang/Object;

    .line 41
    .line 42
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object p1, p0, Llb/u;->f:Ljava/lang/Object;

    .line 46
    .line 47
    new-instance p1, Ljava/lang/Object;

    .line 48
    .line 49
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object p1, p0, Llb/u;->g:Ljava/lang/Object;

    .line 53
    .line 54
    invoke-direct {p0}, Llb/u;->w()V

    .line 55
    .line 56
    .line 57
    invoke-direct {p0}, Llb/u;->x()V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method private final A(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Llb/u;->f:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    if-eqz p3, :cond_0

    .line 5
    .line 6
    :try_start_0
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    goto :goto_0

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    goto :goto_2

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    sget-object p3, Lxc/t;->a:Lxc/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    monitor-exit v0

    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    move-object p2, p1

    .line 21
    :goto_1
    return-object p2

    .line 22
    :goto_2
    monitor-exit v0

    .line 23
    throw p1
.end method

.method private final B(Leb/i;Leb/i;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-interface {p1}, Leb/i;->a()V

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catchall_0
    move-exception p1

    .line 8
    goto :goto_1

    .line 9
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 10
    .line 11
    invoke-interface {p2}, Leb/i;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    goto :goto_2

    .line 15
    :goto_1
    iget-object p2, p0, Llb/u;->a:Leb/d;

    .line 16
    .line 17
    invoke-virtual {p2}, Leb/d;->o()Llb/i;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v1, "Executing the feature flags callback failed: "

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-interface {p2, p1}, Llb/i;->a(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    :goto_2
    return-void
.end method

.method public static synthetic a(Llb/u;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Leb/i;Leb/i;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Llb/u;->p(Llb/u;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Leb/i;Leb/i;)V

    return-void
.end method

.method public static synthetic b(Llb/u;Leb/i;Leb/i;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Llb/u;->t(Llb/u;Leb/i;Leb/i;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private final d()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Llb/u;->h:Ljava/util/Map;

    .line 3
    .line 4
    iput-object v0, p0, Llb/u;->i:Ljava/util/Map;

    .line 5
    .line 6
    iput-object v0, p0, Llb/u;->j:Ljava/util/Map;

    .line 7
    .line 8
    iput-object v0, p0, Llb/u;->k:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v0, p0, Llb/u;->a:Leb/d;

    .line 11
    .line 12
    invoke-virtual {v0}, Leb/d;->d()Llb/m;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    const-string v1, "flags"

    .line 19
    .line 20
    invoke-interface {v0, v1}, Llb/m;->remove(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v1, "featureFlags"

    .line 24
    .line 25
    invoke-interface {v0, v1}, Llb/m;->remove(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v1, "featureFlagsPayload"

    .line 29
    .line 30
    invoke-interface {v0, v1}, Llb/m;->remove(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v1, "feature_flag_request_id"

    .line 34
    .line 35
    invoke-interface {v0, v1}, Llb/m;->remove(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method

.method private final e()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Llb/u;->o:Z

    .line 3
    .line 4
    iget-object v0, p0, Llb/u;->a:Leb/d;

    .line 5
    .line 6
    invoke-virtual {v0}, Leb/d;->d()Llb/m;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const-string v1, "surveys"

    .line 13
    .line 14
    invoke-interface {v0, v1}, Llb/m;->remove(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Llb/u;->l:Ljava/util/List;

    .line 19
    .line 20
    return-void
.end method

.method private final f(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Leb/i;Leb/i;)V
    .locals 4

    .line 1
    iget-object v0, p0, Llb/u;->a:Leb/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Leb/d;->r()Llb/k;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Llb/k;->a()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    move v0, v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v0, v2

    .line 20
    :goto_0
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object p1, p0, Llb/u;->a:Leb/d;

    .line 23
    .line 24
    invoke-virtual {p1}, Leb/d;->o()Llb/i;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const-string p2, "Network isn\'t connected."

    .line 29
    .line 30
    invoke-interface {p1, p2}, Llb/i;->a(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, p4, p5}, Llb/u;->B(Leb/i;Leb/i;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    iget-object v0, p0, Llb/u;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    iget-object p1, p0, Llb/u;->a:Leb/d;

    .line 46
    .line 47
    invoke-virtual {p1}, Leb/d;->o()Llb/i;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const-string p2, "Feature flags are being loaded already."

    .line 52
    .line 53
    invoke-interface {p1, p2}, Llb/i;->a(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_2
    :try_start_0
    iget-object v0, p0, Llb/u;->b:Llb/c;

    .line 58
    .line 59
    invoke-virtual {v0, p1, p2, p3}, Llb/c;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/posthog/internal/PostHogFlagsResponse;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    if-eqz p1, :cond_f

    .line 64
    .line 65
    iget-object p2, p0, Llb/u;->f:Ljava/lang/Object;

    .line 66
    .line 67
    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 68
    :try_start_1
    invoke-virtual {p1}, Lcom/posthog/internal/PostHogFlagsResponse;->getQuotaLimited()Ljava/util/List;

    .line 69
    .line 70
    .line 71
    move-result-object p3

    .line 72
    if-eqz p3, :cond_3

    .line 73
    .line 74
    const-string v0, "feature_flags"

    .line 75
    .line 76
    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result p3

    .line 80
    if-ne p3, v1, :cond_3

    .line 81
    .line 82
    move p3, v1

    .line 83
    goto :goto_1

    .line 84
    :cond_3
    move p3, v2

    .line 85
    :goto_1
    if-eqz p3, :cond_4

    .line 86
    .line 87
    iget-object p1, p0, Llb/u;->a:Leb/d;

    .line 88
    .line 89
    invoke-virtual {p1}, Leb/d;->o()Llb/i;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    const-string p3, "Feature flags are quota limited, clearing existing flags.\n                                    Learn more about billing limits at https://posthog.com/docs/billing/limits-alerts"

    .line 94
    .line 95
    invoke-interface {p1, p3}, Llb/i;->a(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-direct {p0}, Llb/u;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    .line 100
    .line 101
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 102
    goto/16 :goto_3

    .line 103
    .line 104
    :cond_4
    :try_start_3
    invoke-direct {p0, p1}, Llb/u;->u(Lcom/posthog/internal/PostHogFlagsResponse;)Lcom/posthog/internal/PostHogFlagsResponse;

    .line 105
    .line 106
    .line 107
    move-result-object p3

    .line 108
    invoke-virtual {p3}, Lcom/posthog/internal/PostHogFlagsResponse;->getErrorsWhileComputingFlags()Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-eqz v0, :cond_a

    .line 113
    .line 114
    iget-object v0, p0, Llb/u;->j:Ljava/util/Map;

    .line 115
    .line 116
    if-nez v0, :cond_5

    .line 117
    .line 118
    invoke-static {}, Lyc/e0;->e()Ljava/util/Map;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    :cond_5
    invoke-virtual {p3}, Lcom/posthog/internal/PostHogFlagsResponse;->getFlags()Ljava/util/Map;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    if-nez v3, :cond_6

    .line 127
    .line 128
    invoke-static {}, Lyc/e0;->e()Ljava/util/Map;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    :cond_6
    invoke-static {v0, v3}, Lyc/e0;->k(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    iput-object v0, p0, Llb/u;->j:Ljava/util/Map;

    .line 137
    .line 138
    iget-object v0, p0, Llb/u;->h:Ljava/util/Map;

    .line 139
    .line 140
    if-nez v0, :cond_7

    .line 141
    .line 142
    invoke-static {}, Lyc/e0;->e()Ljava/util/Map;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    :cond_7
    invoke-virtual {p3}, Lcom/posthog/internal/PostHogFlagsResponse;->getFeatureFlags()Ljava/util/Map;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    if-nez v3, :cond_8

    .line 151
    .line 152
    invoke-static {}, Lyc/e0;->e()Ljava/util/Map;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    :cond_8
    invoke-static {v0, v3}, Lyc/e0;->k(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    iput-object v0, p0, Llb/u;->h:Ljava/util/Map;

    .line 161
    .line 162
    invoke-virtual {p3}, Lcom/posthog/internal/PostHogFlagsResponse;->getFeatureFlagPayloads()Ljava/util/Map;

    .line 163
    .line 164
    .line 165
    move-result-object p3

    .line 166
    invoke-direct {p0, p3}, Llb/u;->v(Ljava/util/Map;)Ljava/util/Map;

    .line 167
    .line 168
    .line 169
    move-result-object p3

    .line 170
    iget-object v0, p0, Llb/u;->i:Ljava/util/Map;

    .line 171
    .line 172
    if-nez v0, :cond_9

    .line 173
    .line 174
    invoke-static {}, Lyc/e0;->e()Ljava/util/Map;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    :cond_9
    invoke-static {v0, p3}, Lyc/e0;->k(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    .line 179
    .line 180
    .line 181
    move-result-object p3

    .line 182
    iput-object p3, p0, Llb/u;->i:Ljava/util/Map;

    .line 183
    .line 184
    goto :goto_2

    .line 185
    :cond_a
    invoke-virtual {p3}, Lcom/posthog/internal/PostHogFlagsResponse;->getFlags()Ljava/util/Map;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    iput-object v0, p0, Llb/u;->j:Ljava/util/Map;

    .line 190
    .line 191
    invoke-virtual {p3}, Lcom/posthog/internal/PostHogFlagsResponse;->getFeatureFlags()Ljava/util/Map;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    iput-object v0, p0, Llb/u;->h:Ljava/util/Map;

    .line 196
    .line 197
    invoke-virtual {p3}, Lcom/posthog/internal/PostHogFlagsResponse;->getFeatureFlagPayloads()Ljava/util/Map;

    .line 198
    .line 199
    .line 200
    move-result-object p3

    .line 201
    invoke-direct {p0, p3}, Llb/u;->v(Ljava/util/Map;)Ljava/util/Map;

    .line 202
    .line 203
    .line 204
    move-result-object p3

    .line 205
    iput-object p3, p0, Llb/u;->i:Ljava/util/Map;

    .line 206
    .line 207
    :goto_2
    invoke-virtual {p1}, Lcom/posthog/internal/PostHogRemoteConfigResponse;->getSessionRecording()Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    invoke-direct {p0, p1}, Llb/u;->y(Ljava/lang/Object;)V

    .line 212
    .line 213
    .line 214
    sget-object p1, Lxc/t;->a:Lxc/t;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 215
    .line 216
    :try_start_4
    monitor-exit p2

    .line 217
    iget-object p1, p0, Llb/u;->a:Leb/d;

    .line 218
    .line 219
    invoke-virtual {p1}, Leb/d;->d()Llb/m;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    if-eqz p1, :cond_e

    .line 224
    .line 225
    iget-object p2, p0, Llb/u;->j:Ljava/util/Map;

    .line 226
    .line 227
    if-nez p2, :cond_b

    .line 228
    .line 229
    invoke-static {}, Lyc/e0;->e()Ljava/util/Map;

    .line 230
    .line 231
    .line 232
    move-result-object p2

    .line 233
    :cond_b
    const-string p3, "flags"

    .line 234
    .line 235
    invoke-interface {p1, p3, p2}, Llb/m;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 236
    .line 237
    .line 238
    iget-object p2, p0, Llb/u;->h:Ljava/util/Map;

    .line 239
    .line 240
    if-nez p2, :cond_c

    .line 241
    .line 242
    invoke-static {}, Lyc/e0;->e()Ljava/util/Map;

    .line 243
    .line 244
    .line 245
    move-result-object p2

    .line 246
    :cond_c
    const-string p3, "featureFlags"

    .line 247
    .line 248
    invoke-interface {p1, p3, p2}, Llb/m;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 249
    .line 250
    .line 251
    iget-object p2, p0, Llb/u;->i:Ljava/util/Map;

    .line 252
    .line 253
    if-nez p2, :cond_d

    .line 254
    .line 255
    invoke-static {}, Lyc/e0;->e()Ljava/util/Map;

    .line 256
    .line 257
    .line 258
    move-result-object p2

    .line 259
    :cond_d
    const-string p3, "featureFlagsPayload"

    .line 260
    .line 261
    invoke-interface {p1, p3, p2}, Llb/m;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 262
    .line 263
    .line 264
    :cond_e
    iput-boolean v1, p0, Llb/u;->m:Z

    .line 265
    .line 266
    :goto_3
    sget-object p1, Lxc/t;->a:Lxc/t;

    .line 267
    .line 268
    goto :goto_4

    .line 269
    :catchall_0
    move-exception p1

    .line 270
    monitor-exit p2

    .line 271
    throw p1

    .line 272
    :cond_f
    const/4 p1, 0x0

    .line 273
    :goto_4
    if-nez p1, :cond_10

    .line 274
    .line 275
    iput-boolean v2, p0, Llb/u;->m:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 276
    .line 277
    :cond_10
    :goto_5
    invoke-direct {p0, p4, p5}, Llb/u;->B(Leb/i;Leb/i;)V

    .line 278
    .line 279
    .line 280
    iget-object p1, p0, Llb/u;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 281
    .line 282
    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 283
    .line 284
    .line 285
    goto :goto_6

    .line 286
    :catchall_1
    move-exception p1

    .line 287
    :try_start_5
    iget-object p2, p0, Llb/u;->a:Leb/d;

    .line 288
    .line 289
    invoke-virtual {p2}, Leb/d;->o()Llb/i;

    .line 290
    .line 291
    .line 292
    move-result-object p2

    .line 293
    new-instance p3, Ljava/lang/StringBuilder;

    .line 294
    .line 295
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 296
    .line 297
    .line 298
    const-string v0, "Loading feature flags failed: "

    .line 299
    .line 300
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object p1

    .line 310
    invoke-interface {p2, p1}, Llb/i;->a(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 311
    .line 312
    .line 313
    goto :goto_5

    .line 314
    :goto_6
    return-void

    .line 315
    :catchall_2
    move-exception p1

    .line 316
    invoke-direct {p0, p4, p5}, Llb/u;->B(Leb/i;Leb/i;)V

    .line 317
    .line 318
    .line 319
    iget-object p2, p0, Llb/u;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 320
    .line 321
    invoke-virtual {p2, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 322
    .line 323
    .line 324
    throw p1
.end method

.method private final m(Ljava/util/Map;Ljava/util/Map;)Z
    .locals 4

    .line 1
    const-string v0, "linkedFlag"

    .line 2
    .line 3
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    instance-of v0, p2, Ljava/lang/String;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x1

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    instance-of p2, p1, Ljava/lang/Boolean;

    .line 18
    .line 19
    if-eqz p2, :cond_0

    .line 20
    .line 21
    check-cast p1, Ljava/lang/Boolean;

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    goto :goto_3

    .line 28
    :cond_0
    instance-of p1, p1, Ljava/lang/String;

    .line 29
    .line 30
    if-eqz p1, :cond_6

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_1
    instance-of v0, p2, Ljava/util/Map;

    .line 34
    .line 35
    if-eqz v0, :cond_5

    .line 36
    .line 37
    check-cast p2, Ljava/util/Map;

    .line 38
    .line 39
    const-string v0, "flag"

    .line 40
    .line 41
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    instance-of v2, v0, Ljava/lang/String;

    .line 46
    .line 47
    const/4 v3, 0x0

    .line 48
    if-eqz v2, :cond_2

    .line 49
    .line 50
    check-cast v0, Ljava/lang/String;

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    move-object v0, v3

    .line 54
    :goto_0
    const-string v2, "variant"

    .line 55
    .line 56
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    instance-of v2, p2, Ljava/lang/String;

    .line 61
    .line 62
    if-eqz v2, :cond_3

    .line 63
    .line 64
    check-cast p2, Ljava/lang/String;

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_3
    move-object p2, v3

    .line 68
    :goto_1
    if-eqz v0, :cond_6

    .line 69
    .line 70
    if-eqz p2, :cond_6

    .line 71
    .line 72
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    instance-of v0, p1, Ljava/lang/String;

    .line 77
    .line 78
    if-eqz v0, :cond_4

    .line 79
    .line 80
    move-object v3, p1

    .line 81
    check-cast v3, Ljava/lang/String;

    .line 82
    .line 83
    :cond_4
    invoke-static {v3, p2}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    goto :goto_3

    .line 88
    :cond_5
    :goto_2
    move v1, v2

    .line 89
    :cond_6
    :goto_3
    return v1
.end method

.method private static final p(Llb/u;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Leb/i;Leb/i;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "$distinctId"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct/range {p0 .. p5}, Llb/u;->f(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Leb/i;Leb/i;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private final q()V
    .locals 7

    .line 1
    iget-object v0, p0, Llb/u;->a:Leb/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Leb/d;->d()Llb/m;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_7

    .line 8
    .line 9
    const-string v1, "flags"

    .line 10
    .line 11
    invoke-static {}, Lyc/e0;->e()Ljava/util/Map;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-interface {v0, v1, v2}, Llb/m;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    instance-of v2, v1, Ljava/util/Map;

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    check-cast v1, Ljava/util/Map;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move-object v1, v3

    .line 28
    :goto_0
    if-nez v1, :cond_1

    .line 29
    .line 30
    invoke-static {}, Lyc/e0;->e()Ljava/util/Map;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    :cond_1
    const-string v2, "featureFlags"

    .line 35
    .line 36
    invoke-static {}, Lyc/e0;->e()Ljava/util/Map;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-interface {v0, v2, v4}, Llb/m;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    instance-of v4, v2, Ljava/util/Map;

    .line 45
    .line 46
    if-eqz v4, :cond_2

    .line 47
    .line 48
    check-cast v2, Ljava/util/Map;

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    move-object v2, v3

    .line 52
    :goto_1
    if-nez v2, :cond_3

    .line 53
    .line 54
    invoke-static {}, Lyc/e0;->e()Ljava/util/Map;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    :cond_3
    const-string v4, "featureFlagsPayload"

    .line 59
    .line 60
    invoke-static {}, Lyc/e0;->e()Ljava/util/Map;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    invoke-interface {v0, v4, v5}, Llb/m;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    instance-of v5, v4, Ljava/util/Map;

    .line 69
    .line 70
    if-eqz v5, :cond_4

    .line 71
    .line 72
    check-cast v4, Ljava/util/Map;

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_4
    move-object v4, v3

    .line 76
    :goto_2
    if-nez v4, :cond_5

    .line 77
    .line 78
    invoke-static {}, Lyc/e0;->e()Ljava/util/Map;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    :cond_5
    const-string v5, "feature_flag_request_id"

    .line 83
    .line 84
    const/4 v6, 0x2

    .line 85
    invoke-static {v0, v5, v3, v6, v3}, Llb/m$b;->a(Llb/m;Ljava/lang/String;Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    instance-of v5, v0, Ljava/lang/String;

    .line 90
    .line 91
    if-eqz v5, :cond_6

    .line 92
    .line 93
    move-object v3, v0

    .line 94
    check-cast v3, Ljava/lang/String;

    .line 95
    .line 96
    :cond_6
    iget-object v0, p0, Llb/u;->f:Ljava/lang/Object;

    .line 97
    .line 98
    monitor-enter v0

    .line 99
    :try_start_0
    iput-object v1, p0, Llb/u;->j:Ljava/util/Map;

    .line 100
    .line 101
    iput-object v2, p0, Llb/u;->h:Ljava/util/Map;

    .line 102
    .line 103
    iput-object v4, p0, Llb/u;->i:Ljava/util/Map;

    .line 104
    .line 105
    iput-object v3, p0, Llb/u;->k:Ljava/lang/String;

    .line 106
    .line 107
    const/4 v1, 0x1

    .line 108
    iput-boolean v1, p0, Llb/u;->m:Z

    .line 109
    .line 110
    sget-object v1, Lxc/t;->a:Lxc/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    .line 112
    monitor-exit v0

    .line 113
    goto :goto_3

    .line 114
    :catchall_0
    move-exception v1

    .line 115
    monitor-exit v0

    .line 116
    throw v1

    .line 117
    :cond_7
    :goto_3
    return-void
.end method

.method private final r()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Llb/u;->m:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Llb/u;->q()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private static final t(Llb/u;Leb/i;Leb/i;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 10

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "$distinctId"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Llb/u;->a:Leb/d;

    .line 12
    .line 13
    invoke-virtual {v0}, Leb/d;->r()Llb/k;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x1

    .line 18
    const/4 v2, 0x0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-interface {v0}, Llb/k;->a()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    move v0, v1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move v0, v2

    .line 30
    :goto_0
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-object p3, p0, Llb/u;->a:Leb/d;

    .line 33
    .line 34
    invoke-virtual {p3}, Leb/d;->o()Llb/i;

    .line 35
    .line 36
    .line 37
    move-result-object p3

    .line 38
    const-string p4, "Network isn\'t connected."

    .line 39
    .line 40
    invoke-interface {p3, p4}, Llb/i;->a(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-direct {p0, p1, p2}, Llb/u;->B(Leb/i;Leb/i;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    iget-object v0, p0, Llb/u;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    iget-object p0, p0, Llb/u;->a:Leb/d;

    .line 56
    .line 57
    invoke-virtual {p0}, Leb/d;->o()Llb/i;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    const-string p1, "Remote Config is being loaded already."

    .line 62
    .line 63
    invoke-interface {p0, p1}, Llb/i;->a(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_2
    :try_start_0
    iget-object v0, p0, Llb/u;->b:Llb/c;

    .line 68
    .line 69
    invoke-virtual {v0}, Llb/c;->k()Lcom/posthog/internal/PostHogRemoteConfigResponse;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    if-eqz v0, :cond_7

    .line 74
    .line 75
    iget-object v3, p0, Llb/u;->g:Ljava/lang/Object;

    .line 76
    .line 77
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 78
    :try_start_1
    invoke-virtual {v0}, Lcom/posthog/internal/PostHogRemoteConfigResponse;->getSessionRecording()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-direct {p0, v4}, Llb/u;->y(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/posthog/internal/PostHogRemoteConfigResponse;->getSurveys()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    invoke-direct {p0, v4}, Llb/u;->z(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0}, Lcom/posthog/internal/PostHogRemoteConfigResponse;->getHasFeatureFlags()Ljava/lang/Boolean;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    if-eqz v0, :cond_3

    .line 97
    .line 98
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    goto :goto_1

    .line 103
    :cond_3
    move v0, v2

    .line 104
    :goto_1
    if-eqz v0, :cond_5

    .line 105
    .line 106
    iget-object v0, p0, Llb/u;->a:Leb/d;

    .line 107
    .line 108
    invoke-virtual {v0}, Leb/d;->v()Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-eqz v0, :cond_6

    .line 113
    .line 114
    invoke-static {p3}, Lrd/n;->b0(Ljava/lang/CharSequence;)Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    xor-int/2addr v0, v1

    .line 119
    if-eqz v0, :cond_4

    .line 120
    .line 121
    move-object v4, p0

    .line 122
    move-object v5, p3

    .line 123
    move-object v6, p4

    .line 124
    move-object v7, p5

    .line 125
    move-object v8, p1

    .line 126
    move-object v9, p2

    .line 127
    invoke-direct/range {v4 .. v9}, Llb/u;->f(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Leb/i;Leb/i;)V

    .line 128
    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_4
    iget-object p4, p0, Llb/u;->a:Leb/d;

    .line 132
    .line 133
    invoke-virtual {p4}, Leb/d;->o()Llb/i;

    .line 134
    .line 135
    .line 136
    move-result-object p4

    .line 137
    new-instance p5, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    .line 141
    .line 142
    const-string v0, "Feature flags not loaded, distinctId is invalid: "

    .line 143
    .line 144
    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p3

    .line 154
    invoke-interface {p4, p3}, Llb/i;->a(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-direct {p0, p1, p2}, Llb/u;->B(Leb/i;Leb/i;)V

    .line 158
    .line 159
    .line 160
    goto :goto_2

    .line 161
    :cond_5
    iget-object p3, p0, Llb/u;->f:Ljava/lang/Object;

    .line 162
    .line 163
    monitor-enter p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 164
    :try_start_2
    iput-boolean v1, p0, Llb/u;->m:Z

    .line 165
    .line 166
    invoke-direct {p0}, Llb/u;->d()V

    .line 167
    .line 168
    .line 169
    sget-object p4, Lxc/t;->a:Lxc/t;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 170
    .line 171
    :try_start_3
    monitor-exit p3

    .line 172
    invoke-direct {p0, p1, p2}, Llb/u;->B(Leb/i;Leb/i;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 173
    .line 174
    .line 175
    :cond_6
    :goto_2
    :try_start_4
    monitor-exit v3

    .line 176
    sget-object p3, Lxc/t;->a:Lxc/t;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 177
    .line 178
    goto :goto_3

    .line 179
    :catchall_0
    move-exception p4

    .line 180
    :try_start_5
    monitor-exit p3

    .line 181
    throw p4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 182
    :catchall_1
    move-exception p3

    .line 183
    :try_start_6
    monitor-exit v3

    .line 184
    throw p3

    .line 185
    :cond_7
    const/4 p3, 0x0

    .line 186
    move v1, v2

    .line 187
    :goto_3
    if-nez p3, :cond_8

    .line 188
    .line 189
    invoke-direct {p0, p1, p2}, Llb/u;->B(Leb/i;Leb/i;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 190
    .line 191
    .line 192
    :cond_8
    if-eqz v1, :cond_9

    .line 193
    .line 194
    :try_start_7
    iget-object p3, p0, Llb/u;->p:Lid/a;

    .line 195
    .line 196
    if-eqz p3, :cond_9

    .line 197
    .line 198
    invoke-interface {p3}, Lid/a;->invoke()Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 199
    .line 200
    .line 201
    goto :goto_4

    .line 202
    :catchall_2
    move-exception p3

    .line 203
    :try_start_8
    iget-object p4, p0, Llb/u;->a:Leb/d;

    .line 204
    .line 205
    invoke-virtual {p4}, Leb/d;->o()Llb/i;

    .line 206
    .line 207
    .line 208
    move-result-object p4

    .line 209
    new-instance p5, Ljava/lang/StringBuilder;

    .line 210
    .line 211
    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    .line 212
    .line 213
    .line 214
    const-string v0, "Executing onRemoteConfigLoaded callback failed: "

    .line 215
    .line 216
    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object p3

    .line 226
    invoke-interface {p4, p3}, Llb/i;->a(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 227
    .line 228
    .line 229
    :cond_9
    :goto_4
    iget-object p0, p0, Llb/u;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 230
    .line 231
    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 232
    .line 233
    .line 234
    goto :goto_5

    .line 235
    :catchall_3
    move-exception p3

    .line 236
    :try_start_9
    invoke-direct {p0, p1, p2}, Llb/u;->B(Leb/i;Leb/i;)V

    .line 237
    .line 238
    .line 239
    iget-object p1, p0, Llb/u;->a:Leb/d;

    .line 240
    .line 241
    invoke-virtual {p1}, Leb/d;->o()Llb/i;

    .line 242
    .line 243
    .line 244
    move-result-object p1

    .line 245
    new-instance p2, Ljava/lang/StringBuilder;

    .line 246
    .line 247
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 248
    .line 249
    .line 250
    const-string p4, "Loading remote config failed: "

    .line 251
    .line 252
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object p2

    .line 262
    invoke-interface {p1, p2}, Llb/i;->a(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 263
    .line 264
    .line 265
    goto :goto_4

    .line 266
    :goto_5
    return-void

    .line 267
    :catchall_4
    move-exception p1

    .line 268
    iget-object p0, p0, Llb/u;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 269
    .line 270
    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 271
    .line 272
    .line 273
    throw p1
.end method

.method private final u(Lcom/posthog/internal/PostHogFlagsResponse;)Lcom/posthog/internal/PostHogFlagsResponse;
    .locals 10

    .line 1
    invoke-virtual {p1}, Lcom/posthog/internal/PostHogFlagsResponse;->getFlags()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-static {v1}, Lyc/e0;->b(I)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-direct {v3, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 19
    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-eqz v4, :cond_1

    .line 34
    .line 35
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    check-cast v4, Ljava/util/Map$Entry;

    .line 40
    .line 41
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    check-cast v4, Lcom/posthog/internal/FeatureFlag;

    .line 50
    .line 51
    invoke-virtual {v4}, Lcom/posthog/internal/FeatureFlag;->getVariant()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    if-nez v6, :cond_0

    .line 56
    .line 57
    invoke-virtual {v4}, Lcom/posthog/internal/FeatureFlag;->getEnabled()Z

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    :cond_0
    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    new-instance v4, Ljava/util/LinkedHashMap;

    .line 70
    .line 71
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    invoke-static {v1}, Lyc/e0;->b(I)I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    invoke-direct {v4, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 80
    .line 81
    .line 82
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-eqz v1, :cond_2

    .line 95
    .line 96
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    check-cast v1, Ljava/util/Map$Entry;

    .line 101
    .line 102
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    check-cast v1, Lcom/posthog/internal/FeatureFlag;

    .line 111
    .line 112
    invoke-virtual {v1}, Lcom/posthog/internal/FeatureFlag;->getMetadata()Lcom/posthog/internal/FeatureFlagMetadata;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-virtual {v1}, Lcom/posthog/internal/FeatureFlagMetadata;->getPayload()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_2
    const/4 v5, 0x0

    .line 125
    const/4 v6, 0x0

    .line 126
    const/4 v7, 0x0

    .line 127
    const/16 v8, 0x39

    .line 128
    .line 129
    const/4 v9, 0x0

    .line 130
    move-object v1, p1

    .line 131
    invoke-static/range {v1 .. v9}, Lcom/posthog/internal/PostHogFlagsResponse;->copy$default(Lcom/posthog/internal/PostHogFlagsResponse;ZLjava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)Lcom/posthog/internal/PostHogFlagsResponse;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    iget-object v0, p0, Llb/u;->f:Ljava/lang/Object;

    .line 136
    .line 137
    monitor-enter v0

    .line 138
    :try_start_0
    invoke-virtual {p1}, Lcom/posthog/internal/PostHogFlagsResponse;->getRequestId()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    iput-object v1, p0, Llb/u;->k:Ljava/lang/String;

    .line 143
    .line 144
    if-eqz v1, :cond_3

    .line 145
    .line 146
    iget-object v2, p0, Llb/u;->a:Leb/d;

    .line 147
    .line 148
    invoke-virtual {v2}, Leb/d;->d()Llb/m;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    if-eqz v2, :cond_3

    .line 153
    .line 154
    const-string v3, "feature_flag_request_id"

    .line 155
    .line 156
    const-string v4, "null cannot be cast to non-null type kotlin.Any"

    .line 157
    .line 158
    invoke-static {v1, v4}, Lkotlin/jvm/internal/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-interface {v2, v3, v1}, Llb/m;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    sget-object v1, Lxc/t;->a:Lxc/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    .line 166
    :cond_3
    monitor-exit v0

    .line 167
    return-object p1

    .line 168
    :catchall_0
    move-exception p1

    .line 169
    monitor-exit v0

    .line 170
    throw p1

    .line 171
    :cond_4
    return-object p1
.end method

.method private final v(Ljava/util/Map;)Ljava/util/Map;
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-static {}, Lyc/e0;->e()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    :cond_0
    invoke-static {p1}, Lyc/e0;->s(Ljava/util/Map;)Ljava/util/Map;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :catchall_0
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Ljava/util/Map$Entry;

    .line 30
    .line 31
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    :try_start_0
    instance-of v3, v2, Ljava/lang/String;

    .line 36
    .line 37
    if-eqz v3, :cond_1

    .line 38
    .line 39
    iget-object v3, p0, Llb/u;->a:Leb/d;

    .line 40
    .line 41
    invoke-virtual {v3}, Leb/d;->E()Llb/b0;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    check-cast v2, Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v3, v2}, Llb/b0;->a(Ljava/lang/String;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    if-eqz v2, :cond_1

    .line 52
    .line 53
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    return-object p1
.end method

.method private final w()V
    .locals 6

    .line 1
    iget-object v0, p0, Llb/u;->f:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Llb/u;->a:Leb/d;

    .line 5
    .line 6
    invoke-virtual {v1}, Leb/d;->d()Llb/m;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_6

    .line 11
    .line 12
    const-string v2, "sessionReplay"

    .line 13
    .line 14
    const/4 v3, 0x2

    .line 15
    const/4 v4, 0x0

    .line 16
    invoke-static {v1, v2, v4, v3, v4}, Llb/m$b;->a(Llb/m;Ljava/lang/String;Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    instance-of v5, v2, Ljava/util/Map;

    .line 21
    .line 22
    if-eqz v5, :cond_0

    .line 23
    .line 24
    check-cast v2, Ljava/util/Map;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move-object v2, v4

    .line 28
    :goto_0
    const-string v5, "featureFlags"

    .line 29
    .line 30
    invoke-static {v1, v5, v4, v3, v4}, Llb/m$b;->a(Llb/m;Ljava/lang/String;Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    instance-of v3, v1, Ljava/util/Map;

    .line 35
    .line 36
    if-eqz v3, :cond_1

    .line 37
    .line 38
    check-cast v1, Ljava/util/Map;

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    move-object v1, v4

    .line 42
    :goto_1
    if-eqz v2, :cond_5

    .line 43
    .line 44
    if-nez v1, :cond_2

    .line 45
    .line 46
    invoke-static {}, Lyc/e0;->e()Ljava/util/Map;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    :cond_2
    invoke-direct {p0, v1, v2}, Llb/u;->m(Ljava/util/Map;Ljava/util/Map;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    iput-boolean v1, p0, Llb/u;->n:Z

    .line 55
    .line 56
    iget-object v1, p0, Llb/u;->a:Leb/d;

    .line 57
    .line 58
    const-string v3, "endpoint"

    .line 59
    .line 60
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    instance-of v3, v2, Ljava/lang/String;

    .line 65
    .line 66
    if-eqz v3, :cond_3

    .line 67
    .line 68
    move-object v4, v2

    .line 69
    check-cast v4, Ljava/lang/String;

    .line 70
    .line 71
    :cond_3
    if-nez v4, :cond_4

    .line 72
    .line 73
    iget-object v2, p0, Llb/u;->a:Leb/d;

    .line 74
    .line 75
    invoke-virtual {v2}, Leb/d;->G()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    :cond_4
    invoke-virtual {v1, v4}, Leb/d;->e0(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :cond_5
    sget-object v1, Lxc/t;->a:Lxc/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    .line 84
    :cond_6
    monitor-exit v0

    .line 85
    return-void

    .line 86
    :catchall_0
    move-exception v1

    .line 87
    monitor-exit v0

    .line 88
    throw v1
.end method

.method private final x()V
    .locals 6

    .line 1
    iget-object v0, p0, Llb/u;->g:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Llb/u;->a:Leb/d;

    .line 5
    .line 6
    invoke-virtual {v1}, Leb/d;->I()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    invoke-direct {p0}, Llb/u;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    .line 14
    .line 15
    monitor-exit v0

    .line 16
    return-void

    .line 17
    :cond_0
    :try_start_1
    iget-object v1, p0, Llb/u;->a:Leb/d;

    .line 18
    .line 19
    invoke-virtual {v1}, Leb/d;->d()Llb/m;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const/4 v2, 0x0

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    const-string v3, "surveys"

    .line 27
    .line 28
    const/4 v4, 0x2

    .line 29
    invoke-static {v1, v3, v2, v4, v2}, Llb/m$b;->a(Llb/m;Ljava/lang/String;Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    move-object v1, v2

    .line 35
    :goto_0
    instance-of v3, v1, Ljava/util/List;

    .line 36
    .line 37
    if-eqz v3, :cond_2

    .line 38
    .line 39
    move-object v2, v1

    .line 40
    check-cast v2, Ljava/util/List;

    .line 41
    .line 42
    :cond_2
    move-object v1, v2

    .line 43
    check-cast v1, Ljava/util/Collection;

    .line 44
    .line 45
    const/4 v3, 0x0

    .line 46
    const/4 v4, 0x1

    .line 47
    if-eqz v1, :cond_4

    .line 48
    .line 49
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_3

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_3
    move v1, v3

    .line 57
    goto :goto_2

    .line 58
    :cond_4
    :goto_1
    move v1, v4

    .line 59
    :goto_2
    if-eqz v1, :cond_5

    .line 60
    .line 61
    invoke-direct {p0}, Llb/u;->e()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    .line 63
    .line 64
    monitor-exit v0

    .line 65
    return-void

    .line 66
    :cond_5
    :try_start_2
    iget-object v1, p0, Llb/u;->a:Leb/d;

    .line 67
    .line 68
    invoke-virtual {v1}, Leb/d;->E()Llb/b0;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v1}, Llb/b0;->b()Lcom/google/gson/Gson;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    invoke-virtual {v5, v2}, Lcom/google/gson/Gson;->B(Ljava/lang/Object;)Lcom/google/gson/i;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-virtual {v1}, Llb/b0;->b()Lcom/google/gson/Gson;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    new-instance v5, Llb/u$a;

    .line 85
    .line 86
    invoke-direct {v5}, Llb/u$a;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v5}, Lcom/google/gson/reflect/a;->d()Ljava/lang/reflect/Type;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    invoke-virtual {v1, v2, v5}, Lcom/google/gson/Gson;->i(Lcom/google/gson/i;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    check-cast v1, Ljava/util/List;

    .line 98
    .line 99
    move-object v2, v1

    .line 100
    check-cast v2, Ljava/util/Collection;

    .line 101
    .line 102
    if-eqz v2, :cond_6

    .line 103
    .line 104
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    if-eqz v2, :cond_7

    .line 109
    .line 110
    :cond_6
    move v3, v4

    .line 111
    :cond_7
    if-eqz v3, :cond_8

    .line 112
    .line 113
    invoke-direct {p0}, Llb/u;->e()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 114
    .line 115
    .line 116
    monitor-exit v0

    .line 117
    return-void

    .line 118
    :cond_8
    :try_start_3
    iput-object v1, p0, Llb/u;->l:Ljava/util/List;

    .line 119
    .line 120
    iput-boolean v4, p0, Llb/u;->o:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 121
    .line 122
    goto :goto_3

    .line 123
    :catchall_0
    move-exception v1

    .line 124
    :try_start_4
    iget-object v2, p0, Llb/u;->a:Leb/d;

    .line 125
    .line 126
    invoke-virtual {v2}, Leb/d;->o()Llb/i;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    new-instance v3, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .line 134
    .line 135
    const-string v4, "Error deserializing surveys: "

    .line 136
    .line 137
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    invoke-interface {v2, v1}, Llb/i;->a(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-direct {p0}, Llb/u;->e()V

    .line 151
    .line 152
    .line 153
    :goto_3
    sget-object v1, Lxc/t;->a:Lxc/t;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 154
    .line 155
    monitor-exit v0

    .line 156
    return-void

    .line 157
    :catchall_1
    move-exception v1

    .line 158
    monitor-exit v0

    .line 159
    throw v1
.end method

.method private final y(Ljava/lang/Object;)V
    .locals 5

    .line 1
    instance-of v0, p1, Ljava/lang/Boolean;

    .line 2
    .line 3
    const-string v1, "sessionReplay"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p1, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iput-boolean v0, p0, Llb/u;->n:Z

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-nez p1, :cond_5

    .line 20
    .line 21
    iget-object p1, p0, Llb/u;->a:Leb/d;

    .line 22
    .line 23
    invoke-virtual {p1}, Leb/d;->d()Llb/m;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-eqz p1, :cond_5

    .line 28
    .line 29
    invoke-interface {p1, v1}, Llb/m;->remove(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_0
    instance-of v0, p1, Ljava/util/Map;

    .line 34
    .line 35
    if-eqz v0, :cond_5

    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    check-cast p1, Ljava/util/Map;

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    move-object p1, v2

    .line 44
    :goto_0
    if-eqz p1, :cond_5

    .line 45
    .line 46
    iget-object v0, p0, Llb/u;->a:Leb/d;

    .line 47
    .line 48
    const-string v3, "endpoint"

    .line 49
    .line 50
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    instance-of v4, v3, Ljava/lang/String;

    .line 55
    .line 56
    if-eqz v4, :cond_2

    .line 57
    .line 58
    move-object v2, v3

    .line 59
    check-cast v2, Ljava/lang/String;

    .line 60
    .line 61
    :cond_2
    if-nez v2, :cond_3

    .line 62
    .line 63
    iget-object v2, p0, Llb/u;->a:Leb/d;

    .line 64
    .line 65
    invoke-virtual {v2}, Leb/d;->G()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    :cond_3
    invoke-virtual {v0, v2}, Leb/d;->e0(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Llb/u;->h:Ljava/util/Map;

    .line 73
    .line 74
    if-nez v0, :cond_4

    .line 75
    .line 76
    invoke-static {}, Lyc/e0;->e()Ljava/util/Map;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    :cond_4
    invoke-direct {p0, v0, p1}, Llb/u;->m(Ljava/util/Map;Ljava/util/Map;)Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    iput-boolean v0, p0, Llb/u;->n:Z

    .line 85
    .line 86
    iget-object v0, p0, Llb/u;->a:Leb/d;

    .line 87
    .line 88
    invoke-virtual {v0}, Leb/d;->d()Llb/m;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    if-eqz v0, :cond_5

    .line 93
    .line 94
    invoke-interface {v0, v1, p1}, Llb/m;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    :cond_5
    :goto_1
    return-void
.end method

.method private final z(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object v0, p0, Llb/u;->a:Leb/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Leb/d;->I()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Llb/u;->e()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    instance-of v0, p1, Ljava/lang/Boolean;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-direct {p0}, Llb/u;->e()V

    .line 18
    .line 19
    .line 20
    goto/16 :goto_3

    .line 21
    .line 22
    :cond_1
    instance-of v0, p1, Ljava/util/Collection;

    .line 23
    .line 24
    if-eqz v0, :cond_9

    .line 25
    .line 26
    instance-of v0, p1, Ljava/util/List;

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    check-cast p1, Ljava/util/List;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    const/4 p1, 0x0

    .line 34
    :goto_0
    move-object v0, p1

    .line 35
    check-cast v0, Ljava/util/Collection;

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    const/4 v2, 0x1

    .line 39
    if-eqz v0, :cond_4

    .line 40
    .line 41
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_3

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_3
    move v0, v1

    .line 49
    goto :goto_2

    .line 50
    :cond_4
    :goto_1
    move v0, v2

    .line 51
    :goto_2
    if-eqz v0, :cond_5

    .line 52
    .line 53
    invoke-direct {p0}, Llb/u;->e()V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_5
    :try_start_0
    iget-object v0, p0, Llb/u;->a:Leb/d;

    .line 58
    .line 59
    invoke-virtual {v0}, Leb/d;->E()Llb/b0;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0}, Llb/b0;->b()Lcom/google/gson/Gson;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v3, p1}, Lcom/google/gson/Gson;->B(Ljava/lang/Object;)Lcom/google/gson/i;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {v0}, Llb/b0;->b()Lcom/google/gson/Gson;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    new-instance v4, Llb/u$b;

    .line 76
    .line 77
    invoke-direct {v4}, Llb/u$b;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v4}, Lcom/google/gson/reflect/a;->d()Ljava/lang/reflect/Type;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    invoke-virtual {v0, v3, v4}, Lcom/google/gson/Gson;->i(Lcom/google/gson/i;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    check-cast v0, Ljava/util/List;

    .line 89
    .line 90
    move-object v3, v0

    .line 91
    check-cast v3, Ljava/util/Collection;

    .line 92
    .line 93
    if-eqz v3, :cond_6

    .line 94
    .line 95
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    if-eqz v3, :cond_7

    .line 100
    .line 101
    :cond_6
    move v1, v2

    .line 102
    :cond_7
    if-eqz v1, :cond_8

    .line 103
    .line 104
    invoke-direct {p0}, Llb/u;->e()V

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :cond_8
    iput-object v0, p0, Llb/u;->l:Ljava/util/List;

    .line 109
    .line 110
    iput-boolean v2, p0, Llb/u;->o:Z

    .line 111
    .line 112
    iget-object v0, p0, Llb/u;->a:Leb/d;

    .line 113
    .line 114
    invoke-virtual {v0}, Leb/d;->d()Llb/m;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    if-eqz v0, :cond_a

    .line 119
    .line 120
    const-string v1, "surveys"

    .line 121
    .line 122
    invoke-interface {v0, v1, p1}, Llb/m;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    .line 124
    .line 125
    goto :goto_3

    .line 126
    :catchall_0
    move-exception p1

    .line 127
    invoke-direct {p0}, Llb/u;->e()V

    .line 128
    .line 129
    .line 130
    iget-object v0, p0, Llb/u;->a:Leb/d;

    .line 131
    .line 132
    invoke-virtual {v0}, Leb/d;->o()Llb/i;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .line 140
    .line 141
    const-string v2, "Error deserializing surveys: "

    .line 142
    .line 143
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-interface {v0, p1}, Llb/i;->a(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    goto :goto_3

    .line 157
    :cond_9
    invoke-direct {p0}, Llb/u;->e()V

    .line 158
    .line 159
    .line 160
    :cond_a
    :goto_3
    return-void
.end method


# virtual methods
.method public final C(Lid/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Llb/u;->p:Lid/a;

    .line 2
    .line 3
    return-void
.end method

.method public final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Llb/u;->f:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    iput-boolean v1, p0, Llb/u;->n:Z

    .line 6
    .line 7
    iput-boolean v1, p0, Llb/u;->m:Z

    .line 8
    .line 9
    invoke-direct {p0}, Llb/u;->d()V

    .line 10
    .line 11
    .line 12
    sget-object v1, Lxc/t;->a:Lxc/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    .line 14
    monitor-exit v0

    .line 15
    iget-object v0, p0, Llb/u;->g:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v0

    .line 18
    :try_start_1
    invoke-direct {p0}, Llb/u;->e()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    .line 20
    .line 21
    monitor-exit v0

    .line 22
    iget-object v0, p0, Llb/u;->a:Leb/d;

    .line 23
    .line 24
    invoke-virtual {v0}, Leb/d;->d()Llb/m;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    const-string v1, "sessionReplay"

    .line 31
    .line 32
    invoke-interface {v0, v1}, Llb/m;->remove(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void

    .line 36
    :catchall_0
    move-exception v1

    .line 37
    monitor-exit v0

    .line 38
    throw v1

    .line 39
    :catchall_1
    move-exception v1

    .line 40
    monitor-exit v0

    .line 41
    throw v1
.end method

.method public final g(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Llb/u;->r()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Llb/u;->h:Ljava/util/Map;

    .line 10
    .line 11
    invoke-direct {p0, p1, p2, v0}, Llb/u;->A(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public final h(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Llb/u;->r()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Llb/u;->i:Ljava/util/Map;

    .line 10
    .line 11
    invoke-direct {p0, p1, p2, v0}, Llb/u;->A(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public final i()Ljava/util/Map;
    .locals 3

    .line 1
    iget-object v0, p0, Llb/u;->f:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Llb/u;->h:Ljava/util/Map;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-static {v1}, Lyc/e0;->q(Ljava/util/Map;)Ljava/util/Map;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    :goto_0
    sget-object v2, Lxc/t;->a:Lxc/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    monitor-exit v0

    .line 17
    return-object v1

    .line 18
    :catchall_0
    move-exception v1

    .line 19
    monitor-exit v0

    .line 20
    throw v1
.end method

.method public final j(Ljava/lang/String;)Lcom/posthog/internal/FeatureFlag;
    .locals 3

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Llb/u;->r()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Llb/u;->f:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    iget-object v1, p0, Llb/u;->j:Ljava/util/Map;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move-object p1, v2

    .line 23
    :goto_0
    instance-of v1, p1, Lcom/posthog/internal/FeatureFlag;

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    move-object v2, p1

    .line 28
    check-cast v2, Lcom/posthog/internal/FeatureFlag;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    :cond_1
    monitor-exit v0

    .line 31
    return-object v2

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    monitor-exit v0

    .line 34
    throw p1
.end method

.method public final k()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-direct {p0}, Llb/u;->r()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Llb/u;->f:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Llb/u;->k:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-object v1

    .line 11
    :catchall_0
    move-exception v1

    .line 12
    monitor-exit v0

    .line 13
    throw v1
.end method

.method public final l()Ljava/util/List;
    .locals 2

    .line 1
    iget-object v0, p0, Llb/u;->g:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Llb/u;->l:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-object v1

    .line 8
    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0

    .line 10
    throw v1
.end method

.method public final n()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Llb/u;->n:Z

    .line 2
    .line 3
    return v0
.end method

.method public final o(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Leb/i;Leb/i;)V
    .locals 9

    .line 1
    const-string v0, "distinctId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Llb/u;->c:Ljava/util/concurrent/ExecutorService;

    .line 7
    .line 8
    new-instance v8, Llb/s;

    .line 9
    .line 10
    move-object v1, v8

    .line 11
    move-object v2, p0

    .line 12
    move-object v3, p1

    .line 13
    move-object v4, p2

    .line 14
    move-object v5, p3

    .line 15
    move-object v6, p4

    .line 16
    move-object v7, p5

    .line 17
    invoke-direct/range {v1 .. v7}, Llb/s;-><init>(Llb/u;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Leb/i;Leb/i;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v8}, Llb/e0;->b(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final s(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Leb/i;Leb/i;)V
    .locals 9

    .line 1
    const-string v0, "distinctId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Llb/u;->c:Ljava/util/concurrent/ExecutorService;

    .line 7
    .line 8
    new-instance v8, Llb/t;

    .line 9
    .line 10
    move-object v1, v8

    .line 11
    move-object v2, p0

    .line 12
    move-object v3, p4

    .line 13
    move-object v4, p5

    .line 14
    move-object v5, p1

    .line 15
    move-object v6, p2

    .line 16
    move-object v7, p3

    .line 17
    invoke-direct/range {v1 .. v7}, Llb/t;-><init>(Llb/u;Leb/i;Leb/i;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v8}, Llb/e0;->b(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
