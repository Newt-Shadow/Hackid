.class public final Lr9/l;
.super Lr9/p;
.source "SourceFile"


# instance fields
.field private final i:Lr9/p;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lr9/p;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lr9/e;

    .line 5
    .line 6
    invoke-direct {v0}, Lr9/e;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lr9/l;->i:Lr9/p;

    .line 10
    .line 11
    return-void
.end method

.method private static t(Ld9/n;)Ld9/n;
    .locals 5

    .line 1
    invoke-virtual {p0}, Ld9/n;->f()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/16 v2, 0x30

    .line 11
    .line 12
    if-ne v1, v2, :cond_1

    .line 13
    .line 14
    new-instance v1, Ld9/n;

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p0}, Ld9/n;->e()[Ld9/p;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    sget-object v3, Ld9/a;->o:Ld9/a;

    .line 26
    .line 27
    const/4 v4, 0x0

    .line 28
    invoke-direct {v1, v0, v4, v2, v3}, Ld9/n;-><init>(Ljava/lang/String;[B[Ld9/p;Ld9/a;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Ld9/n;->d()Ljava/util/Map;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    invoke-virtual {p0}, Ld9/n;->d()Ljava/util/Map;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {v1, p0}, Ld9/n;->g(Ljava/util/Map;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    return-object v1

    .line 45
    :cond_1
    invoke-static {}, Ld9/f;->a()Ld9/f;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    throw p0
.end method


# virtual methods
.method public b(Ld9/c;Ljava/util/Map;)Ld9/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lr9/l;->i:Lr9/p;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lr9/k;->b(Ld9/c;Ljava/util/Map;)Ld9/n;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Lr9/l;->t(Ld9/n;)Ld9/n;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public c(Ld9/c;)Ld9/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lr9/l;->i:Lr9/p;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lr9/k;->c(Ld9/c;)Ld9/n;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Lr9/l;->t(Ld9/n;)Ld9/n;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public d(ILj9/a;Ljava/util/Map;)Ld9/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lr9/l;->i:Lr9/p;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lr9/p;->d(ILj9/a;Ljava/util/Map;)Ld9/n;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Lr9/l;->t(Ld9/n;)Ld9/n;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method protected m(Lj9/a;[ILjava/lang/StringBuilder;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lr9/l;->i:Lr9/p;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lr9/p;->m(Lj9/a;[ILjava/lang/StringBuilder;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public n(ILj9/a;[ILjava/util/Map;)Ld9/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lr9/l;->i:Lr9/p;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Lr9/p;->n(ILj9/a;[ILjava/util/Map;)Ld9/n;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Lr9/l;->t(Ld9/n;)Ld9/n;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method r()Ld9/a;
    .locals 1

    .line 1
    sget-object v0, Ld9/a;->o:Ld9/a;

    .line 2
    .line 3
    return-object v0
.end method
