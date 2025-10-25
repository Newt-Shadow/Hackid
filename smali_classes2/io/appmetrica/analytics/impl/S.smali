.class public final Lio/appmetrica/analytics/impl/S;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/Converter;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/H7;

.field public final b:Lio/appmetrica/analytics/impl/Ea;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/H7;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/H7;-><init>()V

    new-instance v1, Lio/appmetrica/analytics/impl/Ea;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Lio/appmetrica/analytics/impl/Ea;-><init>(I)V

    invoke-direct {p0, v0, v1}, Lio/appmetrica/analytics/impl/S;-><init>(Lio/appmetrica/analytics/impl/H7;Lio/appmetrica/analytics/impl/Ea;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/H7;Lio/appmetrica/analytics/impl/Ea;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/appmetrica/analytics/impl/S;->a:Lio/appmetrica/analytics/impl/H7;

    .line 4
    iput-object p2, p0, Lio/appmetrica/analytics/impl/S;->b:Lio/appmetrica/analytics/impl/Ea;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/T;)Lio/appmetrica/analytics/impl/Ci;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/T;",
            ")",
            "Lio/appmetrica/analytics/impl/Ci;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/m8;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/m8;-><init>()V

    .line 2
    iget-object v1, p0, Lio/appmetrica/analytics/impl/S;->a:Lio/appmetrica/analytics/impl/H7;

    iget-object v2, p1, Lio/appmetrica/analytics/impl/T;->a:Ljava/math/BigDecimal;

    invoke-virtual {v1, v2}, Lio/appmetrica/analytics/impl/H7;->a(Ljava/math/BigDecimal;)Lio/appmetrica/analytics/impl/q8;

    move-result-object v1

    iput-object v1, v0, Lio/appmetrica/analytics/impl/m8;->b:Lio/appmetrica/analytics/impl/q8;

    .line 3
    iget-object v1, p0, Lio/appmetrica/analytics/impl/S;->b:Lio/appmetrica/analytics/impl/Ea;

    iget-object p1, p1, Lio/appmetrica/analytics/impl/T;->b:Ljava/lang/String;

    .line 4
    invoke-virtual {v1, p1}, Lio/appmetrica/analytics/impl/Ea;->a(Ljava/lang/String;)Lio/appmetrica/analytics/impl/sn;

    move-result-object p1

    .line 5
    iget-object v1, p1, Lio/appmetrica/analytics/impl/sn;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->getUTF8Bytes(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, v0, Lio/appmetrica/analytics/impl/m8;->a:[B

    const/4 v1, 0x1

    new-array v1, v1, [Lio/appmetrica/analytics/impl/t3;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 6
    new-instance p1, Lio/appmetrica/analytics/impl/s3;

    invoke-static {v1}, Lio/appmetrica/analytics/impl/s3;->b([Lio/appmetrica/analytics/impl/t3;)I

    move-result v1

    invoke-direct {p1, v1}, Lio/appmetrica/analytics/impl/s3;-><init>(I)V

    .line 7
    new-instance v1, Lio/appmetrica/analytics/impl/Ci;

    invoke-direct {v1, v0, p1}, Lio/appmetrica/analytics/impl/Ci;-><init>(Ljava/lang/Object;Lio/appmetrica/analytics/impl/t3;)V

    return-object v1
.end method

.method public final a(Lio/appmetrica/analytics/impl/Ci;)Lio/appmetrica/analytics/impl/T;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/Ci;",
            ")",
            "Lio/appmetrica/analytics/impl/T;"
        }
    .end annotation

    .line 8
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lio/appmetrica/analytics/impl/T;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/S;->a(Lio/appmetrica/analytics/impl/T;)Lio/appmetrica/analytics/impl/Ci;

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
