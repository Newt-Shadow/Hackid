.class public final Lf3/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf3/m0;


# instance fields
.field private final a:Lx4/j$a;

.field private final b:Ljava/lang/String;

.field private final c:Z

.field private final d:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLx4/j$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p2, :cond_1

    .line 5
    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 16
    :goto_1
    invoke-static {v0}, Ly4/a;->a(Z)V

    .line 17
    .line 18
    .line 19
    iput-object p3, p0, Lf3/k0;->a:Lx4/j$a;

    .line 20
    .line 21
    iput-object p1, p0, Lf3/k0;->b:Ljava/lang/String;

    .line 22
    .line 23
    iput-boolean p2, p0, Lf3/k0;->c:Z

    .line 24
    .line 25
    new-instance p1, Ljava/util/HashMap;

    .line 26
    .line 27
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lf3/k0;->d:Ljava/util/Map;

    .line 31
    .line 32
    return-void
.end method

.method private static c(Lx4/j$a;Ljava/lang/String;[BLjava/util/Map;)[B
    .locals 8

    .line 1
    new-instance v0, Lx4/l0;

    .line 2
    .line 3
    invoke-interface {p0}, Lx4/j$a;->a()Lx4/j;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-direct {v0, p0}, Lx4/l0;-><init>(Lx4/j;)V

    .line 8
    .line 9
    .line 10
    new-instance p0, Lx4/n$b;

    .line 11
    .line 12
    invoke-direct {p0}, Lx4/n$b;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lx4/n$b;->j(Ljava/lang/String;)Lx4/n$b;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0, p3}, Lx4/n$b;->e(Ljava/util/Map;)Lx4/n$b;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const/4 p1, 0x2

    .line 24
    invoke-virtual {p0, p1}, Lx4/n$b;->d(I)Lx4/n$b;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0, p2}, Lx4/n$b;->c([B)Lx4/n$b;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    const/4 p1, 0x1

    .line 33
    invoke-virtual {p0, p1}, Lx4/n$b;->b(I)Lx4/n$b;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p0}, Lx4/n$b;->a()Lx4/n;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    const/4 p0, 0x0

    .line 42
    move-object p1, v2

    .line 43
    :goto_0
    :try_start_0
    new-instance p2, Lx4/l;

    .line 44
    .line 45
    invoke-direct {p2, v0, p1}, Lx4/l;-><init>(Lx4/j;Lx4/n;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 46
    .line 47
    .line 48
    :try_start_1
    invoke-static {p2}, Ly4/q0;->T0(Ljava/io/InputStream;)[B

    .line 49
    .line 50
    .line 51
    move-result-object p0
    :try_end_1
    .catch Lx4/a0; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    :try_start_2
    invoke-static {p2}, Ly4/q0;->n(Ljava/io/Closeable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 53
    .line 54
    .line 55
    return-object p0

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    goto :goto_1

    .line 58
    :catch_0
    move-exception p3

    .line 59
    :try_start_3
    invoke-static {p3, p0}, Lf3/k0;->d(Lx4/a0;I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    if-eqz v1, :cond_0

    .line 64
    .line 65
    add-int/lit8 p0, p0, 0x1

    .line 66
    .line 67
    invoke-virtual {p1}, Lx4/n;->a()Lx4/n$b;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p1, v1}, Lx4/n$b;->j(Ljava/lang/String;)Lx4/n$b;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p1}, Lx4/n$b;->a()Lx4/n;

    .line 76
    .line 77
    .line 78
    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 79
    :try_start_4
    invoke-static {p2}, Ly4/q0;->n(Ljava/io/Closeable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_0
    :try_start_5
    throw p3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 84
    :goto_1
    :try_start_6
    invoke-static {p2}, Ly4/q0;->n(Ljava/io/Closeable;)V

    .line 85
    .line 86
    .line 87
    throw p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 88
    :catch_1
    move-exception p0

    .line 89
    move-object v7, p0

    .line 90
    new-instance p0, Lf3/n0;

    .line 91
    .line 92
    invoke-virtual {v0}, Lx4/l0;->r()Landroid/net/Uri;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-static {p1}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    move-object v3, p1

    .line 101
    check-cast v3, Landroid/net/Uri;

    .line 102
    .line 103
    invoke-virtual {v0}, Lx4/l0;->k()Ljava/util/Map;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    invoke-virtual {v0}, Lx4/l0;->q()J

    .line 108
    .line 109
    .line 110
    move-result-wide v5

    .line 111
    move-object v1, p0

    .line 112
    invoke-direct/range {v1 .. v7}, Lf3/n0;-><init>(Lx4/n;Landroid/net/Uri;Ljava/util/Map;JLjava/lang/Throwable;)V

    .line 113
    .line 114
    .line 115
    throw p0
.end method

.method private static d(Lx4/a0;I)Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lx4/a0;->d:I

    .line 2
    .line 3
    const/16 v1, 0x133

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    const/16 v1, 0x134

    .line 9
    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    .line 12
    :cond_0
    const/4 v0, 0x5

    .line 13
    if-ge p1, v0, :cond_1

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    move p1, v2

    .line 18
    :goto_0
    const/4 v0, 0x0

    .line 19
    if-nez p1, :cond_2

    .line 20
    .line 21
    return-object v0

    .line 22
    :cond_2
    iget-object p0, p0, Lx4/a0;->f:Ljava/util/Map;

    .line 23
    .line 24
    if-eqz p0, :cond_3

    .line 25
    .line 26
    const-string p1, "Location"

    .line 27
    .line 28
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    check-cast p0, Ljava/util/List;

    .line 33
    .line 34
    if-eqz p0, :cond_3

    .line 35
    .line 36
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-nez p1, :cond_3

    .line 41
    .line 42
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    check-cast p0, Ljava/lang/String;

    .line 47
    .line 48
    return-object p0

    .line 49
    :cond_3
    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/UUID;Lf3/b0$a;)[B
    .locals 7

    .line 1
    invoke-virtual {p2}, Lf3/b0$a;->b()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-boolean v1, p0, Lf3/k0;->c:Z

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lf3/k0;->b:Ljava/lang/String;

    .line 16
    .line 17
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_5

    .line 22
    .line 23
    new-instance v1, Ljava/util/HashMap;

    .line 24
    .line 25
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 26
    .line 27
    .line 28
    sget-object v2, Lb3/s;->e:Ljava/util/UUID;

    .line 29
    .line 30
    invoke-virtual {v2, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_2

    .line 35
    .line 36
    const-string v3, "text/xml"

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    sget-object v3, Lb3/s;->c:Ljava/util/UUID;

    .line 40
    .line 41
    invoke-virtual {v3, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_3

    .line 46
    .line 47
    const-string v3, "application/json"

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_3
    const-string v3, "application/octet-stream"

    .line 51
    .line 52
    :goto_0
    const-string v4, "Content-Type"

    .line 53
    .line 54
    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_4

    .line 62
    .line 63
    const-string p1, "SOAPAction"

    .line 64
    .line 65
    const-string v2, "http://schemas.microsoft.com/DRM/2007/03/protocols/AcquireLicense"

    .line 66
    .line 67
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    :cond_4
    iget-object p1, p0, Lf3/k0;->d:Ljava/util/Map;

    .line 71
    .line 72
    monitor-enter p1

    .line 73
    :try_start_0
    iget-object v2, p0, Lf3/k0;->d:Ljava/util/Map;

    .line 74
    .line 75
    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 76
    .line 77
    .line 78
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    iget-object p1, p0, Lf3/k0;->a:Lx4/j$a;

    .line 80
    .line 81
    invoke-virtual {p2}, Lf3/b0$a;->a()[B

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    invoke-static {p1, v0, p2, v1}, Lf3/k0;->c(Lx4/j$a;Ljava/lang/String;[BLjava/util/Map;)[B

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    return-object p1

    .line 90
    :catchall_0
    move-exception p2

    .line 91
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    throw p2

    .line 93
    :cond_5
    new-instance p1, Lf3/n0;

    .line 94
    .line 95
    new-instance p2, Lx4/n$b;

    .line 96
    .line 97
    invoke-direct {p2}, Lx4/n$b;-><init>()V

    .line 98
    .line 99
    .line 100
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 101
    .line 102
    invoke-virtual {p2, v0}, Lx4/n$b;->i(Landroid/net/Uri;)Lx4/n$b;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    invoke-virtual {p2}, Lx4/n$b;->a()Lx4/n;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 111
    .line 112
    invoke-static {}, Lo6/r;->k()Lo6/r;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    const-wide/16 v4, 0x0

    .line 117
    .line 118
    new-instance v6, Ljava/lang/IllegalStateException;

    .line 119
    .line 120
    const-string p2, "No license URL"

    .line 121
    .line 122
    invoke-direct {v6, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    move-object v0, p1

    .line 126
    invoke-direct/range {v0 .. v6}, Lf3/n0;-><init>(Lx4/n;Landroid/net/Uri;Ljava/util/Map;JLjava/lang/Throwable;)V

    .line 127
    .line 128
    .line 129
    throw p1
.end method

.method public b(Ljava/util/UUID;Lf3/b0$d;)[B
    .locals 2

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Lf3/b0$d;->b()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v0, "&signedRequest="

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2}, Lf3/b0$d;->a()[B

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-static {p2}, Ly4/q0;->D([B)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object p2, p0, Lf3/k0;->a:Lx4/j$a;

    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-static {p2, p1, v0, v1}, Lf3/k0;->c(Lx4/j$a;Ljava/lang/String;[BLjava/util/Map;)[B

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    return-object p1
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lf3/k0;->d:Ljava/util/Map;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    iget-object v1, p0, Lf3/k0;->d:Ljava/util/Map;

    .line 11
    .line 12
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    monitor-exit v0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw p1
.end method
