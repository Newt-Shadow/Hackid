.class public final Lcom/google/android/exoplayer2/source/dash/c$c;
.super Lf4/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/dash/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "c"
.end annotation


# instance fields
.field private final e:Lcom/google/android/exoplayer2/source/dash/c$b;

.field private final f:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/dash/c$b;JJJ)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3, p4, p5}, Lf4/b;-><init>(JJ)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/c$c;->e:Lcom/google/android/exoplayer2/source/dash/c$b;

    .line 5
    .line 6
    iput-wide p6, p0, Lcom/google/android/exoplayer2/source/dash/c$c;->f:J

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()J
    .locals 3

    .line 1
    invoke-virtual {p0}, Lf4/b;->c()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c$c;->e:Lcom/google/android/exoplayer2/source/dash/c$b;

    .line 5
    .line 6
    invoke-virtual {p0}, Lf4/b;->d()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/source/dash/c$b;->k(J)J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    return-wide v0
.end method

.method public b()J
    .locals 3

    .line 1
    invoke-virtual {p0}, Lf4/b;->c()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c$c;->e:Lcom/google/android/exoplayer2/source/dash/c$b;

    .line 5
    .line 6
    invoke-virtual {p0}, Lf4/b;->d()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/source/dash/c$b;->i(J)J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    return-wide v0
.end method
