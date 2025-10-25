.class public final Lcom/yandex/metrica/impl/ob/Q7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/f8;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/yandex/metrica/impl/ob/B0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/B0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Q7;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/Q7;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/Q7;->c:Lcom/yandex/metrica/impl/ob/B0;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "fileName"

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Q7;->c:Lcom/yandex/metrica/impl/ob/B0;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Q7;->a:Landroid/content/Context;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/Q7;->b:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v1, v2, v3}, Lcom/yandex/metrica/impl/ob/B0;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    const/4 v2, 0x2

    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-static {v1, p1, v3, v2, v3}, Lgd/g;->i(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    invoke-static {}, Lcom/yandex/metrica/impl/ob/oh;->a()Lcom/yandex/metrica/impl/ob/M0;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Q7;->b:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v0, v2}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-static {v2}, Lkotlin/jvm/internal/d0;->b(Ljava/lang/Class;)Lpd/c;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-interface {v2}, Lpd/c;->b()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    const-string v3, "exception"

    .line 45
    .line 46
    invoke-static {v3, v2}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    filled-new-array {v0, v2}, [Lxc/k;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-static {v0}, Lyc/e0;->h([Lxc/k;)Ljava/util/Map;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v1, Lcom/yandex/metrica/impl/ob/nh;

    .line 59
    .line 60
    const-string v2, "vital_data_provider_write_exception"

    .line 61
    .line 62
    invoke-virtual {v1, v2, v0}, Lcom/yandex/metrica/impl/ob/nh;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 63
    .line 64
    .line 65
    invoke-static {}, Lcom/yandex/metrica/impl/ob/oh;->a()Lcom/yandex/metrica/impl/ob/M0;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    const-string v2, "Error during writing file with name "

    .line 75
    .line 76
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Q7;->b:Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    check-cast v0, Lcom/yandex/metrica/impl/ob/nh;

    .line 89
    .line 90
    invoke-virtual {v0, v1, p1}, Lcom/yandex/metrica/impl/ob/nh;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :catch_0
    invoke-static {}, Lcom/yandex/metrica/impl/ob/oh;->a()Lcom/yandex/metrica/impl/ob/M0;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Q7;->b:Ljava/lang/String;

    .line 99
    .line 100
    invoke-static {v0, v1}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-static {v0}, Lyc/e0;->c(Lxc/k;)Ljava/util/Map;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    check-cast p1, Lcom/yandex/metrica/impl/ob/nh;

    .line 109
    .line 110
    const-string v1, "vital_data_provider_write_file_not_found"

    .line 111
    .line 112
    invoke-virtual {p1, v1, v0}, Lcom/yandex/metrica/impl/ob/nh;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 113
    .line 114
    .line 115
    :cond_0
    :goto_0
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 6

    .line 1
    const-string v0, "fileName"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Q7;->c:Lcom/yandex/metrica/impl/ob/B0;

    .line 5
    .line 6
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/Q7;->a:Landroid/content/Context;

    .line 7
    .line 8
    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/Q7;->b:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v2, v3, v4}, Lcom/yandex/metrica/impl/ob/B0;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    invoke-static {v2, v1, v3, v1}, Lgd/g;->g(Ljava/io/File;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception v2

    .line 23
    invoke-static {}, Lcom/yandex/metrica/impl/ob/oh;->a()Lcom/yandex/metrica/impl/ob/M0;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/Q7;->b:Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {v0, v4}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-static {v4}, Lkotlin/jvm/internal/d0;->b(Ljava/lang/Class;)Lpd/c;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-interface {v4}, Lpd/c;->b()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    const-string v5, "exception"

    .line 46
    .line 47
    invoke-static {v5, v4}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    filled-new-array {v0, v4}, [Lxc/k;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {v0}, Lyc/e0;->h([Lxc/k;)Ljava/util/Map;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v3, Lcom/yandex/metrica/impl/ob/nh;

    .line 60
    .line 61
    const-string v4, "vital_data_provider_read_exception"

    .line 62
    .line 63
    invoke-virtual {v3, v4, v0}, Lcom/yandex/metrica/impl/ob/nh;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 64
    .line 65
    .line 66
    invoke-static {}, Lcom/yandex/metrica/impl/ob/oh;->a()Lcom/yandex/metrica/impl/ob/M0;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    new-instance v3, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    const-string v4, "Error during reading file with name "

    .line 76
    .line 77
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    iget-object v4, p0, Lcom/yandex/metrica/impl/ob/Q7;->b:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    check-cast v0, Lcom/yandex/metrica/impl/ob/nh;

    .line 90
    .line 91
    invoke-virtual {v0, v3, v2}, Lcom/yandex/metrica/impl/ob/nh;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :catch_0
    invoke-static {}, Lcom/yandex/metrica/impl/ob/oh;->a()Lcom/yandex/metrica/impl/ob/M0;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/Q7;->b:Ljava/lang/String;

    .line 100
    .line 101
    invoke-static {v0, v3}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-static {v0}, Lyc/e0;->c(Lxc/k;)Ljava/util/Map;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    check-cast v2, Lcom/yandex/metrica/impl/ob/nh;

    .line 110
    .line 111
    const-string v3, "vital_data_provider_read_file_not_found"

    .line 112
    .line 113
    invoke-virtual {v2, v3, v0}, Lcom/yandex/metrica/impl/ob/nh;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 114
    .line 115
    .line 116
    :cond_0
    :goto_0
    return-object v1
.end method
