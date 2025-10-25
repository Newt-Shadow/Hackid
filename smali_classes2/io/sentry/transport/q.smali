.class public interface abstract Lio/sentry/transport/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# virtual methods
.method public abstract V(Lio/sentry/a4;Lio/sentry/c0;)V
.end method

.method public abstract i(Z)V
.end method

.method public abstract l()Lio/sentry/transport/z;
.end method

.method public m()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public abstract o(J)V
.end method

.method public y0(Lio/sentry/a4;)V
    .locals 1

    .line 1
    new-instance v0, Lio/sentry/c0;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/sentry/c0;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0, p1, v0}, Lio/sentry/transport/q;->V(Lio/sentry/a4;Lio/sentry/c0;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
