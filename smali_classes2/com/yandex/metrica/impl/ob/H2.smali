.class public Lcom/yandex/metrica/impl/ob/H2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile l:Lcom/yandex/metrica/impl/ob/H2;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static final m:Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/net/wifi/WifiManager;

.field private c:Lcom/yandex/metrica/impl/ob/yd;

.field private d:Lcom/yandex/metrica/impl/ob/Ed;

.field private e:Lcom/yandex/metrica/impl/ob/gm;

.field private f:Lcom/yandex/metrica/impl/ob/lm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/metrica/impl/ob/lm<",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/yandex/metrica/impl/ob/pi;

.field private final h:Lcom/yandex/metrica/impl/ob/zd;

.field private final i:Lcom/yandex/metrica/impl/ob/zd;

.field private final j:Lcom/yandex/metrica/impl/ob/I2;

.field private final k:Lcom/yandex/metrica/impl/ob/J2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/yandex/metrica/impl/ob/H2;->m:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;Lcom/yandex/metrica/impl/ob/Ed;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/yd;

    .line 2
    invoke-virtual {p3}, Lcom/yandex/metrica/impl/ob/Ed;->a()Lcom/yandex/metrica/impl/ob/wd;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yandex/metrica/impl/ob/yd;-><init>(Lcom/yandex/metrica/impl/ob/wd;)V

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/yandex/metrica/impl/ob/H2;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;Lcom/yandex/metrica/impl/ob/Ed;Lcom/yandex/metrica/impl/ob/yd;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;Lcom/yandex/metrica/impl/ob/Ed;Lcom/yandex/metrica/impl/ob/gm;Lcom/yandex/metrica/impl/ob/yd;Lcom/yandex/metrica/impl/ob/G1;Lcom/yandex/metrica/impl/ob/I2;Lcom/yandex/metrica/impl/ob/J2;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/H2;->a:Landroid/content/Context;

    .line 9
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/H2;->b:Landroid/net/wifi/WifiManager;

    .line 10
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/H2;->d:Lcom/yandex/metrica/impl/ob/Ed;

    .line 11
    iput-object p5, p0, Lcom/yandex/metrica/impl/ob/H2;->c:Lcom/yandex/metrica/impl/ob/yd;

    .line 12
    invoke-virtual {p6, p5}, Lcom/yandex/metrica/impl/ob/G1;->d(Lcom/yandex/metrica/impl/ob/yd;)Lcom/yandex/metrica/impl/ob/zd;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/H2;->h:Lcom/yandex/metrica/impl/ob/zd;

    .line 13
    invoke-virtual {p6, p5}, Lcom/yandex/metrica/impl/ob/G1;->e(Lcom/yandex/metrica/impl/ob/yd;)Lcom/yandex/metrica/impl/ob/zd;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/H2;->i:Lcom/yandex/metrica/impl/ob/zd;

    .line 14
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/H2;->e:Lcom/yandex/metrica/impl/ob/gm;

    .line 15
    iput-object p7, p0, Lcom/yandex/metrica/impl/ob/H2;->j:Lcom/yandex/metrica/impl/ob/I2;

    .line 16
    iput-object p8, p0, Lcom/yandex/metrica/impl/ob/H2;->k:Lcom/yandex/metrica/impl/ob/J2;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;Lcom/yandex/metrica/impl/ob/Ed;Lcom/yandex/metrica/impl/ob/yd;)V
    .locals 9

    .line 4
    new-instance v4, Lcom/yandex/metrica/impl/ob/gm;

    invoke-direct {v4}, Lcom/yandex/metrica/impl/ob/gm;-><init>()V

    new-instance v6, Lcom/yandex/metrica/impl/ob/G1;

    invoke-direct {v6}, Lcom/yandex/metrica/impl/ob/G1;-><init>()V

    new-instance v7, Lcom/yandex/metrica/impl/ob/I2;

    invoke-direct {v7}, Lcom/yandex/metrica/impl/ob/I2;-><init>()V

    .line 5
    invoke-static {}, Lcom/yandex/metrica/impl/ob/F0;->g()Lcom/yandex/metrica/impl/ob/F0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/F0;->h()Lcom/yandex/metrica/impl/ob/f1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/f1;->d()Lcom/yandex/metrica/impl/ob/J2;

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 6
    invoke-direct/range {v0 .. v8}, Lcom/yandex/metrica/impl/ob/H2;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;Lcom/yandex/metrica/impl/ob/Ed;Lcom/yandex/metrica/impl/ob/gm;Lcom/yandex/metrica/impl/ob/yd;Lcom/yandex/metrica/impl/ob/G1;Lcom/yandex/metrica/impl/ob/I2;Lcom/yandex/metrica/impl/ob/J2;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/H2;
    .locals 4

    .line 2
    sget-object v0, Lcom/yandex/metrica/impl/ob/H2;->l:Lcom/yandex/metrica/impl/ob/H2;

    if-nez v0, :cond_1

    .line 3
    sget-object v0, Lcom/yandex/metrica/impl/ob/H2;->m:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/yandex/metrica/impl/ob/H2;->l:Lcom/yandex/metrica/impl/ob/H2;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lcom/yandex/metrica/impl/ob/H2;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    new-instance v3, Lcom/yandex/metrica/impl/ob/Ed;

    invoke-direct {v3}, Lcom/yandex/metrica/impl/ob/Ed;-><init>()V

    .line 7
    invoke-direct {v1, p0, v2, v3}, Lcom/yandex/metrica/impl/ob/H2;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;Lcom/yandex/metrica/impl/ob/Ed;)V

    .line 8
    sput-object v1, Lcom/yandex/metrica/impl/ob/H2;->l:Lcom/yandex/metrica/impl/ob/H2;

    .line 9
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 10
    :cond_1
    :goto_0
    sget-object p0, Lcom/yandex/metrica/impl/ob/H2;->l:Lcom/yandex/metrica/impl/ob/H2;

    return-object p0
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/H2;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/H2;->c()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/yandex/metrica/impl/ob/H2;)Lcom/yandex/metrica/impl/ob/J2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/H2;->k:Lcom/yandex/metrica/impl/ob/J2;

    return-object p0
