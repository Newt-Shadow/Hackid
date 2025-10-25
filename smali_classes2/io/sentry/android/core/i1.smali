.class public final synthetic Lio/sentry/android/core/i1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/sentry/e3;


# instance fields
.field public final synthetic a:Lio/sentry/f6$b;

.field public final synthetic b:Z

.field public final synthetic c:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic d:Lio/sentry/s5;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/f6$b;ZLjava/util/concurrent/atomic/AtomicReference;Lio/sentry/s5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/i1;->a:Lio/sentry/f6$b;

    iput-boolean p2, p0, Lio/sentry/android/core/i1;->b:Z

    iput-object p3, p0, Lio/sentry/android/core/i1;->c:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p4, p0, Lio/sentry/android/core/i1;->d:Lio/sentry/s5;

    return-void
.end method


# virtual methods
.method public final a(Lio/sentry/u0;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/sentry/android/core/i1;->a:Lio/sentry/f6$b;

    iget-boolean v1, p0, Lio/sentry/android/core/i1;->b:Z

    iget-object v2, p0, Lio/sentry/android/core/i1;->c:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v3, p0, Lio/sentry/android/core/i1;->d:Lio/sentry/s5;

    invoke-static {v0, v1, v2, v3, p1}, Lio/sentry/android/core/k1;->a(Lio/sentry/f6$b;ZLjava/util/concurrent/atomic/AtomicReference;Lio/sentry/s5;Lio/sentry/u0;)V

    return-void
.end method
