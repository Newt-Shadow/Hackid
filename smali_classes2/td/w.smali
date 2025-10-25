.class final Ltd/w;
.super Ltd/z1;
.source "SourceFile"

# interfaces
.implements Ltd/v;


# direct methods
.method public constructor <init>(Ltd/t1;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Ltd/z1;-><init>(Z)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, p1}, Ltd/z1;->m0(Ltd/t1;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public E(Ljava/lang/Throwable;)Z
    .locals 4

    .line 1
    new-instance v0, Ltd/a0;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    invoke-direct {v0, p1, v3, v1, v2}, Ltd/a0;-><init>(Ljava/lang/Throwable;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Ltd/z1;->r0(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public H(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ltd/z1;->r0(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public b0()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public c()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ltd/z1;->V()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public w(Lad/e;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ltd/z1;->G(Lad/e;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    return-object p1
.end method
