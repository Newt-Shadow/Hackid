.class final Ld4/j0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx4/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld4/j0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field public a:J

.field public b:J

.field public c:Lx4/a;

.field public d:Ld4/j0$a;


# direct methods
.method public constructor <init>(JI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1, p2, p3}, Ld4/j0$a;->d(JI)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public a()Lx4/a;
    .locals 1

    .line 1
    iget-object v0, p0, Ld4/j0$a;->c:Lx4/a;

    .line 2
    .line 3
    invoke-static {v0}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lx4/a;

    .line 8
    .line 9
    return-object v0
.end method

.method public b()Ld4/j0$a;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Ld4/j0$a;->c:Lx4/a;

    .line 3
    .line 4
    iget-object v1, p0, Ld4/j0$a;->d:Ld4/j0$a;

    .line 5
    .line 6
    iput-object v0, p0, Ld4/j0$a;->d:Ld4/j0$a;

    .line 7
    .line 8
    return-object v1
.end method

.method public c(Lx4/a;Ld4/j0$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld4/j0$a;->c:Lx4/a;

    .line 2
    .line 3
    iput-object p2, p0, Ld4/j0$a;->d:Ld4/j0$a;

    .line 4
    .line 5
    return-void
.end method

.method public d(JI)V
    .locals 2

    .line 1
    iget-object v0, p0, Ld4/j0$a;->c:Lx4/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    invoke-static {v0}, Ly4/a;->f(Z)V

    .line 9
    .line 10
    .line 11
    iput-wide p1, p0, Ld4/j0$a;->a:J

    .line 12
    .line 13
    int-to-long v0, p3

    .line 14
    add-long/2addr p1, v0

    .line 15
    iput-wide p1, p0, Ld4/j0$a;->b:J

    .line 16
    .line 17
    return-void
.end method

.method public e(J)I
    .locals 2

    .line 1
    iget-wide v0, p0, Ld4/j0$a;->a:J

    .line 2
    .line 3
    sub-long/2addr p1, v0

    .line 4
    long-to-int p1, p1

    .line 5
    iget-object p2, p0, Ld4/j0$a;->c:Lx4/a;

    .line 6
    .line 7
    iget p2, p2, Lx4/a;->b:I

    .line 8
    .line 9
    add-int/2addr p1, p2

    .line 10
    return p1
.end method

.method public next()Lx4/b$a;
    .locals 2

    .line 1
    iget-object v0, p0, Ld4/j0$a;->d:Ld4/j0$a;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, v0, Ld4/j0$a;->c:Lx4/a;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    return-object v0

    .line 11
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method
