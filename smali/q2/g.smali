.class public abstract Lq2/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq2/g$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lq2/g;
    .locals 4

    .line 1
    new-instance v0, Lq2/b;

    .line 2
    .line 3
    sget-object v1, Lq2/g$a;->c:Lq2/g$a;

    .line 4
    .line 5
    const-wide/16 v2, -0x1

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, v3}, Lq2/b;-><init>(Lq2/g$a;J)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public static d()Lq2/g;
    .locals 4

    .line 1
    new-instance v0, Lq2/b;

    .line 2
    .line 3
    sget-object v1, Lq2/g$a;->d:Lq2/g$a;

    .line 4
    .line 5
    const-wide/16 v2, -0x1

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, v3}, Lq2/b;-><init>(Lq2/g$a;J)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public static e(J)Lq2/g;
    .locals 2

    .line 1
    new-instance v0, Lq2/b;

    .line 2
    .line 3
    sget-object v1, Lq2/g$a;->a:Lq2/g$a;

    .line 4
    .line 5
    invoke-direct {v0, v1, p0, p1}, Lq2/b;-><init>(Lq2/g$a;J)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public static f()Lq2/g;
    .locals 4

    .line 1
    new-instance v0, Lq2/b;

    .line 2
    .line 3
    sget-object v1, Lq2/g$a;->b:Lq2/g$a;

    .line 4
    .line 5
    const-wide/16 v2, -0x1

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, v3}, Lq2/b;-><init>(Lq2/g$a;J)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method


# virtual methods
.method public abstract b()J
.end method

.method public abstract c()Lq2/g$a;
.end method
