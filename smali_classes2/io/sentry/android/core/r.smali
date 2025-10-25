.class public final synthetic Lio/sentry/android/core/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/sentry/d3$c;


# instance fields
.field public final synthetic a:Lio/sentry/android/core/ActivityLifecycleIntegration;

.field public final synthetic b:Lio/sentry/u0;

.field public final synthetic c:Lio/sentry/a1;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/core/ActivityLifecycleIntegration;Lio/sentry/u0;Lio/sentry/a1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/r;->a:Lio/sentry/android/core/ActivityLifecycleIntegration;

    iput-object p2, p0, Lio/sentry/android/core/r;->b:Lio/sentry/u0;

    iput-object p3, p0, Lio/sentry/android/core/r;->c:Lio/sentry/a1;

    return-void
.end method


# virtual methods
.method public final a(Lio/sentry/a1;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/r;->a:Lio/sentry/android/core/ActivityLifecycleIntegration;

    iget-object v1, p0, Lio/sentry/android/core/r;->b:Lio/sentry/u0;

    iget-object v2, p0, Lio/sentry/android/core/r;->c:Lio/sentry/a1;

    invoke-static {v0, v1, v2, p1}, Lio/sentry/android/core/ActivityLifecycleIntegration;->e(Lio/sentry/android/core/ActivityLifecycleIntegration;Lio/sentry/u0;Lio/sentry/a1;Lio/sentry/a1;)V

    return-void
.end method
