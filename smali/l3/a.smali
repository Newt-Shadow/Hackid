.class public final Ll3/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg3/k;


# instance fields
.field private final a:Ly4/e0;

.field private b:Lg3/m;

.field private c:I

.field private d:I

.field private e:I

.field private f:J

.field private g:Lz3/b;

.field private h:Lg3/l;

.field private i:Ll3/c;

.field private j:Lo3/k;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ly4/e0;

    .line 5
    .line 6
    const/4 v1, 0x6

    .line 7
    invoke-direct {v0, v1}, Ly4/e0;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Ll3/a;->a:Ly4/e0;

    .line 11
    .line 12
    const-wide/16 v0, -0x1

    .line 13
    .line 14
    iput-wide v0, p0, Ll3/a;->f:J

    .line 15
    .line 16
    return-void
.end method

.method private a(Lg3/l;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ll3/a;->a:Ly4/e0;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0, v1}, Ly4/e0;->P(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Ll3/a;->a:Ly4/e0;

    .line 8
    .line 9
    invoke-virtual {v0}, Ly4/e0;->e()[B

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-interface {p1, v0, v2, v1}, Lg3/l;->p([BII)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Ll3/a;->a:Ly4/e0;

    .line 18
    .line 19
    invoke-virtual {v0}, Ly4/e0;->M()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    sub-int/2addr v0, v1

    .line 24
    invoke-interface {p1, v0}, Lg3/l;->h(I)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method private d()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Lt3/a$b;

    .line 3
    .line 4
    invoke-direct {p0, v0}, Ll3/a;->h([Lt3/a$b;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Ll3/a;->b:Lg3/m;

    .line 8
    .line 9
    invoke-static {v0}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lg3/m;

    .line 14
    .line 15
    invoke-interface {v0}, Lg3/m;->n()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Ll3/a;->b:Lg3/m;

    .line 19
    .line 20
    new-instance v1, Lg3/z$b;

    .line 21
    .line 22
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    invoke-direct {v1, v2, v3}, Lg3/z$b;-><init>(J)V

    .line 28
    .line 29
    .line 30
    invoke-interface {v0, v1}, Lg3/m;->l(Lg3/z;)V

    .line 31
    .line 32
    .line 33
    const/4 v0, 0x6

    .line 34
    iput v0, p0, Ll3/a;->c:I

    .line 35
    .line 36
    return-void
.end method

.method private static e(Ljava/lang/String;J)Lz3/b;
    .locals 2

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    invoke-static {p0}, Ll3/e;->a(Ljava/lang/String;)Ll3/b;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    if-nez p0, :cond_1

    .line 14
    .line 15
    return-object v1

    .line 16
    :cond_1
    invoke-virtual {p0, p1, p2}, Ll3/b;->a(J)Lz3/b;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method private varargs h([Lt3/a$b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ll3/a;->b:Lg3/m;

    .line 2
    .line 3
    invoke-static {v0}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lg3/m;

    .line 8
    .line 9
    const/16 v1, 0x400

    .line 10
    .line 11
    const/4 v2, 0x4

    .line 12
    invoke-interface {v0, v1, v2}, Lg3/m;->a(II)Lg3/b0;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v1, Lb3/x1$b;

    .line 17
    .line 18
    invoke-direct {v1}, Lb3/x1$b;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v2, "image/jpeg"

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Lb3/x1$b;->M(Ljava/lang/String;)Lb3/x1$b;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    new-instance v2, Lt3/a;

    .line 28
    .line 29
    invoke-direct {v2, p1}, Lt3/a;-><init>([Lt3/a$b;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v2}, Lb3/x1$b;->Z(Lt3/a;)Lb3/x1$b;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Lb3/x1$b;->G()Lb3/x1;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-interface {v0, p1}, Lg3/b0;->c(Lb3/x1;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method private i(Lg3/l;)I
    .locals 3

    .line 1
    iget-object v0, p0, Ll3/a;->a:Ly4/e0;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0, v1}, Ly4/e0;->P(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Ll3/a;->a:Ly4/e0;

    .line 8
    .line 9
    invoke-virtual {v0}, Ly4/e0;->e()[B

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-interface {p1, v0, v2, v1}, Lg3/l;->p([BII)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Ll3/a;->a:Ly4/e0;

    .line 18
    .line 19
    invoke-virtual {p1}, Ly4/e0;->M()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    return p1
.end method

.method private j(Lg3/l;)V
    .locals 4

    .line 1
    iget-object v0, p0, Ll3/a;->a:Ly4/e0;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0, v1}, Ly4/e0;->P(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Ll3/a;->a:Ly4/e0;

    .line 8
    .line 9
    invoke-virtual {v0}, Ly4/e0;->e()[B

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-interface {p1, v0, v2, v1}, Lg3/l;->readFully([BII)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Ll3/a;->a:Ly4/e0;

    .line 18
    .line 19
    invoke-virtual {p1}, Ly4/e0;->M()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    iput p1, p0, Ll3/a;->d:I

    .line 24
    .line 25
    const v0, 0xffda

    .line 26
    .line 27
    .line 28
    if-ne p1, v0, :cond_1

    .line 29
    .line 30
    iget-wide v0, p0, Ll3/a;->f:J

    .line 31
    .line 32
    const-wide/16 v2, -0x1

    .line 33
    .line 34
    cmp-long p1, v0, v2

    .line 35
    .line 36
    if-eqz p1, :cond_0

    .line 37
    .line 38
    const/4 p1, 0x4

    .line 39
    iput p1, p0, Ll3/a;->c:I

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-direct {p0}, Ll3/a;->d()V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const v0, 0xffd0

    .line 47
    .line 48
    .line 49
    if-lt p1, v0, :cond_2

    .line 50
    .line 51
    const v0, 0xffd9

    .line 52
    .line 53
    .line 54
    if-le p1, v0, :cond_3

    .line 55
    .line 56
    :cond_2
    const v0, 0xff01

    .line 57
    .line 58
    .line 59
    if-eq p1, v0, :cond_3

    .line 60
    .line 61
    const/4 p1, 0x1

    .line 62
    iput p1, p0, Ll3/a;->c:I

    .line 63
    .line 64
    :cond_3
    :goto_0
    return-void
.end method

.method private k(Lg3/l;)V
    .locals 5

    .line 1
    iget v0, p0, Ll3/a;->d:I

    .line 2
    .line 3
    const v1, 0xffe1

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    new-instance v0, Ly4/e0;

    .line 10
    .line 11
    iget v1, p0, Ll3/a;->e:I

    .line 12
    .line 13
    invoke-direct {v0, v1}, Ly4/e0;-><init>(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ly4/e0;->e()[B

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iget v3, p0, Ll3/a;->e:I

    .line 21
    .line 22
    invoke-interface {p1, v1, v2, v3}, Lg3/l;->readFully([BII)V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Ll3/a;->g:Lz3/b;

    .line 26
    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    const-string v1, "http://ns.adobe.com/xap/1.0/"

    .line 30
    .line 31
    invoke-virtual {v0}, Ly4/e0;->A()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    invoke-virtual {v0}, Ly4/e0;->A()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    invoke-interface {p1}, Lg3/l;->b()J

    .line 48
    .line 49
    .line 50
    move-result-wide v3

    .line 51
    invoke-static {v0, v3, v4}, Ll3/a;->e(Ljava/lang/String;J)Lz3/b;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iput-object p1, p0, Ll3/a;->g:Lz3/b;

    .line 56
    .line 57
    if-eqz p1, :cond_1

    .line 58
    .line 59
    iget-wide v0, p1, Lz3/b;->d:J

    .line 60
    .line 61
    iput-wide v0, p0, Ll3/a;->f:J

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    iget v0, p0, Ll3/a;->e:I

    .line 65
    .line 66
    invoke-interface {p1, v0}, Lg3/l;->m(I)V

    .line 67
    .line 68
    .line 69
    :cond_1
    :goto_0
    iput v2, p0, Ll3/a;->c:I

    .line 70
    .line 71
    return-void
.end method

.method private l(Lg3/l;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ll3/a;->a:Ly4/e0;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0, v1}, Ly4/e0;->P(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Ll3/a;->a:Ly4/e0;

    .line 8
    .line 9
    invoke-virtual {v0}, Ly4/e0;->e()[B

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-interface {p1, v0, v2, v1}, Lg3/l;->readFully([BII)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Ll3/a;->a:Ly4/e0;

    .line 18
    .line 19
    invoke-virtual {p1}, Ly4/e0;->M()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    sub-int/2addr p1, v1

    .line 24
    iput p1, p0, Ll3/a;->e:I

    .line 25
    .line 26
    iput v1, p0, Ll3/a;->c:I

    .line 27
    .line 28
    return-void
.end method

.method private m(Lg3/l;)V
    .locals 4

    .line 1
    iget-object v0, p0, Ll3/a;->a:Ly4/e0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ly4/e0;->e()[B

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-interface {p1, v0, v1, v2, v2}, Lg3/l;->f([BIIZ)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    invoke-direct {p0}, Ll3/a;->d()V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-interface {p1}, Lg3/l;->l()V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Ll3/a;->j:Lo3/k;

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    new-instance v0, Lo3/k;

    .line 27
    .line 28
    invoke-direct {v0}, Lo3/k;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Ll3/a;->j:Lo3/k;

    .line 32
    .line 33
    :cond_1
    new-instance v0, Ll3/c;

    .line 34
    .line 35
    iget-wide v1, p0, Ll3/a;->f:J

    .line 36
    .line 37
    invoke-direct {v0, p1, v1, v2}, Ll3/c;-><init>(Lg3/l;J)V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Ll3/a;->i:Ll3/c;

    .line 41
    .line 42
    iget-object p1, p0, Ll3/a;->j:Lo3/k;

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Lo3/k;->f(Lg3/l;)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_2

    .line 49
    .line 50
    iget-object p1, p0, Ll3/a;->j:Lo3/k;

    .line 51
    .line 52
    new-instance v0, Ll3/d;

    .line 53
    .line 54
    iget-wide v1, p0, Ll3/a;->f:J

    .line 55
    .line 56
    iget-object v3, p0, Ll3/a;->b:Lg3/m;

    .line 57
    .line 58
    invoke-static {v3}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    check-cast v3, Lg3/m;

    .line 63
    .line 64
    invoke-direct {v0, v1, v2, v3}, Ll3/d;-><init>(JLg3/m;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v0}, Lo3/k;->c(Lg3/m;)V

    .line 68
    .line 69
    .line 70
    invoke-direct {p0}, Ll3/a;->n()V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    invoke-direct {p0}, Ll3/a;->d()V

    .line 75
    .line 76
    .line 77
    :goto_0
    return-void
.end method

.method private n()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Lt3/a$b;

    .line 3
    .line 4
    iget-object v1, p0, Ll3/a;->g:Lz3/b;

    .line 5
    .line 6
    invoke-static {v1}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lt3/a$b;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    aput-object v1, v0, v2

    .line 14
    .line 15
    invoke-direct {p0, v0}, Ll3/a;->h([Lt3/a$b;)V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x5

    .line 19
    iput v0, p0, Ll3/a;->c:I

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public b(JJ)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput p1, p0, Ll3/a;->c:I

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Ll3/a;->j:Lo3/k;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget v0, p0, Ll3/a;->c:I

    .line 15
    .line 16
    const/4 v1, 0x5

    .line 17
    if-ne v0, v1, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Ll3/a;->j:Lo3/k;

    .line 20
    .line 21
    invoke-static {v0}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lo3/k;

    .line 26
    .line 27
    invoke-virtual {v0, p1, p2, p3, p4}, Lo3/k;->b(JJ)V

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_0
    return-void
.end method

.method public c(Lg3/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ll3/a;->b:Lg3/m;

    .line 2
    .line 3
    return-void
.end method

.method public f(Lg3/l;)Z
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Ll3/a;->i(Lg3/l;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0xffd8

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    return v2

    .line 12
    :cond_0
    invoke-direct {p0, p1}, Ll3/a;->i(Lg3/l;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iput v0, p0, Ll3/a;->d:I

    .line 17
    .line 18
    const v1, 0xffe0

    .line 19
    .line 20
    .line 21
    if-ne v0, v1, :cond_1

    .line 22
    .line 23
    invoke-direct {p0, p1}, Ll3/a;->a(Lg3/l;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, p1}, Ll3/a;->i(Lg3/l;)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iput v0, p0, Ll3/a;->d:I

    .line 31
    .line 32
    :cond_1
    iget v0, p0, Ll3/a;->d:I

    .line 33
    .line 34
    const v1, 0xffe1

    .line 35
    .line 36
    .line 37
    if-eq v0, v1, :cond_2

    .line 38
    .line 39
    return v2

    .line 40
    :cond_2
    const/4 v0, 0x2

    .line 41
    invoke-interface {p1, v0}, Lg3/l;->h(I)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Ll3/a;->a:Ly4/e0;

    .line 45
    .line 46
    const/4 v1, 0x6

    .line 47
    invoke-virtual {v0, v1}, Ly4/e0;->P(I)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Ll3/a;->a:Ly4/e0;

    .line 51
    .line 52
    invoke-virtual {v0}, Ly4/e0;->e()[B

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-interface {p1, v0, v2, v1}, Lg3/l;->p([BII)V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Ll3/a;->a:Ly4/e0;

    .line 60
    .line 61
    invoke-virtual {p1}, Ly4/e0;->I()J

    .line 62
    .line 63
    .line 64
    move-result-wide v0

    .line 65
    const-wide/32 v3, 0x45786966    # 5.758429993E-315

    .line 66
    .line 67
    .line 68
    cmp-long p1, v0, v3

    .line 69
    .line 70
    if-nez p1, :cond_3

    .line 71
    .line 72
    iget-object p1, p0, Ll3/a;->a:Ly4/e0;

    .line 73
    .line 74
    invoke-virtual {p1}, Ly4/e0;->M()I

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    if-nez p1, :cond_3

    .line 79
    .line 80
    const/4 v2, 0x1

    .line 81
    :cond_3
    return v2
.end method

.method public g(Lg3/l;Lg3/y;)I
    .locals 7

    .line 1
    iget v0, p0, Ll3/a;->c:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_9

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-eq v0, v2, :cond_8

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    if-eq v0, v3, :cond_7

    .line 11
    .line 12
    const/4 v3, 0x4

    .line 13
    if-eq v0, v3, :cond_5

    .line 14
    .line 15
    const/4 v1, 0x5

    .line 16
    if-eq v0, v1, :cond_1

    .line 17
    .line 18
    const/4 p1, 0x6

    .line 19
    if-ne v0, p1, :cond_0

    .line 20
    .line 21
    const/4 p1, -0x1

    .line 22
    return p1

    .line 23
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 24
    .line 25
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 26
    .line 27
    .line 28
    throw p1

    .line 29
    :cond_1
    iget-object v0, p0, Ll3/a;->i:Ll3/c;

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    iget-object v0, p0, Ll3/a;->h:Lg3/l;

    .line 34
    .line 35
    if-eq p1, v0, :cond_3

    .line 36
    .line 37
    :cond_2
    iput-object p1, p0, Ll3/a;->h:Lg3/l;

    .line 38
    .line 39
    new-instance v0, Ll3/c;

    .line 40
    .line 41
    iget-wide v3, p0, Ll3/a;->f:J

    .line 42
    .line 43
    invoke-direct {v0, p1, v3, v4}, Ll3/c;-><init>(Lg3/l;J)V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Ll3/a;->i:Ll3/c;

    .line 47
    .line 48
    :cond_3
    iget-object p1, p0, Ll3/a;->j:Lo3/k;

    .line 49
    .line 50
    invoke-static {p1}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Lo3/k;

    .line 55
    .line 56
    iget-object v0, p0, Ll3/a;->i:Ll3/c;

    .line 57
    .line 58
    invoke-virtual {p1, v0, p2}, Lo3/k;->g(Lg3/l;Lg3/y;)I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-ne p1, v2, :cond_4

    .line 63
    .line 64
    iget-wide v0, p2, Lg3/y;->a:J

    .line 65
    .line 66
    iget-wide v2, p0, Ll3/a;->f:J

    .line 67
    .line 68
    add-long/2addr v0, v2

    .line 69
    iput-wide v0, p2, Lg3/y;->a:J

    .line 70
    .line 71
    :cond_4
    return p1

    .line 72
    :cond_5
    invoke-interface {p1}, Lg3/l;->c()J

    .line 73
    .line 74
    .line 75
    move-result-wide v3

    .line 76
    iget-wide v5, p0, Ll3/a;->f:J

    .line 77
    .line 78
    cmp-long v0, v3, v5

    .line 79
    .line 80
    if-eqz v0, :cond_6

    .line 81
    .line 82
    iput-wide v5, p2, Lg3/y;->a:J

    .line 83
    .line 84
    return v2

    .line 85
    :cond_6
    invoke-direct {p0, p1}, Ll3/a;->m(Lg3/l;)V

    .line 86
    .line 87
    .line 88
    return v1

    .line 89
    :cond_7
    invoke-direct {p0, p1}, Ll3/a;->k(Lg3/l;)V

    .line 90
    .line 91
    .line 92
    return v1

    .line 93
    :cond_8
    invoke-direct {p0, p1}, Ll3/a;->l(Lg3/l;)V

    .line 94
    .line 95
    .line 96
    return v1

    .line 97
    :cond_9
    invoke-direct {p0, p1}, Ll3/a;->j(Lg3/l;)V

    .line 98
    .line 99
    .line 100
    return v1
.end method

.method public release()V
    .locals 1

    .line 1
    iget-object v0, p0, Ll3/a;->j:Lo3/k;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lo3/k;->release()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
