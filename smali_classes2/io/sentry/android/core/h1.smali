.class public final synthetic Lio/sentry/android/core/h1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/sentry/s5;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/s5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/h1;->a:Lio/sentry/s5;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/h1;->a:Lio/sentry/s5;

    invoke-static {v0}, Lio/sentry/android/core/k1;->b(Lio/sentry/s5;)V

    return-void
.end method
