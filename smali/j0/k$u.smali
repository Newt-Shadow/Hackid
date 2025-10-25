.class final Lj0/k$u;
.super Lkotlin/jvm/internal/n;
.source "SourceFile"

# interfaces
.implements Lid/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj0/k;-><init>(Lj0/j0;Ljava/util/List;Lj0/e;Ltd/l0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic e:Lj0/k;


# direct methods
.method constructor <init>(Lj0/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj0/k$u;->e:Lj0/k;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lj0/k$u;->e:Lj0/k;

    .line 4
    .line 5
    invoke-static {v0}, Lj0/k;->d(Lj0/k;)Lj0/l;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lj0/r;

    .line 10
    .line 11
    invoke-direct {v1, p1}, Lj0/r;-><init>(Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lj0/l;->c(Lj0/i0;)Lj0/i0;

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object p1, p0, Lj0/k$u;->e:Lj0/k;

    .line 18
    .line 19
    invoke-static {p1}, Lj0/k;->g(Lj0/k;)Lxc/d;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-interface {p1}, Lxc/d;->a()Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    iget-object p1, p0, Lj0/k$u;->e:Lj0/k;

    .line 30
    .line 31
    invoke-virtual {p1}, Lj0/k;->s()Lj0/k0;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-interface {p1}, Lj0/c;->close()V

    .line 36
    .line 37
    .line 38
    :cond_1
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lj0/k$u;->a(Ljava/lang/Throwable;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lxc/t;->a:Lxc/t;

    .line 7
    .line 8
    return-object p1
.end method
