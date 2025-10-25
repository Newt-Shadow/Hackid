.class public abstract Lad/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lid/Function2;Ljava/lang/Object;Lad/e;)V
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "completion"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p0, p1, p2}, Lbd/b;->a(Lid/Function2;Ljava/lang/Object;Lad/e;)Lad/e;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-static {p0}, Lbd/b;->c(Lad/e;)Lad/e;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    sget-object p1, Lxc/l;->b:Lxc/l$a;

    .line 20
    .line 21
    sget-object p1, Lxc/t;->a:Lxc/t;

    .line 22
    .line 23
    invoke-static {p1}, Lxc/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-interface {p0, p1}, Lad/e;->resumeWith(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
