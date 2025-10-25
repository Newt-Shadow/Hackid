.class public Lcom/yandex/metrica/impl/ob/q0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/q0$b;,
        Lcom/yandex/metrica/impl/ob/q0$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/yandex/metrica/impl/ob/q0$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/q0$b;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/q0$b;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/q0;-><init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/q0$b;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/yandex/metrica/impl/ob/q0$b;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/q0;->a:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/q0;->b:Lcom/yandex/metrica/impl/ob/q0$b;

    return-void
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/ob/q0$a;
    .locals 15

    .line 1
    const/16 v0, 0x1a

    .line 2
    .line 3
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/A2;->a(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-wide/16 v1, 0x400

    .line 8
    .line 9
    const-wide/16 v3, 0x0

    .line 10
    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/q0;->a:Landroid/content/Context;

    .line 14
    .line 15
    const-string v5, "storagestats"

    .line 16
    .line 17
    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/xo;->a(Ljava/lang/Object;)Landroid/app/usage/StorageStatsManager;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v5, p0, Lcom/yandex/metrica/impl/ob/q0;->a:Landroid/content/Context;

    .line 26
    .line 27
    const-string v6, "storage"

    .line 28
    .line 29
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    check-cast v5, Landroid/os/storage/StorageManager;

    .line 34
    .line 35
    if-eqz v5, :cond_2

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    invoke-virtual {v5}, Landroid/os/storage/StorageManager;->getStorageVolumes()Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    move-wide v6, v3

    .line 48
    :catchall_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v8

    .line 52
    if-eqz v8, :cond_1

    .line 53
    .line 54
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v8

    .line 58
    check-cast v8, Landroid/os/storage/StorageVolume;

    .line 59
    .line 60
    :try_start_0
    invoke-virtual {v8}, Landroid/os/storage/StorageVolume;->getUuid()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    if-nez v8, :cond_0

    .line 65
    .line 66
    invoke-static {}, Lcom/yandex/metrica/impl/ob/yo;->a()Ljava/util/UUID;

    .line 67
    .line 68
    .line 69
    move-result-object v8

    .line 70
    goto :goto_1

    .line 71
    :cond_0
    invoke-static {v8}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    .line 72
    .line 73
    .line 74
    move-result-object v8

    .line 75
    :goto_1
    invoke-static {v0, v8}, Lcom/yandex/metrica/impl/ob/zo;->a(Landroid/app/usage/StorageStatsManager;Ljava/util/UUID;)J

    .line 76
    .line 77
    .line 78
    move-result-wide v9

    .line 79
    invoke-static {v0, v8}, Lcom/yandex/metrica/impl/ob/ap;->a(Landroid/app/usage/StorageStatsManager;Ljava/util/UUID;)J

    .line 80
    .line 81
    .line 82
    move-result-wide v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    add-long/2addr v3, v9

    .line 84
    add-long/2addr v6, v11

    .line 85
    goto :goto_0

    .line 86
    :cond_1
    move-wide v13, v3

    .line 87
    move-wide v3, v6

    .line 88
    move-wide v5, v13

    .line 89
    goto :goto_2

    .line 90
    :cond_2
    move-wide v5, v3

    .line 91
    :goto_2
    new-instance v0, Lcom/yandex/metrica/impl/ob/q0$a;

    .line 92
    .line 93
    div-long/2addr v5, v1

    .line 94
    div-long/2addr v3, v1

    .line 95
    invoke-direct {v0, v5, v6, v3, v4}, Lcom/yandex/metrica/impl/ob/q0$a;-><init>(JJ)V

    .line 96
    .line 97
    .line 98
    return-object v0

    .line 99
    :cond_3
    const/16 v0, 0x12

    .line 100
    .line 101
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/A2;->a(I)Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-eqz v0, :cond_4

    .line 106
    .line 107
    :try_start_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/q0;->b:Lcom/yandex/metrica/impl/ob/q0$b;

    .line 108
    .line 109
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    new-instance v0, Landroid/os/StatFs;

    .line 113
    .line 114
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    invoke-direct {v0, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    .line 126
    .line 127
    .line 128
    move-result-wide v5

    .line 129
    new-instance v7, Lcom/yandex/metrica/impl/ob/q0$a;

    .line 130
    .line 131
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCountLong()J

    .line 132
    .line 133
    .line 134
    move-result-wide v8

    .line 135
    mul-long/2addr v8, v5

    .line 136
    div-long/2addr v8, v1

    .line 137
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    .line 138
    .line 139
    .line 140
    move-result-wide v10

    .line 141
    mul-long/2addr v10, v5

    .line 142
    div-long/2addr v10, v1

    .line 143
    invoke-direct {v7, v8, v9, v10, v11}, Lcom/yandex/metrica/impl/ob/q0$a;-><init>(JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 144
    .line 145
    .line 146
    goto :goto_3

    .line 147
    :catchall_1
    new-instance v7, Lcom/yandex/metrica/impl/ob/q0$a;

    .line 148
    .line 149
    invoke-direct {v7, v3, v4, v3, v4}, Lcom/yandex/metrica/impl/ob/q0$a;-><init>(JJ)V

    .line 150
    .line 151
    .line 152
    :goto_3
    return-object v7

    .line 153
    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/q0;->b:Lcom/yandex/metrica/impl/ob/q0$b;

    .line 154
    .line 155
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    .line 157
    .line 158
    new-instance v0, Landroid/os/StatFs;

    .line 159
    .line 160
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 161
    .line 162
    .line 163
    move-result-object v5

    .line 164
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v5

    .line 168
    invoke-direct {v0, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    .line 172
    .line 173
    .line 174
    move-result v5

    .line 175
    int-to-long v5, v5

    .line 176
    new-instance v7, Lcom/yandex/metrica/impl/ob/q0$a;

    .line 177
    .line 178
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    .line 179
    .line 180
    .line 181
    move-result v8

    .line 182
    int-to-long v8, v8

    .line 183
    mul-long/2addr v8, v5

    .line 184
    div-long/2addr v8, v1

    .line 185
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    int-to-long v10, v0

    .line 190
    mul-long/2addr v10, v5

    .line 191
    div-long/2addr v10, v1

    .line 192
    invoke-direct {v7, v8, v9, v10, v11}, Lcom/yandex/metrica/impl/ob/q0$a;-><init>(JJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 193
    .line 194
    .line 195
    goto :goto_4

    .line 196
    :catchall_2
    new-instance v7, Lcom/yandex/metrica/impl/ob/q0$a;

    .line 197
    .line 198
    invoke-direct {v7, v3, v4, v3, v4}, Lcom/yandex/metrica/impl/ob/q0$a;-><init>(JJ)V

    .line 199
    .line 200
    .line 201
    :goto_4
    return-object v7
.end method
