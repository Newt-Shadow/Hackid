.class Lwd/c;
.super Lxd/e;
.source "SourceFile"


# instance fields
.field private final d:Lid/Function2;


# direct methods
.method public constructor <init>(Lid/Function2;Lad/i;ILvd/a;)V
    .locals 0

    .line 4
    invoke-direct {p0, p2, p3, p4}, Lxd/e;-><init>(Lad/i;ILvd/a;)V

    .line 5
    iput-object p1, p0, Lwd/c;->d:Lid/Function2;

    return-void
.end method

.method public synthetic constructor <init>(Lid/Function2;Lad/i;ILvd/a;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    .line 1
    sget-object p2, Lad/j;->a:Lad/j;

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    const/4 p3, -0x2

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    .line 2
    sget-object p4, Lvd/a;->a:Lvd/a;

    .line 3
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lwd/c;-><init>(Lid/Function2;Lad/i;ILvd/a;)V

    return-void
.end method

.method static synthetic j(Lwd/c;Lvd/v;Lad/e;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lwd/c;->d:Lid/Function2;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2}, Lid/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-ne p0, p1, :cond_0

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    sget-object p0, Lxc/t;->a:Lxc/t;

    .line 15
    .line 16
    return-object p0
.end method


# virtual methods
.method protected e(Lvd/v;Lad/e;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lwd/c;->j(Lwd/c;Lvd/v;Lad/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected f(Lad/i;ILvd/a;)Lxd/e;
    .locals 2

    .line 1
    new-instance v0, Lwd/c;

    .line 2
    .line 3
    iget-object v1, p0, Lwd/c;->d:Lid/Function2;

    .line 4
    .line 5
    invoke-direct {v0, v1, p1, p2, p3}, Lwd/c;-><init>(Lid/Function2;Lad/i;ILvd/a;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "block["

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lwd/c;->d:Lid/Function2;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, "] -> "

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-super {p0}, Lxd/e;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    return-object v0
.end method
