.class public final Lio/appmetrica/analytics/impl/uf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/Converter;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/S;

.field public final b:Lio/appmetrica/analytics/impl/vf;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/S;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/S;-><init>()V

    new-instance v1, Lio/appmetrica/analytics/impl/vf;

    const/16 v2, 0x1e

    invoke-direct {v1, v2}, Lio/appmetrica/analytics/impl/vf;-><init>(I)V

    invoke-direct {p0, v0, v1}, Lio/appmetrica/analytics/impl/uf;-><init>(Lio/appmetrica/analytics/impl/S;Lio/appmetrica/analytics/impl/vf;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/S;Lio/appmetrica/analytics/impl/vf;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/appmetrica/analytics/impl/uf;->a:Lio/appmetrica/analytics/impl/S;

    .line 4
    iput-object p2, p0, Lio/appmetrica/analytics/impl/uf;->b:Lio/appmetrica/analytics/impl/vf;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/wf;)Lio/appmetrica/analytics/impl/Ci;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/wf;",
            ")",
            "Lio/appmetrica/analytics/impl/Ci;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/w8;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/w8;-><init>()V

    .line 2
    iget-object v1, p0, Lio/appmetrica/analytics/impl/uf;->a:Lio/appmetrica/analytics/impl/S;

    iget-object v2, p1, Lio/appmetrica/analytics/impl/wf;->a:Lio/appmetrica/analytics/impl/T;

    .line 3
    invoke-virtual {v1, v2}, Lio/appmetrica/analytics/impl/S;->a(Lio/appmetrica/analytics/impl/T;)Lio/appmetrica/analytics/impl/Ci;

    move-result-object v1

    .line 4
    iget-object v2, v1, Lio/appmetrica/analytics/impl/Ci;->a:Ljava/lang/Object;

    check-cast v2, Lio/appmetrica/analytics/impl/m8;

    iput-object v2, v0, Lio/appmetrica/analytics/impl/w8;->a:Lio/appmetrica/analytics/impl/m8;

    .line 5
    iget-object v2, p0, Lio/appmetrica/analytics/impl/uf;->b:Lio/appmetrica/analytics/impl/vf;

    iget-object p1, p1, Lio/appmetrica/analytics/impl/wf;->b:Ljava/util/List;

    .line 6
    invoke-virtual {v2, p1}, Lio/appmetrica/analytics/impl/Ca;->a(Ljava/util/List;)Lio/appmetrica/analytics/impl/sn;

    move-result-object p1

    .line 7
    iget-object v2, p1, Lio/appmetrica/analytics/impl/sn;->a:Ljava/lang/Object;

    check-cast v2, Ljava/util/Collection;

    invoke-static {v2}, Lio/appmetrica/analytics/impl/Rn;->a(Ljava/util/Collection;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 8
    iget-object v2, p1, Lio/appmetrica/analytics/impl/sn;->a:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lio/appmetrica/analytics/impl/m8;

    iput-object v2, v0, Lio/appmetrica/analytics/impl/w8;->b:[Lio/appmetrica/analytics/impl/m8;

    move v2, v3

    move v4, v2

    .line 9
    :goto_0
    iget-object v5, p1, Lio/appmetrica/analytics/impl/sn;->a:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 10
    iget-object v5, p0, Lio/appmetrica/analytics/impl/uf;->a:Lio/appmetrica/analytics/impl/S;

    iget-object v6, p1, Lio/appmetrica/analytics/impl/sn;->a:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/appmetrica/analytics/impl/T;

    invoke-virtual {v5, v6}, Lio/appmetrica/analytics/impl/S;->a(Lio/appmetrica/analytics/impl/T;)Lio/appmetrica/analytics/impl/Ci;

    move-result-object v5

    .line 11
    iget-object v6, v0, Lio/appmetrica/analytics/impl/w8;->b:[Lio/appmetrica/analytics/impl/m8;

    iget-object v7, v5, Lio/appmetrica/analytics/impl/Ci;->a:Ljava/lang/Object;

    check-cast v7, Lio/appmetrica/analytics/impl/m8;

    aput-object v7, v6, v2

    .line 12
    iget-object v5, v5, Lio/appmetrica/analytics/impl/Ci;->b:Lio/appmetrica/analytics/impl/t3;

    invoke-interface {v5}, Lio/appmetrica/analytics/impl/t3;->getBytesTruncated()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v4, v3

    .line 13
    :cond_1
    new-instance v2, Lio/appmetrica/analytics/impl/s3;

    invoke-direct {v2, v4}, Lio/appmetrica/analytics/impl/s3;-><init>(I)V

    const/4 v4, 0x3

    new-array v4, v4, [Lio/appmetrica/analytics/impl/t3;

    aput-object v1, v4, v3

    const/4 v1, 0x1

    aput-object p1, v4, v1

    const/4 p1, 0x2

    aput-object v2, v4, p1

    .line 14
    new-instance p1, Lio/appmetrica/analytics/impl/s3;

    invoke-static {v4}, Lio/appmetrica/analytics/impl/s3;->b([Lio/appmetrica/analytics/impl/t3;)I

    move-result v1

    invoke-direct {p1, v1}, Lio/appmetrica/analytics/impl/s3;-><init>(I)V

    .line 15
    new-instance v1, Lio/appmetrica/analytics/impl/Ci;

    invoke-direct {v1, v0, p1}, Lio/appmetrica/analytics/impl/Ci;-><init>(Ljava/lang/Object;Lio/appmetrica/analytics/impl/t3;)V

    return-object v1
.end method

.method public final a(Lio/appmetrica/analytics/impl/Ci;)Lio/appmetrica/analytics/impl/wf;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/Ci;",
            ")",
            "Lio/appmetrica/analytics/impl/wf;"
        }
    .end annotation

    .line 16
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lio/appmetrica/analytics/impl/wf;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/uf;->a(Lio/appmetrica/analytics/impl/wf;)Lio/appmetrica/analytics/impl/Ci;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lio/appmetrica/analytics/impl/Ci;

    .line 2
    .line 3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 4
    .line 5
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 6
    .line 7
    .line 8
    throw p1
.end method
