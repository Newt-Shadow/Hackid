.class public final Lio/appmetrica/analytics/impl/cg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/Converter;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Xi;

.field public final b:Lio/appmetrica/analytics/impl/Ea;

.field public final c:Lio/appmetrica/analytics/impl/Ea;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/Xi;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Xi;-><init>()V

    new-instance v1, Lio/appmetrica/analytics/impl/Ea;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Lio/appmetrica/analytics/impl/Ea;-><init>(I)V

    new-instance v2, Lio/appmetrica/analytics/impl/Ea;

    const/16 v3, 0x800

    invoke-direct {v2, v3}, Lio/appmetrica/analytics/impl/Ea;-><init>(I)V

    invoke-direct {p0, v0, v1, v2}, Lio/appmetrica/analytics/impl/cg;-><init>(Lio/appmetrica/analytics/impl/Xi;Lio/appmetrica/analytics/impl/Ea;Lio/appmetrica/analytics/impl/Ea;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/Xi;Lio/appmetrica/analytics/impl/Ea;Lio/appmetrica/analytics/impl/Ea;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/appmetrica/analytics/impl/cg;->a:Lio/appmetrica/analytics/impl/Xi;

    .line 4
    iput-object p2, p0, Lio/appmetrica/analytics/impl/cg;->b:Lio/appmetrica/analytics/impl/Ea;

    .line 5
    iput-object p3, p0, Lio/appmetrica/analytics/impl/cg;->c:Lio/appmetrica/analytics/impl/Ea;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/vg;)Lio/appmetrica/analytics/impl/Ci;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/vg;",
            ")",
            "Lio/appmetrica/analytics/impl/Ci;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/z8;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/z8;-><init>()V

    .line 2
    iget-object v1, p0, Lio/appmetrica/analytics/impl/cg;->b:Lio/appmetrica/analytics/impl/Ea;

    iget-object v2, p1, Lio/appmetrica/analytics/impl/vg;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lio/appmetrica/analytics/impl/Ea;->a(Ljava/lang/String;)Lio/appmetrica/analytics/impl/sn;

    move-result-object v1

    .line 3
    iget-object v2, v1, Lio/appmetrica/analytics/impl/sn;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->getUTF8Bytes(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, v0, Lio/appmetrica/analytics/impl/z8;->a:[B

    .line 4
    iget-object v2, p0, Lio/appmetrica/analytics/impl/cg;->c:Lio/appmetrica/analytics/impl/Ea;

    iget-object v3, p1, Lio/appmetrica/analytics/impl/vg;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lio/appmetrica/analytics/impl/Ea;->a(Ljava/lang/String;)Lio/appmetrica/analytics/impl/sn;

    move-result-object v2

    .line 5
    iget-object v3, v2, Lio/appmetrica/analytics/impl/sn;->a:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lio/appmetrica/analytics/coreutils/internal/StringUtils;->getUTF8Bytes(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, v0, Lio/appmetrica/analytics/impl/z8;->b:[B

    .line 6
    iget-object p1, p1, Lio/appmetrica/analytics/impl/vg;->c:Lio/appmetrica/analytics/impl/bj;

    if-eqz p1, :cond_0

    .line 7
    iget-object v3, p0, Lio/appmetrica/analytics/impl/cg;->a:Lio/appmetrica/analytics/impl/Xi;

    invoke-virtual {v3, p1}, Lio/appmetrica/analytics/impl/Xi;->a(Lio/appmetrica/analytics/impl/bj;)Lio/appmetrica/analytics/impl/Ci;

    move-result-object p1

    .line 8
    iget-object v3, p1, Lio/appmetrica/analytics/impl/Ci;->a:Ljava/lang/Object;

    check-cast v3, Lio/appmetrica/analytics/impl/A8;

    iput-object v3, v0, Lio/appmetrica/analytics/impl/z8;->c:Lio/appmetrica/analytics/impl/A8;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v3, 0x3

    new-array v3, v3, [Lio/appmetrica/analytics/impl/t3;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    const/4 v1, 0x2

    aput-object p1, v3, v1

    .line 9
    new-instance p1, Lio/appmetrica/analytics/impl/s3;

    invoke-static {v3}, Lio/appmetrica/analytics/impl/s3;->b([Lio/appmetrica/analytics/impl/t3;)I

    move-result v1

    invoke-direct {p1, v1}, Lio/appmetrica/analytics/impl/s3;-><init>(I)V

    .line 10
    new-instance v1, Lio/appmetrica/analytics/impl/Ci;

    invoke-direct {v1, v0, p1}, Lio/appmetrica/analytics/impl/Ci;-><init>(Ljava/lang/Object;Lio/appmetrica/analytics/impl/t3;)V

    return-object v1
.end method

.method public final a(Lio/appmetrica/analytics/impl/Ci;)Lio/appmetrica/analytics/impl/vg;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/Ci;",
            ")",
            "Lio/appmetrica/analytics/impl/vg;"
        }
    .end annotation

    .line 11
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lio/appmetrica/analytics/impl/vg;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/cg;->a(Lio/appmetrica/analytics/impl/vg;)Lio/appmetrica/analytics/impl/Ci;

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
