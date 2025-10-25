.class public final Lio/appmetrica/analytics/identifiers/impl/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/identifiers/impl/e;

.field public final b:Lid/l;

.field public final c:Ljava/lang/String;

.field public final d:Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Intent;Lid/l;Ljava/lang/String;)V
    .locals 1

    .line 6
    new-instance v0, Lio/appmetrica/analytics/identifiers/impl/e;

    invoke-direct {v0, p1, p3}, Lio/appmetrica/analytics/identifiers/impl/e;-><init>(Landroid/content/Intent;Ljava/lang/String;)V

    .line 7
    new-instance p1, Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;

    invoke-direct {p1}, Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;-><init>()V

    .line 8
    invoke-direct {p0, v0, p2, p3, p1}, Lio/appmetrica/analytics/identifiers/impl/f;-><init>(Lio/appmetrica/analytics/identifiers/impl/e;Lid/l;Ljava/lang/String;Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/identifiers/impl/e;Lid/l;Ljava/lang/String;Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/appmetrica/analytics/identifiers/impl/f;->a:Lio/appmetrica/analytics/identifiers/impl/e;

    .line 3
    iput-object p2, p0, Lio/appmetrica/analytics/identifiers/impl/f;->b:Lid/l;

    .line 4
    iput-object p3, p0, Lio/appmetrica/analytics/identifiers/impl/f;->c:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lio/appmetrica/analytics/identifiers/impl/f;->d:Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/identifiers/impl/f;->a:Lio/appmetrica/analytics/identifiers/impl/e;

    .line 2
    .line 3
    iget-object v0, v0, Lio/appmetrica/analytics/identifiers/impl/e;->a:Landroid/content/Intent;

    .line 4
    .line 5
    iget-object v1, p0, Lio/appmetrica/analytics/identifiers/impl/f;->d:Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v1, p1, v0, v2}, Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;->resolveService(Landroid/content/Context;Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_4

    .line 13
    .line 14
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/identifiers/impl/f;->a:Lio/appmetrica/analytics/identifiers/impl/e;

    .line 15
    .line 16
    iget-object v1, v0, Lio/appmetrica/analytics/identifiers/impl/e;->a:Landroid/content/Intent;

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    invoke-virtual {p1, v1, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_2

    .line 24
    .line 25
    iget-object p1, p0, Lio/appmetrica/analytics/identifiers/impl/f;->a:Lio/appmetrica/analytics/identifiers/impl/e;

    .line 26
    .line 27
    iget-object v0, p1, Lio/appmetrica/analytics/identifiers/impl/e;->b:Landroid/os/IBinder;

    .line 28
    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    iget-object v0, p1, Lio/appmetrica/analytics/identifiers/impl/e;->c:Ljava/lang/Object;

    .line 32
    .line 33
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 34
    :try_start_1
    iget-object v1, p1, Lio/appmetrica/analytics/identifiers/impl/e;->b:Landroid/os/IBinder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    .line 36
    if-nez v1, :cond_0

    .line 37
    .line 38
    :try_start_2
    iget-object v1, p1, Lio/appmetrica/analytics/identifiers/impl/e;->c:Ljava/lang/Object;

    .line 39
    .line 40
    const-wide/16 v2, 0xbb8

    .line 41
    .line 42
    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 43
    .line 44
    .line 45
    :catch_0
    :cond_0
    :try_start_3
    monitor-exit v0

    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 49
    :try_start_4
    throw p1

    .line 50
    :cond_1
    :goto_0
    iget-object p1, p1, Lio/appmetrica/analytics/identifiers/impl/e;->b:Landroid/os/IBinder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :catchall_1
    :cond_2
    const/4 p1, 0x0

    .line 54
    :goto_1
    if-eqz p1, :cond_3

    .line 55
    .line 56
    iget-object v0, p0, Lio/appmetrica/analytics/identifiers/impl/f;->b:Lid/l;

    .line 57
    .line 58
    invoke-interface {v0, p1}, Lid/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    return-object p1

    .line 63
    :cond_3
    new-instance p1, Lio/appmetrica/analytics/identifiers/impl/g;

    .line 64
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v1, "could not bind to "

    .line 68
    .line 69
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget-object v1, p0, Lio/appmetrica/analytics/identifiers/impl/f;->c:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v1, " services"

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-direct {p1, v0}, Lio/appmetrica/analytics/identifiers/impl/g;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw p1

    .line 90
    :cond_4
    new-instance p1, Lio/appmetrica/analytics/identifiers/impl/l;

    .line 91
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    const-string v1, "could not resolve "

    .line 95
    .line 96
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    iget-object v1, p0, Lio/appmetrica/analytics/identifiers/impl/f;->c:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v1, " services"

    .line 105
    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-direct {p1, v0}, Lio/appmetrica/analytics/identifiers/impl/l;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    throw p1
.end method

.method public final b(Landroid/content/Context;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/identifiers/impl/f;->a:Lio/appmetrica/analytics/identifiers/impl/e;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/identifiers/impl/e;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    :catch_0
    :catchall_0
    return-void
.end method
