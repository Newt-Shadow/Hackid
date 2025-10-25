.class public final Lio/appmetrica/analytics/impl/Ef;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/Converter;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Da;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/Da;

    const/16 v1, 0x14

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Lio/appmetrica/analytics/impl/Da;-><init>(II)V

    invoke-direct {p0, v0}, Lio/appmetrica/analytics/impl/Ef;-><init>(Lio/appmetrica/analytics/impl/Da;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/Da;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Ef;->a:Lio/appmetrica/analytics/impl/Da;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Lio/appmetrica/analytics/impl/Ci;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/appmetrica/analytics/impl/Ci;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ef;->a:Lio/appmetrica/analytics/impl/Da;

    .line 2
    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/Ca;->a(Ljava/util/List;)Lio/appmetrica/analytics/impl/sn;

    move-result-object p1

    .line 3
    iget-object v0, p1, Lio/appmetrica/analytics/impl/sn;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    new-array v2, v1, [Lio/appmetrica/analytics/impl/y8;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lio/appmetrica/analytics/impl/y8;

    .line 5
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 6
    new-instance v3, Lio/appmetrica/analytics/impl/y8;

    invoke-direct {v3}, Lio/appmetrica/analytics/impl/y8;-><init>()V

    aput-object v3, v2, v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->getUTF8Bytes(Ljava/lang/String;)[B

    move-result-object v4

    iput-object v4, v3, Lio/appmetrica/analytics/impl/y8;->a:[B

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p1, Lio/appmetrica/analytics/impl/sn;->b:Lio/appmetrica/analytics/impl/t3;

    invoke-interface {v0}, Lio/appmetrica/analytics/impl/t3;->getBytesTruncated()I

    .line 9
    new-instance v0, Lio/appmetrica/analytics/impl/Ci;

    iget-object p1, p1, Lio/appmetrica/analytics/impl/sn;->b:Lio/appmetrica/analytics/impl/t3;

    invoke-direct {v0, v2, p1}, Lio/appmetrica/analytics/impl/Ci;-><init>(Ljava/lang/Object;Lio/appmetrica/analytics/impl/t3;)V

    return-object v0
.end method

.method public final a(Lio/appmetrica/analytics/impl/Ci;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/Ci;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 10
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/Ef;->a(Ljava/util/List;)Lio/appmetrica/analytics/impl/Ci;

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
