.class public interface abstract Lio/sentry/o0;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract A(Ljava/lang/Throwable;Lio/sentry/z0;Ljava/lang/String;)V
.end method

.method public abstract B()Lio/sentry/s5;
.end method

.method public abstract C(Lio/sentry/protocol/y;Lio/sentry/v6;Lio/sentry/c0;Lio/sentry/u2;)Lio/sentry/protocol/r;
.end method

.method public abstract D(Lio/sentry/z4;Lio/sentry/c0;)Lio/sentry/protocol/r;
.end method

.method public abstract a(Ljava/lang/String;)V
.end method

.method public abstract b(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract c(Ljava/lang/String;)V
.end method

.method public abstract d(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract e()V
.end method

.method public abstract f()V
.end method

.method public abstract i(Z)V
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract l()Lio/sentry/transport/z;
.end method

.method public abstract m()Z
.end method

.method public abstract n(Lio/sentry/protocol/b0;)V
.end method

.method public abstract o(J)V
.end method

.method public abstract p(Lio/sentry/e;Lio/sentry/c0;)V
.end method

.method public abstract q()V
.end method

.method public abstract r()Lio/sentry/o0;
.end method

.method public abstract s()Lio/sentry/a1;
.end method

.method public abstract t(Lio/sentry/e;)V
.end method

.method public abstract u(Lio/sentry/a4;Lio/sentry/c0;)Lio/sentry/protocol/r;
.end method

.method public v(Lio/sentry/a4;)Lio/sentry/protocol/r;
    .locals 1

    .line 1
    new-instance v0, Lio/sentry/c0;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/sentry/c0;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0, p1, v0}, Lio/sentry/o0;->u(Lio/sentry/a4;Lio/sentry/c0;)Lio/sentry/protocol/r;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public abstract w(Lio/sentry/y6;Lio/sentry/a7;)Lio/sentry/a1;
.end method

.method public x(Lio/sentry/protocol/y;Lio/sentry/v6;Lio/sentry/c0;)Lio/sentry/protocol/r;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p0, p1, p2, p3, v0}, Lio/sentry/o0;->C(Lio/sentry/protocol/y;Lio/sentry/v6;Lio/sentry/c0;Lio/sentry/u2;)Lio/sentry/protocol/r;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public abstract y(Lio/sentry/e3;)V
.end method

.method public abstract z(Lio/sentry/t5;Lio/sentry/c0;)Lio/sentry/protocol/r;
.end method
