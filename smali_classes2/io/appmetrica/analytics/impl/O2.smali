.class public abstract Lio/appmetrica/analytics/impl/O2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/zf;

.field public final b:Lio/appmetrica/analytics/impl/Qa;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/zf;Lio/appmetrica/analytics/impl/Qa;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/appmetrica/analytics/impl/O2;->a:Lio/appmetrica/analytics/impl/zf;

    .line 5
    .line 6
    iput-object p2, p0, Lio/appmetrica/analytics/impl/O2;->b:Lio/appmetrica/analytics/impl/Qa;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Lio/appmetrica/analytics/impl/Qa;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/appmetrica/analytics/impl/Qa;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lio/appmetrica/analytics/impl/O2;->b:Lio/appmetrica/analytics/impl/Qa;

    return-object v0
.end method

.method public final a(Lio/appmetrica/analytics/impl/e6;Lio/appmetrica/analytics/impl/N2;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/e6;",
            "Lio/appmetrica/analytics/impl/N2;",
            ")Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/O2;->a:Lio/appmetrica/analytics/impl/zf;

    .line 2
    iget v1, p1, Lio/appmetrica/analytics/impl/e6;->d:I

    .line 3
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/zf;->a(I)Lio/appmetrica/analytics/impl/h9;

    move-result-object v0

    .line 4
    check-cast v0, Lio/appmetrica/analytics/impl/g9;

    .line 5
    iget-object v0, v0, Lio/appmetrica/analytics/impl/g9;->a:Ljava/util/List;

    .line 6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 7
    invoke-interface {p2, v1, p1}, Lio/appmetrica/analytics/impl/N2;->a(Ljava/lang/Object;Lio/appmetrica/analytics/impl/e6;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final b()Lio/appmetrica/analytics/impl/zf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/appmetrica/analytics/impl/zf;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/O2;->a:Lio/appmetrica/analytics/impl/zf;

    .line 2
    .line 3
    return-object v0
.end method
