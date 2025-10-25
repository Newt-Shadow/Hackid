.class public Lne/a0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lne/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lne/y;

.field private b:Lne/x;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Lne/r;

.field private f:Lne/s$a;

.field private g:Lne/b0;

.field private h:Lne/a0;

.field private i:Lne/a0;

.field private j:Lne/a0;

.field private k:J

.field private l:J

.field private m:Lse/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lne/a0$a;->c:I

    .line 3
    new-instance v0, Lne/s$a;

    invoke-direct {v0}, Lne/s$a;-><init>()V

    iput-object v0, p0, Lne/a0$a;->f:Lne/s$a;

    return-void
.end method

.method public constructor <init>(Lne/a0;)V
    .locals 2

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lne/a0$a;->c:I

    .line 6
    invoke-virtual {p1}, Lne/a0;->H()Lne/y;

    move-result-object v0

    iput-object v0, p0, Lne/a0$a;->a:Lne/y;

    .line 7
    invoke-virtual {p1}, Lne/a0;->z()Lne/x;

    move-result-object v0

    iput-object v0, p0, Lne/a0$a;->b:Lne/x;

    .line 8
    invoke-virtual {p1}, Lne/a0;->f()I

    move-result v0

    iput v0, p0, Lne/a0$a;->c:I

    .line 9
    invoke-virtual {p1}, Lne/a0;->u()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lne/a0$a;->d:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Lne/a0;->h()Lne/r;

    move-result-object v0

    iput-object v0, p0, Lne/a0$a;->e:Lne/r;

    .line 11
    invoke-virtual {p1}, Lne/a0;->q()Lne/s;

    move-result-object v0

    invoke-virtual {v0}, Lne/s;->l()Lne/s$a;

    move-result-object v0

    iput-object v0, p0, Lne/a0$a;->f:Lne/s$a;

    .line 12
    invoke-virtual {p1}, Lne/a0;->a()Lne/b0;

    move-result-object v0

    iput-object v0, p0, Lne/a0$a;->g:Lne/b0;

    .line 13
    invoke-virtual {p1}, Lne/a0;->v()Lne/a0;

    move-result-object v0

    iput-object v0, p0, Lne/a0$a;->h:Lne/a0;

    .line 14
    invoke-virtual {p1}, Lne/a0;->c()Lne/a0;

    move-result-object v0

    iput-object v0, p0, Lne/a0$a;->i:Lne/a0;

    .line 15
    invoke-virtual {p1}, Lne/a0;->x()Lne/a0;

    move-result-object v0

    iput-object v0, p0, Lne/a0$a;->j:Lne/a0;

    .line 16
    invoke-virtual {p1}, Lne/a0;->P()J

    move-result-wide v0

    iput-wide v0, p0, Lne/a0$a;->k:J

    .line 17
    invoke-virtual {p1}, Lne/a0;->E()J

    move-result-wide v0

    iput-wide v0, p0, Lne/a0$a;->l:J

    .line 18
    invoke-virtual {p1}, Lne/a0;->g()Lse/c;

    move-result-object p1

    iput-object p1, p0, Lne/a0$a;->m:Lse/c;

    return-void
.end method

.method private final e(Lne/a0;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p1}, Lne/a0;->a()Lne/b0;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-nez p1, :cond_1

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_1
    const/4 p1, 0x0

    .line 13
    :goto_0
    if-eqz p1, :cond_2

    .line 14
    .line 15
    :goto_1
    return-void

    .line 16
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 17
    .line 18
    const-string v0, "priorResponse.body != null"

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1
.end method

