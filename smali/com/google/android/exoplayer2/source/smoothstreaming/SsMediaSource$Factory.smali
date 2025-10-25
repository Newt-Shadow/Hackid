.class public final Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld4/t$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/source/smoothstreaming/b$a;

.field private final b:Lx4/j$a;

.field private c:Ld4/h;

.field private d:Lf3/x;

.field private e:Lx4/d0;

.field private f:J

.field private g:Lx4/g0$a;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/smoothstreaming/b$a;Lx4/j$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/smoothstreaming/b$a;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->a:Lcom/google/android/exoplayer2/source/smoothstreaming/b$a;

    .line 4
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->b:Lx4/j$a;

    .line 5
    new-instance p1, Lf3/l;

    invoke-direct {p1}, Lf3/l;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->d:Lf3/x;

    .line 6
    new-instance p1, Lx4/v;

    invoke-direct {p1}, Lx4/v;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->e:Lx4/d0;

    const-wide/16 p1, 0x7530

    .line 7
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->f:J

    .line 8
    new-instance p1, Ld4/i;

    invoke-direct {p1}, Ld4/i;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->c:Ld4/h;

    return-void
.end method

.method public constructor <init>(Lx4/j$a;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/source/smoothstreaming/a$a;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/source/smoothstreaming/a$a;-><init>(Lx4/j$a;)V

    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/source/smoothstreaming/b$a;Lx4/j$a;)V

    return-void
.end method


# virtual methods
.method public a(Lb3/f2;)Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;
    .locals 13

    .line 1
    iget-object v0, p1, Lb3/f2;->b:Lb3/f2$h;

    .line 2
    .line 3
    invoke-static {v0}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->g:Lx4/g0$a;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Ll4/b;

    .line 11
    .line 12
    invoke-direct {v0}, Ll4/b;-><init>()V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v2, p1, Lb3/f2;->b:Lb3/f2$h;

    .line 16
    .line 17
    iget-object v2, v2, Lb3/f2$h;->d:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-nez v3, :cond_1

    .line 24
    .line 25
    new-instance v3, Lc4/b;

    .line 26
    .line 27
    invoke-direct {v3, v0, v2}, Lc4/b;-><init>(Lx4/g0$a;Ljava/util/List;)V

    .line 28
    .line 29
    .line 30
    move-object v4, v3

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    move-object v4, v0

    .line 33
    :goto_0
    new-instance v12, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->b:Lx4/j$a;

    .line 37
    .line 38
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->a:Lcom/google/android/exoplayer2/source/smoothstreaming/b$a;

    .line 39
    .line 40
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->c:Ld4/h;

    .line 41
    .line 42
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->d:Lf3/x;

    .line 43
    .line 44
    invoke-interface {v0, p1}, Lf3/x;->a(Lb3/f2;)Lf3/v;

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    iget-object v8, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->e:Lx4/d0;

    .line 49
    .line 50
    iget-wide v9, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->f:J

    .line 51
    .line 52
    const/4 v11, 0x0

    .line 53
    move-object v0, v12

    .line 54
    move-object v1, p1

    .line 55
    invoke-direct/range {v0 .. v11}, Lcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource;-><init>(Lb3/f2;Ll4/a;Lx4/j$a;Lx4/g0$a;Lcom/google/android/exoplayer2/source/smoothstreaming/b$a;Ld4/h;Lf3/v;Lx4/d0;JLcom/google/android/exoplayer2/source/smoothstreaming/SsMediaSource$a;)V

    .line 56
    .line 57
    .line 58
    return-object v12
.end method
