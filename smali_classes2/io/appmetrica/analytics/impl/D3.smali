.class public final Lio/appmetrica/analytics/impl/D3;
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

    invoke-direct {p0, v0}, Lio/appmetrica/analytics/impl/D3;-><init>(Lio/appmetrica/analytics/impl/Da;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/Da;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/appmetrica/analytics/impl/D3;->a:Lio/appmetrica/analytics/impl/Da;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Lio/appmetrica/analytics/impl/Ci;
    .locals 2
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
    iget-object v0, p0, Lio/appmetrica/analytics/impl/D3;->a:Lio/appmetrica/analytics/impl/Da;

    .line 2
    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/Ca;->a(Ljava/util/List;)Lio/appmetrica/analytics/impl/sn;

    move-result-object p1

    .line 3
    new-instance v0, Lio/appmetrica/analytics/impl/p8;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/p8;-><init>()V

    .line 4
    iget-object v1, p1, Lio/appmetrica/analytics/impl/sn;->a:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->getUTF8Bytes(Ljava/util/List;)[[B

    move-result-object v1

    iput-object v1, v0, Lio/appmetrica/analytics/impl/p8;->a:[[B

    .line 5
    iget-object p1, p1, Lio/appmetrica/analytics/impl/sn;->b:Lio/appmetrica/analytics/impl/t3;

    move-object v1, p1

    check-cast v1, Lio/appmetrica/analytics/impl/E4;

    iget v1, v1, Lio/appmetrica/analytics/impl/s3;->a:I

    .line 6
    new-instance v1, Lio/appmetrica/analytics/impl/Ci;

    invoke-direct {v1, v0, p1}, Lio/appmetrica/analytics/impl/Ci;-><init>(Ljava/lang/Object;Lio/appmetrica/analytics/impl/t3;)V

    return-object v1
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

    .line 7
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
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/D3;->a(Ljava/util/List;)Lio/appmetrica/analytics/impl/Ci;

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
