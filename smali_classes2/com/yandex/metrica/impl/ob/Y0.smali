.class public final Lcom/yandex/metrica/impl/ob/Y0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lorg/json/JSONObject;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/yandex/metrica/impl/ob/q0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/q0;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/json/JSONObject;

    .line 5
    .line 6
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/Y0;->a:Lorg/json/JSONObject;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Y0;->b:Landroid/content/Context;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/Y0;->c:Lcom/yandex/metrica/impl/ob/q0;

    .line 14
    .line 15
    return-void
.end method

.method static a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private d()V
    .locals 7

    .line 1
    const/16 v0, 0x18

    .line 2
    .line 3
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/A2;->a(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Y0;->a:Lorg/json/JSONObject;

    .line 10
    .line 11
    new-instance v1, Lorg/json/JSONObject;

    .line 12
    .line 13
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v2, "dfid"

    .line 17
    .line 18
    invoke-static {v0, v2, v1}, Lcom/yandex/metrica/impl/ob/Y0;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lorg/json/JSONObject;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Y0;->b:Landroid/content/Context;

    .line 25
    .line 26
    new-instance v2, Lcom/yandex/metrica/impl/ob/B2;

    .line 27
    .line 28
    const/4 v3, 0x1

    .line 29
    invoke-direct {v2, v3}, Lcom/yandex/metrica/impl/ob/B2;-><init>(I)V

    .line 30
    .line 31
    .line 32
    const-string v3, "wallpaper"

    .line 33
    .line 34
    const-string v4, "getting wallpaper id"

    .line 35
    .line 36
    const-string v5, "wallpaper manager"

    .line 37
    .line 38
    invoke-static {v2, v1, v3, v4, v5}, Lcom/yandex/metrica/impl/ob/A2;->a(Lcom/yandex/metrica/impl/ob/om;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Ljava/lang/Integer;

    .line 43
    .line 44
    const-string v2, "wids"

    .line 45
    .line 46
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Y0;->b:Landroid/content/Context;

    .line 50
    .line 51
    new-instance v2, Lcom/yandex/metrica/impl/ob/B2;

    .line 52
    .line 53
    const/4 v6, 0x2

    .line 54
    invoke-direct {v2, v6}, Lcom/yandex/metrica/impl/ob/B2;-><init>(I)V

    .line 55
    .line 56
    .line 57
    invoke-static {v2, v1, v3, v4, v5}, Lcom/yandex/metrica/impl/ob/A2;->a(Lcom/yandex/metrica/impl/ob/om;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Ljava/lang/Integer;

    .line 62
    .line 63
    const-string v2, "widl"

    .line 64
    .line 65
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    .line 67
    .line 68
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Y0;->a:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method b()Lcom/yandex/metrica/impl/ob/Y0;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Y0;->a:Lorg/json/JSONObject;

    .line 2
    .line 3
    new-instance v1, Lorg/json/JSONObject;

    .line 4
    .line 5
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "dfid"

    .line 9
    .line 10
    invoke-static {v0, v2, v1}, Lcom/yandex/metrica/impl/ob/Y0;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lorg/json/JSONObject;

    .line 15
    .line 16
    const/16 v1, 0x15

    .line 17
    .line 18
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/A2;->a(I)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    new-instance v1, Lorg/json/JSONArray;

    .line 25
    .line 26
    sget-object v2, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 27
    .line 28
    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    sget-object v2, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 38
    .line 39
    const-string v3, "unknown"

    .line 40
    .line 41
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-nez v4, :cond_1

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    :cond_1
    sget-object v2, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-nez v3, :cond_2

    .line 57
    .line 58
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    :cond_2
    new-instance v2, Lorg/json/JSONArray;

    .line 62
    .line 63
    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 64
    .line 65
    .line 66
    move-object v1, v2

    .line 67
    :goto_0
    const-string v2, "cpu_abis"

    .line 68
    .line 69
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    .line 71
    .line 72
    return-object p0
.end method

.method public c()Lcom/yandex/metrica/impl/ob/Y0;
    .locals 8

    .line 1
    const-string v0, "dfid"

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Y0;->a:Lorg/json/JSONObject;

    .line 4
    .line 5
    new-instance v2, Lorg/json/JSONObject;

    .line 6
    .line 7
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-static {v1, v0, v2}, Lcom/yandex/metrica/impl/ob/Y0;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Lorg/json/JSONObject;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Y0;->c:Lcom/yandex/metrica/impl/ob/q0;

    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/q0;->a()Lcom/yandex/metrica/impl/ob/q0$a;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    iget-wide v3, v2, Lcom/yandex/metrica/impl/ob/q0$a;->a:J

    .line 23
    .line 24
    const-string v5, "tds"

    .line 25
    .line 26
    invoke-virtual {v1, v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 27
    .line 28
    .line 29
    iget-wide v2, v2, Lcom/yandex/metrica/impl/ob/q0$a;->b:J

    .line 30
    .line 31
    const-string v4, "fds"

    .line 32
    .line 33
    invoke-virtual {v1, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Y0;->a:Lorg/json/JSONObject;

    .line 37
    .line 38
    new-instance v2, Lorg/json/JSONObject;

    .line 39
    .line 40
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-static {v1, v0, v2}, Lcom/yandex/metrica/impl/ob/Y0;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .line 49
    const-string v2, "boot_time"

    .line 50
    .line 51
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 52
    .line 53
    .line 54
    move-result-wide v3

    .line 55
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 56
    .line 57
    .line 58
    move-result-wide v5

    .line 59
    sub-long/2addr v3, v5

    .line 60
    const-wide/16 v5, 0x3e8

    .line 61
    .line 62
    div-long/2addr v3, v5

    .line 63
    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 64
    .line 65
    .line 66
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/Y0;->d()V

    .line 67
    .line 68
    .line 69
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Y0;->b:Landroid/content/Context;

    .line 70
    .line 71
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/g1;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/g1;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/g1;->a()Ljava/util/List;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Y0;->a:Lorg/json/JSONObject;

    .line 80
    .line 81
    new-instance v3, Lorg/json/JSONObject;

    .line 82
    .line 83
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-static {v2, v0, v3}, Lcom/yandex/metrica/impl/ob/Y0;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    check-cast v2, Lorg/json/JSONObject;

    .line 91
    .line 92
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/Tl;->b(Ljava/util/List;)Lorg/json/JSONArray;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    const-string v3, "lc"

    .line 97
    .line 98
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    .line 100
    .line 101
    :catchall_0
    :try_start_2
    const-class v1, Lkotlin/KotlinVersion;

    .line 102
    .line 103
    sget-object v2, Lkotlin/KotlinVersion;->Companion:Lkotlin/KotlinVersion$a;

    .line 104
    .line 105
    const-string v2, "CURRENT"

    .line 106
    .line 107
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    const/4 v2, 0x0

    .line 112
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    move-result-object v2
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 120
    const-string v3, "getMajor"

    .line 121
    .line 122
    const/4 v4, 0x0

    .line 123
    :try_start_3
    new-array v5, v4, [Ljava/lang/Class;

    .line 124
    .line 125
    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    new-array v3, v4, [Ljava/lang/Object;

    .line 130
    .line 131
    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    check-cast v2, Ljava/lang/Integer;

    .line 136
    .line 137
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 138
    .line 139
    .line 140
    move-result v2

    .line 141
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    .line 143
    .line 144
    move-result-object v3
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 145
    const-string v5, "getMinor"

    .line 146
    .line 147
    :try_start_4
    new-array v6, v4, [Ljava/lang/Class;

    .line 148
    .line 149
    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    new-array v5, v4, [Ljava/lang/Object;

    .line 154
    .line 155
    invoke-virtual {v3, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    check-cast v3, Ljava/lang/Integer;

    .line 160
    .line 161
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 162
    .line 163
    .line 164
    move-result v3

    .line 165
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 166
    .line 167
    .line 168
    move-result-object v5
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 169
    const-string v6, "getPatch"

    .line 170
    .line 171
    :try_start_5
    new-array v7, v4, [Ljava/lang/Class;

    .line 172
    .line 173
    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 174
    .line 175
    .line 176
    move-result-object v5

    .line 177
    new-array v4, v4, [Ljava/lang/Object;

    .line 178
    .line 179
    invoke-virtual {v5, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    check-cast v1, Ljava/lang/Integer;

    .line 184
    .line 185
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/Y0;->a:Lorg/json/JSONObject;

    .line 190
    .line 191
    new-instance v5, Lorg/json/JSONObject;

    .line 192
    .line 193
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 194
    .line 195
    .line 196
    invoke-static {v4, v0, v5}, Lcom/yandex/metrica/impl/ob/Y0;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    check-cast v0, Lorg/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 201
    .line 202
    const-string v4, "kotlin_runtime"

    .line 203
    .line 204
    :try_start_6
    new-instance v5, Lorg/json/JSONObject;

    .line 205
    .line 206
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 207
    .line 208
    .line 209
    const-string v6, "major"

    .line 210
    .line 211
    invoke-virtual {v5, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    const-string v5, "minor"

    .line 216
    .line 217
    invoke-virtual {v2, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    const-string v3, "patch"

    .line 222
    .line 223
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 228
    .line 229
    .line 230
    :catch_0
    :catchall_1
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Y0;->a:Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