.method private final f(Ljava/lang/String;Lne/a0;)V
    .locals 3

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    goto :goto_4

    .line 4
    :cond_0
    invoke-virtual {p2}, Lne/a0;->a()Lne/b0;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    move v0, v1

    .line 13
    goto :goto_0

    .line 14
    :cond_1
    move v0, v2

    .line 15
    :goto_0
    if-eqz v0, :cond_8

    .line 16
    .line 17
    invoke-virtual {p2}, Lne/a0;->v()Lne/a0;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    move v0, v1

    .line 24
    goto :goto_1

    .line 25
    :cond_2
    move v0, v2

    .line 26
    :goto_1
    if-eqz v0, :cond_7

    .line 27
    .line 28
    invoke-virtual {p2}, Lne/a0;->c()Lne/a0;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-nez v0, :cond_3

    .line 33
    .line 34
    move v0, v1

    .line 35
    goto :goto_2

    .line 36
    :cond_3
    move v0, v2

    .line 37
    :goto_2
    if-eqz v0, :cond_6

    .line 38
    .line 39
    invoke-virtual {p2}, Lne/a0;->x()Lne/a0;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    if-nez p2, :cond_4

    .line 44
    .line 45
    goto :goto_3

    .line 46
    :cond_4
    move v1, v2

    .line 47
    :goto_3
    if-eqz v1, :cond_5

    .line 48
    .line 49
    :goto_4
    return-void

    .line 50
    :cond_5
    const-string p2, ".priorResponse != null"

    .line 51
    .line 52
    invoke-static {p1, p2}, Lkotlin/jvm/internal/m;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p2

    .line 66
    :cond_6
    const-string p2, ".cacheResponse != null"

    .line 67
    .line 68
    invoke-static {p1, p2}, Lkotlin/jvm/internal/m;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 73
    .line 74
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw p2

    .line 82
    :cond_7
    const-string p2, ".networkResponse != null"

    .line 83
    .line 84
    invoke-static {p1, p2}, Lkotlin/jvm/internal/m;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 89
    .line 90
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw p2

    .line 98
    :cond_8
    const-string p2, ".body != null"

    .line 99
    .line 100
    invoke-static {p1, p2}, Lkotlin/jvm/internal/m;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 105
    .line 106
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    throw p2
.end method


