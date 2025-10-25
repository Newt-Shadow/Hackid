.class public Lcom/yandex/metrica/impl/ob/gm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ldc/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Ldc/c;

    invoke-direct {v0}, Ldc/c;-><init>()V

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/gm;-><init>(Ldc/c;)V

    return-void
.end method

.method public constructor <init>(Ldc/c;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/gm;->a:Ldc/c;

    return-void
.end method


# virtual methods
.method public a(JLjava/util/concurrent/TimeUnit;)J
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 4
    .line 5
    .line 6
    move-result-wide p1

    .line 7
    iget-object p3, p0, Lcom/yandex/metrica/impl/ob/gm;->a:Ldc/c;

    .line 8
    .line 9
    invoke-virtual {p3}, Ldc/c;->elapsedRealtime()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    sub-long/2addr v1, p1

    .line 14
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    .line 15
    .line 16
    .line 17
    move-result-wide p1

    .line 18
    return-wide p1
.end method

.method public b(JLjava/util/concurrent/TimeUnit;)J
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/gm;->a:Ldc/c;

    .line 9
    .line 10
    invoke-virtual {v0}, Ldc/c;->currentTimeSeconds()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    .line 15
    .line 16
    .line 17
    move-result-wide p1

    .line 18
    sub-long/2addr v0, p1

    .line 19
    :goto_0
    return-wide v0
.end method

.method public c(JLjava/util/concurrent/TimeUnit;)J
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/gm;->a:Ldc/c;

    .line 4
    .line 5
    invoke-virtual {v1}, Ldc/c;->a()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 10
    .line 11
    .line 12
    move-result-wide p1

    .line 13
    sub-long/2addr v1, p1

    .line 14
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    .line 15
    .line 16
    .line 17
    move-result-wide p1

    .line 18
    return-wide p1
.end method
