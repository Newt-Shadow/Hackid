.class public final synthetic Lio/sentry/android/core/internal/util/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/sentry/android/core/internal/util/t;

.field public final synthetic b:Lio/sentry/ILogger;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/core/internal/util/t;Lio/sentry/ILogger;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/internal/util/r;->a:Lio/sentry/android/core/internal/util/t;

    iput-object p2, p0, Lio/sentry/android/core/internal/util/r;->b:Lio/sentry/ILogger;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/internal/util/r;->a:Lio/sentry/android/core/internal/util/t;

    iget-object v1, p0, Lio/sentry/android/core/internal/util/r;->b:Lio/sentry/ILogger;

    invoke-static {v0, v1}, Lio/sentry/android/core/internal/util/t;->a(Lio/sentry/android/core/internal/util/t;Lio/sentry/ILogger;)V

    return-void
.end method
