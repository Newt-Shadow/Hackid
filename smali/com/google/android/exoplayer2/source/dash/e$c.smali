.class public final Lcom/google/android/exoplayer2/source/dash/e$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg3/b0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/dash/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field private final a:Ld4/l0;

.field private final b:Lb3/y1;

.field private final c:Lt3/d;

.field private d:J

.field final synthetic e:Lcom/google/android/exoplayer2/source/dash/e;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/source/dash/e;Lx4/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/e$c;->e:Lcom/google/android/exoplayer2/source/dash/e;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Ld4/l0;->l(Lx4/b;)Ld4/l0;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/e$c;->a:Ld4/l0;

    .line 11
    .line 12
    new-instance p1, Lb3/y1;

    .line 13
    .line 14
    invoke-direct {p1}, Lb3/y1;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/e$c;->b:Lb3/y1;

    .line 18
    .line 19
    new-instance p1, Lt3/d;

    .line 20
    .line 21
    invoke-direct {p1}, Lt3/d;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/e$c;->c:Lt3/d;

    .line 25
    .line 26
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/dash/e$c;->d:J

    .line 32
    .line 33
    return-void
.end method

.method private g()Lt3/d;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/e$c;->c:Lt3/d;

    .line 2
    .line 3
    invoke-virtual {v0}, Le3/g;->l()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/e$c;->a:Ld4/l0;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/e$c;->b:Lb3/y1;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/e$c;->c:Lt3/d;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-virtual {v0, v1, v2, v3, v3}, Ld4/l0;->S(Lb3/y1;Le3/g;IZ)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, -0x4

    .line 18
    if-ne v0, v1, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/e$c;->c:Lt3/d;

    .line 21
    .line 22
    invoke-virtual {v0}, Le3/g;->x()V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/e$c;->c:Lt3/d;

    .line 26
    .line 27
    return-object v0

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    return-object v0
.end method

.method private k(JJ)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/e$a;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/dash/e$a;-><init>(JJ)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/dash/e$c;->e:Lcom/google/android/exoplayer2/source/dash/e;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/dash/e;->d(Lcom/google/android/exoplayer2/source/dash/e;)Landroid/os/Handler;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/dash/e$c;->e:Lcom/google/android/exoplayer2/source/dash/e;

    .line 13
    .line 14
    invoke-static {p2}, Lcom/google/android/exoplayer2/source/dash/e;->d(Lcom/google/android/exoplayer2/source/dash/e;)Landroid/os/Handler;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    const/4 p3, 0x1

    .line 19
    invoke-virtual {p2, p3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private l()V
    .locals 5

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/e$c;->a:Ld4/l0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ld4/l0;->K(Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/dash/e$c;->g()Lt3/d;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    iget-wide v2, v0, Le3/g;->e:J

    .line 18
    .line 19
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/dash/e$c;->e:Lcom/google/android/exoplayer2/source/dash/e;

    .line 20
    .line 21
    invoke-static {v4}, Lcom/google/android/exoplayer2/source/dash/e;->a(Lcom/google/android/exoplayer2/source/dash/e;)Lv3/b;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-virtual {v4, v0}, Lt3/g;->a(Lt3/d;)Lt3/a;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-nez v0, :cond_2

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    invoke-virtual {v0, v1}, Lt3/a;->d(I)Lt3/a$b;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lv3/a;

    .line 37
    .line 38
    iget-object v1, v0, Lv3/a;->a:Ljava/lang/String;

    .line 39
    .line 40
    iget-object v4, v0, Lv3/a;->b:Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {v1, v4}, Lcom/google/android/exoplayer2/source/dash/e;->b(Ljava/lang/String;Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_0

    .line 47
    .line 48
    invoke-direct {p0, v2, v3, v0}, Lcom/google/android/exoplayer2/source/dash/e$c;->m(JLv3/a;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/e$c;->a:Ld4/l0;

    .line 53
    .line 54
    invoke-virtual {v0}, Ld4/l0;->s()V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method private m(JLv3/a;)V
    .locals 4

    .line 1
    invoke-static {p3}, Lcom/google/android/exoplayer2/source/dash/e;->c(Lv3/a;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    cmp-long p3, v0, v2

    .line 11
    .line 12
    if-nez p3, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/exoplayer2/source/dash/e$c;->k(JJ)V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public a(Ly4/e0;II)V
    .locals 0

    .line 1
    iget-object p3, p0, Lcom/google/android/exoplayer2/source/dash/e$c;->a:Ld4/l0;

    .line 2
    .line 3
    invoke-interface {p3, p1, p2}, Lg3/b0;->b(Ly4/e0;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public c(Lb3/x1;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/e$c;->a:Ld4/l0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ld4/l0;->c(Lb3/x1;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public d(Lx4/h;IZI)I
    .locals 0

    .line 1
    iget-object p4, p0, Lcom/google/android/exoplayer2/source/dash/e$c;->a:Ld4/l0;

    .line 2
    .line 3
    invoke-interface {p4, p1, p2, p3}, Lg3/b0;->e(Lx4/h;IZ)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public f(JIIILg3/b0$a;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/e$c;->a:Ld4/l0;

    .line 2
    .line 3
    move-wide v1, p1

    .line 4
    move v3, p3

    .line 5
    move v4, p4

    .line 6
    move v5, p5

    .line 7
    move-object v6, p6

    .line 8
    invoke-virtual/range {v0 .. v6}, Ld4/l0;->f(JIIILg3/b0$a;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/dash/e$c;->l()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public h(J)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/e$c;->e:Lcom/google/android/exoplayer2/source/dash/e;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/source/dash/e;->j(J)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public i(Lf4/f;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/e$c;->d:J

    .line 2
    .line 3
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    cmp-long v2, v0, v2

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    iget-wide v2, p1, Lf4/f;->h:J

    .line 13
    .line 14
    cmp-long v0, v2, v0

    .line 15
    .line 16
    if-lez v0, :cond_1

    .line 17
    .line 18
    :cond_0
    iget-wide v0, p1, Lf4/f;->h:J

    .line 19
    .line 20
    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/e$c;->d:J

    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/e$c;->e:Lcom/google/android/exoplayer2/source/dash/e;

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/dash/e;->m(Lf4/f;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public j(Lf4/f;)Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/e$c;->d:J

    .line 2
    .line 3
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    cmp-long v2, v0, v2

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    iget-wide v2, p1, Lf4/f;->g:J

    .line 13
    .line 14
    cmp-long p1, v0, v2

    .line 15
    .line 16
    if-gez p1, :cond_0

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/e$c;->e:Lcom/google/android/exoplayer2/source/dash/e;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/dash/e;->n(Z)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    return p1
.end method

.method public n()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/e$c;->a:Ld4/l0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ld4/l0;->T()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
