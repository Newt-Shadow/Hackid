.class public final Lue/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lte/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lue/b$f;,
        Lue/b$b;,
        Lue/b$a;,
        Lue/b$e;,
        Lue/b$c;,
        Lue/b$g;,
        Lue/b$d;
    }
.end annotation


# static fields
.field public static final h:Lue/b$d;


# instance fields
.field private final a:Lne/w;

.field private final b:Lse/f;

.field private final c:Laf/f;

.field private final d:Laf/e;

.field private e:I

.field private final f:Lue/a;

.field private g:Lne/s;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lue/b$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lue/b$d;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lue/b;->h:Lue/b$d;

    return-void
.end method

.method public constructor <init>(Lne/w;Lse/f;Laf/f;Laf/e;)V
    .locals 1

    .line 1
    const-string v0, "connection"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "source"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "sink"

    .line 12
    .line 13
    invoke-static {p4, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lue/b;->a:Lne/w;

    .line 20
    .line 21
    iput-object p2, p0, Lue/b;->b:Lse/f;

    .line 22
    .line 23
    iput-object p3, p0, Lue/b;->c:Laf/f;

    .line 24
    .line 25
    iput-object p4, p0, Lue/b;->d:Laf/e;

    .line 26
    .line 27
    new-instance p1, Lue/a;

    .line 28
    .line 29
    invoke-direct {p1, p3}, Lue/a;-><init>(Laf/f;)V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lue/b;->f:Lue/a;

    .line 33
    .line 34
    return-void
.end method

.method public static final synthetic i(Lue/b;Laf/n;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lue/b;->r(Laf/n;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic j(Lue/b;)Lne/w;
    .locals 0

    .line 1
    iget-object p0, p0, Lue/b;->a:Lne/w;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic k(Lue/b;)Lue/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lue/b;->f:Lue/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic l(Lue/b;)Laf/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lue/b;->d:Laf/e;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic m(Lue/b;)Laf/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lue/b;->c:Laf/f;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic n(Lue/b;)I
    .locals 0

    .line 1
    iget p0, p0, Lue/b;->e:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic o(Lue/b;)Lne/s;
    .locals 0

    .line 1
    iget-object p0, p0, Lue/b;->g:Lne/s;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic p(Lue/b;I)V
    .locals 0

    .line 1
    iput p1, p0, Lue/b;->e:I

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic q(Lue/b;Lne/s;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lue/b;->g:Lne/s;

    .line 2
    .line 3
    return-void
.end method

.method private final r(Laf/n;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Laf/n;->i()Laf/b1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Laf/b1;->e:Laf/b1;

    .line 6
    .line 7
    invoke-virtual {p1, v1}, Laf/n;->j(Laf/b1;)Laf/n;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Laf/b1;->a()Laf/b1;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Laf/b1;->b()Laf/b1;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private final s(Lne/y;)Z
    .locals 2

    .line 1
    const-string v0, "Transfer-Encoding"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lne/y;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x1

    .line 8
    const-string v1, "chunked"

    .line 9
    .line 10
    invoke-static {v1, p1, v0}, Lrd/n;->x(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method private final t(Lne/a0;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x2

    .line 3
    const-string v2, "Transfer-Encoding"

    .line 4
    .line 5
    invoke-static {p1, v2, v0, v1, v0}, Lne/a0;->k(Lne/a0;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/4 v0, 0x1

    .line 10
    const-string v1, "chunked"

    .line 11
    .line 12
    invoke-static {v1, p1, v0}, Lrd/n;->x(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method private final u()Laf/y0;
    .locals 2

    .line 1
    iget v0, p0, Lue/b;->e:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-eqz v1, :cond_1

    .line 9
    .line 10
    const/4 v0, 0x2

    .line 11
    iput v0, p0, Lue/b;->e:I

    .line 12
    .line 13
    new-instance v0, Lue/b$b;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lue/b$b;-><init>(Lue/b;)V

    .line 16
    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_1
    const-string v1, "state: "

    .line 20
    .line 21
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v1, v0}, Lkotlin/jvm/internal/m;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw v1
.end method

.method private final v(Lne/t;)Laf/a1;
    .locals 2

    .line 1
    iget v0, p0, Lue/b;->e:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v1, 0x0

    .line 9
    :goto_0
    if-eqz v1, :cond_1

    .line 10
    .line 11
    const/4 v0, 0x5

    .line 12
    iput v0, p0, Lue/b;->e:I

    .line 13
    .line 14
    new-instance v0, Lue/b$c;

    .line 15
    .line 16
    invoke-direct {v0, p0, p1}, Lue/b$c;-><init>(Lue/b;Lne/t;)V

    .line 17
    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    const-string p1, "state: "

    .line 21
    .line 22
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw v0
.end method

.method private final w(J)Laf/a1;
    .locals 2

    .line 1
    iget v0, p0, Lue/b;->e:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v1, 0x0

    .line 9
    :goto_0
    if-eqz v1, :cond_1

    .line 10
    .line 11
    const/4 v0, 0x5

    .line 12
    iput v0, p0, Lue/b;->e:I

    .line 13
    .line 14
    new-instance v0, Lue/b$e;

    .line 15
    .line 16
    invoke-direct {v0, p0, p1, p2}, Lue/b$e;-><init>(Lue/b;J)V

    .line 17
    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    const-string p1, "state: "

    .line 21
    .line 22
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-static {p1, p2}, Lkotlin/jvm/internal/m;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p2
.end method

.method private final x()Laf/y0;
    .locals 2

    .line 1
    iget v0, p0, Lue/b;->e:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-eqz v1, :cond_1

    .line 9
    .line 10
    const/4 v0, 0x2

    .line 11
    iput v0, p0, Lue/b;->e:I

    .line 12
    .line 13
    new-instance v0, Lue/b$f;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lue/b$f;-><init>(Lue/b;)V

    .line 16
    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_1
    const-string v1, "state: "

    .line 20
    .line 21
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v1, v0}, Lkotlin/jvm/internal/m;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw v1
.end method

.method private final y()Laf/a1;
    .locals 2

    .line 1
    iget v0, p0, Lue/b;->e:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v1, 0x0

    .line 9
    :goto_0
    if-eqz v1, :cond_1

    .line 10
    .line 11
    const/4 v0, 0x5

    .line 12
    iput v0, p0, Lue/b;->e:I

    .line 13
    .line 14
    invoke-virtual {p0}, Lue/b;->d()Lse/f;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lse/f;->y()V

    .line 19
    .line 20
    .line 21
    new-instance v0, Lue/b$g;

    .line 22
    .line 23
    invoke-direct {v0, p0}, Lue/b$g;-><init>(Lue/b;)V

    .line 24
    .line 25
    .line 26
    return-object v0

    .line 27
    :cond_1
    const-string v1, "state: "

    .line 28
    .line 29
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v1, v0}, Lkotlin/jvm/internal/m;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw v1
.end method


# virtual methods
.method public final A(Lne/s;Ljava/lang/String;)V
    .locals 6

    .line 1
    const-string v0, "headers"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "requestLine"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget v0, p0, Lue/b;->e:I

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    const/4 v2, 0x1

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    move v3, v2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v3, v1

    .line 20
    :goto_0
    if-eqz v3, :cond_2

    .line 21
    .line 22
    iget-object v0, p0, Lue/b;->d:Laf/e;

    .line 23
    .line 24
    invoke-interface {v0, p2}, Laf/e;->g0(Ljava/lang/String;)Laf/e;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    const-string v0, "\r\n"

    .line 29
    .line 30
    invoke-interface {p2, v0}, Laf/e;->g0(Ljava/lang/String;)Laf/e;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lne/s;->size()I

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    :goto_1
    if-ge v1, p2, :cond_1

    .line 38
    .line 39
    add-int/lit8 v3, v1, 0x1

    .line 40
    .line 41
    iget-object v4, p0, Lue/b;->d:Laf/e;

    .line 42
    .line 43
    invoke-virtual {p1, v1}, Lne/s;->i(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    invoke-interface {v4, v5}, Laf/e;->g0(Ljava/lang/String;)Laf/e;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    const-string v5, ": "

    .line 52
    .line 53
    invoke-interface {v4, v5}, Laf/e;->g0(Ljava/lang/String;)Laf/e;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-virtual {p1, v1}, Lne/s;->m(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-interface {v4, v1}, Laf/e;->g0(Ljava/lang/String;)Laf/e;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-interface {v1, v0}, Laf/e;->g0(Ljava/lang/String;)Laf/e;

    .line 66
    .line 67
    .line 68
    move v1, v3

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    iget-object p1, p0, Lue/b;->d:Laf/e;

    .line 71
    .line 72
    invoke-interface {p1, v0}, Laf/e;->g0(Ljava/lang/String;)Laf/e;

    .line 73
    .line 74
    .line 75
    iput v2, p0, Lue/b;->e:I

    .line 76
    .line 77
    return-void

    .line 78
    :cond_2
    const-string p1, "state: "

    .line 79
    .line 80
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    invoke-static {p1, p2}, Lkotlin/jvm/internal/m;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 89
    .line 90
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw p2
.end method

.method public a(Lne/y;)V
    .locals 3

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lte/i;->a:Lte/i;

    .line 7
    .line 8
    invoke-virtual {p0}, Lue/b;->d()Lse/f;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lse/f;->z()Lne/c0;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Lne/c0;->b()Ljava/net/Proxy;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v2, "connection.route().proxy.type()"

    .line 25
    .line 26
    invoke-static {v1, v2}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1, v1}, Lte/i;->a(Lne/y;Ljava/net/Proxy$Type;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p1}, Lne/y;->e()Lne/s;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p0, p1, v0}, Lue/b;->A(Lne/s;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lue/b;->d:Laf/e;

    .line 2
    .line 3
    invoke-interface {v0}, Laf/e;->flush()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public c(Z)Lne/a0$a;
    .locals 6

    .line 1
    iget v0, p0, Lue/b;->e:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x3

    .line 5
    const/4 v3, 0x1

    .line 6
    if-eq v0, v3, :cond_1

    .line 7
    .line 8
    const/4 v4, 0x2

    .line 9
    if-eq v0, v4, :cond_1

    .line 10
    .line 11
    if-ne v0, v2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v4, v1

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    move v4, v3

    .line 17
    :goto_1
    if-eqz v4, :cond_6

    .line 18
    .line 19
    :try_start_0
    sget-object v0, Lte/k;->d:Lte/k$a;

    .line 20
    .line 21
    iget-object v4, p0, Lue/b;->f:Lue/a;

    .line 22
    .line 23
    invoke-virtual {v4}, Lue/a;->b()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {v0, v4}, Lte/k$a;->a(Ljava/lang/String;)Lte/k;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    new-instance v4, Lne/a0$a;

    .line 32
    .line 33
    invoke-direct {v4}, Lne/a0$a;-><init>()V

    .line 34
    .line 35
    .line 36
    iget-object v5, v0, Lte/k;->a:Lne/x;

    .line 37
    .line 38
    invoke-virtual {v4, v5}, Lne/a0$a;->q(Lne/x;)Lne/a0$a;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    iget v5, v0, Lte/k;->b:I

    .line 43
    .line 44
    invoke-virtual {v4, v5}, Lne/a0$a;->g(I)Lne/a0$a;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    iget-object v5, v0, Lte/k;->c:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v4, v5}, Lne/a0$a;->n(Ljava/lang/String;)Lne/a0$a;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    iget-object v5, p0, Lue/b;->f:Lue/a;

    .line 55
    .line 56
    invoke-virtual {v5}, Lue/a;->a()Lne/s;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    invoke-virtual {v4, v5}, Lne/a0$a;->l(Lne/s;)Lne/a0$a;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    const/16 v5, 0x64

    .line 65
    .line 66
    if-eqz p1, :cond_2

    .line 67
    .line 68
    iget p1, v0, Lte/k;->b:I

    .line 69
    .line 70
    if-ne p1, v5, :cond_2

    .line 71
    .line 72
    const/4 v4, 0x0

    .line 73
    goto :goto_2

    .line 74
    :cond_2
    iget p1, v0, Lte/k;->b:I

    .line 75
    .line 76
    if-ne p1, v5, :cond_3

    .line 77
    .line 78
    iput v2, p0, Lue/b;->e:I

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_3
    const/16 v0, 0x66

    .line 82
    .line 83
    if-gt v0, p1, :cond_4

    .line 84
    .line 85
    const/16 v0, 0xc8

    .line 86
    .line 87
    if-ge p1, v0, :cond_4

    .line 88
    .line 89
    move v1, v3

    .line 90
    :cond_4
    if-eqz v1, :cond_5

    .line 91
    .line 92
    iput v2, p0, Lue/b;->e:I

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_5
    const/4 p1, 0x4

    .line 96
    iput p1, p0, Lue/b;->e:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .line 98
    :goto_2
    return-object v4

    .line 99
    :catch_0
    move-exception p1

    .line 100
    invoke-virtual {p0}, Lue/b;->d()Lse/f;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v0}, Lse/f;->z()Lne/c0;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {v0}, Lne/c0;->a()Lne/a;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {v0}, Lne/a;->l()Lne/t;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-virtual {v0}, Lne/t;->n()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    new-instance v1, Ljava/io/IOException;

    .line 121
    .line 122
    const-string v2, "unexpected end of stream on "

    .line 123
    .line 124
    invoke-static {v2, v0}, Lkotlin/jvm/internal/m;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-direct {v1, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 129
    .line 130
    .line 131
    throw v1

    .line 132
    :cond_6
    const-string p1, "state: "

    .line 133
    .line 134
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 143
    .line 144
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    throw v0
.end method

.method public cancel()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lue/b;->d()Lse/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lse/f;->d()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public d()Lse/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lue/b;->b:Lse/f;

    .line 2
    .line 3
    return-object v0
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lue/b;->d:Laf/e;

    .line 2
    .line 3
    invoke-interface {v0}, Laf/e;->flush()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public f(Lne/a0;)J
    .locals 2

    .line 1
    const-string v0, "response"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lte/e;->b(Lne/a0;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const-wide/16 v0, 0x0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-direct {p0, p1}, Lue/b;->t(Lne/a0;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    const-wide/16 v0, -0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    invoke-static {p1}, Loe/d;->u(Lne/a0;)J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    :goto_0
    return-wide v0
.end method

.method public g(Lne/a0;)Laf/a1;
    .locals 4

    .line 1
    const-string v0, "response"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lte/e;->b(Lne/a0;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const-wide/16 v0, 0x0

    .line 13
    .line 14
    invoke-direct {p0, v0, v1}, Lue/b;->w(J)Laf/a1;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-direct {p0, p1}, Lue/b;->t(Lne/a0;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {p1}, Lne/a0;->H()Lne/y;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1}, Lne/y;->i()Lne/t;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-direct {p0, p1}, Lue/b;->v(Lne/t;)Laf/a1;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-static {p1}, Loe/d;->u(Lne/a0;)J

    .line 39
    .line 40
    .line 41
    move-result-wide v0

    .line 42
    const-wide/16 v2, -0x1

    .line 43
    .line 44
    cmp-long p1, v0, v2

    .line 45
    .line 46
    if-eqz p1, :cond_2

    .line 47
    .line 48
    invoke-direct {p0, v0, v1}, Lue/b;->w(J)Laf/a1;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    invoke-direct {p0}, Lue/b;->y()Laf/a1;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    :goto_0
    return-object p1
.end method

.method public h(Lne/y;J)Laf/y0;
    .locals 2

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lne/y;->a()Lne/z;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p1}, Lne/y;->a()Lne/z;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lne/z;->c()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance p1, Ljava/net/ProtocolException;

    .line 24
    .line 25
    const-string p2, "Duplex connections are not supported for HTTP/1"

    .line 26
    .line 27
    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p1

    .line 31
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lue/b;->s(Lne/y;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    invoke-direct {p0}, Lue/b;->u()Laf/y0;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    goto :goto_1

    .line 42
    :cond_2
    const-wide/16 v0, -0x1

    .line 43
    .line 44
    cmp-long p1, p2, v0

    .line 45
    .line 46
    if-eqz p1, :cond_3

    .line 47
    .line 48
    invoke-direct {p0}, Lue/b;->x()Laf/y0;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    :goto_1
    return-object p1

    .line 53
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 54
    .line 55
    const-string p2, "Cannot stream a request body without chunked encoding or a known content length!"

    .line 56
    .line 57
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p1
.end method

.method public final z(Lne/a0;)V
    .locals 4

    .line 1
    const-string v0, "response"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Loe/d;->u(Lne/a0;)J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    const-wide/16 v2, -0x1

    .line 11
    .line 12
    cmp-long p1, v0, v2

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-direct {p0, v0, v1}, Lue/b;->w(J)Laf/a1;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const v0, 0x7fffffff

    .line 22
    .line 23
    .line 24
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 25
    .line 26
    invoke-static {p1, v0, v1}, Loe/d;->K(Laf/a1;ILjava/util/concurrent/TimeUnit;)Z

    .line 27
    .line 28
    .line 29
    invoke-interface {p1}, Laf/a1;->close()V

    .line 30
    .line 31
    .line 32
    return-void
.end method
