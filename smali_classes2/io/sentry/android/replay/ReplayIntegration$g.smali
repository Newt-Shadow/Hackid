.class final Lio/sentry/android/replay/ReplayIntegration$g;
.super Lkotlin/jvm/internal/n;
.source "SourceFile"

# interfaces
.implements Lid/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/sentry/android/replay/ReplayIntegration;-><init>(Landroid/content/Context;Lio/sentry/transport/p;Lid/a;Lid/l;Lid/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final e:Lio/sentry/android/replay/ReplayIntegration$g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/sentry/android/replay/ReplayIntegration$g;

    invoke-direct {v0}, Lio/sentry/android/replay/ReplayIntegration$g;-><init>()V

    sput-object v0, Lio/sentry/android/replay/ReplayIntegration$g;->e:Lio/sentry/android/replay/ReplayIntegration$g;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .line 1
    new-instance v0, Lio/sentry/android/replay/ReplayIntegration$b;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/sentry/android/replay/ReplayIntegration$b;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/sentry/android/replay/ReplayIntegration$g;->b()Ljava/util/concurrent/ScheduledExecutorService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
