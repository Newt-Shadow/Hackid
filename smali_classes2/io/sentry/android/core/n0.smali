.class public final synthetic Lio/sentry/android/core/n0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/sentry/android/core/AppLifecycleIntegration;

.field public final synthetic b:Lio/sentry/o0;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/core/AppLifecycleIntegration;Lio/sentry/o0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/n0;->a:Lio/sentry/android/core/AppLifecycleIntegration;

    iput-object p2, p0, Lio/sentry/android/core/n0;->b:Lio/sentry/o0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/n0;->a:Lio/sentry/android/core/AppLifecycleIntegration;

    iget-object v1, p0, Lio/sentry/android/core/n0;->b:Lio/sentry/o0;

    invoke-static {v0, v1}, Lio/sentry/android/core/AppLifecycleIntegration;->b(Lio/sentry/android/core/AppLifecycleIntegration;Lio/sentry/o0;)V

    return-void
.end method
