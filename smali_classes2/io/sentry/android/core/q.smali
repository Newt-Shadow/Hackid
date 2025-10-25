.class public final synthetic Lio/sentry/android/core/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/sentry/e3;


# instance fields
.field public final synthetic a:Lio/sentry/android/core/ActivityLifecycleIntegration;

.field public final synthetic b:Lio/sentry/a1;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/core/ActivityLifecycleIntegration;Lio/sentry/a1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/q;->a:Lio/sentry/android/core/ActivityLifecycleIntegration;

    iput-object p2, p0, Lio/sentry/android/core/q;->b:Lio/sentry/a1;

    return-void
.end method


# virtual methods
.method public final a(Lio/sentry/u0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/q;->a:Lio/sentry/android/core/ActivityLifecycleIntegration;

    iget-object v1, p0, Lio/sentry/android/core/q;->b:Lio/sentry/a1;

    invoke-static {v0, v1, p1}, Lio/sentry/android/core/ActivityLifecycleIntegration;->a(Lio/sentry/android/core/ActivityLifecycleIntegration;Lio/sentry/a1;Lio/sentry/u0;)V

    return-void
.end method
