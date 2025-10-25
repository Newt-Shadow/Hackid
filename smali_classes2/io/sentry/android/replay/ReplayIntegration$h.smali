.class final Lio/sentry/android/replay/ReplayIntegration$h;
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
.field public static final e:Lio/sentry/android/replay/ReplayIntegration$h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/sentry/android/replay/ReplayIntegration$h;

    invoke-direct {v0}, Lio/sentry/android/replay/ReplayIntegration$h;-><init>()V

    sput-object v0, Lio/sentry/android/replay/ReplayIntegration$h;->e:Lio/sentry/android/replay/ReplayIntegration$h;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b()Lio/sentry/android/replay/o;
    .locals 1

    .line 1
    sget-object v0, Lio/sentry/android/replay/o;->e:Lio/sentry/android/replay/o$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/android/replay/o$a;->b()Lio/sentry/android/replay/o;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/sentry/android/replay/ReplayIntegration$h;->b()Lio/sentry/android/replay/o;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
