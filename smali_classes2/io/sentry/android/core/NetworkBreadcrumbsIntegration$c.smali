.class final Lio/sentry/android/core/NetworkBreadcrumbsIntegration$c;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/core/NetworkBreadcrumbsIntegration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field final a:Lio/sentry/o0;

.field final b:Lio/sentry/android/core/p0;

.field c:Landroid/net/Network;

.field d:Landroid/net/NetworkCapabilities;

.field e:J

.field final f:Lio/sentry/z3;


# direct methods
.method constructor <init>(Lio/sentry/o0;Lio/sentry/android/core/p0;Lio/sentry/z3;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$c;->c:Landroid/net/Network;

    .line 6
    .line 7
    iput-object v0, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$c;->d:Landroid/net/NetworkCapabilities;

    .line 8
    .line 9
    const-wide/16 v0, 0x0

    .line 10
    .line 11
    iput-wide v0, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$c;->e:J

    .line 12
    .line 13
    const-string v0, "Hub is required"

    .line 14
    .line 15
    invoke-static {p1, v0}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lio/sentry/o0;

    .line 20
    .line 21
    iput-object p1, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$c;->a:Lio/sentry/o0;

    .line 22
    .line 23
    const-string p1, "BuildInfoProvider is required"

    .line 24
    .line 25
    invoke-static {p2, p1}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Lio/sentry/android/core/p0;

    .line 30
    .line 31
    iput-object p1, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$c;->b:Lio/sentry/android/core/p0;

    .line 32
    .line 33
    const-string p1, "SentryDateProvider is required"

    .line 34
    .line 35
    invoke-static {p3, p1}, Lio/sentry/util/q;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Lio/sentry/z3;

    .line 40
    .line 41
    iput-object p1, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$c;->f:Lio/sentry/z3;

    .line 42
    .line 43
    return-void
.end method

.method private a(Ljava/lang/String;)Lio/sentry/e;
    .locals 2

    .line 1
    new-instance v0, Lio/sentry/e;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/sentry/e;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "system"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lio/sentry/e;->r(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v1, "network.event"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lio/sentry/e;->n(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v1, "action"

    .line 17
    .line 18
    invoke-virtual {v0, v1, p1}, Lio/sentry/e;->o(Ljava/lang/String;Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    sget-object p1, Lio/sentry/j5;->INFO:Lio/sentry/j5;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Lio/sentry/e;->p(Lio/sentry/j5;)V

    .line 24
    .line 25
    .line 26
    return-object v0
.end method

.method private b(Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;JJ)Lio/sentry/android/core/NetworkBreadcrumbsIntegration$b;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    new-instance p1, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$b;

    .line 4
    .line 5
    iget-object p3, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$c;->b:Lio/sentry/android/core/p0;

    .line 6
    .line 7
    invoke-direct {p1, p2, p3, p5, p6}, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$b;-><init>(Landroid/net/NetworkCapabilities;Lio/sentry/android/core/p0;J)V

    .line 8
    .line 9
    .line 10
    return-object p1

    .line 11
    :cond_0
    new-instance v0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$b;

    .line 12
    .line 13
    iget-object v1, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$c;->b:Lio/sentry/android/core/p0;

    .line 14
    .line 15
    invoke-direct {v0, p1, v1, p3, p4}, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$b;-><init>(Landroid/net/NetworkCapabilities;Lio/sentry/android/core/p0;J)V

    .line 16
    .line 17
    .line 18
    new-instance p1, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$b;

    .line 19
    .line 20
    iget-object p3, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$c;->b:Lio/sentry/android/core/p0;

    .line 21
    .line 22
    invoke-direct {p1, p2, p3, p5, p6}, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$b;-><init>(Landroid/net/NetworkCapabilities;Lio/sentry/android/core/p0;J)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1}, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$b;->a(Lio/sentry/android/core/NetworkBreadcrumbsIntegration$b;)Z

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    if-eqz p2, :cond_1

    .line 30
    .line 31
    const/4 p1, 0x0

    .line 32
    :cond_1
    return-object p1
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$c;->c:Landroid/net/Network;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

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
    const-string v0, "NETWORK_AVAILABLE"

    .line 11
    .line 12
    invoke-direct {p0, v0}, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$c;->a(Ljava/lang/String;)Lio/sentry/e;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$c;->a:Lio/sentry/o0;

    .line 17
    .line 18
    invoke-interface {v1, v0}, Lio/sentry/o0;->t(Lio/sentry/e;)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$c;->c:Landroid/net/Network;

    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    iput-object p1, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$c;->d:Landroid/net/NetworkCapabilities;

    .line 25
    .line 26
    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$c;->c:Landroid/net/Network;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object p1, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$c;->f:Lio/sentry/z3;

    .line 11
    .line 12
    invoke-interface {p1}, Lio/sentry/z3;->a()Lio/sentry/y3;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Lio/sentry/y3;->l()J

    .line 17
    .line 18
    .line 19
    move-result-wide v7

    .line 20
    iget-object v1, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$c;->d:Landroid/net/NetworkCapabilities;

    .line 21
    .line 22
    iget-wide v3, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$c;->e:J

    .line 23
    .line 24
    move-object v0, p0

    .line 25
    move-object v2, p2

    .line 26
    move-wide v5, v7

    .line 27
    invoke-direct/range {v0 .. v6}, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$c;->b(Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;JJ)Lio/sentry/android/core/NetworkBreadcrumbsIntegration$b;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    if-nez p1, :cond_1

    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    iput-object p2, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$c;->d:Landroid/net/NetworkCapabilities;

    .line 35
    .line 36
    iput-wide v7, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$c;->e:J

    .line 37
    .line 38
    const-string p2, "NETWORK_CAPABILITIES_CHANGED"

    .line 39
    .line 40
    invoke-direct {p0, p2}, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$c;->a(Ljava/lang/String;)Lio/sentry/e;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    iget v0, p1, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$b;->a:I

    .line 45
    .line 46
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string v1, "download_bandwidth"

    .line 51
    .line 52
    invoke-virtual {p2, v1, v0}, Lio/sentry/e;->o(Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    iget v0, p1, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$b;->b:I

    .line 56
    .line 57
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    const-string v1, "upload_bandwidth"

    .line 62
    .line 63
    invoke-virtual {p2, v1, v0}, Lio/sentry/e;->o(Ljava/lang/String;Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    iget-boolean v0, p1, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$b;->e:Z

    .line 67
    .line 68
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    const-string v1, "vpn_active"

    .line 73
    .line 74
    invoke-virtual {p2, v1, v0}, Lio/sentry/e;->o(Ljava/lang/String;Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    const-string v0, "network_type"

    .line 78
    .line 79
    iget-object v1, p1, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$b;->f:Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {p2, v0, v1}, Lio/sentry/e;->o(Ljava/lang/String;Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    iget v0, p1, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$b;->c:I

    .line 85
    .line 86
    if-eqz v0, :cond_2

    .line 87
    .line 88
    const-string v1, "signal_strength"

    .line 89
    .line 90
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {p2, v1, v0}, Lio/sentry/e;->o(Ljava/lang/String;Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    :cond_2
    new-instance v0, Lio/sentry/c0;

    .line 98
    .line 99
    invoke-direct {v0}, Lio/sentry/c0;-><init>()V

    .line 100
    .line 101
    .line 102
    const-string v1, "android:networkCapabilities"

    .line 103
    .line 104
    invoke-virtual {v0, v1, p1}, Lio/sentry/c0;->k(Ljava/lang/String;Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    iget-object p1, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$c;->a:Lio/sentry/o0;

    .line 108
    .line 109
    invoke-interface {p1, p2, v0}, Lio/sentry/o0;->p(Lio/sentry/e;Lio/sentry/c0;)V

    .line 110
    .line 111
    .line 112
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$c;->c:Landroid/net/Network;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const-string p1, "NETWORK_LOST"

    .line 11
    .line 12
    invoke-direct {p0, p1}, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$c;->a(Ljava/lang/String;)Lio/sentry/e;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget-object v0, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$c;->a:Lio/sentry/o0;

    .line 17
    .line 18
    invoke-interface {v0, p1}, Lio/sentry/o0;->t(Lio/sentry/e;)V

    .line 19
    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    iput-object p1, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$c;->c:Landroid/net/Network;

    .line 23
    .line 24
    iput-object p1, p0, Lio/sentry/android/core/NetworkBreadcrumbsIntegration$c;->d:Landroid/net/NetworkCapabilities;

    .line 25
    .line 26
    return-void
.end method
