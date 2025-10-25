.class public final Lio/sentry/android/core/internal/util/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/sentry/l0;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lio/sentry/ILogger;

.field private final c:Lio/sentry/android/core/p0;

.field private final d:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/android/core/p0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lio/sentry/android/core/x0;->h(Landroid/content/Context;)Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lio/sentry/android/core/internal/util/a;->a:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p2, p0, Lio/sentry/android/core/internal/util/a;->b:Lio/sentry/ILogger;

    .line 11
    .line 12
    iput-object p3, p0, Lio/sentry/android/core/internal/util/a;->c:Lio/sentry/android/core/p0;

    .line 13
    .line 14
    new-instance p1, Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lio/sentry/android/core/internal/util/a;->d:Ljava/util/Map;

    .line 20
    .line 21
    return-void
.end method

.method private static e(Landroid/content/Context;Landroid/net/ConnectivityManager;Lio/sentry/ILogger;)Lio/sentry/l0$a;
    .locals 1

    .line 1
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lio/sentry/android/core/internal/util/l;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    const/4 v0, 0x0

    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    sget-object p0, Lio/sentry/j5;->INFO:Lio/sentry/j5;

    .line 11
    .line 12
    const-string p1, "No permission (ACCESS_NETWORK_STATE) to check network status."

    .line 13
    .line 14
    new-array v0, v0, [Ljava/lang/Object;

    .line 15
    .line 16
    invoke-interface {p2, p0, p1, v0}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    sget-object p0, Lio/sentry/l0$a;->NO_PERMISSION:Lio/sentry/l0$a;

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    if-nez p0, :cond_1

    .line 27
    .line 28
    sget-object p0, Lio/sentry/j5;->INFO:Lio/sentry/j5;

    .line 29
    .line 30
    const-string p1, "NetworkInfo is null, there\'s no active network."

    .line 31
    .line 32
    new-array v0, v0, [Ljava/lang/Object;

    .line 33
    .line 34
    invoke-interface {p2, p0, p1, v0}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    sget-object p0, Lio/sentry/l0$a;->DISCONNECTED:Lio/sentry/l0$a;

    .line 38
    .line 39
    return-object p0

    .line 40
    :cond_1
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    if-eqz p0, :cond_2

    .line 45
    .line 46
    sget-object p0, Lio/sentry/l0$a;->CONNECTED:Lio/sentry/l0$a;

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    sget-object p0, Lio/sentry/l0$a;->DISCONNECTED:Lio/sentry/l0$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .line 51
    :goto_0
    return-object p0

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    sget-object p1, Lio/sentry/j5;->WARNING:Lio/sentry/j5;

    .line 54
    .line 55
    const-string v0, "Could not retrieve Connection Status"

    .line 56
    .line 57
    invoke-interface {p2, p1, v0, p0}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    .line 59
    .line 60
    sget-object p0, Lio/sentry/l0$a;->UNKNOWN:Lio/sentry/l0$a;

    .line 61
    .line 62
    return-object p0
.end method

.method public static f(Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/android/core/p0;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {p0, p1}, Lio/sentry/android/core/internal/util/a;->h(Landroid/content/Context;Lio/sentry/ILogger;)Landroid/net/ConnectivityManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    .line 10
    .line 11
    invoke-static {p0, v2}, Lio/sentry/android/core/internal/util/l;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    const/4 v2, 0x0

    .line 16
    if-nez p0, :cond_1

    .line 17
    .line 18
    sget-object p0, Lio/sentry/j5;->INFO:Lio/sentry/j5;

    .line 19
    .line 20
    const-string p2, "No permission (ACCESS_NETWORK_STATE) to check network status."

    .line 21
    .line 22
    new-array v0, v2, [Ljava/lang/Object;

    .line 23
    .line 24
    invoke-interface {p1, p0, p2, v0}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    return-object v1

    .line 28
    :cond_1
    :try_start_0
    invoke-virtual {p2}, Lio/sentry/android/core/p0;->d()I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    const/16 p2, 0x17

    .line 33
    .line 34
    const/4 v3, 0x1

    .line 35
    if-lt p0, p2, :cond_4

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    if-nez p0, :cond_2

    .line 42
    .line 43
    sget-object p0, Lio/sentry/j5;->INFO:Lio/sentry/j5;

    .line 44
    .line 45
    const-string p2, "Network is null and cannot check network status"

    .line 46
    .line 47
    new-array v0, v2, [Ljava/lang/Object;

    .line 48
    .line 49
    invoke-interface {p1, p0, p2, v0}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    return-object v1

    .line 53
    :cond_2
    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    if-nez p0, :cond_3

    .line 58
    .line 59
    sget-object p0, Lio/sentry/j5;->INFO:Lio/sentry/j5;

    .line 60
    .line 61
    const-string p2, "NetworkCapabilities is null and cannot check network type"

    .line 62
    .line 63
    new-array v0, v2, [Ljava/lang/Object;

    .line 64
    .line 65
    invoke-interface {p1, p0, p2, v0}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    return-object v1

    .line 69
    :cond_3
    const/4 p2, 0x3

    .line 70
    invoke-virtual {p0, p2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    .line 71
    .line 72
    .line 73
    move-result p2

    .line 74
    invoke-virtual {p0, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    invoke-virtual {p0, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    move v3, v2

    .line 83
    move v2, p2

    .line 84
    goto :goto_1

    .line 85
    :cond_4
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    if-nez p0, :cond_5

    .line 90
    .line 91
    sget-object p0, Lio/sentry/j5;->INFO:Lio/sentry/j5;

    .line 92
    .line 93
    const-string p2, "NetworkInfo is null, there\'s no active network."

    .line 94
    .line 95
    new-array v0, v2, [Ljava/lang/Object;

    .line 96
    .line 97
    invoke-interface {p1, p0, p2, v0}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    return-object v1

    .line 101
    :cond_5
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    .line 102
    .line 103
    .line 104
    move-result p0

    .line 105
    if-eqz p0, :cond_8

    .line 106
    .line 107
    if-eq p0, v3, :cond_7

    .line 108
    .line 109
    const/16 p2, 0x9

    .line 110
    .line 111
    if-eq p0, p2, :cond_6

    .line 112
    .line 113
    move v0, v2

    .line 114
    :goto_0
    move v3, v0

    .line 115
    goto :goto_1

    .line 116
    :cond_6
    move v0, v2

    .line 117
    move v2, v3

    .line 118
    goto :goto_0

    .line 119
    :cond_7
    move v0, v3

    .line 120
    move v3, v2

    .line 121
    goto :goto_1

    .line 122
    :cond_8
    move v0, v2

    .line 123
    :goto_1
    if-eqz v2, :cond_9

    .line 124
    .line 125
    const-string p0, "ethernet"

    .line 126
    .line 127
    return-object p0

    .line 128
    :cond_9
    if-eqz v0, :cond_a

    .line 129
    .line 130
    const-string p0, "wifi"

    .line 131
    .line 132
    return-object p0

    .line 133
    :cond_a
    if-eqz v3, :cond_b

    .line 134
    .line 135
    const-string p0, "cellular"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    .line 137
    return-object p0

    .line 138
    :catchall_0
    move-exception p0

    .line 139
    sget-object p2, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 140
    .line 141
    const-string v0, "Failed to retrieve network info"

    .line 142
    .line 143
    invoke-interface {p1, p2, v0, p0}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 144
    .line 145
    .line 146
    :cond_b
    return-object v1
.end method

.method public static g(Landroid/net/NetworkCapabilities;Lio/sentry/android/core/p0;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lio/sentry/android/core/p0;->d()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/16 v0, 0x15

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-ge p1, v0, :cond_0

    .line 9
    .line 10
    return-object v1

    .line 11
    :cond_0
    const/4 p1, 0x3

    .line 12
    invoke-virtual {p0, p1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    const-string p0, "ethernet"

    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_1
    const/4 p1, 0x1

    .line 22
    invoke-virtual {p0, p1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_2

    .line 27
    .line 28
    const-string p0, "wifi"

    .line 29
    .line 30
    return-object p0

    .line 31
    :cond_2
    const/4 p1, 0x0

    .line 32
    invoke-virtual {p0, p1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    if-eqz p0, :cond_3

    .line 37
    .line 38
    const-string p0, "cellular"

    .line 39
    .line 40
    return-object p0

    .line 41
    :cond_3
    return-object v1
.end method

.method private static h(Landroid/content/Context;Lio/sentry/ILogger;)Landroid/net/ConnectivityManager;
    .locals 3

    .line 1
    const-string v0, "connectivity"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/net/ConnectivityManager;

    .line 8
    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    sget-object v0, Lio/sentry/j5;->INFO:Lio/sentry/j5;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    new-array v1, v1, [Ljava/lang/Object;

    .line 15
    .line 16
    const-string v2, "ConnectivityManager is null and cannot check network status"

    .line 17
    .line 18
    invoke-interface {p1, v0, v2, v1}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-object p0
.end method

.method public static i(Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/android/core/p0;Landroid/net/ConnectivityManager$NetworkCallback;)Z
    .locals 2

    .line 1
    invoke-virtual {p2}, Lio/sentry/android/core/p0;->d()I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const/16 v0, 0x18

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-ge p2, v0, :cond_0

    .line 9
    .line 10
    sget-object p0, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 11
    .line 12
    const-string p2, "NetworkCallbacks need Android N+."

    .line 13
    .line 14
    new-array p3, v1, [Ljava/lang/Object;

    .line 15
    .line 16
    invoke-interface {p1, p0, p2, p3}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    return v1

    .line 20
    :cond_0
    invoke-static {p0, p1}, Lio/sentry/android/core/internal/util/a;->h(Landroid/content/Context;Lio/sentry/ILogger;)Landroid/net/ConnectivityManager;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    if-nez p2, :cond_1

    .line 25
    .line 26
    return v1

    .line 27
    :cond_1
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    .line 28
    .line 29
    invoke-static {p0, v0}, Lio/sentry/android/core/internal/util/l;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    if-nez p0, :cond_2

    .line 34
    .line 35
    sget-object p0, Lio/sentry/j5;->INFO:Lio/sentry/j5;

    .line 36
    .line 37
    const-string p2, "No permission (ACCESS_NETWORK_STATE) to check network status."

    .line 38
    .line 39
    new-array p3, v1, [Ljava/lang/Object;

    .line 40
    .line 41
    invoke-interface {p1, p0, p2, p3}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    return v1

    .line 45
    :cond_2
    :try_start_0
    invoke-virtual {p2, p3}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .line 47
    .line 48
    const/4 p0, 0x1

    .line 49
    return p0

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    sget-object p2, Lio/sentry/j5;->WARNING:Lio/sentry/j5;

    .line 52
    .line 53
    const-string p3, "registerDefaultNetworkCallback failed"

    .line 54
    .line 55
    invoke-interface {p1, p2, p3, p0}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    .line 57
    .line 58
    return v1
.end method

.method public static j(Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/android/core/p0;Landroid/net/ConnectivityManager$NetworkCallback;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Lio/sentry/android/core/p0;->d()I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const/16 v0, 0x15

    .line 6
    .line 7
    if-ge p2, v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-static {p0, p1}, Lio/sentry/android/core/internal/util/a;->h(Landroid/content/Context;Lio/sentry/ILogger;)Landroid/net/ConnectivityManager;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-nez p0, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    :try_start_0
    invoke-virtual {p0, p3}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    sget-object p2, Lio/sentry/j5;->WARNING:Lio/sentry/j5;

    .line 23
    .line 24
    const-string p3, "unregisterNetworkCallback failed"

    .line 25
    .line 26
    invoke-interface {p1, p2, p3, p0}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/internal/util/a;->a:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Lio/sentry/android/core/internal/util/a;->b:Lio/sentry/ILogger;

    .line 4
    .line 5
    iget-object v2, p0, Lio/sentry/android/core/internal/util/a;->c:Lio/sentry/android/core/p0;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lio/sentry/android/core/internal/util/a;->f(Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/android/core/p0;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public b()Lio/sentry/l0$a;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/internal/util/a;->a:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Lio/sentry/android/core/internal/util/a;->b:Lio/sentry/ILogger;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lio/sentry/android/core/internal/util/a;->h(Landroid/content/Context;Lio/sentry/ILogger;)Landroid/net/ConnectivityManager;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    sget-object v0, Lio/sentry/l0$a;->UNKNOWN:Lio/sentry/l0$a;

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    iget-object v1, p0, Lio/sentry/android/core/internal/util/a;->a:Landroid/content/Context;

    .line 15
    .line 16
    iget-object v2, p0, Lio/sentry/android/core/internal/util/a;->b:Lio/sentry/ILogger;

    .line 17
    .line 18
    invoke-static {v1, v0, v2}, Lio/sentry/android/core/internal/util/a;->e(Landroid/content/Context;Landroid/net/ConnectivityManager;Lio/sentry/ILogger;)Lio/sentry/l0$a;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0
.end method

.method public c(Lio/sentry/l0$b;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/internal/util/a;->c:Lio/sentry/android/core/p0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/android/core/p0;->d()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x15

    .line 8
    .line 9
    if-ge v0, v1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lio/sentry/android/core/internal/util/a;->b:Lio/sentry/ILogger;

    .line 12
    .line 13
    sget-object v0, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 14
    .line 15
    const-string v1, "addConnectionStatusObserver requires Android 5+."

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    new-array v3, v2, [Ljava/lang/Object;

    .line 19
    .line 20
    invoke-interface {p1, v0, v1, v3}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    return v2

    .line 24
    :cond_0
    new-instance v0, Lio/sentry/android/core/internal/util/a$a;

    .line 25
    .line 26
    invoke-direct {v0, p0, p1}, Lio/sentry/android/core/internal/util/a$a;-><init>(Lio/sentry/android/core/internal/util/a;Lio/sentry/l0$b;)V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lio/sentry/android/core/internal/util/a;->d:Ljava/util/Map;

    .line 30
    .line 31
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lio/sentry/android/core/internal/util/a;->a:Landroid/content/Context;

    .line 35
    .line 36
    iget-object v1, p0, Lio/sentry/android/core/internal/util/a;->b:Lio/sentry/ILogger;

    .line 37
    .line 38
    iget-object v2, p0, Lio/sentry/android/core/internal/util/a;->c:Lio/sentry/android/core/p0;

    .line 39
    .line 40
    invoke-static {p1, v1, v2, v0}, Lio/sentry/android/core/internal/util/a;->i(Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/android/core/p0;Landroid/net/ConnectivityManager$NetworkCallback;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    return p1
.end method

.method public d(Lio/sentry/l0$b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/internal/util/a;->d:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/net/ConnectivityManager$NetworkCallback;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lio/sentry/android/core/internal/util/a;->a:Landroid/content/Context;

    .line 12
    .line 13
    iget-object v1, p0, Lio/sentry/android/core/internal/util/a;->b:Lio/sentry/ILogger;

    .line 14
    .line 15
    iget-object v2, p0, Lio/sentry/android/core/internal/util/a;->c:Lio/sentry/android/core/p0;

    .line 16
    .line 17
    invoke-static {v0, v1, v2, p1}, Lio/sentry/android/core/internal/util/a;->j(Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/android/core/p0;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method
