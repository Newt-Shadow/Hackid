.class public final Lcom/google/android/gms/measurement/internal/xb;
.super Lcom/google/android/gms/measurement/internal/ad;
.source "SourceFile"


# instance fields
.field private final d:Ljava/util/Map;

.field public final e:Lcom/google/android/gms/measurement/internal/a6;

.field public final f:Lcom/google/android/gms/measurement/internal/a6;

.field public final g:Lcom/google/android/gms/measurement/internal/a6;

.field public final h:Lcom/google/android/gms/measurement/internal/a6;

.field public final i:Lcom/google/android/gms/measurement/internal/a6;

.field public final j:Lcom/google/android/gms/measurement/internal/a6;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/pd;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/ad;-><init>(Lcom/google/android/gms/measurement/internal/pd;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/xb;->d:Ljava/util/Map;

    .line 10
    .line 11
    new-instance p1, Lcom/google/android/gms/measurement/internal/a6;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->x()Lcom/google/android/gms/measurement/internal/d6;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    const-string v1, "last_delete_stale"

    .line 23
    .line 24
    const-wide/16 v2, 0x0

    .line 25
    .line 26
    invoke-direct {p1, v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/a6;-><init>(Lcom/google/android/gms/measurement/internal/d6;Ljava/lang/String;J)V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/xb;->e:Lcom/google/android/gms/measurement/internal/a6;

    .line 30
    .line 31
    new-instance p1, Lcom/google/android/gms/measurement/internal/a6;

    .line 32
    .line 33
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->x()Lcom/google/android/gms/measurement/internal/d6;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    const-string v1, "last_delete_stale_batch"

    .line 43
    .line 44
    invoke-direct {p1, v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/a6;-><init>(Lcom/google/android/gms/measurement/internal/d6;Ljava/lang/String;J)V

    .line 45
    .line 46
    .line 47
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/xb;->f:Lcom/google/android/gms/measurement/internal/a6;

    .line 48
    .line 49
    new-instance p1, Lcom/google/android/gms/measurement/internal/a6;

    .line 50
    .line 51
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->x()Lcom/google/android/gms/measurement/internal/d6;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    const-string v1, "backoff"

    .line 61
    .line 62
    invoke-direct {p1, v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/a6;-><init>(Lcom/google/android/gms/measurement/internal/d6;Ljava/lang/String;J)V

    .line 63
    .line 64
    .line 65
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/xb;->g:Lcom/google/android/gms/measurement/internal/a6;

    .line 66
    .line 67
    new-instance p1, Lcom/google/android/gms/measurement/internal/a6;

    .line 68
    .line 69
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->x()Lcom/google/android/gms/measurement/internal/d6;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    const-string v1, "last_upload"

    .line 79
    .line 80
    invoke-direct {p1, v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/a6;-><init>(Lcom/google/android/gms/measurement/internal/d6;Ljava/lang/String;J)V

    .line 81
    .line 82
    .line 83
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/xb;->h:Lcom/google/android/gms/measurement/internal/a6;

    .line 84
    .line 85
    new-instance p1, Lcom/google/android/gms/measurement/internal/a6;

    .line 86
    .line 87
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 88
    .line 89
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->x()Lcom/google/android/gms/measurement/internal/d6;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    const-string v1, "last_upload_attempt"

    .line 97
    .line 98
    invoke-direct {p1, v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/a6;-><init>(Lcom/google/android/gms/measurement/internal/d6;Ljava/lang/String;J)V

    .line 99
    .line 100
    .line 101
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/xb;->i:Lcom/google/android/gms/measurement/internal/a6;

    .line 102
    .line 103
    new-instance p1, Lcom/google/android/gms/measurement/internal/a6;

    .line 104
    .line 105
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 106
    .line 107
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->x()Lcom/google/android/gms/measurement/internal/d6;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    const-string v1, "midnight_offset"

    .line 115
    .line 116
    invoke-direct {p1, v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/a6;-><init>(Lcom/google/android/gms/measurement/internal/d6;Ljava/lang/String;J)V

    .line 117
    .line 118
    .line 119
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/xb;->j:Lcom/google/android/gms/measurement/internal/a6;

    .line 120
    .line 121
    return-void
.end method


# virtual methods
.method protected final l()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method final m(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/d8;)Landroid/util/Pair;
    .locals 1

    .line 1
    sget-object v0, Li6/s;->b:Li6/s;

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/d8;->o(Li6/s;)Z

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/xb;->n(Ljava/lang/String;)Landroid/util/Pair;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    new-instance p1, Landroid/util/Pair;

    .line 15
    .line 16
    const-string p2, ""

    .line 17
    .line 18
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 19
    .line 20
    invoke-direct {p1, p2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    return-object p1
.end method

.method final n(Ljava/lang/String;)Landroid/util/Pair;
    .locals 12

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->f()Lcom/google/android/gms/common/util/d;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-interface {v2}, Lcom/google/android/gms/common/util/d;->elapsedRealtime()J

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/xb;->d:Ljava/util/Map;

    .line 17
    .line 18
    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    check-cast v4, Lcom/google/android/gms/measurement/internal/wb;

    .line 23
    .line 24
    if-eqz v4, :cond_1

    .line 25
    .line 26
    iget-wide v5, v4, Lcom/google/android/gms/measurement/internal/wb;->c:J

    .line 27
    .line 28
    cmp-long v5, v2, v5

    .line 29
    .line 30
    if-ltz v5, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object p1, v4, Lcom/google/android/gms/measurement/internal/wb;->a:Ljava/lang/String;

    .line 34
    .line 35
    iget-boolean v0, v4, Lcom/google/android/gms/measurement/internal/wb;->b:Z

    .line 36
    .line 37
    new-instance v1, Landroid/util/Pair;

    .line 38
    .line 39
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-direct {v1, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    return-object v1

    .line 47
    :cond_1
    :goto_0
    const/4 v5, 0x1

    .line 48
    invoke-static {v5}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->setShouldSkipGmsCoreVersionCheck(Z)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    sget-object v6, Lcom/google/android/gms/measurement/internal/c5;->b:Lcom/google/android/gms/measurement/internal/b5;

    .line 56
    .line 57
    invoke-virtual {v5, p1, v6}, Lcom/google/android/gms/measurement/internal/m;->D(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/b5;)J

    .line 58
    .line 59
    .line 60
    move-result-wide v5

    .line 61
    add-long/2addr v5, v2

    .line 62
    const/4 v7, 0x0

    .line 63
    :try_start_0
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->e()Landroid/content/Context;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-static {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    .line 68
    .line 69
    .line 70
    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    goto :goto_1

    .line 72
    :catch_0
    move-exception v1

    .line 73
    goto :goto_2

    .line 74
    :catch_1
    const/4 v1, 0x0

    .line 75
    if-eqz v4, :cond_2

    .line 76
    .line 77
    :try_start_1
    iget-wide v8, v4, Lcom/google/android/gms/measurement/internal/wb;->c:J

    .line 78
    .line 79
    iget-object v10, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 80
    .line 81
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/w6;->w()Lcom/google/android/gms/measurement/internal/m;

    .line 82
    .line 83
    .line 84
    move-result-object v10

    .line 85
    sget-object v11, Lcom/google/android/gms/measurement/internal/c5;->c:Lcom/google/android/gms/measurement/internal/b5;

    .line 86
    .line 87
    invoke-virtual {v10, p1, v11}, Lcom/google/android/gms/measurement/internal/m;->D(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/b5;)J

    .line 88
    .line 89
    .line 90
    move-result-wide v10

    .line 91
    add-long/2addr v8, v10

    .line 92
    cmp-long v2, v2, v8

    .line 93
    .line 94
    if-gez v2, :cond_2

    .line 95
    .line 96
    new-instance v1, Landroid/util/Pair;

    .line 97
    .line 98
    iget-object v2, v4, Lcom/google/android/gms/measurement/internal/wb;->a:Ljava/lang/String;

    .line 99
    .line 100
    iget-boolean v3, v4, Lcom/google/android/gms/measurement/internal/wb;->b:Z

    .line 101
    .line 102
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    return-object v1

    .line 110
    :cond_2
    :goto_1
    if-nez v1, :cond_3

    .line 111
    .line 112
    new-instance v1, Landroid/util/Pair;

    .line 113
    .line 114
    const-string v2, "00000000-0000-0000-0000-000000000000"

    .line 115
    .line 116
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 117
    .line 118
    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    return-object v1

    .line 122
    :cond_3
    invoke-virtual {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    if-eqz v2, :cond_4

    .line 127
    .line 128
    new-instance v3, Lcom/google/android/gms/measurement/internal/wb;

    .line 129
    .line 130
    invoke-virtual {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    invoke-direct {v3, v2, v1, v5, v6}, Lcom/google/android/gms/measurement/internal/wb;-><init>(Ljava/lang/String;ZJ)V

    .line 135
    .line 136
    .line 137
    goto :goto_3

    .line 138
    :cond_4
    new-instance v3, Lcom/google/android/gms/measurement/internal/wb;

    .line 139
    .line 140
    invoke-virtual {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    invoke-direct {v3, v0, v1, v5, v6}, Lcom/google/android/gms/measurement/internal/wb;-><init>(Ljava/lang/String;ZJ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 145
    .line 146
    .line 147
    goto :goto_3

    .line 148
    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 149
    .line 150
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p5;->v()Lcom/google/android/gms/measurement/internal/n5;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    const-string v3, "Unable to get advertising id"

    .line 159
    .line 160
    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    new-instance v3, Lcom/google/android/gms/measurement/internal/wb;

    .line 164
    .line 165
    invoke-direct {v3, v0, v7, v5, v6}, Lcom/google/android/gms/measurement/internal/wb;-><init>(Ljava/lang/String;ZJ)V

    .line 166
    .line 167
    .line 168
    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/xb;->d:Ljava/util/Map;

    .line 169
    .line 170
    invoke-interface {v0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    invoke-static {v7}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->setShouldSkipGmsCoreVersionCheck(Z)V

    .line 174
    .line 175
    .line 176
    new-instance p1, Landroid/util/Pair;

    .line 177
    .line 178
    iget-object v0, v3, Lcom/google/android/gms/measurement/internal/wb;->a:Ljava/lang/String;

    .line 179
    .line 180
    iget-boolean v1, v3, Lcom/google/android/gms/measurement/internal/wb;->b:Z

    .line 181
    .line 182
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    return-object p1
.end method

.method final o(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 2
    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/xb;->n(Ljava/lang/String;)Landroid/util/Pair;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p1, Ljava/lang/String;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-string p1, "00000000-0000-0000-0000-000000000000"

    .line 16
    .line 17
    :goto_0
    invoke-static {}, Lcom/google/android/gms/measurement/internal/yd;->C()Ljava/security/MessageDigest;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    if-nez p2, :cond_1

    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    return-object p1

    .line 25
    :cond_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 26
    .line 27
    new-instance v1, Ljava/math/BigInteger;

    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p2, p1}, Ljava/security/MessageDigest;->digest([B)[B

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const/4 p2, 0x1

    .line 38
    invoke-direct {v1, p2, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 39
    .line 40
    .line 41
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const-string p2, "%032X"

    .line 46
    .line 47
    invoke-static {v0, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    return-object p1
.end method
