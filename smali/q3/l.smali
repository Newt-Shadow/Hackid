.class public final Lq3/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/m;


# instance fields
.field private final a:Ljava/util/List;

.field private final b:[Lg3/b0;

.field private c:Z

.field private d:I

.field private e:I

.field private f:J


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lq3/l;->a:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    new-array p1, p1, [Lg3/b0;

    .line 11
    .line 12
    iput-object p1, p0, Lq3/l;->b:[Lg3/b0;

    .line 13
    .line 14
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    iput-wide v0, p0, Lq3/l;->f:J

    .line 20
    .line 21
    return-void
.end method

.method private a(Ly4/e0;I)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Ly4/e0;->a()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p1}, Ly4/e0;->G()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eq p1, p2, :cond_1

    .line 14
    .line 15
    iput-boolean v1, p0, Lq3/l;->c:Z

    .line 16
    .line 17
    :cond_1
    iget p1, p0, Lq3/l;->d:I

    .line 18
    .line 19
    add-int/lit8 p1, p1, -0x1

    .line 20
    .line 21
    iput p1, p0, Lq3/l;->d:I

    .line 22
    .line 23
    iget-boolean p1, p0, Lq3/l;->c:Z

    .line 24
    .line 25
    return p1
.end method


# virtual methods
.method public b(Ly4/e0;)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lq3/l;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget v0, p0, Lq3/l;->d:I

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    const/16 v0, 0x20

    .line 11
    .line 12
    invoke-direct {p0, p1, v0}, Lq3/l;->a(Ly4/e0;I)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget v0, p0, Lq3/l;->d:I

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    const/4 v2, 0x1

    .line 23
    if-ne v0, v2, :cond_1

    .line 24
    .line 25
    invoke-direct {p0, p1, v1}, Lq3/l;->a(Ly4/e0;I)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    invoke-virtual {p1}, Ly4/e0;->f()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    invoke-virtual {p1}, Ly4/e0;->a()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    iget-object v3, p0, Lq3/l;->b:[Lg3/b0;

    .line 41
    .line 42
    array-length v4, v3

    .line 43
    :goto_0
    if-ge v1, v4, :cond_2

    .line 44
    .line 45
    aget-object v5, v3, v1

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Ly4/e0;->T(I)V

    .line 48
    .line 49
    .line 50
    invoke-interface {v5, p1, v2}, Lg3/b0;->b(Ly4/e0;I)V

    .line 51
    .line 52
    .line 53
    add-int/lit8 v1, v1, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    iget p1, p0, Lq3/l;->e:I

    .line 57
    .line 58
    add-int/2addr p1, v2

    .line 59
    iput p1, p0, Lq3/l;->e:I

    .line 60
    .line 61
    :cond_3
    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lq3/l;->c:Z

    .line 3
    .line 4
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    iput-wide v0, p0, Lq3/l;->f:J

    .line 10
    .line 11
    return-void
.end method

.method public d()V
    .locals 11

    .line 1
    iget-boolean v0, p0, Lq3/l;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-wide v0, p0, Lq3/l;->f:J

    .line 6
    .line 7
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    cmp-long v0, v0, v2

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lq3/l;->b:[Lg3/b0;

    .line 18
    .line 19
    array-length v2, v0

    .line 20
    move v3, v1

    .line 21
    :goto_0
    if-ge v3, v2, :cond_0

    .line 22
    .line 23
    aget-object v4, v0, v3

    .line 24
    .line 25
    iget-wide v5, p0, Lq3/l;->f:J

    .line 26
    .line 27
    const/4 v7, 0x1

    .line 28
    iget v8, p0, Lq3/l;->e:I

    .line 29
    .line 30
    const/4 v9, 0x0

    .line 31
    const/4 v10, 0x0

    .line 32
    invoke-interface/range {v4 .. v10}, Lg3/b0;->f(JIIILg3/b0$a;)V

    .line 33
    .line 34
    .line 35
    add-int/lit8 v3, v3, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iput-boolean v1, p0, Lq3/l;->c:Z

    .line 39
    .line 40
    :cond_1
    return-void
.end method

.method public e(JI)V
    .locals 2

    .line 1
    and-int/lit8 p3, p3, 0x4

    .line 2
    .line 3
    if-nez p3, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 p3, 0x1

    .line 7
    iput-boolean p3, p0, Lq3/l;->c:Z

    .line 8
    .line 9
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    cmp-long p3, p1, v0

    .line 15
    .line 16
    if-eqz p3, :cond_1

    .line 17
    .line 18
    iput-wide p1, p0, Lq3/l;->f:J

    .line 19
    .line 20
    :cond_1
    const/4 p1, 0x0

    .line 21
    iput p1, p0, Lq3/l;->e:I

    .line 22
    .line 23
    const/4 p1, 0x2

    .line 24
    iput p1, p0, Lq3/l;->d:I

    .line 25
    .line 26
    return-void
.end method

.method public f(Lg3/m;Lq3/i0$d;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lq3/l;->b:[Lg3/b0;

    .line 3
    .line 4
    array-length v1, v1

    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lq3/l;->a:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lq3/i0$a;

    .line 14
    .line 15
    invoke-virtual {p2}, Lq3/i0$d;->a()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2}, Lq3/i0$d;->c()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/4 v3, 0x3

    .line 23
    invoke-interface {p1, v2, v3}, Lg3/m;->a(II)Lg3/b0;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    new-instance v3, Lb3/x1$b;

    .line 28
    .line 29
    invoke-direct {v3}, Lb3/x1$b;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2}, Lq3/i0$d;->b()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-virtual {v3, v4}, Lb3/x1$b;->U(Ljava/lang/String;)Lb3/x1$b;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    const-string v4, "application/dvbsubs"

    .line 41
    .line 42
    invoke-virtual {v3, v4}, Lb3/x1$b;->g0(Ljava/lang/String;)Lb3/x1$b;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    iget-object v4, v1, Lq3/i0$a;->c:[B

    .line 47
    .line 48
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-virtual {v3, v4}, Lb3/x1$b;->V(Ljava/util/List;)Lb3/x1$b;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    iget-object v1, v1, Lq3/i0$a;->a:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v3, v1}, Lb3/x1$b;->X(Ljava/lang/String;)Lb3/x1$b;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v1}, Lb3/x1$b;->G()Lb3/x1;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-interface {v2, v1}, Lg3/b0;->c(Lb3/x1;)V

    .line 67
    .line 68
    .line 69
    iget-object v1, p0, Lq3/l;->b:[Lg3/b0;

    .line 70
    .line 71
    aput-object v2, v1, v0

    .line 72
    .line 73
    add-int/lit8 v0, v0, 0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_0
    return-void
.end method
