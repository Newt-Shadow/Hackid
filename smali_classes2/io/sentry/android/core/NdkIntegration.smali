.class public final Lio/sentry/android/core/NdkIntegration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/sentry/e1;
.implements Ljava/io/Closeable;


# instance fields
.field private final a:Ljava/lang/Class;

.field private b:Lio/sentry/android/core/SentryAndroidOptions;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/sentry/android/core/NdkIntegration;->a:Ljava/lang/Class;

    .line 5
    .line 6
    return-void
.end method

.method private a(Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableNdk(Z)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lio/sentry/android/core/SentryAndroidOptions;->setEnableScopeSync(Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/NdkIntegration;->b:Lio/sentry/android/core/SentryAndroidOptions;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableNdk()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lio/sentry/android/core/NdkIntegration;->a:Ljava/lang/Class;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    :try_start_0
    const-string v1, "close"

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    new-array v3, v2, [Ljava/lang/Class;

    .line 19
    .line 20
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    new-array v1, v2, [Ljava/lang/Object;

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-virtual {v0, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lio/sentry/android/core/NdkIntegration;->b:Lio/sentry/android/core/SentryAndroidOptions;

    .line 31
    .line 32
    invoke-virtual {v0}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    sget-object v1, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 37
    .line 38
    const-string v3, "NdkIntegration removed."

    .line 39
    .line 40
    new-array v2, v2, [Ljava/lang/Object;

    .line 41
    .line 42
    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception v0

    .line 47
    :try_start_1
    iget-object v1, p0, Lio/sentry/android/core/NdkIntegration;->b:Lio/sentry/android/core/SentryAndroidOptions;

    .line 48
    .line 49
    invoke-virtual {v1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    sget-object v2, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 54
    .line 55
    const-string v3, "Failed to close SentryNdk."

    .line 56
    .line 57
    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    iget-object v1, p0, Lio/sentry/android/core/NdkIntegration;->b:Lio/sentry/android/core/SentryAndroidOptions;

    .line 63
    .line 64
    invoke-virtual {v1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    sget-object v2, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 69
    .line 70
    const-string v3, "Failed to invoke the SentryNdk.close method."

    .line 71
    .line 72
    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 73
    .line 74
    .line 75
    :goto_0
    iget-object v0, p0, Lio/sentry/android/core/NdkIntegration;->b:Lio/sentry/android/core/SentryAndroidOptions;

    .line 76
    .line 77
    invoke-direct {p0, v0}, Lio/sentry/android/core/NdkIntegration;->a(Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :catchall_1
    move-exception v0

    .line 82
    iget-object v1, p0, Lio/sentry/android/core/NdkIntegration;->b:Lio/sentry/android/core/SentryAndroidOptions;

    .line 83
    .line 84
    invoke-direct {p0, v1}, Lio/sentry/android/core/NdkIntegration;->a(Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 85
    .line 86
    .line 87
    throw v0

    .line 88
    :cond_0
    :goto_1
    return-void
.end method

.method public final f(Lio/sentry/o0;Lio/sentry/s5;)V
    .locals 6

    .line 1
    const-string v0, "Hub is required"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    instance-of p1, p2, Lio/sentry/android/core/SentryAndroidOptions;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    check-cast p2, Lio/sentry/android/core/SentryAndroidOptions;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move-object p2, v0

    .line 15
    :goto_0
    const-string p1, "SentryAndroidOptions is required"

    .line 16
    .line 17
    invoke-static {p2, p1}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lio/sentry/android/core/SentryAndroidOptions;

    .line 22
    .line 23
    iput-object p1, p0, Lio/sentry/android/core/NdkIntegration;->b:Lio/sentry/android/core/SentryAndroidOptions;

    .line 24
    .line 25
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableNdk()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    iget-object p2, p0, Lio/sentry/android/core/NdkIntegration;->b:Lio/sentry/android/core/SentryAndroidOptions;

    .line 30
    .line 31
    invoke-virtual {p2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    sget-object v1, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 36
    .line 37
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    const-string v3, "NdkIntegration enabled: %s"

    .line 46
    .line 47
    invoke-interface {p2, v1, v3, v2}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    if-eqz p1, :cond_2

    .line 51
    .line 52
    iget-object p1, p0, Lio/sentry/android/core/NdkIntegration;->a:Ljava/lang/Class;

    .line 53
    .line 54
    if-eqz p1, :cond_2

    .line 55
    .line 56
    iget-object p1, p0, Lio/sentry/android/core/NdkIntegration;->b:Lio/sentry/android/core/SentryAndroidOptions;

    .line 57
    .line 58
    invoke-virtual {p1}, Lio/sentry/s5;->getCacheDirPath()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    const/4 p2, 0x0

    .line 63
    if-nez p1, :cond_1

    .line 64
    .line 65
    iget-object p1, p0, Lio/sentry/android/core/NdkIntegration;->b:Lio/sentry/android/core/SentryAndroidOptions;

    .line 66
    .line 67
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    sget-object v0, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 72
    .line 73
    const-string v1, "No cache dir path is defined in options."

    .line 74
    .line 75
    new-array p2, p2, [Ljava/lang/Object;

    .line 76
    .line 77
    invoke-interface {p1, v0, v1, p2}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Lio/sentry/android/core/NdkIntegration;->b:Lio/sentry/android/core/SentryAndroidOptions;

    .line 81
    .line 82
    invoke-direct {p0, p1}, Lio/sentry/android/core/NdkIntegration;->a(Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :cond_1
    :try_start_0
    iget-object p1, p0, Lio/sentry/android/core/NdkIntegration;->a:Ljava/lang/Class;

    .line 87
    .line 88
    const-string v2, "init"

    .line 89
    .line 90
    const/4 v3, 0x1

    .line 91
    new-array v4, v3, [Ljava/lang/Class;

    .line 92
    .line 93
    const-class v5, Lio/sentry/android/core/SentryAndroidOptions;

    .line 94
    .line 95
    aput-object v5, v4, p2

    .line 96
    .line 97
    invoke-virtual {p1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    new-array v2, v3, [Ljava/lang/Object;

    .line 102
    .line 103
    iget-object v3, p0, Lio/sentry/android/core/NdkIntegration;->b:Lio/sentry/android/core/SentryAndroidOptions;

    .line 104
    .line 105
    aput-object v3, v2, p2

    .line 106
    .line 107
    invoke-virtual {p1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    iget-object p1, p0, Lio/sentry/android/core/NdkIntegration;->b:Lio/sentry/android/core/SentryAndroidOptions;

    .line 111
    .line 112
    invoke-virtual {p1}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    const-string v0, "NdkIntegration installed."

    .line 117
    .line 118
    new-array p2, p2, [Ljava/lang/Object;

    .line 119
    .line 120
    invoke-interface {p1, v1, v0, p2}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    const-string p1, "Ndk"

    .line 124
    .line 125
    invoke-static {p1}, Lio/sentry/util/k;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    .line 127
    .line 128
    goto :goto_1

    .line 129
    :catchall_0
    move-exception p1

    .line 130
    iget-object p2, p0, Lio/sentry/android/core/NdkIntegration;->b:Lio/sentry/android/core/SentryAndroidOptions;

    .line 131
    .line 132
    invoke-direct {p0, p2}, Lio/sentry/android/core/NdkIntegration;->a(Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 133
    .line 134
    .line 135
    iget-object p2, p0, Lio/sentry/android/core/NdkIntegration;->b:Lio/sentry/android/core/SentryAndroidOptions;

    .line 136
    .line 137
    invoke-virtual {p2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 138
    .line 139
    .line 140
    move-result-object p2

    .line 141
    sget-object v0, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 142
    .line 143
    const-string v1, "Failed to initialize SentryNdk."

    .line 144
    .line 145
    invoke-interface {p2, v0, v1, p1}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 146
    .line 147
    .line 148
    goto :goto_1

    .line 149
    :catch_0
    move-exception p1

    .line 150
    iget-object p2, p0, Lio/sentry/android/core/NdkIntegration;->b:Lio/sentry/android/core/SentryAndroidOptions;

    .line 151
    .line 152
    invoke-direct {p0, p2}, Lio/sentry/android/core/NdkIntegration;->a(Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 153
    .line 154
    .line 155
    iget-object p2, p0, Lio/sentry/android/core/NdkIntegration;->b:Lio/sentry/android/core/SentryAndroidOptions;

    .line 156
    .line 157
    invoke-virtual {p2}, Lio/sentry/s5;->getLogger()Lio/sentry/ILogger;

    .line 158
    .line 159
    .line 160
    move-result-object p2

    .line 161
    sget-object v0, Lio/sentry/j5;->ERROR:Lio/sentry/j5;

    .line 162
    .line 163
    const-string v1, "Failed to invoke the SentryNdk.init method."

    .line 164
    .line 165
    invoke-interface {p2, v0, v1, p1}, Lio/sentry/ILogger;->b(Lio/sentry/j5;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 166
    .line 167
    .line 168
    goto :goto_1

    .line 169
    :cond_2
    iget-object p1, p0, Lio/sentry/android/core/NdkIntegration;->b:Lio/sentry/android/core/SentryAndroidOptions;

    .line 170
    .line 171
    invoke-direct {p0, p1}, Lio/sentry/android/core/NdkIntegration;->a(Lio/sentry/android/core/SentryAndroidOptions;)V

    .line 172
    .line 173
    .line 174
    :goto_1
    return-void
.end method
