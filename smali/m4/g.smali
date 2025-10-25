.class public abstract Lm4/g;
.super Le3/j;
.source "SourceFile"

# interfaces
.implements Lm4/i;


# instance fields
.field private final n:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [Lm4/l;

    .line 3
    .line 4
    new-array v0, v0, [Lm4/m;

    .line 5
    .line 6
    invoke-direct {p0, v1, v0}, Le3/j;-><init>([Le3/g;[Le3/h;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lm4/g;->n:Ljava/lang/String;

    .line 10
    .line 11
    const/16 p1, 0x400

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Le3/j;->u(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method static synthetic v(Lm4/g;Le3/h;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Le3/j;->r(Le3/h;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method protected final A(Lm4/l;Lm4/m;Z)Lm4/j;
    .locals 8

    .line 1
    :try_start_0
    iget-object v0, p1, Le3/g;->c:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    invoke-static {v0}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/nio/ByteBuffer;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-virtual {p0, v1, v0, p3}, Lm4/g;->z([BIZ)Lm4/h;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    iget-wide v3, p1, Le3/g;->e:J

    .line 22
    .line 23
    iget-wide v6, p1, Lm4/l;->i:J

    .line 24
    .line 25
    move-object v2, p2

    .line 26
    invoke-virtual/range {v2 .. v7}, Lm4/m;->w(JLm4/h;J)V

    .line 27
    .line 28
    .line 29
    const/high16 p1, -0x80000000

    .line 30
    .line 31
    invoke-virtual {p2, p1}, Le3/a;->m(I)V
    :try_end_0
    .catch Lm4/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    const/4 p1, 0x0

    .line 35
    return-object p1

    .line 36
    :catch_0
    move-exception p1

    .line 37
    return-object p1
.end method

.method public a(J)V
    .locals 0

    .line 1
    return-void
.end method

.method protected bridge synthetic g()Le3/g;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lm4/g;->w()Lm4/l;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method protected bridge synthetic h()Le3/h;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lm4/g;->x()Lm4/m;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method protected bridge synthetic i(Ljava/lang/Throwable;)Le3/f;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lm4/g;->y(Ljava/lang/Throwable;)Lm4/j;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method protected bridge synthetic j(Le3/g;Le3/h;Z)Le3/f;
    .locals 0

    .line 1
    check-cast p1, Lm4/l;

    .line 2
    .line 3
    check-cast p2, Lm4/m;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lm4/g;->A(Lm4/l;Lm4/m;Z)Lm4/j;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method protected final w()Lm4/l;
    .locals 1

    .line 1
    new-instance v0, Lm4/l;

    .line 2
    .line 3
    invoke-direct {v0}, Lm4/l;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method protected final x()Lm4/m;
    .locals 1

    .line 1
    new-instance v0, Lm4/g$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lm4/g$a;-><init>(Lm4/g;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method protected final y(Ljava/lang/Throwable;)Lm4/j;
    .locals 2

    .line 1
    new-instance v0, Lm4/j;

    .line 2
    .line 3
    const-string v1, "Unexpected decode error"

    .line 4
    .line 5
    invoke-direct {v0, v1, p1}, Lm4/j;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method protected abstract z([BIZ)Lm4/h;
.end method
