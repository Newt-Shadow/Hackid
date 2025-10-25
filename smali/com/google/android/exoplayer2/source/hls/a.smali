.class public final Lcom/google/android/exoplayer2/source/hls/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lj4/f;

.field public final b:Lj4/h;

.field public final c:Lj4/g;


# direct methods
.method constructor <init>(Lj4/h;Lj4/g;)V
    .locals 13

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/a;->b:Lj4/h;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/a;->c:Lj4/g;

    .line 7
    .line 8
    new-instance p2, Lj4/f;

    .line 9
    .line 10
    iget-object v1, p1, Lj4/i;->a:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v2, p1, Lj4/i;->b:Ljava/util/List;

    .line 13
    .line 14
    iget-object v3, p1, Lj4/h;->e:Ljava/util/List;

    .line 15
    .line 16
    iget-object v4, p1, Lj4/h;->f:Ljava/util/List;

    .line 17
    .line 18
    iget-object v5, p1, Lj4/h;->g:Ljava/util/List;

    .line 19
    .line 20
    iget-object v6, p1, Lj4/h;->h:Ljava/util/List;

    .line 21
    .line 22
    iget-object v7, p1, Lj4/h;->i:Ljava/util/List;

    .line 23
    .line 24
    iget-object v8, p1, Lj4/h;->j:Lb3/x1;

    .line 25
    .line 26
    iget-object v9, p1, Lj4/h;->k:Ljava/util/List;

    .line 27
    .line 28
    iget-boolean v10, p1, Lj4/i;->c:Z

    .line 29
    .line 30
    iget-object v11, p1, Lj4/h;->l:Ljava/util/Map;

    .line 31
    .line 32
    iget-object v12, p1, Lj4/h;->m:Ljava/util/List;

    .line 33
    .line 34
    move-object v0, p2

    .line 35
    invoke-direct/range {v0 .. v12}, Lj4/f;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lb3/x1;Ljava/util/List;ZLjava/util/Map;Ljava/util/List;)V

    .line 36
    .line 37
    .line 38
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/a;->a:Lj4/f;

    .line 39
    .line 40
    return-void
.end method
