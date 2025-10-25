.class public final Lcom/yandex/metrica/impl/ob/Pl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/yandex/metrica/impl/ob/xb;

.field private final c:Lcom/yandex/metrica/impl/ob/Bb;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 2
    invoke-static {}, Lcom/yandex/metrica/impl/ob/F0;->g()Lcom/yandex/metrica/impl/ob/F0;

    move-result-object v0

    const-string v1, "GlobalServiceLocator.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/F0;->r()Lcom/yandex/metrica/impl/ob/xb;

    move-result-object v0

    const-string v2, "GlobalServiceLocator.get\u2026ternalAdvertisingIdGetter"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/yandex/metrica/impl/ob/F0;->g()Lcom/yandex/metrica/impl/ob/F0;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/F0;->a()Lcom/yandex/metrica/impl/ob/Bb;

    move-result-object v1

    const-string v2, "GlobalServiceLocator.getInstance().appSetIdGetter"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, v0, v1}, Lcom/yandex/metrica/impl/ob/Pl;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/xb;Lcom/yandex/metrica/impl/ob/Bb;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/xb;Lcom/yandex/metrica/impl/ob/Bb;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Pl;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/Pl;->b:Lcom/yandex/metrica/impl/ob/xb;

    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/Pl;->c:Lcom/yandex/metrica/impl/ob/Bb;

    return-void
.end method

.method private final b()Ljava/lang/String;
    .locals 7

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v0, "UUID.randomUUID().toString()"

    .line 10
    .line 11
    invoke-static {v1, v0}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v2, "-"

    .line 15
    .line 16
    const-string v3, ""

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    const/4 v5, 0x4

    .line 20
    const/4 v6, 0x0

    .line 21
    invoke-static/range {v1 .. v6}, Lrd/n;->D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 26
    .line 27
    const-string v2, "Locale.US"

    .line 28
    .line 29
    invoke-static {v1, v2}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const-string v1, "(this as java.lang.String).toLowerCase(locale)"

    .line 39
    .line 40
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-object v0

    .line 44
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    .line 45
    .line 46
    const-string v1, "null cannot be cast to non-null type java.lang.String"

    .line 47
    .line 48
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Pl;->b:Lcom/yandex/metrica/impl/ob/xb;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Pl;->a:Landroid/content/Context;

    .line 4
    .line 5
    new-instance v2, Lcom/yandex/metrica/impl/ob/Hb;

    .line 6
    .line 7
    const/4 v3, 0x5

    .line 8
    const/16 v4, 0x1f4

    .line 9
    .line 10
    invoke-direct {v2, v3, v4}, Lcom/yandex/metrica/impl/ob/Hb;-><init>(II)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/xb;->a(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/Gb;)Lcom/yandex/metrica/impl/ob/zb;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "advertisingIdGetter.getI\u2026sedRetryStrategy(5, 500))"

    .line 18
    .line 19
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/zb;->c()Lcom/yandex/metrica/impl/ob/ub;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "advertisingIdGetter.getI\u2026yStrategy(5, 500)).yandex"

    .line 27
    .line 28
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/ub;->a()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    const/4 v2, 0x0

    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/ub;->a:Lcom/yandex/metrica/impl/ob/tb;

    .line 39
    .line 40
    invoke-static {v0}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/tb;->b:Ljava/lang/String;

    .line 44
    .line 45
    invoke-static {v0}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    const-string v1, "yandexAdvId.mAdTrackingInfo!!.advId!!"

    .line 49
    .line 50
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    sget-object v1, Lrd/d;->b:Ljava/nio/charset/Charset;

    .line 54
    .line 55
    if-eqz v0, :cond_0

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    const-string v1, "(this as java.lang.String).getBytes(charset)"

    .line 62
    .line 63
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :try_start_0
    const-string v1, "MD5"

    .line 67
    .line 68
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    .line 73
    .line 74
    .line 75
    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    goto :goto_0

    .line 77
    :catch_0
    new-array v0, v2, [B

    .line 78
    .line 79
    :goto_0
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/b;->a([B)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    const-string v1, "StringUtils.toHexString(\u2026!.advId!!.toByteArray()))"

    .line 84
    .line 85
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    .line 90
    .line 91
    const-string v1, "null cannot be cast to non-null type java.lang.String"

    .line 92
    .line 93
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw v0

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Pl;->c:Lcom/yandex/metrica/impl/ob/Bb;

    .line 98
    .line 99
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Bb;->a()Lcom/yandex/metrica/impl/ob/Ab;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Ab;->a()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    if-eqz v3, :cond_4

    .line 108
    .line 109
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    const/4 v1, 0x1

    .line 114
    if-nez v0, :cond_2

    .line 115
    .line 116
    move v0, v1

    .line 117
    goto :goto_1

    .line 118
    :cond_2
    move v0, v2

    .line 119
    :goto_1
    if-nez v0, :cond_3

    .line 120
    .line 121
    :try_start_1
    invoke-static {v3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    .line 123
    .line 124
    move v0, v1

    .line 125
    goto :goto_2

    .line 126
    :catchall_0
    move v0, v2

    .line 127
    :goto_2
    if-eqz v0, :cond_3

    .line 128
    .line 129
    const-string v0, "00000000-0000-0000-0000-000000000000"

    .line 130
    .line 131
    invoke-static {v3, v0}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    xor-int/2addr v0, v1

    .line 136
    if-eqz v0, :cond_3

    .line 137
    .line 138
    move v2, v1

    .line 139
    :cond_3
    if-eqz v2, :cond_4

    .line 140
    .line 141
    const-string v4, "-"

    .line 142
    .line 143
    const-string v5, ""

    .line 144
    .line 145
    const/4 v6, 0x0

    .line 146
    const/4 v7, 0x4

    .line 147
    const/4 v8, 0x0

    .line 148
    invoke-static/range {v3 .. v8}, Lrd/n;->D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    goto :goto_3

    .line 153
    :cond_4
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/Pl;->b()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    :goto_3
    return-object v0
.end method
