.class Lio/sentry/android/core/NetworkBreadcrumbsIntegration$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->f(Lio/sentry/o0;Lio/sentry/s5;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/sentry/o0;

.field final synthetic b:Lio/sentry/s5;

.field final synthetic c:Lio/sentry/android/core/NetworkBreadcrumbsIntegration;


# direct methods
.method constructor <init>(Lio/sentry/android/core/NetworkBreadcrumbsIntegration;Lio/sentry/o0;Lio/sentry/s5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$a;->c:Lio/sentry/android/core/NetworkBreadcrumbsIntegration;

    .line 2
    .line 3
    iput-object p2, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$a;->a:Lio/sentry/o0;

    .line 4
    .line 5
    iput-object p3, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$a;->b:Lio/sentry/s5;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$a;->c:Lio/sentry/android/core/NetworkBreadcrumbsIntegration;

    .line 2
    .line 3
    invoke-static {v0}, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->b(Lio/sentry/android/core/NetworkBreadcrumbsIntegration;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$a;->c:Lio/sentry/android/core/NetworkBreadcrumbsIntegration;

    .line 11
    .line 12
    invoke-static {v0}, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->c(Lio/sentry/android/core/NetworkBreadcrumbsIntegration;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    monitor-enter v0

    .line 17
    :try_start_0
    iget-object v1, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$a;->c:Lio/sentry/android/core/NetworkBreadcrumbsIntegration;

    .line 18
    .line 19
    new-instance v2, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$c;

    .line 20
    .line 21
    iget-object v3, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$a;->a:Lio/sentry/o0;

    .line 22
    .line 23
    iget-object v4, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$a;->c:Lio/sentry/android/core/NetworkBreadcrumbsIntegration;

    .line 24
    .line 25
    invoke-static {v4}, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->e(Lio/sentry/android/core/NetworkBreadcrumbsIntegration;)Lio/sentry/android/core/p0;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    iget-object v5, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$a;->b:Lio/sentry/s5;

    .line 30
    .line 31
    invoke-virtual {v5}, Lio/sentry/s5;->getDateProvider()Lio/sentry/z3;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    invoke-direct {v2, v3, v4, v5}, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$c;-><init>(Lio/sentry/o0;Lio/sentry/android/core/p0;Lio/sentry/z3;)V

    .line 36
    .line 37
    .line 38
    iput-object v2, v1, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->g:Lio/sentry/android/core/NetworkBreadcrumbsIntegration$c;

    .line 39
    .line 40
    iget-object v1, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$a;->c:Lio/sentry/android/core/NetworkBreadcrumbsIntegration;

    .line 41
    .line 42
    invoke-static {v1}, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->g(Lio/sentry/android/core/NetworkBreadcrumbsIntegration;)Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    iget-object v2, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$a;->c:Lio/sentry/android/core/NetworkBreadcrumbsIntegration;

    .line 47
    .line 48
    invoke-static {v2}, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->h(Lio/sentry/android/core/NetworkBreadcrumbsIntegration;)Lio/sentry/ILogger;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    iget-object v3, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$a;->c:Lio/sentry/android/core/NetworkBreadcrumbsIntegration;

    .line 53
    .line 54
    invoke-static {v3}, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->e(Lio/sentry/android/core/NetworkBreadcrumbsIntegration;)Lio/sentry/android/core/p0;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    iget-object v4, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$a;->c:Lio/sentry/android/core/NetworkBreadcrumbsIntegration;

    .line 59
    .line 60
    iget-object v4, v4, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->g:Lio/sentry/android/core/NetworkBreadcrumbsIntegration$c;

    .line 61
    .line 62
    invoke-static {v1, v2, v3, v4}, Lio/sentry/android/core/internal/util/a;->i(Landroid/content/Context;Lio/sentry/ILogger;Lio/sentry/android/core/p0;Landroid/net/ConnectivityManager$NetworkCallback;)Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    const/4 v2, 0x0

    .line 67
    if-eqz v1, :cond_1

    .line 68
    .line 69
    iget-object v1, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$a;->c:Lio/sentry/android/core/NetworkBreadcrumbsIntegration;

    .line 70
    .line 71
    invoke-static {v1}, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->h(Lio/sentry/android/core/NetworkBreadcrumbsIntegration;)Lio/sentry/ILogger;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    sget-object v3, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 76
    .line 77
    const-string v4, "NetworkBreadcrumbsIntegration installed."

    .line 78
    .line 79
    new-array v2, v2, [Ljava/lang/Object;

    .line 80
    .line 81
    invoke-interface {v1, v3, v4, v2}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    const-string v1, "NetworkBreadcrumbs"

    .line 85
    .line 86
    invoke-static {v1}, Lio/sentry/util/k;->a(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_1
    iget-object v1, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$a;->c:Lio/sentry/android/core/NetworkBreadcrumbsIntegration;

    .line 91
    .line 92
    invoke-static {v1}, Lio/sentry/android/core/NetworkBreadcrumbsIntegration;->h(Lio/sentry/android/core/NetworkBreadcrumbsIntegration;)Lio/sentry/ILogger;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    sget-object v3, Lio/sentry/j5;->DEBUG:Lio/sentry/j5;

    .line 97
    .line 98
    const-string v4, "NetworkBreadcrumbsIntegration not installed."

    .line 99
    .line 100
    new-array v2, v2, [Ljava/lang/Object;

    .line 101
    .line 102
    invoke-interface {v1, v3, v4, v2}, Lio/sentry/ILogger;->c(Lio/sentry/j5;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    :goto_0
    monitor-exit v0

    .line 106
    return-void

    .line 107
    :catchall_0
    move-exception v1

    .line 108
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    throw v1
.end method
