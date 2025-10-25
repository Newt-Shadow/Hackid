.class final Lio/sentry/android/replay/ReplayIntegration$e;
.super Lkotlin/jvm/internal/n;
.source "SourceFile"

# interfaces
.implements Lid/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/sentry/android/replay/ReplayIntegration;->k0(Ljava/io/File;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic e:Ljava/io/File;

.field final synthetic f:J

.field final synthetic g:Lio/sentry/android/replay/ReplayIntegration;


# direct methods
.method constructor <init>(Ljava/io/File;JLio/sentry/android/replay/ReplayIntegration;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/android/replay/ReplayIntegration$e;->e:Ljava/io/File;

    iput-wide p2, p0, Lio/sentry/android/replay/ReplayIntegration$e;->f:J

    iput-object p4, p0, Lio/sentry/android/replay/ReplayIntegration$e;->g:Lio/sentry/android/replay/ReplayIntegration;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lio/sentry/android/replay/h;J)V
    .locals 7

    .line 1
    const-string p2, "$this$onScreenshotRecorded"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lio/sentry/android/replay/ReplayIntegration$e;->e:Ljava/io/File;

    .line 7
    .line 8
    iget-wide v2, p0, Lio/sentry/android/replay/ReplayIntegration$e;->f:J

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    const/4 v5, 0x4

    .line 12
    const/4 v6, 0x0

    .line 13
    move-object v0, p1

    .line 14
    invoke-static/range {v0 .. v6}, Lio/sentry/android/replay/h;->f(Lio/sentry/android/replay/h;Ljava/io/File;JLjava/lang/String;ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lio/sentry/android/replay/ReplayIntegration$e;->g:Lio/sentry/android/replay/ReplayIntegration;

    .line 18
    .line 19
    invoke-static {p1}, Lio/sentry/android/replay/ReplayIntegration;->q(Lio/sentry/android/replay/ReplayIntegration;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lio/sentry/android/replay/h;

    .line 2
    .line 3
    check-cast p2, Ljava/lang/Number;

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    invoke-virtual {p0, p1, v0, v1}, Lio/sentry/android/replay/ReplayIntegration$e;->a(Lio/sentry/android/replay/h;J)V

    .line 10
    .line 11
    .line 12
    sget-object p1, Lxc/t;->a:Lxc/t;

    .line 13
    .line 14
    return-object p1
.end method
