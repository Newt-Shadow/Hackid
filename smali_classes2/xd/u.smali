.class final Lxd/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwd/e;


# instance fields
.field private final a:Lad/i;

.field private final b:Ljava/lang/Object;

.field private final c:Lid/Function2;


# direct methods
.method public constructor <init>(Lwd/e;Lad/i;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lxd/u;->a:Lad/i;

    .line 5
    .line 6
    invoke-static {p2}, Lyd/m0;->g(Lad/i;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    iput-object p2, p0, Lxd/u;->b:Ljava/lang/Object;

    .line 11
    .line 12
    new-instance p2, Lxd/u$a;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-direct {p2, p1, v0}, Lxd/u$a;-><init>(Lwd/e;Lad/e;)V

    .line 16
    .line 17
    .line 18
    iput-object p2, p0, Lxd/u;->c:Lid/Function2;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public emit(Ljava/lang/Object;Lad/e;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lxd/u;->a:Lad/i;

    .line 2
    .line 3
    iget-object v1, p0, Lxd/u;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Lxd/u;->c:Lid/Function2;

    .line 6
    .line 7
    invoke-static {v0, p1, v1, v2, p2}, Lxd/f;->b(Lad/i;Ljava/lang/Object;Ljava/lang/Object;Lid/Function2;Lad/e;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    if-ne p1, p2, :cond_0

    .line 16
    .line 17
    return-object p1

    .line 18
    :cond_0
    sget-object p1, Lxc/t;->a:Lxc/t;

    .line 19
    .line 20
    return-object p1
.end method
