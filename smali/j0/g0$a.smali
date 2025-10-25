.class final Lj0/g0$a;
.super Lkotlin/jvm/internal/n;
.source "SourceFile"

# interfaces
.implements Lid/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj0/g0;-><init>(Ltd/l0;Lid/l;Lid/Function2;Lid/Function2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic e:Lid/l;

.field final synthetic f:Lj0/g0;

.field final synthetic g:Lid/Function2;


# direct methods
.method constructor <init>(Lid/l;Lj0/g0;Lid/Function2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj0/g0$a;->e:Lid/l;

    iput-object p2, p0, Lj0/g0$a;->f:Lj0/g0;

    iput-object p3, p0, Lj0/g0$a;->g:Lid/Function2;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lj0/g0$a;->e:Lid/l;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lid/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lj0/g0$a;->f:Lj0/g0;

    .line 7
    .line 8
    invoke-static {v0}, Lj0/g0;->b(Lj0/g0;)Lvd/g;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0, p1}, Lvd/x;->m(Ljava/lang/Throwable;)Z

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lj0/g0$a;->f:Lj0/g0;

    .line 16
    .line 17
    invoke-static {v0}, Lj0/g0;->b(Lj0/g0;)Lvd/g;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0}, Lvd/w;->f()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Lvd/k;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    iget-object v1, p0, Lj0/g0$a;->g:Lid/Function2;

    .line 32
    .line 33
    invoke-interface {v1, v0, p1}, Lid/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    sget-object v0, Lxc/t;->a:Lxc/t;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 v0, 0x0

    .line 40
    :goto_0
    if-nez v0, :cond_0

    .line 41
    .line 42
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lj0/g0$a;->a(Ljava/lang/Throwable;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lxc/t;->a:Lxc/t;

    .line 7
    .line 8
    return-object p1
.end method
