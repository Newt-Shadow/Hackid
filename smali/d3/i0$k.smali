.class final Ld3/i0$k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld3/i0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "k"
.end annotation


# instance fields
.field private final a:J

.field private b:Ljava/lang/Exception;

.field private c:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Ld3/i0$k;->a:J

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Ld3/i0$k;->b:Ljava/lang/Exception;

    .line 3
    .line 4
    return-void
.end method

.method public b(Ljava/lang/Exception;)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Ld3/i0$k;->b:Ljava/lang/Exception;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    iput-object p1, p0, Ld3/i0$k;->b:Ljava/lang/Exception;

    .line 10
    .line 11
    iget-wide v2, p0, Ld3/i0$k;->a:J

    .line 12
    .line 13
    add-long/2addr v2, v0

    .line 14
    iput-wide v2, p0, Ld3/i0$k;->c:J

    .line 15
    .line 16
    :cond_0
    iget-wide v2, p0, Ld3/i0$k;->c:J

    .line 17
    .line 18
    cmp-long v0, v0, v2

    .line 19
    .line 20
    if-ltz v0, :cond_2

    .line 21
    .line 22
    iget-object v0, p0, Ld3/i0$k;->b:Ljava/lang/Exception;

    .line 23
    .line 24
    if-eq v0, p1, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    iget-object p1, p0, Ld3/i0$k;->b:Ljava/lang/Exception;

    .line 30
    .line 31
    invoke-virtual {p0}, Ld3/i0$k;->a()V

    .line 32
    .line 33
    .line 34
    throw p1

    .line 35
    :cond_2
    return-void
.end method
