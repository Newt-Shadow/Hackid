.class public final synthetic Lio/sentry/android/core/z0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lio/sentry/android/core/a1;

.field public final synthetic b:Lio/sentry/android/core/SentryAndroidOptions;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/core/a1;Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/z0;->a:Lio/sentry/android/core/a1;

    iput-object p2, p0, Lio/sentry/android/core/z0;->b:Lio/sentry/android/core/SentryAndroidOptions;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/z0;->a:Lio/sentry/android/core/a1;

    iget-object v1, p0, Lio/sentry/android/core/z0;->b:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-static {v0, v1}, Lio/sentry/android/core/a1;->d(Lio/sentry/android/core/a1;Lio/sentry/android/core/SentryAndroidOptions;)Lio/sentry/android/core/b1;

    move-result-object v0

    return-object v0
.end method
