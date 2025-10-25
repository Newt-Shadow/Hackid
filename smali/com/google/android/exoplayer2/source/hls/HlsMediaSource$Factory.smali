.class public final Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld4/t$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private final a:Li4/g;

.field private b:Li4/h;

.field private c:Lj4/k;

.field private d:Lj4/l$a;

.field private e:Ld4/h;

.field private f:Lf3/x;

.field private g:Lx4/d0;

.field private h:Z

.field private i:I

.field private j:Z

.field private k:J


# direct methods
.method public constructor <init>(Li4/g;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Li4/g;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->a:Li4/g;

    .line 4
    new-instance p1, Lf3/l;

    invoke-direct {p1}, Lf3/l;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->f:Lf3/x;

    .line 5
    new-instance p1, Lj4/a;

    invoke-direct {p1}, Lj4/a;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->c:Lj4/k;

    .line 6
    sget-object p1, Lj4/c;->p:Lj4/l$a;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->d:Lj4/l$a;

    .line 7
    sget-object p1, Li4/h;->a:Li4/h;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->b:Li4/h;

    .line 8
    new-instance p1, Lx4/v;

    invoke-direct {p1}, Lx4/v;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->g:Lx4/d0;

    .line 9
    new-instance p1, Ld4/i;

    invoke-direct {p1}, Ld4/i;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->e:Ld4/h;

    const/4 p1, 0x1

    .line 10
    iput p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->i:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 11
    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->k:J

    .line 12
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->h:Z

    return-void
.end method

.method public constructor <init>(Lx4/j$a;)V
    .locals 1

    .line 1
    new-instance v0, Li4/c;

    invoke-direct {v0, p1}, Li4/c;-><init>(Lx4/j$a;)V

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;-><init>(Li4/g;)V

    return-void
.end method


# virtual methods
.method public a(Lb3/f2;)Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    iget-object v1, v2, Lb3/f2;->b:Lb3/f2$h;

    .line 6
    .line 7
    invoke-static {v1}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->c:Lj4/k;

    .line 11
    .line 12
    iget-object v3, v2, Lb3/f2;->b:Lb3/f2$h;

    .line 13
    .line 14
    iget-object v3, v3, Lb3/f2$h;->d:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    if-nez v4, :cond_0

    .line 21
    .line 22
    new-instance v4, Lj4/e;

    .line 23
    .line 24
    invoke-direct {v4, v1, v3}, Lj4/e;-><init>(Lj4/k;Ljava/util/List;)V

    .line 25
    .line 26
    .line 27
    move-object v1, v4

    .line 28
    :cond_0
    new-instance v15, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;

    .line 29
    .line 30
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->a:Li4/g;

    .line 31
    .line 32
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->b:Li4/h;

    .line 33
    .line 34
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->e:Ld4/h;

    .line 35
    .line 36
    iget-object v6, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->f:Lf3/x;

    .line 37
    .line 38
    invoke-interface {v6, v2}, Lf3/x;->a(Lb3/f2;)Lf3/v;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    iget-object v7, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->g:Lx4/d0;

    .line 43
    .line 44
    iget-object v8, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->d:Lj4/l$a;

    .line 45
    .line 46
    iget-object v9, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->a:Li4/g;

    .line 47
    .line 48
    invoke-interface {v8, v9, v7, v1}, Lj4/l$a;->a(Li4/g;Lx4/d0;Lj4/k;)Lj4/l;

    .line 49
    .line 50
    .line 51
    move-result-object v8

    .line 52
    iget-wide v9, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->k:J

    .line 53
    .line 54
    iget-boolean v11, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->h:Z

    .line 55
    .line 56
    iget v12, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->i:I

    .line 57
    .line 58
    iget-boolean v13, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource$Factory;->j:Z

    .line 59
    .line 60
    const/4 v14, 0x0

    .line 61
    move-object v1, v15

    .line 62
    move-object/from16 v2, p1

    .line 63
    .line 64
    invoke-direct/range {v1 .. v14}, Lcom/google/android/exoplayer2/source/hls/HlsMediaSource;-><init>(Lb3/f2;Li4/g;Li4/h;Ld4/h;Lf3/v;Lx4/d0;Lj4/l;JZIZLcom/google/android/exoplayer2/source/hls/HlsMediaSource$a;)V

    .line 65
    .line 66
    .line 67
    return-object v15
.end method
