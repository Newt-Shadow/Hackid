.class final Lb3/g1$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz4/k;
.implements La5/a;
.implements Lb3/p3$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb3/g1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# instance fields
.field private a:Lz4/k;

.field private b:La5/a;

.field private c:Lz4/k;

.field private d:La5/a;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb3/g1$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lb3/g1$d;-><init>()V

    return-void
.end method


# virtual methods
.method public b(J[F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb3/g1$d;->d:La5/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2, p3}, La5/a;->b(J[F)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lb3/g1$d;->b:La5/a;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-interface {v0, p1, p2, p3}, La5/a;->b(J[F)V

    .line 13
    .line 14
    .line 15
    :cond_1
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb3/g1$d;->d:La5/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, La5/a;->c()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lb3/g1$d;->b:La5/a;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-interface {v0}, La5/a;->c()V

    .line 13
    .line 14
    .line 15
    :cond_1
    return-void
.end method

.method public g(JJLb3/x1;Landroid/media/MediaFormat;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lb3/g1$d;->c:Lz4/k;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-wide v1, p1

    .line 6
    move-wide v3, p3

    .line 7
    move-object v5, p5

    .line 8
    move-object v6, p6

    .line 9
    invoke-interface/range {v0 .. v6}, Lz4/k;->g(JJLb3/x1;Landroid/media/MediaFormat;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v1, p0, Lb3/g1$d;->a:Lz4/k;

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    move-wide v2, p1

    .line 17
    move-wide v4, p3

    .line 18
    move-object v6, p5

    .line 19
    move-object v7, p6

    .line 20
    invoke-interface/range {v1 .. v7}, Lz4/k;->g(JJLb3/x1;Landroid/media/MediaFormat;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    return-void
.end method

.method public y(ILjava/lang/Object;)V
    .locals 1

    .line 1
    const/4 v0, 0x7

    .line 2
    if-eq p1, v0, :cond_2

    .line 3
    .line 4
    const/16 v0, 0x8

    .line 5
    .line 6
    if-eq p1, v0, :cond_1

    .line 7
    .line 8
    const/16 v0, 0x2710

    .line 9
    .line 10
    if-eq p1, v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-static {p2}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    iput-object p1, p0, Lb3/g1$d;->c:Lz4/k;

    .line 18
    .line 19
    iput-object p1, p0, Lb3/g1$d;->d:La5/a;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    check-cast p2, La5/a;

    .line 23
    .line 24
    iput-object p2, p0, Lb3/g1$d;->b:La5/a;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    check-cast p2, Lz4/k;

    .line 28
    .line 29
    iput-object p2, p0, Lb3/g1$d;->a:Lz4/k;

    .line 30
    .line 31
    :goto_0
    return-void
.end method
