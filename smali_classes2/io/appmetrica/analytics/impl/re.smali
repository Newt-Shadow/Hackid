.class public final Lio/appmetrica/analytics/impl/re;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/b9;
.implements Lio/appmetrica/analytics/impl/se;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/W6;

.field public final b:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/W6;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/appmetrica/analytics/impl/re;->a:Lio/appmetrica/analytics/impl/W6;

    .line 5
    .line 6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 7
    .line 8
    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/W6;->b()J

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lio/appmetrica/analytics/impl/re;->b:Ljava/util/concurrent/atomic/AtomicLong;

    .line 16
    .line 17
    invoke-virtual {p1, p0}, Lio/appmetrica/analytics/impl/W6;->a(Lio/appmetrica/analytics/impl/b9;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 2
    iget-object v0, p0, Lio/appmetrica/analytics/impl/re;->b:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/re;->a:Lio/appmetrica/analytics/impl/W6;

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/W6;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/re;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    return-void
.end method

.method public final b()J
    .locals 2

    .line 2
    iget-object v0, p0, Lio/appmetrica/analytics/impl/re;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public final b(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/re;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    int-to-long v1, p1

    neg-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    return-void
.end method
