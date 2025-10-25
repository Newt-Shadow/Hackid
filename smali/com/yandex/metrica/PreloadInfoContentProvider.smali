.class public Lcom/yandex/metrica/PreloadInfoContentProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# instance fields
.field private a:Z

.field private final b:Landroid/content/UriMatcher;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/yandex/metrica/PreloadInfoContentProvider;->a:Z

    .line 6
    .line 7
    new-instance v0, Landroid/content/UriMatcher;

    .line 8
    .line 9
    const/4 v1, -0x1

    .line 10
    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/yandex/metrica/PreloadInfoContentProvider;->b:Landroid/content/UriMatcher;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    new-array p1, p1, [Ljava/lang/Object;

    .line 3
    .line 4
    const-string p2, "Deleting is not supported"

    .line 5
    .line 6
    invoke-static {p2, p1}, Lcom/yandex/metrica/impl/ob/h2;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    const/4 p1, -0x1

    .line 10
    return p1
.end method

.method public declared-synchronized disable()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x1

    .line 3
    :try_start_0
    iput-boolean v0, p0, Lcom/yandex/metrica/PreloadInfoContentProvider;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    monitor-exit p0

    .line 6
    return-void

    .line 7
    :catchall_0
    move-exception v0

    .line 8
    monitor-exit p0

    .line 9
    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/yandex/metrica/PreloadInfoContentProvider;->a:Z

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-object v1

    .line 9
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    if-eqz p2, :cond_5

    .line 11
    .line 12
    iget-object v0, p0, Lcom/yandex/metrica/PreloadInfoContentProvider;->b:Landroid/content/UriMatcher;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v2, 0x1

    .line 19
    if-eq v0, v2, :cond_3

    .line 20
    .line 21
    const/4 v2, 0x2

    .line 22
    if-eq v0, v2, :cond_1

    .line 23
    .line 24
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const-string p2, "Bad content provider uri: %s"

    .line 29
    .line 30
    invoke-static {p2, p1}, Lcom/yandex/metrica/impl/ob/h2;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_1
    new-instance p1, Lcom/yandex/metrica/impl/ob/Z;

    .line 35
    .line 36
    new-instance v0, Lcom/yandex/metrica/impl/ob/t3;

    .line 37
    .line 38
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/t3;-><init>()V

    .line 39
    .line 40
    .line 41
    new-instance v2, Lcom/yandex/metrica/impl/ob/u3;

    .line 42
    .line 43
    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/u3;-><init>()V

    .line 44
    .line 45
    .line 46
    new-instance v3, Lcom/yandex/metrica/impl/ob/E0;

    .line 47
    .line 48
    invoke-direct {v3}, Lcom/yandex/metrica/impl/ob/E0;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v4, "clids"

    .line 52
    .line 53
    invoke-direct {p1, v0, v2, v3, v4}, Lcom/yandex/metrica/impl/ob/Z;-><init>(Lcom/yandex/metrica/impl/ob/W;Lcom/yandex/metrica/impl/ob/X;Lcom/yandex/metrica/impl/ob/E0;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    if-nez v0, :cond_2

    .line 61
    .line 62
    move-object v0, v1

    .line 63
    goto :goto_0

    .line 64
    :cond_2
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    :goto_0
    if-eqz v0, :cond_5

    .line 69
    .line 70
    invoke-virtual {p1, v0, p2}, Lcom/yandex/metrica/impl/ob/Z;->a(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 71
    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_3
    new-instance p1, Lcom/yandex/metrica/impl/ob/Z;

    .line 75
    .line 76
    new-instance v0, Lcom/yandex/metrica/impl/ob/Xd;

    .line 77
    .line 78
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/Xd;-><init>()V

    .line 79
    .line 80
    .line 81
    new-instance v2, Lcom/yandex/metrica/impl/ob/Yd;

    .line 82
    .line 83
    invoke-direct {v2}, Lcom/yandex/metrica/impl/ob/Yd;-><init>()V

    .line 84
    .line 85
    .line 86
    new-instance v3, Lcom/yandex/metrica/impl/ob/E0;

    .line 87
    .line 88
    invoke-direct {v3}, Lcom/yandex/metrica/impl/ob/E0;-><init>()V

    .line 89
    .line 90
    .line 91
    const-string v4, "preload info"

    .line 92
    .line 93
    invoke-direct {p1, v0, v2, v3, v4}, Lcom/yandex/metrica/impl/ob/Z;-><init>(Lcom/yandex/metrica/impl/ob/W;Lcom/yandex/metrica/impl/ob/X;Lcom/yandex/metrica/impl/ob/E0;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    if-nez v0, :cond_4

    .line 101
    .line 102
    move-object v0, v1

    .line 103
    goto :goto_1

    .line 104
    :cond_4
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    :goto_1
    if-eqz v0, :cond_5

    .line 109
    .line 110
    invoke-virtual {p1, v0, p2}, Lcom/yandex/metrica/impl/ob/Z;->a(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 111
    .line 112
    .line 113
    :cond_5
    :goto_2
    invoke-static {}, Lcom/yandex/metrica/impl/ob/Y;->a()V

    .line 114
    .line 115
    .line 116
    return-object v1

    .line 117
    :catchall_0
    move-exception p1

    .line 118
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    throw p1
.end method

.method public onCreate()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :goto_0
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    const-string v0, ""

    .line 21
    .line 22
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v0, ".appmetrica.preloadinfo.retail"

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/yandex/metrica/PreloadInfoContentProvider;->b:Landroid/content/UriMatcher;

    .line 40
    .line 41
    const-string v2, "preloadinfo"

    .line 42
    .line 43
    const/4 v3, 0x1

    .line 44
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Lcom/yandex/metrica/PreloadInfoContentProvider;->b:Landroid/content/UriMatcher;

    .line 48
    .line 49
    const-string v2, "clids"

    .line 50
    .line 51
    const/4 v4, 0x2

    .line 52
    invoke-virtual {v1, v0, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 53
    .line 54
    .line 55
    invoke-static {p0}, Lcom/yandex/metrica/impl/ob/Y;->a(Lcom/yandex/metrica/PreloadInfoContentProvider;)V

    .line 56
    .line 57
    .line 58
    return v3
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    new-array p1, p1, [Ljava/lang/Object;

    .line 3
    .line 4
    const-string p2, "Query is not supported"

    .line 5
    .line 6
    invoke-static {p2, p1}, Lcom/yandex/metrica/impl/ob/h2;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return-object p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    new-array p1, p1, [Ljava/lang/Object;

    .line 3
    .line 4
    const-string p2, "Updating is not supported"

    .line 5
    .line 6
    invoke-static {p2, p1}, Lcom/yandex/metrica/impl/ob/h2;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    const/4 p1, -0x1

    .line 10
    return p1
.end method
