.class public final Lf3/h$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf3/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/util/HashMap;

.field private b:Ljava/util/UUID;

.field private c:Lf3/b0$c;

.field private d:Z

.field private e:[I

.field private f:Z

.field private g:Lx4/d0;

.field private h:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lf3/h$b;->a:Ljava/util/HashMap;

    .line 10
    .line 11
    sget-object v0, Lb3/s;->d:Ljava/util/UUID;

    .line 12
    .line 13
    iput-object v0, p0, Lf3/h$b;->b:Ljava/util/UUID;

    .line 14
    .line 15
    sget-object v0, Lf3/j0;->d:Lf3/b0$c;

    .line 16
    .line 17
    iput-object v0, p0, Lf3/h$b;->c:Lf3/b0$c;

    .line 18
    .line 19
    new-instance v0, Lx4/v;

    .line 20
    .line 21
    invoke-direct {v0}, Lx4/v;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lf3/h$b;->g:Lx4/d0;

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    new-array v0, v0, [I

    .line 28
    .line 29
    iput-object v0, p0, Lf3/h$b;->e:[I

    .line 30
    .line 31
    const-wide/32 v0, 0x493e0

    .line 32
    .line 33
    .line 34
    iput-wide v0, p0, Lf3/h$b;->h:J

    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public a(Lf3/m0;)Lf3/h;
    .locals 13

    .line 1
    new-instance v12, Lf3/h;

    .line 2
    .line 3
    iget-object v1, p0, Lf3/h$b;->b:Ljava/util/UUID;

    .line 4
    .line 5
    iget-object v2, p0, Lf3/h$b;->c:Lf3/b0$c;

    .line 6
    .line 7
    iget-object v4, p0, Lf3/h$b;->a:Ljava/util/HashMap;

    .line 8
    .line 9
    iget-boolean v5, p0, Lf3/h$b;->d:Z

    .line 10
    .line 11
    iget-object v6, p0, Lf3/h$b;->e:[I

    .line 12
    .line 13
    iget-boolean v7, p0, Lf3/h$b;->f:Z

    .line 14
    .line 15
    iget-object v8, p0, Lf3/h$b;->g:Lx4/d0;

    .line 16
    .line 17
    iget-wide v9, p0, Lf3/h$b;->h:J

    .line 18
    .line 19
    const/4 v11, 0x0

    .line 20
    move-object v0, v12

    .line 21
    move-object v3, p1

    .line 22
    invoke-direct/range {v0 .. v11}, Lf3/h;-><init>(Ljava/util/UUID;Lf3/b0$c;Lf3/m0;Ljava/util/HashMap;Z[IZLx4/d0;JLf3/h$a;)V

    .line 23
    .line 24
    .line 25
    return-object v12
.end method

.method public b(Z)Lf3/h$b;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lf3/h$b;->d:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public c(Z)Lf3/h$b;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lf3/h$b;->f:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public varargs d([I)Lf3/h$b;
    .locals 6

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    if-ge v2, v0, :cond_2

    .line 5
    .line 6
    aget v3, p1, v2

    .line 7
    .line 8
    const/4 v4, 0x2

    .line 9
    const/4 v5, 0x1

    .line 10
    if-eq v3, v4, :cond_1

    .line 11
    .line 12
    if-ne v3, v5, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    move v5, v1

    .line 16
    :cond_1
    :goto_1
    invoke-static {v5}, Ly4/a;->a(Z)V

    .line 17
    .line 18
    .line 19
    add-int/lit8 v2, v2, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, [I

    .line 27
    .line 28
    iput-object p1, p0, Lf3/h$b;->e:[I

    .line 29
    .line 30
    return-object p0
.end method

.method public e(Ljava/util/UUID;Lf3/b0$c;)Lf3/h$b;
    .locals 0

    .line 1
    invoke-static {p1}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/util/UUID;

    .line 6
    .line 7
    iput-object p1, p0, Lf3/h$b;->b:Ljava/util/UUID;

    .line 8
    .line 9
    invoke-static {p2}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lf3/b0$c;

    .line 14
    .line 15
    iput-object p1, p0, Lf3/h$b;->c:Lf3/b0$c;

    .line 16
    .line 17
    return-object p0
.end method
