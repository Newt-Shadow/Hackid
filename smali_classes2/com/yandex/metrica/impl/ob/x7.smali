.class Lcom/yandex/metrica/impl/ob/x7;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/io/File;

.field private final c:Lcom/yandex/metrica/impl/ob/B0;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/B0;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/B0;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/yandex/metrica/impl/ob/x7;-><init>(Landroid/content/Context;Ljava/io/File;Lcom/yandex/metrica/impl/ob/B0;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/io/File;Lcom/yandex/metrica/impl/ob/B0;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/x7;->a:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/x7;->b:Ljava/io/File;

    .line 5
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/x7;->c:Lcom/yandex/metrica/impl/ob/B0;

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetWorldReadable"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/x7;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/x7;->c:Lcom/yandex/metrica/impl/ob/B0;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/x7;->b:Ljava/io/File;

    .line 12
    .line 13
    invoke-virtual {v1, v2, p2}, Lcom/yandex/metrica/impl/ob/B0;->b(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    const/4 v1, 0x0

    .line 18
    if-nez p2, :cond_0

    .line 19
    .line 20
    return-object v1

    .line 21
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    return-object p1

    .line 32
    :cond_1
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/x7;->a:Landroid/content/Context;

    .line 33
    .line 34
    const-string v3, "crpad_ext"

    .line 35
    .line 36
    invoke-static {v2, v3}, Lcom/yandex/metrica/impl/ob/Rm;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/Rm;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    :try_start_0
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/Rm;->a()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_2

    .line 48
    .line 49
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/Rm;->b()V

    .line 54
    .line 55
    .line 56
    return-object p1

    .line 57
    :cond_2
    :try_start_1
    new-instance v3, Ljava/util/zip/ZipFile;

    .line 58
    .line 59
    invoke-direct {v3, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    .line 61
    .line 62
    :try_start_2
    invoke-virtual {v3, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    if-eqz v0, :cond_6

    .line 67
    .line 68
    invoke-virtual {v3, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    new-instance v0, Ljava/io/FileOutputStream;

    .line 73
    .line 74
    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 75
    .line 76
    .line 77
    const/16 v4, 0x1000

    .line 78
    .line 79
    new-array v5, v4, [B

    .line 80
    .line 81
    :goto_0
    const/4 v6, 0x0

    .line 82
    invoke-virtual {p1, v5, v6, v4}, Ljava/io/InputStream;->read([BII)I

    .line 83
    .line 84
    .line 85
    move-result v7

    .line 86
    const/4 v8, -0x1

    .line 87
    if-eq v8, v7, :cond_3

    .line 88
    .line 89
    invoke-virtual {v0, v5, v6, v7}, Ljava/io/OutputStream;->write([BII)V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_3
    const/4 p1, 0x1

    .line 94
    invoke-virtual {p2, p1, v6}, Ljava/io/File;->setReadable(ZZ)Z

    .line 95
    .line 96
    .line 97
    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 98
    if-nez v0, :cond_4

    .line 99
    .line 100
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/Rm;->b()V

    .line 101
    .line 102
    .line 103
    :try_start_3
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 104
    .line 105
    .line 106
    :catch_0
    return-object v1

    .line 107
    :cond_4
    :try_start_4
    invoke-virtual {p2, p1, v6}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 108
    .line 109
    .line 110
    move-result p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 111
    if-nez p1, :cond_5

    .line 112
    .line 113
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/Rm;->b()V

    .line 114
    .line 115
    .line 116
    :try_start_5
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 117
    .line 118
    .line 119
    :catch_1
    return-object v1

    .line 120
    :cond_5
    :try_start_6
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 124
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/Rm;->b()V

    .line 125
    .line 126
    .line 127
    :try_start_7
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 128
    .line 129
    .line 130
    :catch_2
    return-object p1

    .line 131
    :cond_6
    :try_start_8
    new-instance p2, Ljava/lang/RuntimeException;

    .line 132
    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    .line 138
    const-string v4, "Cannot find ZipEntry"

    .line 139
    .line 140
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    throw p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 154
    :catchall_0
    move-object v3, v1

    .line 155
    :catchall_1
    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/Rm;->b()V

    .line 156
    .line 157
    .line 158
    if-eqz v3, :cond_7

    .line 159
    .line 160
    :try_start_9
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 161
    .line 162
    .line 163
    :catch_3
    :cond_7
    return-object v1
.end method
