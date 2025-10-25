.class public final Lio/sentry/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/sentry/o0;


# static fields
.field private static final a:Lio/sentry/k0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/sentry/k0;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/sentry/k0;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/sentry/k0;->a:Lio/sentry/k0;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static h()Lio/sentry/k0;
    .locals 1

    .line 1
    sget-object v0, Lio/sentry/k0;->a:Lio/sentry/k0;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public A(Ljava/lang/Throwable;Lio/sentry/z0;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lio/sentry/q3;->o()Lio/sentry/o0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1, p2, p3}, Lio/sentry/o0;->A(Ljava/lang/Throwable;Lio/sentry/z0;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public B()Lio/sentry/s5;
    .locals 1

    .line 1
    invoke-static {}, Lio/sentry/q3;->o()Lio/sentry/o0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lio/sentry/o0;->B()Lio/sentry/s5;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public C(Lio/sentry/protocol/y;Lio/sentry/v6;Lio/sentry/c0;Lio/sentry/u2;)Lio/sentry/protocol/r;
    .locals 1

    .line 1
    invoke-static {}, Lio/sentry/q3;->o()Lio/sentry/o0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1, p2, p3, p4}, Lio/sentry/o0;->C(Lio/sentry/protocol/y;Lio/sentry/v6;Lio/sentry/c0;Lio/sentry/u2;)Lio/sentry/protocol/r;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public D(Lio/sentry/z4;Lio/sentry/c0;)Lio/sentry/protocol/r;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lio/sentry/q3;->h(Lio/sentry/z4;Lio/sentry/c0;)Lio/sentry/protocol/r;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lio/sentry/q3;->A(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lio/sentry/q3;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lio/sentry/q3;->B(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/sentry/k0;->r()Lio/sentry/o0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lio/sentry/q3;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public e()V
    .locals 0

    .line 1
    invoke-static {}, Lio/sentry/q3;->l()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public f()V
    .locals 0

    .line 1
    invoke-static {}, Lio/sentry/q3;->G()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public g()V
    .locals 0

    .line 1
    invoke-static {}, Lio/sentry/q3;->j()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public i(Z)V
    .locals 0

    .line 1
    invoke-static {}, Lio/sentry/q3;->j()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .line 1
    invoke-static {}, Lio/sentry/q3;->t()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public l()Lio/sentry/transport/z;
    .locals 1

    .line 1
    invoke-static {}, Lio/sentry/q3;->o()Lio/sentry/o0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lio/sentry/o0;->l()Lio/sentry/transport/z;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public m()Z
    .locals 1

    .line 1
    invoke-static {}, Lio/sentry/q3;->u()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public n(Lio/sentry/protocol/b0;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lio/sentry/q3;->F(Lio/sentry/protocol/b0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public o(J)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lio/sentry/q3;->n(J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public p(Lio/sentry/e;Lio/sentry/c0;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lio/sentry/q3;->f(Lio/sentry/e;Lio/sentry/c0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public q()V
    .locals 0

    .line 1
    invoke-static {}, Lio/sentry/q3;->i()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public r()Lio/sentry/o0;
    .locals 1

    .line 1
    invoke-static {}, Lio/sentry/q3;->o()Lio/sentry/o0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lio/sentry/o0;->r()Lio/sentry/o0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public s()Lio/sentry/a1;
    .locals 1

    .line 1
    invoke-static {}, Lio/sentry/q3;->o()Lio/sentry/o0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lio/sentry/o0;->s()Lio/sentry/a1;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public t(Lio/sentry/e;)V
    .locals 1

    .line 1
    new-instance v0, Lio/sentry/c0;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/sentry/c0;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, v0}, Lio/sentry/k0;->p(Lio/sentry/e;Lio/sentry/c0;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public u(Lio/sentry/a4;Lio/sentry/c0;)Lio/sentry/protocol/r;
    .locals 1

    .line 1
    invoke-static {}, Lio/sentry/q3;->o()Lio/sentry/o0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1, p2}, Lio/sentry/o0;->u(Lio/sentry/a4;Lio/sentry/c0;)Lio/sentry/protocol/r;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public w(Lio/sentry/y6;Lio/sentry/a7;)Lio/sentry/a1;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lio/sentry/q3;->H(Lio/sentry/y6;Lio/sentry/a7;)Lio/sentry/a1;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public y(Lio/sentry/e3;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lio/sentry/q3;->k(Lio/sentry/e3;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public z(Lio/sentry/t5;Lio/sentry/c0;)Lio/sentry/protocol/r;
    .locals 1

    .line 1
    invoke-static {}, Lio/sentry/q3;->o()Lio/sentry/o0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1, p2}, Lio/sentry/o0;->z(Lio/sentry/t5;Lio/sentry/c0;)Lio/sentry/protocol/r;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method
