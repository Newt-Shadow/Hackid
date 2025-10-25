.class public final Lj4/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj4/k;


# instance fields
.field private final a:Lj4/k;

.field private final b:Ljava/util/List;


# direct methods
.method public constructor <init>(Lj4/k;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj4/e;->a:Lj4/k;

    .line 5
    .line 6
    iput-object p2, p0, Lj4/e;->b:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Lj4/h;Lj4/g;)Lx4/g0$a;
    .locals 2

    .line 1
    new-instance v0, Lc4/b;

    .line 2
    .line 3
    iget-object v1, p0, Lj4/e;->a:Lj4/k;

    .line 4
    .line 5
    invoke-interface {v1, p1, p2}, Lj4/k;->a(Lj4/h;Lj4/g;)Lx4/g0$a;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object p2, p0, Lj4/e;->b:Ljava/util/List;

    .line 10
    .line 11
    invoke-direct {v0, p1, p2}, Lc4/b;-><init>(Lx4/g0$a;Ljava/util/List;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public b()Lx4/g0$a;
    .locals 3

    .line 1
    new-instance v0, Lc4/b;

    .line 2
    .line 3
    iget-object v1, p0, Lj4/e;->a:Lj4/k;

    .line 4
    .line 5
    invoke-interface {v1}, Lj4/k;->b()Lx4/g0$a;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lj4/e;->b:Ljava/util/List;

    .line 10
    .line 11
    invoke-direct {v0, v1, v2}, Lc4/b;-><init>(Lx4/g0$a;Ljava/util/List;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method
