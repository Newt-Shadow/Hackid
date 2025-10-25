.class public interface abstract Lio/sentry/android/core/internal/util/t$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/core/internal/util/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "c"
.end annotation


# virtual methods
.method public a(Landroid/view/Window;Landroid/view/Window$OnFrameMetricsAvailableListener;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2, p3}, Landroid/view/Window;->addOnFrameMetricsAvailableListener(Landroid/view/Window$OnFrameMetricsAvailableListener;Landroid/os/Handler;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public b(Landroid/view/Window;Landroid/view/Window$OnFrameMetricsAvailableListener;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Landroid/view/Window;->removeOnFrameMetricsAvailableListener(Landroid/view/Window$OnFrameMetricsAvailableListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
