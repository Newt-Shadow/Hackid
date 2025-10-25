.class public final Lio/appmetrica/analytics/impl/B3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/Converter;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Af;

.field public final b:Lio/appmetrica/analytics/impl/H7;

.field public final c:Lio/appmetrica/analytics/impl/uf;

.field public final d:Lio/appmetrica/analytics/impl/cg;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/Af;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Af;-><init>()V

    new-instance v1, Lio/appmetrica/analytics/impl/H7;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/H7;-><init>()V

    new-instance v2, Lio/appmetrica/analytics/impl/uf;

    invoke-direct {v2}, Lio/appmetrica/analytics/impl/uf;-><init>()V

    new-instance v3, Lio/appmetrica/analytics/impl/cg;

    invoke-direct {v3}, Lio/appmetrica/analytics/impl/cg;-><init>()V

    invoke-direct {p0, v0, v1, v2, v3}, Lio/appmetrica/analytics/impl/B3;-><init>(Lio/appmetrica/analytics/impl/Af;Lio/appmetrica/analytics/impl/H7;Lio/appmetrica/analytics/impl/uf;Lio/appmetrica/analytics/impl/cg;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/Af;Lio/appmetrica/analytics/impl/H7;Lio/appmetrica/analytics/impl/uf;Lio/appmetrica/analytics/impl/cg;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/appmetrica/analytics/impl/B3;->a:Lio/appmetrica/analytics/impl/Af;

    .line 4
    iput-object p2, p0, Lio/appmetrica/analytics/impl/B3;->b:Lio/appmetrica/analytics/impl/H7;

    .line 5
    iput-object p3, p0, Lio/appmetrica/analytics/impl/B3;->c:Lio/appmetrica/analytics/impl/uf;

    .line 6
    iput-object p4, p0, Lio/appmetrica/analytics/impl/B3;->d:Lio/appmetrica/analytics/impl/cg;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/Ci;)Lio/appmetrica/analytics/impl/C3;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/Ci;",
            ")",
            "Lio/appmetrica/analytics/impl/C3;"
        }
    .end annotation

    .line 14
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final a(Lio/appmetrica/analytics/impl/C3;)Lio/appmetrica/analytics/impl/Ci;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/impl/C3;",
            ")",
            "Lio/appmetrica/analytics/impl/Ci;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/o8;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/o8;-><init>()V

    .line 2
    iget-object v1, p0, Lio/appmetrica/analytics/impl/B3;->a:Lio/appmetrica/analytics/impl/Af;

    iget-object v2, p1, Lio/appmetrica/analytics/impl/C3;->a:Lio/appmetrica/analytics/impl/Df;

    .line 3
    invoke-virtual {v1, v2}, Lio/appmetrica/analytics/impl/Af;->a(Lio/appmetrica/analytics/impl/Df;)Lio/appmetrica/analytics/impl/Ci;

    move-result-object v1

    .line 4
    iget-object v2, v1, Lio/appmetrica/analytics/impl/Ci;->a:Ljava/lang/Object;

    check-cast v2, Lio/appmetrica/analytics/impl/x8;

    iput-object v2, v0, Lio/appmetrica/analytics/impl/o8;->a:Lio/appmetrica/analytics/impl/x8;

    .line 5
    iget-object v2, p0, Lio/appmetrica/analytics/impl/B3;->b:Lio/appmetrica/analytics/impl/H7;

    iget-object v3, p1, Lio/appmetrica/analytics/impl/C3;->b:Ljava/math/BigDecimal;

    invoke-virtual {v2, v3}, Lio/appmetrica/analytics/impl/H7;->a(Ljava/math/BigDecimal;)Lio/appmetrica/analytics/impl/q8;

    move-result-object v2

    iput-object v2, v0, Lio/appmetrica/analytics/impl/o8;->c:Lio/appmetrica/analytics/impl/q8;

    .line 6
    iget-object v2, p0, Lio/appmetrica/analytics/impl/B3;->c:Lio/appmetrica/analytics/impl/uf;

    iget-object v3, p1, Lio/appmetrica/analytics/impl/C3;->c:Lio/appmetrica/analytics/impl/wf;

    .line 7
    invoke-virtual {v2, v3}, Lio/appmetrica/analytics/impl/uf;->a(Lio/appmetrica/analytics/impl/wf;)Lio/appmetrica/analytics/impl/Ci;

    move-result-object v2

    .line 8
    iget-object v3, v2, Lio/appmetrica/analytics/impl/Ci;->a:Ljava/lang/Object;

    check-cast v3, Lio/appmetrica/analytics/impl/w8;

    iput-object v3, v0, Lio/appmetrica/analytics/impl/o8;->d:Lio/appmetrica/analytics/impl/w8;

    .line 9
    iget-object p1, p1, Lio/appmetrica/analytics/impl/C3;->d:Lio/appmetrica/analytics/impl/vg;

    if-eqz p1, :cond_0

    .line 10
    iget-object v3, p0, Lio/appmetrica/analytics/impl/B3;->d:Lio/appmetrica/analytics/impl/cg;

    invoke-virtual {v3, p1}, Lio/appmetrica/analytics/impl/cg;->a(Lio/appmetrica/analytics/impl/vg;)Lio/appmetrica/analytics/impl/Ci;

    move-result-object p1

    .line 11
    iget-object v3, p1, Lio/appmetrica/analytics/impl/Ci;->a:Ljava/lang/Object;

    check-cast v3, Lio/appmetrica/analytics/impl/z8;

    iput-object v3, v0, Lio/appmetrica/analytics/impl/o8;->b:Lio/appmetrica/analytics/impl/z8;

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

    .line 12
    new-instance p1, Lio/appmetrica/analytics/impl/s3;

    invoke-static {v3}, Lio/appmetrica/analytics/impl/s3;->b([Lio/appmetrica/analytics/impl/t3;)I

    move-result v1

    invoke-direct {p1, v1}, Lio/appmetrica/analytics/impl/s3;-><init>(I)V

    .line 13
    new-instance v1, Lio/appmetrica/analytics/impl/Ci;

    invoke-direct {v1, v0, p1}, Lio/appmetrica/analytics/impl/Ci;-><init>(Ljava/lang/Object;Lio/appmetrica/analytics/impl/t3;)V

    return-object v1
.end method

.method public final bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lio/appmetrica/analytics/impl/C3;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/B3;->a(Lio/appmetrica/analytics/impl/C3;)Lio/appmetrica/analytics/impl/Ci;

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
