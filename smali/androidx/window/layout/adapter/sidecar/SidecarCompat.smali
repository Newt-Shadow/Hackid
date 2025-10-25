.class public final Landroidx/window/layout/adapter/sidecar/SidecarCompat;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/window/layout/adapter/sidecar/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/window/layout/adapter/sidecar/SidecarCompat$a;,
        Landroidx/window/layout/adapter/sidecar/SidecarCompat$b;,
        Landroidx/window/layout/adapter/sidecar/SidecarCompat$c;,
        Landroidx/window/layout/adapter/sidecar/SidecarCompat$TranslatingCallback;
    }
.end annotation


# static fields
.field public static final f:Landroidx/window/layout/adapter/sidecar/SidecarCompat$a;


# instance fields
.field private final a:Landroidx/window/sidecar/SidecarInterface;

.field private final b:Lw1/a;

.field private final c:Ljava/util/Map;

.field private final d:Ljava/util/Map;

.field private e:Landroidx/window/layout/adapter/sidecar/SidecarCompat$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/window/layout/adapter/sidecar/SidecarCompat$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/window/layout/adapter/sidecar/SidecarCompat$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->f:Landroidx/window/layout/adapter/sidecar/SidecarCompat$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget-object v0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->f:Landroidx/window/layout/adapter/sidecar/SidecarCompat$a;

    invoke-virtual {v0, p1}, Landroidx/window/layout/adapter/sidecar/SidecarCompat$a;->b(Landroid/content/Context;)Landroidx/window/sidecar/SidecarInterface;

    move-result-object p1

    .line 7
    new-instance v0, Lw1/a;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lw1/a;-><init>(Lq1/j;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 8
    invoke-direct {p0, p1, v0}, Landroidx/window/layout/adapter/sidecar/SidecarCompat;-><init>(Landroidx/window/sidecar/SidecarInterface;Lw1/a;)V

    return-void
.end method

.method public constructor <init>(Landroidx/window/sidecar/SidecarInterface;Lw1/a;)V
    .locals 1

    const-string v0, "sidecarAdapter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->a:Landroidx/window/sidecar/SidecarInterface;

    .line 3
    iput-object p2, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->b:Lw1/a;

    .line 4
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->c:Ljava/util/Map;

    .line 5
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->d:Ljava/util/Map;

    return-void
.end method

.method public static synthetic d(Landroidx/window/layout/adapter/sidecar/SidecarCompat;Landroid/app/Activity;Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->l(Landroidx/window/layout/adapter/sidecar/SidecarCompat;Landroid/app/Activity;Landroid/content/res/Configuration;)V

    return-void
.end method

.method public static final synthetic e(Landroidx/window/layout/adapter/sidecar/SidecarCompat;)Landroidx/window/layout/adapter/sidecar/SidecarCompat$b;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->e:Landroidx/window/layout/adapter/sidecar/SidecarCompat$b;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic f(Landroidx/window/layout/adapter/sidecar/SidecarCompat;)Lw1/a;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->b:Lw1/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic g(Landroidx/window/layout/adapter/sidecar/SidecarCompat;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->c:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method private final k(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->d:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    instance-of v0, p1, Landroidx/core/content/c;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Lw1/b;

    .line 14
    .line 15
    invoke-direct {v0, p0, p1}, Lw1/b;-><init>(Landroidx/window/layout/adapter/sidecar/SidecarCompat;Landroid/app/Activity;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->d:Ljava/util/Map;

    .line 19
    .line 20
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    check-cast p1, Landroidx/core/content/c;

    .line 24
    .line 25
    invoke-interface {p1, v0}, Landroidx/core/content/c;->addOnConfigurationChangedListener(Lc0/a;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method private static final l(Landroidx/window/layout/adapter/sidecar/SidecarCompat;Landroid/app/Activity;Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    const-string p2, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p2}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p2, "$activity"

    .line 7
    .line 8
    invoke-static {p1, p2}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->e:Landroidx/window/layout/adapter/sidecar/SidecarCompat$b;

    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->i(Landroid/app/Activity;)Lt1/j;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p2, p1, p0}, Landroidx/window/layout/adapter/sidecar/SidecarCompat$b;->a(Landroid/app/Activity;Lt1/j;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method private final m(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->d:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lc0/a;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    instance-of v1, p1, Landroidx/core/content/c;

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    move-object v1, p1

    .line 17
    check-cast v1, Landroidx/core/content/c;

    .line 18
    .line 19
    invoke-interface {v1, v0}, Landroidx/core/content/c;->removeOnConfigurationChangedListener(Lc0/a;)V

    .line 20
    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->d:Ljava/util/Map;

    .line 23
    .line 24
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public a(Landroidx/window/layout/adapter/sidecar/a$a;)V
    .locals 3

    .line 1
    const-string v0, "extensionCallback"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroidx/window/layout/adapter/sidecar/SidecarCompat$b;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Landroidx/window/layout/adapter/sidecar/SidecarCompat$b;-><init>(Landroidx/window/layout/adapter/sidecar/a$a;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->e:Landroidx/window/layout/adapter/sidecar/SidecarCompat$b;

    .line 12
    .line 13
    iget-object p1, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->a:Landroidx/window/sidecar/SidecarInterface;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    new-instance v0, Landroidx/window/layout/adapter/sidecar/DistinctElementSidecarCallback;

    .line 18
    .line 19
    iget-object v1, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->b:Lw1/a;

    .line 20
    .line 21
    new-instance v2, Landroidx/window/layout/adapter/sidecar/SidecarCompat$TranslatingCallback;

    .line 22
    .line 23
    invoke-direct {v2, p0}, Landroidx/window/layout/adapter/sidecar/SidecarCompat$TranslatingCallback;-><init>(Landroidx/window/layout/adapter/sidecar/SidecarCompat;)V

    .line 24
    .line 25
    .line 26
    check-cast v2, Landroidx/window/sidecar/SidecarInterface$SidecarCallback;

    .line 27
    .line 28
    invoke-direct {v0, v1, v2}, Landroidx/window/layout/adapter/sidecar/DistinctElementSidecarCallback;-><init>(Lw1/a;Landroidx/window/sidecar/SidecarInterface$SidecarCallback;)V

    .line 29
    .line 30
    .line 31
    check-cast v0, Landroidx/window/sidecar/SidecarInterface$SidecarCallback;

    .line 32
    .line 33
    invoke-interface {p1, v0}, Landroidx/window/sidecar/SidecarInterface;->setSidecarCallback(Landroidx/window/sidecar/SidecarInterface$SidecarCallback;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method public b(Landroid/app/Activity;)V
    .locals 1

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->f:Landroidx/window/layout/adapter/sidecar/SidecarCompat$a;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroidx/window/layout/adapter/sidecar/SidecarCompat$a;->a(Landroid/app/Activity;)Landroid/os/IBinder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0, v0, p1}, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->j(Landroid/os/IBinder;Landroid/app/Activity;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance v0, Landroidx/window/layout/adapter/sidecar/SidecarCompat$c;

    .line 19
    .line 20
    invoke-direct {v0, p0, p1}, Landroidx/window/layout/adapter/sidecar/SidecarCompat$c;-><init>(Landroidx/window/layout/adapter/sidecar/SidecarCompat;Landroid/app/Activity;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void
.end method

.method public c(Landroid/app/Activity;)V
    .locals 3

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->f:Landroidx/window/layout/adapter/sidecar/SidecarCompat$a;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroidx/window/layout/adapter/sidecar/SidecarCompat$a;->a(Landroid/app/Activity;)Landroid/os/IBinder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v1, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->a:Landroidx/window/sidecar/SidecarInterface;

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-interface {v1, v0}, Landroidx/window/sidecar/SidecarInterface;->onWindowLayoutChangeListenerRemoved(Landroid/os/IBinder;)V

    .line 20
    .line 21
    .line 22
    :cond_1
    invoke-direct {p0, p1}, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->m(Landroid/app/Activity;)V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->e:Landroidx/window/layout/adapter/sidecar/SidecarCompat$b;

    .line 26
    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    invoke-virtual {v1, p1}, Landroidx/window/layout/adapter/sidecar/SidecarCompat$b;->b(Landroid/app/Activity;)V

    .line 30
    .line 31
    .line 32
    :cond_2
    iget-object p1, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->c:Ljava/util/Map;

    .line 33
    .line 34
    invoke-interface {p1}, Ljava/util/Map;->size()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    const/4 v1, 0x1

    .line 39
    if-ne p1, v1, :cond_3

    .line 40
    .line 41
    move p1, v1

    .line 42
    goto :goto_0

    .line 43
    :cond_3
    const/4 p1, 0x0

    .line 44
    :goto_0
    iget-object v2, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->c:Ljava/util/Map;

    .line 45
    .line 46
    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    if-eqz p1, :cond_4

    .line 50
    .line 51
    iget-object p1, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->a:Landroidx/window/sidecar/SidecarInterface;

    .line 52
    .line 53
    if-eqz p1, :cond_4

    .line 54
    .line 55
    invoke-interface {p1, v1}, Landroidx/window/sidecar/SidecarInterface;->onDeviceStateListenersChanged(Z)V

    .line 56
    .line 57
    .line 58
    :cond_4
    return-void
.end method

.method public final h()Landroidx/window/sidecar/SidecarInterface;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->a:Landroidx/window/sidecar/SidecarInterface;

    .line 2
    .line 3
    return-object v0
.end method

.method public final i(Landroid/app/Activity;)Lt1/j;
    .locals 2

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->f:Landroidx/window/layout/adapter/sidecar/SidecarCompat$a;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroidx/window/layout/adapter/sidecar/SidecarCompat$a;->a(Landroid/app/Activity;)Landroid/os/IBinder;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    new-instance p1, Lt1/j;

    .line 15
    .line 16
    invoke-static {}, Lyc/m;->h()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-direct {p1, v0}, Lt1/j;-><init>(Ljava/util/List;)V

    .line 21
    .line 22
    .line 23
    return-object p1

    .line 24
    :cond_0
    iget-object v0, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->a:Landroidx/window/sidecar/SidecarInterface;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-interface {v0, p1}, Landroidx/window/sidecar/SidecarInterface;->getWindowLayoutInfo(Landroid/os/IBinder;)Landroidx/window/sidecar/SidecarWindowLayoutInfo;

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
    iget-object v0, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->b:Lw1/a;

    .line 35
    .line 36
    iget-object v1, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->a:Landroidx/window/sidecar/SidecarInterface;

    .line 37
    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    invoke-interface {v1}, Landroidx/window/sidecar/SidecarInterface;->getDeviceState()Landroidx/window/sidecar/SidecarDeviceState;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    if-nez v1, :cond_3

    .line 45
    .line 46
    :cond_2
    new-instance v1, Landroidx/window/sidecar/SidecarDeviceState;

    .line 47
    .line 48
    invoke-direct {v1}, Landroidx/window/sidecar/SidecarDeviceState;-><init>()V

    .line 49
    .line 50
    .line 51
    :cond_3
    invoke-virtual {v0, p1, v1}, Lw1/a;->f(Landroidx/window/sidecar/SidecarWindowLayoutInfo;Landroidx/window/sidecar/SidecarDeviceState;)Lt1/j;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    return-object p1
.end method

.method public final j(Landroid/os/IBinder;Landroid/app/Activity;)V
    .locals 1

    .line 1
    const-string v0, "windowToken"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "activity"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->c:Ljava/util/Map;

    .line 12
    .line 13
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->a:Landroidx/window/sidecar/SidecarInterface;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-interface {v0, p1}, Landroidx/window/sidecar/SidecarInterface;->onWindowLayoutChangeListenerAdded(Landroid/os/IBinder;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object p1, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->c:Ljava/util/Map;

    .line 24
    .line 25
    invoke-interface {p1}, Ljava/util/Map;->size()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    const/4 v0, 0x1

    .line 30
    if-ne p1, v0, :cond_1

    .line 31
    .line 32
    iget-object p1, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->a:Landroidx/window/sidecar/SidecarInterface;

    .line 33
    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    invoke-interface {p1, v0}, Landroidx/window/sidecar/SidecarInterface;->onDeviceStateListenersChanged(Z)V

    .line 38
    .line 39
    .line 40
    :cond_1
    iget-object p1, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->e:Landroidx/window/layout/adapter/sidecar/SidecarCompat$b;

    .line 41
    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    invoke-virtual {p0, p2}, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->i(Landroid/app/Activity;)Lt1/j;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {p1, p2, v0}, Landroidx/window/layout/adapter/sidecar/SidecarCompat$b;->a(Landroid/app/Activity;Lt1/j;)V

    .line 49
    .line 50
    .line 51
    :cond_2
    invoke-direct {p0, p2}, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->k(Landroid/app/Activity;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public n()Z
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->a:Landroidx/window/sidecar/SidecarInterface;

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    const-string v4, "setSidecarCallback"

    .line 15
    .line 16
    new-array v5, v3, [Ljava/lang/Class;

    .line 17
    .line 18
    const-class v6, Landroidx/window/sidecar/SidecarInterface$SidecarCallback;

    .line 19
    .line 20
    aput-object v6, v5, v0

    .line 21
    .line 22
    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move-object v1, v2

    .line 28
    :goto_0
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    move-object v1, v2

    .line 36
    :goto_1
    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 37
    .line 38
    invoke-static {v1, v4}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-eqz v4, :cond_f

    .line 43
    .line 44
    iget-object v1, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->a:Landroidx/window/sidecar/SidecarInterface;

    .line 45
    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    invoke-interface {v1}, Landroidx/window/sidecar/SidecarInterface;->getDeviceState()Landroidx/window/sidecar/SidecarDeviceState;

    .line 49
    .line 50
    .line 51
    :cond_2
    iget-object v1, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->a:Landroidx/window/sidecar/SidecarInterface;

    .line 52
    .line 53
    if-eqz v1, :cond_3

    .line 54
    .line 55
    invoke-interface {v1, v3}, Landroidx/window/sidecar/SidecarInterface;->onDeviceStateListenersChanged(Z)V

    .line 56
    .line 57
    .line 58
    :cond_3
    iget-object v1, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->a:Landroidx/window/sidecar/SidecarInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .line 60
    const-class v4, Landroid/os/IBinder;

    .line 61
    .line 62
    if-eqz v1, :cond_4

    .line 63
    .line 64
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    if-eqz v1, :cond_4

    .line 69
    .line 70
    const-string v5, "getWindowLayoutInfo"

    .line 71
    .line 72
    new-array v6, v3, [Ljava/lang/Class;

    .line 73
    .line 74
    aput-object v4, v6, v0

    .line 75
    .line 76
    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    goto :goto_2

    .line 81
    :cond_4
    move-object v1, v2

    .line 82
    :goto_2
    if-eqz v1, :cond_5

    .line 83
    .line 84
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    goto :goto_3

    .line 89
    :cond_5
    move-object v1, v2

    .line 90
    :goto_3
    const-class v5, Landroidx/window/sidecar/SidecarWindowLayoutInfo;

    .line 91
    .line 92
    invoke-static {v1, v5}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v5

    .line 96
    if-eqz v5, :cond_e

    .line 97
    .line 98
    iget-object v1, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->a:Landroidx/window/sidecar/SidecarInterface;

    .line 99
    .line 100
    if-eqz v1, :cond_6

    .line 101
    .line 102
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    if-eqz v1, :cond_6

    .line 107
    .line 108
    const-string v5, "onWindowLayoutChangeListenerAdded"

    .line 109
    .line 110
    new-array v6, v3, [Ljava/lang/Class;

    .line 111
    .line 112
    aput-object v4, v6, v0

    .line 113
    .line 114
    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    goto :goto_4

    .line 119
    :cond_6
    move-object v1, v2

    .line 120
    :goto_4
    if-eqz v1, :cond_7

    .line 121
    .line 122
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    goto :goto_5

    .line 127
    :cond_7
    move-object v1, v2

    .line 128
    :goto_5
    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 129
    .line 130
    invoke-static {v1, v5}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v5

    .line 134
    if-eqz v5, :cond_d

    .line 135
    .line 136
    iget-object v1, p0, Landroidx/window/layout/adapter/sidecar/SidecarCompat;->a:Landroidx/window/sidecar/SidecarInterface;

    .line 137
    .line 138
    if-eqz v1, :cond_8

    .line 139
    .line 140
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    if-eqz v1, :cond_8

    .line 145
    .line 146
    const-string v5, "onWindowLayoutChangeListenerRemoved"

    .line 147
    .line 148
    new-array v6, v3, [Ljava/lang/Class;

    .line 149
    .line 150
    aput-object v4, v6, v0

    .line 151
    .line 152
    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    goto :goto_6

    .line 157
    :cond_8
    move-object v1, v2

    .line 158
    :goto_6
    if-eqz v1, :cond_9

    .line 159
    .line 160
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    :cond_9
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 165
    .line 166
    invoke-static {v2, v1}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    if-eqz v1, :cond_c

    .line 171
    .line 172
    new-instance v1, Landroidx/window/sidecar/SidecarDeviceState;

    .line 173
    .line 174
    invoke-direct {v1}, Landroidx/window/sidecar/SidecarDeviceState;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    .line 176
    .line 177
    const/4 v2, 0x3

    .line 178
    :try_start_2
    iput v2, v1, Landroidx/window/sidecar/SidecarDeviceState;->posture:I
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 179
    .line 180
    goto :goto_7

    .line 181
    :catch_0
    :try_start_3
    const-class v4, Landroidx/window/sidecar/SidecarDeviceState;

    .line 182
    .line 183
    const-string v5, "setPosture"

    .line 184
    .line 185
    new-array v6, v3, [Ljava/lang/Class;

    .line 186
    .line 187
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 188
    .line 189
    aput-object v7, v6, v0

    .line 190
    .line 191
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 192
    .line 193
    .line 194
    move-result-object v4

    .line 195
    new-array v5, v3, [Ljava/lang/Object;

    .line 196
    .line 197
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 198
    .line 199
    .line 200
    move-result-object v6

    .line 201
    aput-object v6, v5, v0

    .line 202
    .line 203
    invoke-virtual {v4, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    const-class v4, Landroidx/window/sidecar/SidecarDeviceState;

    .line 207
    .line 208
    const-string v5, "getPosture"

    .line 209
    .line 210
    new-array v6, v0, [Ljava/lang/Class;

    .line 211
    .line 212
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 213
    .line 214
    .line 215
    move-result-object v4

    .line 216
    new-array v5, v0, [Ljava/lang/Object;

    .line 217
    .line 218
    invoke-virtual {v4, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    const-string v4, "null cannot be cast to non-null type kotlin.Int"

    .line 223
    .line 224
    invoke-static {v1, v4}, Lkotlin/jvm/internal/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    check-cast v1, Ljava/lang/Integer;

    .line 228
    .line 229
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 230
    .line 231
    .line 232
    move-result v1

    .line 233
    if-ne v1, v2, :cond_b

    .line 234
    .line 235
    :goto_7
    new-instance v1, Landroidx/window/sidecar/SidecarDisplayFeature;

    .line 236
    .line 237
    invoke-direct {v1}, Landroidx/window/sidecar/SidecarDisplayFeature;-><init>()V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v1}, Landroidx/window/sidecar/SidecarDisplayFeature;->getRect()Landroid/graphics/Rect;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    const-string v4, "displayFeature.rect"

    .line 245
    .line 246
    invoke-static {v2, v4}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v1, v2}, Landroidx/window/sidecar/SidecarDisplayFeature;->setRect(Landroid/graphics/Rect;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v1}, Landroidx/window/sidecar/SidecarDisplayFeature;->getType()I

    .line 253
    .line 254
    .line 255
    invoke-virtual {v1, v3}, Landroidx/window/sidecar/SidecarDisplayFeature;->setType(I)V

    .line 256
    .line 257
    .line 258
    new-instance v2, Landroidx/window/sidecar/SidecarWindowLayoutInfo;

    .line 259
    .line 260
    invoke-direct {v2}, Landroidx/window/sidecar/SidecarWindowLayoutInfo;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 261
    .line 262
    .line 263
    :try_start_4
    iget-object v0, v2, Landroidx/window/sidecar/SidecarWindowLayoutInfo;->displayFeatures:Ljava/util/List;
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 264
    .line 265
    goto :goto_8

    .line 266
    :catch_1
    :try_start_5
    new-instance v4, Ljava/util/ArrayList;

    .line 267
    .line 268
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 269
    .line 270
    .line 271
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    const-class v1, Landroidx/window/sidecar/SidecarWindowLayoutInfo;

    .line 275
    .line 276
    const-string v5, "setDisplayFeatures"

    .line 277
    .line 278
    new-array v6, v3, [Ljava/lang/Class;

    .line 279
    .line 280
    const-class v7, Ljava/util/List;

    .line 281
    .line 282
    aput-object v7, v6, v0

    .line 283
    .line 284
    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 285
    .line 286
    .line 287
    move-result-object v1

    .line 288
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v5

    .line 292
    invoke-virtual {v1, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    const-class v1, Landroidx/window/sidecar/SidecarWindowLayoutInfo;

    .line 296
    .line 297
    const-string v5, "getDisplayFeatures"

    .line 298
    .line 299
    new-array v6, v0, [Ljava/lang/Class;

    .line 300
    .line 301
    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 302
    .line 303
    .line 304
    move-result-object v1

    .line 305
    new-array v5, v0, [Ljava/lang/Object;

    .line 306
    .line 307
    invoke-virtual {v1, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object v1

    .line 311
    const-string v2, "null cannot be cast to non-null type kotlin.collections.List<androidx.window.sidecar.SidecarDisplayFeature>"

    .line 312
    .line 313
    invoke-static {v1, v2}, Lkotlin/jvm/internal/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    check-cast v1, Ljava/util/List;

    .line 317
    .line 318
    invoke-static {v4, v1}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 319
    .line 320
    .line 321
    move-result v1

    .line 322
    if-eqz v1, :cond_a

    .line 323
    .line 324
    :goto_8
    move v0, v3

    .line 325
    goto :goto_9

    .line 326
    :cond_a
    new-instance v1, Ljava/lang/Exception;

    .line 327
    .line 328
    const-string v2, "Invalid display feature getter/setter"

    .line 329
    .line 330
    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    throw v1

    .line 334
    :cond_b
    new-instance v1, Ljava/lang/Exception;

    .line 335
    .line 336
    const-string v2, "Invalid device posture getter/setter"

    .line 337
    .line 338
    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    throw v1

    .line 342
    :cond_c
    new-instance v1, Ljava/lang/NoSuchMethodException;

    .line 343
    .line 344
    new-instance v3, Ljava/lang/StringBuilder;

    .line 345
    .line 346
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 347
    .line 348
    .line 349
    const-string v4, "Illegal return type for \'onWindowLayoutChangeListenerRemoved\': "

    .line 350
    .line 351
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v2

    .line 361
    invoke-direct {v1, v2}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    throw v1

    .line 365
    :cond_d
    new-instance v2, Ljava/lang/NoSuchMethodException;

    .line 366
    .line 367
    new-instance v3, Ljava/lang/StringBuilder;

    .line 368
    .line 369
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 370
    .line 371
    .line 372
    const-string v4, "Illegal return type for \'onWindowLayoutChangeListenerAdded\': "

    .line 373
    .line 374
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v1

    .line 384
    invoke-direct {v2, v1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    throw v2

    .line 388
    :cond_e
    new-instance v2, Ljava/lang/NoSuchMethodException;

    .line 389
    .line 390
    new-instance v3, Ljava/lang/StringBuilder;

    .line 391
    .line 392
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 393
    .line 394
    .line 395
    const-string v4, "Illegal return type for \'getWindowLayoutInfo\': "

    .line 396
    .line 397
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 401
    .line 402
    .line 403
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v1

    .line 407
    invoke-direct {v2, v1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    .line 408
    .line 409
    .line 410
    throw v2

    .line 411
    :cond_f
    new-instance v2, Ljava/lang/NoSuchMethodException;

    .line 412
    .line 413
    new-instance v3, Ljava/lang/StringBuilder;

    .line 414
    .line 415
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 416
    .line 417
    .line 418
    const-string v4, "Illegal return type for \'setSidecarCallback\': "

    .line 419
    .line 420
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    .line 422
    .line 423
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 424
    .line 425
    .line 426
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v1

    .line 430
    invoke-direct {v2, v1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    .line 431
    .line 432
    .line 433
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 434
    :catchall_0
    :goto_9
    return v0
.end method
