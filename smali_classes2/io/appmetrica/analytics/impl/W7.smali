.class public final Lio/appmetrica/analytics/impl/W7;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/O;

.field public final b:Lio/appmetrica/analytics/impl/c2;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 4
    invoke-static {}, Lio/appmetrica/analytics/impl/za;->j()Lio/appmetrica/analytics/impl/za;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/za;->b()Lio/appmetrica/analytics/impl/O;

    move-result-object v0

    .line 5
    invoke-static {}, Lio/appmetrica/analytics/impl/za;->j()Lio/appmetrica/analytics/impl/za;

    move-result-object v1

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/za;->c()Lio/appmetrica/analytics/impl/c2;

    move-result-object v1

    .line 6
    invoke-direct {p0, v0, v1}, Lio/appmetrica/analytics/impl/W7;-><init>(Lio/appmetrica/analytics/impl/O;Lio/appmetrica/analytics/impl/c2;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/O;Lio/appmetrica/analytics/impl/c2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/appmetrica/analytics/impl/W7;->a:Lio/appmetrica/analytics/impl/O;

    .line 3
    iput-object p2, p0, Lio/appmetrica/analytics/impl/W7;->b:Lio/appmetrica/analytics/impl/c2;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 7

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/W7;->a:Lio/appmetrica/analytics/impl/O;

    .line 2
    .line 3
    new-instance v1, Lio/appmetrica/analytics/impl/pn;

    .line 4
    .line 5
    const/4 v2, 0x5

    .line 6
    const/16 v3, 0x1f4

    .line 7
    .line 8
    invoke-direct {v1, v2, v3}, Lio/appmetrica/analytics/impl/pn;-><init>(II)V

    .line 9
    .line 10
    .line 11
    monitor-enter v0

    .line 12
    const/4 v2, 0x1

    .line 13
    :try_start_0
    invoke-virtual {v0, v1, v2}, Lio/appmetrica/analytics/impl/O;->a(Lio/appmetrica/analytics/impl/Fi;Z)Ljava/util/concurrent/FutureTask;

    .line 14
    .line 15
    .line 16
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 17
    :try_start_1
    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 18
    .line 19
    .line 20
    :catch_0
    :try_start_2
    iget-object v1, v0, Lio/appmetrica/analytics/impl/O;->k:Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 21
    .line 22
    monitor-exit v0

    .line 23
    invoke-virtual {v1}, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdvertisingIdsHolder;->getYandex()Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;->isValid()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    iget-object v0, v0, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;->mAdTrackingInfo:Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfo;

    .line 34
    .line 35
    invoke-static {v0}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, v0, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfo;->advId:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {v0}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    sget-object v1, Lrd/d;->b:Ljava/nio/charset/Charset;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    :try_start_3
    const-string v1, "MD5"

    .line 50
    .line 51
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    .line 56
    .line 57
    .line 58
    move-result-object v0
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_1

    .line 59
    goto :goto_0

    .line 60
    :catch_1
    const/4 v0, 0x0

    .line 61
    new-array v0, v0, [B

    .line 62
    .line 63
    :goto_0
    invoke-static {v0}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->toHexString([B)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    goto :goto_2

    .line 68
    :cond_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/W7;->b:Lio/appmetrica/analytics/impl/c2;

    .line 69
    .line 70
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/c2;->getAppSetId()Lio/appmetrica/analytics/coreapi/internal/identifiers/AppSetId;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lio/appmetrica/analytics/coreapi/internal/identifiers/AppSetId;->getId()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    if-eqz v1, :cond_2

    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-nez v0, :cond_1

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_1
    :try_start_4
    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 88
    .line 89
    .line 90
    const-string v0, "00000000-0000-0000-0000-000000000000"

    .line 91
    .line 92
    invoke-static {v1, v0}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-nez v0, :cond_2

    .line 97
    .line 98
    const-string v2, "-"

    .line 99
    .line 100
    const-string v3, ""

    .line 101
    .line 102
    const/4 v4, 0x0

    .line 103
    const/4 v5, 0x4

    .line 104
    const/4 v6, 0x0

    .line 105
    invoke-static/range {v1 .. v6}, Lrd/n;->D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    goto :goto_2

    .line 110
    :catchall_0
    :cond_2
    :goto_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    const-string v2, "-"

    .line 119
    .line 120
    const-string v3, ""

    .line 121
    .line 122
    const/4 v4, 0x0

    .line 123
    const/4 v5, 0x4

    .line 124
    const/4 v6, 0x0

    .line 125
    invoke-static/range {v1 .. v6}, Lrd/n;->D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 130
    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    :goto_2
    return-object v0

    .line 136
    :catchall_1
    move-exception v1

    .line 137
    monitor-exit v0

    .line 138
    throw v1
.end method
