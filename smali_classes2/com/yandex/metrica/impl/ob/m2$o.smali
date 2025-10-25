.class Lcom/yandex/metrica/impl/ob/m2$o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/D1$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/m2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "o"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/m2$o$a;,
        Lcom/yandex/metrica/impl/ob/m2$o$b;,
        Lcom/yandex/metrica/impl/ob/m2$o$d;,
        Lcom/yandex/metrica/impl/ob/m2$o$c;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/B0;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/B0;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/B0;-><init>()V

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/m2$o;-><init>(Lcom/yandex/metrica/impl/ob/B0;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/B0;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/m2$o;->a:Lcom/yandex/metrica/impl/ob/B0;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 8

    .line 1
    const-string v0, "Can not delete file"

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/m2$o;->b(Landroid/content/Context;)Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    new-array v1, v2, [Ljava/io/File;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/impl/ob/m2$o;->b(Landroid/content/Context;)Ljava/io/File;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-instance v3, Lcom/yandex/metrica/impl/ob/m2$o$a;

    .line 18
    .line 19
    const/4 v4, 0x2

    .line 20
    new-array v4, v4, [Ljava/io/FilenameFilter;

    .line 21
    .line 22
    new-instance v5, Lcom/yandex/metrica/impl/ob/m2$o$b;

    .line 23
    .line 24
    new-instance v6, Lcom/yandex/metrica/impl/ob/m2$o$d;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v7

    .line 30
    invoke-direct {v6, v7}, Lcom/yandex/metrica/impl/ob/m2$o$d;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-direct {v5, v6}, Lcom/yandex/metrica/impl/ob/m2$o$b;-><init>(Ljava/io/FilenameFilter;)V

    .line 34
    .line 35
    .line 36
    aput-object v5, v4, v2

    .line 37
    .line 38
    new-instance v5, Lcom/yandex/metrica/impl/ob/m2$o$b;

    .line 39
    .line 40
    new-instance v6, Lcom/yandex/metrica/impl/ob/m2$o$c;

    .line 41
    .line 42
    invoke-direct {v6}, Lcom/yandex/metrica/impl/ob/m2$o$c;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-direct {v5, v6}, Lcom/yandex/metrica/impl/ob/m2$o$b;-><init>(Ljava/io/FilenameFilter;)V

    .line 46
    .line 47
    .line 48
    const/4 v6, 0x1

    .line 49
    aput-object v5, v4, v6

    .line 50
    .line 51
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-direct {v3, v4}, Lcom/yandex/metrica/impl/ob/m2$o$a;-><init>(Ljava/lang/Iterable;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    :goto_0
    array-length v3, v1

    .line 63
    :goto_1
    if-ge v2, v3, :cond_2

    .line 64
    .line 65
    aget-object v4, v1, v2

    .line 66
    .line 67
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    if-nez v5, :cond_1

    .line 72
    .line 73
    invoke-static {}, Lcom/yandex/metrica/impl/ob/oh;->a()Lcom/yandex/metrica/impl/ob/M0;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    new-instance v6, Lorg/json/JSONObject;

    .line 78
    .line 79
    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    .line 81
    .line 82
    const-string v7, "fileName"

    .line 83
    .line 84
    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    invoke-virtual {v6, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    check-cast v5, Lcom/yandex/metrica/impl/ob/nh;

    .line 97
    .line 98
    :try_start_2
    invoke-virtual {v5, v0, v4}, Lcom/yandex/metrica/impl/ob/nh;->reportEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 99
    .line 100
    .line 101
    goto :goto_2

    .line 102
    :catchall_0
    move-exception v4

    .line 103
    invoke-static {}, Lcom/yandex/metrica/impl/ob/oh;->a()Lcom/yandex/metrica/impl/ob/M0;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    check-cast v5, Lcom/yandex/metrica/impl/ob/nh;

    .line 108
    .line 109
    invoke-virtual {v5, v0, v4}, Lcom/yandex/metrica/impl/ob/nh;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 110
    .line 111
    .line 112
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_2
    new-instance v0, Lcom/yandex/metrica/impl/ob/f9;

    .line 116
    .line 117
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/ja;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/ja;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/ja;->q()Lcom/yandex/metrica/impl/ob/S7;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-direct {v0, v1, p1}, Lcom/yandex/metrica/impl/ob/f9;-><init>(Lcom/yandex/metrica/impl/ob/S7;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    new-instance p1, Lcom/yandex/metrica/impl/ob/Rd;

    .line 133
    .line 134
    const-string v1, "LAST_STARTUP_CLIDS_SAVE_TIME"

    .line 135
    .line 136
    const/4 v2, 0x0

    .line 137
    invoke-direct {p1, v1, v2}, Lcom/yandex/metrica/impl/ob/Rd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Rd;->a()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/d9;->f(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/d9;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/d9;->d()V

    .line 149
    .line 150
    .line 151
    return-void
.end method

.method b(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .line 1
    const/16 v0, 0x15

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
    invoke-virtual {p1}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/m2$o;->a:Lcom/yandex/metrica/impl/ob/B0;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string v1, "databases"

    .line 27
    .line 28
    invoke-virtual {v0, p1, v1}, Lcom/yandex/metrica/impl/ob/B0;->b(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 p1, 0x0

    .line 34
    :goto_0
    return-object p1
.end method
