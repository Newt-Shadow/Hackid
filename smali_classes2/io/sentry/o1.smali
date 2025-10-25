.class public final Lio/sentry/o1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/sentry/m2;


# instance fields
.field private final a:Lio/sentry/vendor/gson/stream/c;

.field private final b:Lio/sentry/n1;


# direct methods
.method public constructor <init>(Ljava/io/Writer;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lio/sentry/vendor/gson/stream/c;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lio/sentry/vendor/gson/stream/c;-><init>(Ljava/io/Writer;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lio/sentry/o1;->a:Lio/sentry/vendor/gson/stream/c;

    .line 10
    .line 11
    new-instance p1, Lio/sentry/n1;

    .line 12
    .line 13
    invoke-direct {p1, p2}, Lio/sentry/n1;-><init>(I)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lio/sentry/o1;->b:Lio/sentry/n1;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public A(Ljava/lang/Number;)Lio/sentry/o1;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/o1;->a:Lio/sentry/vendor/gson/stream/c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lio/sentry/vendor/gson/stream/c;->X(Ljava/lang/Number;)Lio/sentry/vendor/gson/stream/c;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public B(Ljava/lang/String;)Lio/sentry/o1;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/o1;->a:Lio/sentry/vendor/gson/stream/c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lio/sentry/vendor/gson/stream/c;->d0(Ljava/lang/String;)Lio/sentry/vendor/gson/stream/c;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public C(Z)Lio/sentry/o1;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/o1;->a:Lio/sentry/vendor/gson/stream/c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lio/sentry/vendor/gson/stream/c;->k0(Z)Lio/sentry/vendor/gson/stream/c;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public bridge synthetic a(J)Lio/sentry/m2;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/sentry/o1;->x(J)Lio/sentry/o1;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic b(D)Lio/sentry/m2;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/sentry/o1;->w(D)Lio/sentry/o1;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic c(Ljava/lang/String;)Lio/sentry/m2;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/sentry/o1;->B(Ljava/lang/String;)Lio/sentry/o1;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic d(Z)Lio/sentry/m2;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/sentry/o1;->C(Z)Lio/sentry/o1;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public e(Ljava/lang/String;)Lio/sentry/m2;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/o1;->a:Lio/sentry/vendor/gson/stream/c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lio/sentry/vendor/gson/stream/c;->j(Ljava/lang/String;)Lio/sentry/vendor/gson/stream/c;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public bridge synthetic f(Ljava/lang/Number;)Lio/sentry/m2;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/sentry/o1;->A(Ljava/lang/Number;)Lio/sentry/o1;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic g(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/m2;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/sentry/o1;->y(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/o1;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic h(Ljava/lang/Boolean;)Lio/sentry/m2;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/sentry/o1;->z(Ljava/lang/Boolean;)Lio/sentry/o1;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic i()Lio/sentry/m2;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/sentry/o1;->u()Lio/sentry/o1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic j()Lio/sentry/m2;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/sentry/o1;->o()Lio/sentry/o1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic k(Ljava/lang/String;)Lio/sentry/m2;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/sentry/o1;->s(Ljava/lang/String;)Lio/sentry/o1;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic l()Lio/sentry/m2;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/sentry/o1;->m()Lio/sentry/o1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public m()Lio/sentry/o1;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/o1;->a:Lio/sentry/vendor/gson/stream/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/vendor/gson/stream/c;->c()Lio/sentry/vendor/gson/stream/c;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public n()Lio/sentry/o1;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/o1;->a:Lio/sentry/vendor/gson/stream/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/vendor/gson/stream/c;->e()Lio/sentry/vendor/gson/stream/c;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public o()Lio/sentry/o1;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/o1;->a:Lio/sentry/vendor/gson/stream/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/vendor/gson/stream/c;->g()Lio/sentry/vendor/gson/stream/c;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public p(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/o1;->a:Lio/sentry/vendor/gson/stream/c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lio/sentry/vendor/gson/stream/c;->p(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public q()Lio/sentry/o1;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/o1;->a:Lio/sentry/vendor/gson/stream/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/vendor/gson/stream/c;->h()Lio/sentry/vendor/gson/stream/c;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public bridge synthetic r()Lio/sentry/m2;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/sentry/o1;->q()Lio/sentry/o1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public s(Ljava/lang/String;)Lio/sentry/o1;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/o1;->a:Lio/sentry/vendor/gson/stream/c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lio/sentry/vendor/gson/stream/c;->k(Ljava/lang/String;)Lio/sentry/vendor/gson/stream/c;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public bridge synthetic t()Lio/sentry/m2;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/sentry/o1;->n()Lio/sentry/o1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public u()Lio/sentry/o1;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/o1;->a:Lio/sentry/vendor/gson/stream/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/sentry/vendor/gson/stream/c;->s()Lio/sentry/vendor/gson/stream/c;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public v(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/o1;->a:Lio/sentry/vendor/gson/stream/c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lio/sentry/vendor/gson/stream/c;->z(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public w(D)Lio/sentry/o1;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/o1;->a:Lio/sentry/vendor/gson/stream/c;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lio/sentry/vendor/gson/stream/c;->H(D)Lio/sentry/vendor/gson/stream/c;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public x(J)Lio/sentry/o1;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/o1;->a:Lio/sentry/vendor/gson/stream/c;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lio/sentry/vendor/gson/stream/c;->P(J)Lio/sentry/vendor/gson/stream/c;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public y(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/o1;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/o1;->b:Lio/sentry/n1;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1, p2}, Lio/sentry/n1;->a(Lio/sentry/m2;Lio/sentry/ILogger;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public z(Ljava/lang/Boolean;)Lio/sentry/o1;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/sentry/o1;->a:Lio/sentry/vendor/gson/stream/c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lio/sentry/vendor/gson/stream/c;->W(Ljava/lang/Boolean;)Lio/sentry/vendor/gson/stream/c;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method
