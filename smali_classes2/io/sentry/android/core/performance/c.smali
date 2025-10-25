.class public final synthetic Lio/sentry/android/core/performance/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/sentry/android/core/performance/g;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/core/performance/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/performance/c;->a:Lio/sentry/android/core/performance/g;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/performance/c;->a:Lio/sentry/android/core/performance/g;

    invoke-static {v0}, Lio/sentry/android/core/performance/g;->c(Lio/sentry/android/core/performance/g;)V

    return-void
.end method
