.class public final Lio/appmetrica/analytics/impl/v0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Mb;

.field public final b:Lio/appmetrica/analytics/impl/Nb;

.field public final c:Lio/appmetrica/analytics/impl/Pb;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lio/appmetrica/analytics/impl/t4;->j()Lio/appmetrica/analytics/impl/t4;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/t4;->d()Lio/appmetrica/analytics/impl/p0;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Lio/appmetrica/analytics/impl/Mb;

    .line 13
    .line 14
    invoke-direct {v1, v0}, Lio/appmetrica/analytics/impl/Mb;-><init>(Lio/appmetrica/analytics/impl/p0;)V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lio/appmetrica/analytics/impl/v0;->a:Lio/appmetrica/analytics/impl/Mb;

    .line 18
    .line 19
    new-instance v0, Lio/appmetrica/analytics/impl/Nb;

    .line 20
    .line 21
    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Nb;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lio/appmetrica/analytics/impl/v0;->b:Lio/appmetrica/analytics/impl/Nb;

    .line 25
    .line 26
    new-instance v0, Lio/appmetrica/analytics/impl/Pb;

    .line 27
    .line 28
    invoke-direct {v0}, Lio/appmetrica/analytics/impl/Pb;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lio/appmetrica/analytics/impl/v0;->c:Lio/appmetrica/analytics/impl/Pb;

    .line 32
    .line 33
    return-void
.end method
