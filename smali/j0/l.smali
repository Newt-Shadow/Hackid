.class public final Lj0/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lwd/p;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lj0/m0;->b:Lj0/m0;

    .line 5
    .line 6
    const-string v1, "null cannot be cast to non-null type androidx.datastore.core.State<T of androidx.datastore.core.DataStoreInMemoryCache>"

    .line 7
    .line 8
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lwd/w;->a(Ljava/lang/Object;)Lwd/p;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lj0/l;->a:Lwd/p;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final a()Lj0/i0;
    .locals 1

    .line 1
    iget-object v0, p0, Lj0/l;->a:Lwd/p;

    .line 2
    .line 3
    invoke-interface {v0}, Lwd/p;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lj0/i0;

    .line 8
    .line 9
    return-object v0
.end method

.method public final b()Lwd/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lj0/l;->a:Lwd/p;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c(Lj0/i0;)Lj0/i0;
    .locals 5

    .line 1
    const-string v0, "newState"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lj0/l;->a:Lwd/p;

    .line 7
    .line 8
    :cond_0
    invoke-interface {v0}, Lwd/p;->getValue()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    move-object v2, v1

    .line 13
    check-cast v2, Lj0/i0;

    .line 14
    .line 15
    instance-of v3, v2, Lj0/b0;

    .line 16
    .line 17
    if-eqz v3, :cond_1

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    sget-object v3, Lj0/m0;->b:Lj0/m0;

    .line 22
    .line 23
    invoke-static {v2, v3}, Lkotlin/jvm/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    :goto_0
    if-eqz v3, :cond_2

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_2
    instance-of v3, v2, Lj0/f;

    .line 31
    .line 32
    if-eqz v3, :cond_3

    .line 33
    .line 34
    invoke-virtual {p1}, Lj0/i0;->a()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    invoke-virtual {v2}, Lj0/i0;->a()I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-le v3, v4, :cond_4

    .line 43
    .line 44
    :goto_1
    move-object v2, p1

    .line 45
    goto :goto_2

    .line 46
    :cond_3
    instance-of v3, v2, Lj0/r;

    .line 47
    .line 48
    if-eqz v3, :cond_5

    .line 49
    .line 50
    :cond_4
    :goto_2
    invoke-interface {v0, v1, v2}, Lwd/p;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_0

    .line 55
    .line 56
    return-object v2

    .line 57
    :cond_5
    new-instance p1, Lxc/i;

    .line 58
    .line 59
    invoke-direct {p1}, Lxc/i;-><init>()V

    .line 60
    .line 61
    .line 62
    throw p1
.end method
