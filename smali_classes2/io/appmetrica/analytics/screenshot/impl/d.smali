.class public final Lio/appmetrica/analytics/screenshot/impl/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/screenshot/impl/P;


# instance fields
.field public final a:Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;

.field public final b:Lio/appmetrica/analytics/screenshot/impl/Q;

.field public volatile c:Lio/appmetrica/analytics/screenshot/impl/i;

.field public final d:Lxc/d;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;Lio/appmetrica/analytics/screenshot/impl/Q;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/appmetrica/analytics/screenshot/impl/d;->a:Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;

    .line 5
    .line 6
    iput-object p2, p0, Lio/appmetrica/analytics/screenshot/impl/d;->b:Lio/appmetrica/analytics/screenshot/impl/Q;

    .line 7
    .line 8
    new-instance p1, Lio/appmetrica/analytics/screenshot/impl/a;

    .line 9
    .line 10
    invoke-direct {p1, p0}, Lio/appmetrica/analytics/screenshot/impl/a;-><init>(Lio/appmetrica/analytics/screenshot/impl/d;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lxc/e;->a(Lid/a;)Lxc/d;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lio/appmetrica/analytics/screenshot/impl/d;->d:Lxc/d;

    .line 18
    .line 19
    return-void
.end method

.method public static final synthetic a(Lio/appmetrica/analytics/screenshot/impl/d;)Lio/appmetrica/analytics/screenshot/impl/i;
    .locals 0

    .line 3
    iget-object p0, p0, Lio/appmetrica/analytics/screenshot/impl/d;->c:Lio/appmetrica/analytics/screenshot/impl/i;

    return-object p0
.end method

.method public static final synthetic b(Lio/appmetrica/analytics/screenshot/impl/d;)Lio/appmetrica/analytics/screenshot/impl/Q;
    .locals 0

    .line 2
    iget-object p0, p0, Lio/appmetrica/analytics/screenshot/impl/d;->b:Lio/appmetrica/analytics/screenshot/impl/Q;

    return-object p0
.end method

.method public static final synthetic c(Lio/appmetrica/analytics/screenshot/impl/d;)Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/appmetrica/analytics/screenshot/impl/d;->a:Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final d(Lio/appmetrica/analytics/screenshot/impl/d;)Landroid/app/Activity$ScreenCaptureCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/appmetrica/analytics/screenshot/impl/d;->d:Lxc/d;

    .line 2
    .line 3
    invoke-interface {p0}, Lxc/d;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/app/Activity$ScreenCaptureCallback;

    .line 8
    .line 9
    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 4

    const/16 v0, 0x22

    .line 4
    invoke-static {v0}, Lio/appmetrica/analytics/coreutils/internal/AndroidUtils;->isApiAchieved(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lio/appmetrica/analytics/screenshot/impl/d;->a:Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;

    invoke-interface {v0}, Lio/appmetrica/analytics/modulesapi/internal/client/ClientContext;->getActivityLifecycleRegistry()Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityLifecycleRegistry;

    move-result-object v0

    .line 6
    new-instance v1, Lio/appmetrica/analytics/screenshot/impl/c;

    invoke-direct {v1, p0}, Lio/appmetrica/analytics/screenshot/impl/c;-><init>(Lio/appmetrica/analytics/screenshot/impl/d;)V

    .line 7
    sget-object v2, Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityEvent;->STARTED:Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityEvent;

    .line 8
    sget-object v3, Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityEvent;->STOPPED:Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityEvent;

    filled-new-array {v2, v3}, [Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityEvent;

    move-result-object v2

    .line 9
    invoke-interface {v0, v1, v2}, Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityLifecycleRegistry;->registerListener(Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityLifecycleListener;[Lio/appmetrica/analytics/coreapi/internal/lifecycle/ActivityEvent;)V

    return-void
.end method

.method public final a(Lio/appmetrica/analytics/screenshot/impl/l;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p1, Lio/appmetrica/analytics/screenshot/impl/l;->a:Lio/appmetrica/analytics/screenshot/impl/i;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    :goto_0
    iput-object p1, p0, Lio/appmetrica/analytics/screenshot/impl/d;->c:Lio/appmetrica/analytics/screenshot/impl/i;

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "AndroidApiScreenshotCaptor"

    return-object v0
.end method
