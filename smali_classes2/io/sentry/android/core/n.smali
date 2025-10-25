.class public final synthetic Lio/sentry/android/core/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/sentry/d3$c;


# instance fields
.field public final synthetic a:Lio/sentry/a1;

.field public final synthetic b:Lio/sentry/u0;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/a1;Lio/sentry/u0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/n;->a:Lio/sentry/a1;

    iput-object p2, p0, Lio/sentry/android/core/n;->b:Lio/sentry/u0;

    return-void
.end method


# virtual methods
.method public final a(Lio/sentry/a1;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/n;->a:Lio/sentry/a1;

    iget-object v1, p0, Lio/sentry/android/core/n;->b:Lio/sentry/u0;

    invoke-static {v0, v1, p1}, Lio/sentry/android/core/ActivityLifecycleIntegration;->c(Lio/sentry/a1;Lio/sentry/u0;Lio/sentry/a1;)V

    return-void
.end method