.end method

.method private c()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/F2;",
            ">;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 3
    :try_start_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/H2;->g:Lcom/yandex/metrica/impl/ob/pi;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    move v3, v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v3, v2

    .line 12
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 13
    if-eqz v3, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/pi;->f()Lcom/yandex/metrica/impl/ob/Sh;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-boolean v0, v0, Lcom/yandex/metrica/impl/ob/Sh;->p:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    move v0, v1

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    move v0, v2

    .line 26
    :goto_1
    monitor-exit p0

    .line 27
    const/4 v3, 0x0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/H2;->h:Lcom/yandex/metrica/impl/ob/zd;

    .line 31
    .line 32
    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/H2;->a:Landroid/content/Context;

    .line 33
    .line 34
    invoke-interface {v0, v4}, Lcom/yandex/metrica/impl/ob/zd;->a(Landroid/content/Context;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/H2;->b:Landroid/net/wifi/WifiManager;

    .line 41
    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    :try_start_3
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 48
    goto :goto_2

    .line 49
    :catchall_0
    :cond_2
    move-object v0, v3

    .line 50
    :goto_2
    monitor-enter p0

    .line 51
    :try_start_4
    monitor-enter p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 52
    :try_start_5
    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/H2;->g:Lcom/yandex/metrica/impl/ob/pi;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 53
    .line 54
    if-eqz v4, :cond_3

    .line 55
    .line 56
    move v5, v1

    .line 57
    goto :goto_3

    .line 58
    :cond_3
    move v5, v2

    .line 59
    :goto_3
    :try_start_6
    monitor-exit p0

    .line 60
    if-eqz v5, :cond_4

    .line 61
    .line 62
    invoke-virtual {v4}, Lcom/yandex/metrica/impl/ob/pi;->f()Lcom/yandex/metrica/impl/ob/Sh;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    iget-boolean v4, v4, Lcom/yandex/metrica/impl/ob/Sh;->q:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 67
    .line 68
    if-eqz v4, :cond_4

    .line 69
    .line 70
    move v4, v1

    .line 71
    goto :goto_4

    .line 72
    :cond_4
    move v4, v2

    .line 73
    :goto_4
    monitor-exit p0

    .line 74
    if-eqz v4, :cond_5

    .line 75
    .line 76
    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/H2;->c:Lcom/yandex/metrica/impl/ob/yd;

    .line 77
    .line 78
    iget-object v5, p0, Lcom/yandex/metrica/impl/ob/H2;->a:Landroid/content/Context;

    .line 79
    .line 80
    invoke-virtual {v4, v5}, Lcom/yandex/metrica/impl/ob/yd;->c(Landroid/content/Context;)Z

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    if-eqz v4, :cond_5

    .line 85
    .line 86
    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/H2;->b:Landroid/net/wifi/WifiManager;

    .line 87
    .line 88
    if-eqz v4, :cond_5

    .line 89
    .line 90
    :try_start_7
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    if-eqz v4, :cond_6

    .line 95
    .line 96
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    const-string v6, "00:00:00:00:00:00"

    .line 101
    .line 102
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    if-nez v5, :cond_5

    .line 107
    .line 108
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    const-string v6, "02:00:00:00:00:00"

    .line 113
    .line 114
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v5

    .line 118
    if-nez v5, :cond_5

    .line 119
    .line 120
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    .line 121
    .line 122
    .line 123
    move-result v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 124
    if-nez v5, :cond_6

    .line 125
    .line 126
    :catchall_1
    :cond_5
    move-object v4, v3

    .line 127
    :cond_6
    if-nez v4, :cond_7

    .line 128
    .line 129
    move-object v5, v3

    .line 130
    goto :goto_5

    .line 131
    :cond_7
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v5

    .line 135
    :goto_5
    new-instance v6, Ljava/util/ArrayList;

    .line 136
    .line 137
    if-nez v0, :cond_8

    .line 138
    .line 139
    move v7, v2

    .line 140
    goto :goto_6

    .line 141
    :cond_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 142
    .line 143
    .line 144
    move-result v7

    .line 145
    :goto_6
    if-nez v4, :cond_9

    .line 146
    .line 147
    move v1, v2

    .line 148
    :cond_9
    add-int/2addr v7, v1

    .line 149
    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 150
    .line 151
    .line 152
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/A2;->b(Ljava/util/Collection;)Z

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    if-nez v1, :cond_c

    .line 157
    .line 158
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    :cond_a
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    if-eqz v1, :cond_f

    .line 167
    .line 168
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 173
    .line 174
    if-eqz v1, :cond_a

    .line 175
    .line 176
    iget-object v4, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 177
    .line 178
    const-string v7, "02:00:00:00:00:00"

    .line 179
    .line 180
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v4

    .line 184
    if-nez v4, :cond_a

    .line 185
    .line 186
    :try_start_8
    iget-object v4, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 187
    .line 188
    if-eqz v4, :cond_b

    .line 189
    .line 190
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    move-result v7
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_0

    .line 194
    :try_start_9
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 195
    .line 196
    invoke-virtual {v4, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v4

    .line 200
    const-string v8, ":"

    .line 201
    .line 202
    const-string v9, ""

    .line 203
    .line 204
    invoke-virtual {v4, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v4
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_1

    .line 208
    move-object v9, v4

    .line 209
    goto :goto_8

    .line 210
    :cond_b
    move v11, v2

    .line 211
    move-object v9, v3

    .line 212
    goto :goto_9

    .line 213
    :catch_0
    move v7, v2

    .line 214
    :catch_1
    move-object v9, v3

    .line 215
    :goto_8
    move v11, v7

    .line 216
    :goto_9
    new-instance v4, Lcom/yandex/metrica/impl/ob/F2;

    .line 217
    .line 218
    iget-object v10, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 219
    .line 220
    iget v12, v1, Landroid/net/wifi/ScanResult;->level:I

    .line 221
    .line 222
    iget-object v7, p0, Lcom/yandex/metrica/impl/ob/H2;->e:Lcom/yandex/metrica/impl/ob/gm;

    .line 223
    .line 224
    iget-wide v13, v1, Landroid/net/wifi/ScanResult;->timestamp:J

    .line 225
    .line 226
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 227
    .line 228
    invoke-virtual {v7, v13, v14, v1}, Lcom/yandex/metrica/impl/ob/gm;->a(JLjava/util/concurrent/TimeUnit;)J

    .line 229
    .line 230
    .line 231
    move-result-wide v7

    .line 232
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 233
    .line 234
    .line 235
    move-result-object v13

    .line 236
    move-object v8, v4

    .line 237
    invoke-direct/range {v8 .. v13}, Lcom/yandex/metrica/impl/ob/F2;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Long;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    goto :goto_7

    .line 244
    :cond_c
    if-eqz v4, :cond_f

    .line 245
    .line 246
    if-nez v5, :cond_d

    .line 247
    .line 248
    move-object v8, v3

    .line 249
    goto :goto_a

    .line 250
    :cond_d
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 251
    .line 252
    invoke-virtual {v5, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    const-string v1, ":"

    .line 257
    .line 258
    const-string v2, ""

    .line 259
    .line 260
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    move-object v8, v0

    .line 265
    :goto_a
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    if-nez v0, :cond_e

    .line 270
    .line 271
    goto :goto_b

    .line 272
    :cond_e
    const-string v1, "\""

    .line 273
    .line 274
    const-string v2, ""

    .line 275
    .line 276
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v3

    .line 280
    :goto_b
    move-object v9, v3

    .line 281
    new-instance v0, Lcom/yandex/metrica/impl/ob/F2;

    .line 282
    .line 283
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getRssi()I

    .line 284
    .line 285
    .line 286
    move-result v11

    .line 287
    const-wide/16 v1, 0x0

    .line 288
    .line 289
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 290
    .line 291
    .line 292
    move-result-object v12

    .line 293
    const/4 v10, 0x1

    .line 294
    move-object v7, v0

    .line 295
    invoke-direct/range {v7 .. v12}, Lcom/yandex/metrica/impl/ob/F2;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Long;)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    .line 300
    .line 301
    :cond_f
    invoke-static {v6}, Lcom/yandex/metrica/impl/ob/A2;->c(Ljava/util/Collection;)Ljava/util/List;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    return-object v0

    .line 306
    :catchall_2
    move-exception v0

    .line 307
    :try_start_a
    monitor-exit p0

    .line 308
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 309
    :catchall_3
    move-exception v0

    .line 310
    monitor-exit p0

    .line 311
    throw v0

    .line 312
    :catchall_4
    move-exception v0

    .line 313
    :try_start_b
    monitor-exit p0

    .line 314
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 315
    :catchall_5
    move-exception v0

    .line 316
    monitor-exit p0

    .line 317
    throw v0
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/ob/I2;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/H2;->j:Lcom/yandex/metrica/impl/ob/I2;

    return-object v0
.end method

.method public a(Lcom/yandex/metrica/impl/ob/pi;)V
    .locals 6

    .line 11
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/H2;->g:Lcom/yandex/metrica/impl/ob/pi;

    .line 12
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/H2;->d:Lcom/yandex/metrica/impl/ob/Ed;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/Ed;->a(Lcom/yandex/metrica/impl/ob/pi;)V

    .line 13
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/H2;->c:Lcom/yandex/metrica/impl/ob/yd;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/H2;->d:Lcom/yandex/metrica/impl/ob/Ed;

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/Ed;->a()Lcom/yandex/metrica/impl/ob/wd;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/yd;->a(Lcom/yandex/metrica/impl/ob/wd;)V

    .line 14
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/pi;->d()Lcom/yandex/metrica/impl/ob/Ph;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 15
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/H2;->j:Lcom/yandex/metrica/impl/ob/I2;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/pi;->d()Lcom/yandex/metrica/impl/ob/Ph;

    move-result-object p1

    .line 16
    iget-object v1, v0, Lcom/yandex/metrica/impl/ob/G0;->a:Lcom/yandex/metrica/impl/ob/G;

    .line 17
    iget-wide v2, p1, Lcom/yandex/metrica/impl/ob/Ph;->b:J

    .line 18
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/I2;->a(Lcom/yandex/metrica/impl/ob/Ph;)J

    move-result-wide v4

    .line 19
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/yandex/metrica/impl/ob/G;->a(JJ)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/H2;->d:Lcom/yandex/metrica/impl/ob/Ed;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/Ed;->a(Z)V

    .line 21
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/H2;->c:Lcom/yandex/metrica/impl/ob/yd;

    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/H2;->d:Lcom/yandex/metrica/impl/ob/Ed;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/Ed;->a()Lcom/yandex/metrica/impl/ob/wd;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/yd;->a(Lcom/yandex/metrica/impl/ob/wd;)V

    return-void
.end method

.method public declared-synchronized a(Ljava/util/concurrent/CountDownLatch;Lcom/yandex/metrica/impl/ob/V;)Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    monitor-enter p0

    .line 22
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/H2;->i:Lcom/yandex/metrica/impl/ob/zd;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/H2;->a:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/yandex/metrica/impl/ob/zd;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 23
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/H2;->f:Lcom/yandex/metrica/impl/ob/lm;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/yandex/metrica/impl/ob/G2;

    invoke-direct {v0, p0, p2, p1}, Lcom/yandex/metrica/impl/ob/G2;-><init>(Lcom/yandex/metrica/impl/ob/H2;Lcom/yandex/metrica/impl/ob/V;Ljava/util/concurrent/CountDownLatch;)V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/H2;->f:Lcom/yandex/metrica/impl/ob/lm;

    .line 25
    :cond_0
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/H2;->k:Lcom/yandex/metrica/impl/ob/J2;

    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/H2;->f:Lcom/yandex/metrica/impl/ob/lm;

    invoke-virtual {p1, p2}, Lcom/yandex/metrica/impl/ob/J2;->a(Lcom/yandex/metrica/impl/ob/lm;)V

    .line 26
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/H2;->b:Landroid/net/wifi/WifiManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_1

    .line 27
    :try_start_1
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_1
    const/4 p1, 0x0

    .line 28
    :goto_0
    :try_start_2
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return p1

    :cond_2
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/yandex/metrica/impl/ob/F2;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/H2;->c:Lcom/yandex/metrica/impl/ob/yd;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/H2;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/yd;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_2

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/H2;->b:Landroid/net/wifi/WifiManager;

    .line 4
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_1

    .line 5
    :try_start_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, v0

    .line 6
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_2
    if-nez v0, :cond_3

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object v0

    .line 8
    :cond_3
    :try_start_3
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/H2;->c()Ljava/util/List;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return-object v0

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
