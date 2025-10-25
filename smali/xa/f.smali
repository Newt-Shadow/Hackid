.class public Lxa/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld9/q;


# instance fields
.field private a:Ld9/l;

.field private b:Ljava/util/List;


# direct methods
.method public constructor <init>(Ld9/l;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lxa/f;->b:Ljava/util/List;

    .line 10
    .line 11
    iput-object p1, p0, Lxa/f;->a:Ld9/l;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public a(Ld9/p;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lxa/f;->b:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected b(Ld9/c;)Ld9/n;
    .locals 2

    .line 1
    iget-object v0, p0, Lxa/f;->b:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Lxa/f;->a:Ld9/l;

    .line 7
    .line 8
    instance-of v1, v0, Ld9/i;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    check-cast v0, Ld9/i;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ld9/i;->e(Ld9/c;)Ld9/n;

    .line 15
    .line 16
    .line 17
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    iget-object v0, p0, Lxa/f;->a:Ld9/l;

    .line 19
    .line 20
    invoke-interface {v0}, Ld9/l;->a()V

    .line 21
    .line 22
    .line 23
    return-object p1

    .line 24
    :cond_0
    :try_start_1
    invoke-interface {v0, p1}, Ld9/l;->c(Ld9/c;)Ld9/n;

    .line 25
    .line 26
    .line 27
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    iget-object v0, p0, Lxa/f;->a:Ld9/l;

    .line 29
    .line 30
    invoke-interface {v0}, Ld9/l;->a()V

    .line 31
    .line 32
    .line 33
    return-object p1

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    iget-object v0, p0, Lxa/f;->a:Ld9/l;

    .line 36
    .line 37
    invoke-interface {v0}, Ld9/l;->a()V

    .line 38
    .line 39
    .line 40
    throw p1

    .line 41
    :catch_0
    iget-object p1, p0, Lxa/f;->a:Ld9/l;

    .line 42
    .line 43
    invoke-interface {p1}, Ld9/l;->a()V

    .line 44
    .line 45
    .line 46
    const/4 p1, 0x0

    .line 47
    return-object p1
.end method

.method public c(Ld9/h;)Ld9/n;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lxa/f;->e(Ld9/h;)Ld9/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lxa/f;->b(Ld9/c;)Ld9/n;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public d()Ljava/util/List;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    iget-object v1, p0, Lxa/f;->b:Ljava/util/List;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method protected e(Ld9/h;)Ld9/c;
    .locals 2

    .line 1
    new-instance v0, Ld9/c;

    .line 2
    .line 3
    new-instance v1, Lj9/k;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lj9/k;-><init>(Ld9/h;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Ld9/c;-><init>(Ld9/b;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method
