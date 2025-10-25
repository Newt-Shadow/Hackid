.class public abstract Ln2/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static f(Ljava/lang/Object;)Ln2/d;
    .locals 7

    .line 1
    new-instance v6, Ln2/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    sget-object v3, Ln2/f;->a:Ln2/f;

    .line 5
    .line 6
    const/4 v4, 0x0

    .line 7
    const/4 v5, 0x0

    .line 8
    move-object v0, v6

    .line 9
    move-object v2, p0

    .line 10
    invoke-direct/range {v0 .. v5}, Ln2/a;-><init>(Ljava/lang/Integer;Ljava/lang/Object;Ln2/f;Ln2/g;Ln2/e;)V

    .line 11
    .line 12
    .line 13
    return-object v6
.end method

.method public static g(Ljava/lang/Object;Ln2/g;)Ln2/d;
    .locals 7

    .line 1
    new-instance v6, Ln2/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    sget-object v3, Ln2/f;->a:Ln2/f;

    .line 5
    .line 6
    const/4 v5, 0x0

    .line 7
    move-object v0, v6

    .line 8
    move-object v2, p0

    .line 9
    move-object v4, p1

    .line 10
    invoke-direct/range {v0 .. v5}, Ln2/a;-><init>(Ljava/lang/Integer;Ljava/lang/Object;Ln2/f;Ln2/g;Ln2/e;)V

    .line 11
    .line 12
    .line 13
    return-object v6
.end method

.method public static h(Ljava/lang/Object;)Ln2/d;
    .locals 7

    .line 1
    new-instance v6, Ln2/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    sget-object v3, Ln2/f;->c:Ln2/f;

    .line 5
    .line 6
    const/4 v4, 0x0

    .line 7
    const/4 v5, 0x0

    .line 8
    move-object v0, v6

    .line 9
    move-object v2, p0

    .line 10
    invoke-direct/range {v0 .. v5}, Ln2/a;-><init>(Ljava/lang/Integer;Ljava/lang/Object;Ln2/f;Ln2/g;Ln2/e;)V

    .line 11
    .line 12
    .line 13
    return-object v6
.end method


# virtual methods
.method public abstract a()Ljava/lang/Integer;
.end method

.method public abstract b()Ln2/e;
.end method

.method public abstract c()Ljava/lang/Object;
.end method

.method public abstract d()Ln2/f;
.end method

.method public abstract e()Ln2/g;
.end method
