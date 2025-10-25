.class public final synthetic Lio/sentry/y5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/sentry/m6;


# instance fields
.field public final synthetic a:Lio/sentry/d6;

.field public final synthetic b:Lio/sentry/m6;

.field public final synthetic c:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/d6;Lio/sentry/m6;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/y5;->a:Lio/sentry/d6;

    iput-object p2, p0, Lio/sentry/y5;->b:Lio/sentry/m6;

    iput-object p3, p0, Lio/sentry/y5;->c:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final a(Lio/sentry/k6;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/sentry/y5;->a:Lio/sentry/d6;

    iget-object v1, p0, Lio/sentry/y5;->b:Lio/sentry/m6;

    iget-object v2, p0, Lio/sentry/y5;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, v1, v2, p1}, Lio/sentry/d6;->y(Lio/sentry/d6;Lio/sentry/m6;Ljava/util/concurrent/atomic/AtomicReference;Lio/sentry/k6;)V

    return-void
.end method
