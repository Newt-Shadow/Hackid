.class public abstract Lt7/f0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt7/f0$e;,
        Lt7/f0$d;,
        Lt7/f0$b;,
        Lt7/f0$a;,
        Lt7/f0$c;
    }
.end annotation


# static fields
.field private static final a:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "UTF-8"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lt7/f0;->a:Ljava/nio/charset/Charset;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/nio/charset/Charset;
    .locals 1

    .line 1
    sget-object v0, Lt7/f0;->a:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    return-object v0
.end method

.method public static b()Lt7/f0$b;
    .locals 1

    .line 1
    new-instance v0, Lt7/b$b;

    .line 2
    .line 3
    invoke-direct {v0}, Lt7/b$b;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public abstract c()Lt7/f0$a;
.end method

.method public abstract d()Ljava/lang/String;
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method public abstract f()Ljava/lang/String;
.end method

.method public abstract g()Ljava/lang/String;
.end method

.method public abstract h()Ljava/lang/String;
.end method

.method public abstract i()Ljava/lang/String;
.end method

.method public abstract j()Ljava/lang/String;
.end method

.method public abstract k()Lt7/f0$d;
.end method

.method public abstract l()I
.end method

.method public abstract m()Ljava/lang/String;
.end method

.method public abstract n()Lt7/f0$e;
.end method

.method protected abstract o()Lt7/f0$b;
.end method

.method public p(Ljava/lang/String;)Lt7/f0;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lt7/f0;->o()Lt7/f0$b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lt7/f0$b;->c(Ljava/lang/String;)Lt7/f0$b;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lt7/f0;->n()Lt7/f0$e;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lt7/f0;->n()Lt7/f0$e;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1, p1}, Lt7/f0$e;->p(Ljava/lang/String;)Lt7/f0$e;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {v0, p1}, Lt7/f0$b;->m(Lt7/f0$e;)Lt7/f0$b;

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-virtual {v0}, Lt7/f0$b;->a()Lt7/f0;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    return-object p1
.end method

.method public q(Lt7/f0$a;)Lt7/f0;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    move-object p1, p0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lt7/f0;->o()Lt7/f0$b;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Lt7/f0$b;->b(Lt7/f0$a;)Lt7/f0$b;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lt7/f0$b;->a()Lt7/f0;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    :goto_0
    return-object p1
.end method

.method public r(Ljava/util/List;)Lt7/f0;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lt7/f0;->n()Lt7/f0$e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lt7/f0;->o()Lt7/f0$b;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0}, Lt7/f0;->n()Lt7/f0$e;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1, p1}, Lt7/f0$e;->q(Ljava/util/List;)Lt7/f0$e;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {v0, p1}, Lt7/f0$b;->m(Lt7/f0$e;)Lt7/f0$b;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Lt7/f0$b;->a()Lt7/f0;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1

    .line 28
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 29
    .line 30
    const-string v0, "Reports without sessions cannot have events added to them."

    .line 31
    .line 32
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p1
.end method

.method public s(Ljava/lang/String;)Lt7/f0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lt7/f0;->o()Lt7/f0$b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lt7/f0$b;->f(Ljava/lang/String;)Lt7/f0$b;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lt7/f0$b;->a()Lt7/f0;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public t(Ljava/lang/String;)Lt7/f0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lt7/f0;->o()Lt7/f0$b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lt7/f0$b;->g(Ljava/lang/String;)Lt7/f0$b;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lt7/f0$b;->a()Lt7/f0;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public u(Lt7/f0$d;)Lt7/f0;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lt7/f0;->o()Lt7/f0$b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lt7/f0$b;->m(Lt7/f0$e;)Lt7/f0$b;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Lt7/f0$b;->j(Lt7/f0$d;)Lt7/f0$b;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Lt7/f0$b;->a()Lt7/f0;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method public v(JZLjava/lang/String;)Lt7/f0;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lt7/f0;->o()Lt7/f0$b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lt7/f0;->n()Lt7/f0$e;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lt7/f0;->n()Lt7/f0$e;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1, p1, p2, p3, p4}, Lt7/f0$e;->r(JZLjava/lang/String;)Lt7/f0$e;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {v0, p1}, Lt7/f0$b;->m(Lt7/f0$e;)Lt7/f0$b;

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {v0}, Lt7/f0$b;->a()Lt7/f0;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1
.end method
