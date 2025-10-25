.class public final synthetic Lio/sentry/android/core/internal/util/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Window$OnFrameMetricsAvailableListener;


# instance fields
.field public final synthetic a:Lio/sentry/android/core/internal/util/t;

.field public final synthetic b:Lio/sentry/android/core/p0;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/core/internal/util/t;Lio/sentry/android/core/p0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/internal/util/s;->a:Lio/sentry/android/core/internal/util/t;

    iput-object p2, p0, Lio/sentry/android/core/internal/util/s;->b:Lio/sentry/android/core/p0;

    return-void
.end method


# virtual methods
.method public final onFrameMetricsAvailable(Landroid/view/Window;Landroid/view/FrameMetrics;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/internal/util/s;->a:Lio/sentry/android/core/internal/util/t;

    iget-object v1, p0, Lio/sentry/android/core/internal/util/s;->b:Lio/sentry/android/core/p0;

    invoke-static {v0, v1, p1, p2, p3}, Lio/sentry/android/core/internal/util/t;->b(Lio/sentry/android/core/internal/util/t;Lio/sentry/android/core/p0;Landroid/view/Window;Landroid/view/FrameMetrics;I)V

    return-void
.end method