# virtual methods
.method public final A(Lne/a0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lne/a0$a;->h:Lne/a0;

    .line 2
    .line 3
    return-void
.end method

.method public final B(Lne/a0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lne/a0$a;->j:Lne/a0;

    .line 2
    .line 3
    return-void
.end method

.method public final C(Lne/x;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lne/a0$a;->b:Lne/x;

    .line 2
    .line 3
    return-void
.end method

.method public final D(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lne/a0$a;->l:J

    .line 2
    .line 3
    return-void
.end method

.method public final E(Lne/y;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lne/a0$a;->a:Lne/y;

    .line 2
    .line 3
    return-void
.end method

.method public final F(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lne/a0$a;->k:J

    .line 2
    .line 3
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lne/a0$a;
    .locals 1

    .line 1
    const-string v0, "name"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "value"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lne/a0$a;->i()Lne/s$a;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p1, p2}, Lne/s$a;->a(Ljava/lang/String;Ljava/lang/String;)Lne/s$a;

    .line 16
    .line 17
    .line 18
    return-object p0
.end method

.method public b(Lne/b0;)Lne/a0$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lne/a0$a;->u(Lne/b0;)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public c()Lne/a0;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v5, v0, Lne/a0$a;->c:I

    .line 4
    .line 5
    if-ltz v5, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    :goto_0
    if-eqz v1, :cond_4

    .line 11
    .line 12
    iget-object v2, v0, Lne/a0$a;->a:Lne/y;

    .line 13
    .line 14
    if-eqz v2, :cond_3

    .line 15
    .line 16
    iget-object v3, v0, Lne/a0$a;->b:Lne/x;

    .line 17
    .line 18
    if-eqz v3, :cond_2

    .line 19
    .line 20
    iget-object v4, v0, Lne/a0$a;->d:Ljava/lang/String;

    .line 21
    .line 22
    if-eqz v4, :cond_1

    .line 23
    .line 24
    iget-object v6, v0, Lne/a0$a;->e:Lne/r;

    .line 25
    .line 26
    iget-object v1, v0, Lne/a0$a;->f:Lne/s$a;

    .line 27
    .line 28
    invoke-virtual {v1}, Lne/s$a;->d()Lne/s;

    .line 29
    .line 30
    .line 31
    move-result-object v7

    .line 32
    iget-object v8, v0, Lne/a0$a;->g:Lne/b0;

    .line 33
    .line 34
    iget-object v9, v0, Lne/a0$a;->h:Lne/a0;

    .line 35
    .line 36
    iget-object v10, v0, Lne/a0$a;->i:Lne/a0;

    .line 37
    .line 38
    iget-object v11, v0, Lne/a0$a;->j:Lne/a0;

    .line 39
    .line 40
    iget-wide v12, v0, Lne/a0$a;->k:J

    .line 41
    .line 42
    iget-wide v14, v0, Lne/a0$a;->l:J

    .line 43
    .line 44
    iget-object v1, v0, Lne/a0$a;->m:Lse/c;

    .line 45
    .line 46
    new-instance v17, Lne/a0;

    .line 47
    .line 48
    move-object/from16 v16, v1

    .line 49
    .line 50
    move-object/from16 v1, v17

    .line 51
    .line 52
    invoke-direct/range {v1 .. v16}, Lne/a0;-><init>(Lne/y;Lne/x;Ljava/lang/String;ILne/r;Lne/s;Lne/b0;Lne/a0;Lne/a0;Lne/a0;JJLse/c;)V

    .line 53
    .line 54
    .line 55
    return-object v17

    .line 56
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 57
    .line 58
    const-string v2, "message == null"

    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw v1

    .line 68
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 69
    .line 70
    const-string v2, "protocol == null"

    .line 71
    .line 72
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw v1

    .line 80
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 81
    .line 82
    const-string v2, "request == null"

    .line 83
    .line 84
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw v1

    .line 92
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lne/a0$a;->h()I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    const-string v2, "code < 0: "

    .line 101
    .line 102
    invoke-static {v2, v1}, Lkotlin/jvm/internal/m;->l(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 107
    .line 108
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw v2
.end method

.method public d(Lne/a0;)Lne/a0$a;
    .locals 1

    .line 1
    const-string v0, "cacheResponse"

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lne/a0$a;->f(Ljava/lang/String;Lne/a0;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lne/a0$a;->v(Lne/a0;)V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public g(I)Lne/a0$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lne/a0$a;->w(I)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public final h()I
    .locals 1

    .line 1
    iget v0, p0, Lne/a0$a;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public final i()Lne/s$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lne/a0$a;->f:Lne/s$a;

    .line 2
    .line 3
    return-object v0
.end method

.method public j(Lne/r;)Lne/a0$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lne/a0$a;->x(Lne/r;)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public k(Ljava/lang/String;Ljava/lang/String;)Lne/a0$a;
    .locals 1

    .line 1
    const-string v0, "name"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "value"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lne/a0$a;->i()Lne/s$a;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p1, p2}, Lne/s$a;->g(Ljava/lang/String;Ljava/lang/String;)Lne/s$a;

    .line 16
    .line 17
    .line 18
    return-object p0
.end method

.method public l(Lne/s;)Lne/a0$a;
    .locals 1

    .line 1
    const-string v0, "headers"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lne/s;->l()Lne/s$a;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0, p1}, Lne/a0$a;->y(Lne/s$a;)V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public final m(Lse/c;)V
    .locals 1

    .line 1
    const-string v0, "deferredTrailers"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lne/a0$a;->m:Lse/c;

    .line 7
    .line 8
    return-void
.end method

.method public n(Ljava/lang/String;)Lne/a0$a;
    .locals 1

    .line 1
    const-string v0, "message"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lne/a0$a;->z(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public o(Lne/a0;)Lne/a0$a;
    .locals 1

    .line 1
    const-string v0, "networkResponse"

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lne/a0$a;->f(Ljava/lang/String;Lne/a0;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lne/a0$a;->A(Lne/a0;)V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public p(Lne/a0;)Lne/a0$a;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lne/a0$a;->e(Lne/a0;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lne/a0$a;->B(Lne/a0;)V

    .line 5
    .line 6
    .line 7
    return-object p0
.end method

.method public q(Lne/x;)Lne/a0$a;
    .locals 1

    .line 1
    const-string v0, "protocol"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lne/a0$a;->C(Lne/x;)V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public r(J)Lne/a0$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lne/a0$a;->D(J)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public s(Lne/y;)Lne/a0$a;
    .locals 1

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lne/a0$a;->E(Lne/y;)V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public t(J)Lne/a0$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lne/a0$a;->F(J)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public final u(Lne/b0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lne/a0$a;->g:Lne/b0;

    .line 2
    .line 3
    return-void
.end method

.method public final v(Lne/a0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lne/a0$a;->i:Lne/a0;

    .line 2
    .line 3
    return-void
.end method

.method public final w(I)V
    .locals 0

    .line 1
    iput p1, p0, Lne/a0$a;->c:I

    .line 2
    .line 3
    return-void
.end method

.method public final x(Lne/r;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lne/a0$a;->e:Lne/r;

    .line 2
    .line 3
    return-void
.end method

.method public final y(Lne/s$a;)V
    .locals 1

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lne/a0$a;->f:Lne/s$a;

    .line 7
    .line 8
    return-void
.end method

.method public final z(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lne/a0$a;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
