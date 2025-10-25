.class public final Lio/appmetrica/analytics/impl/ik;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/Uc;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 3

    .line 1
    const-class v0, Lio/appmetrica/analytics/impl/Ul;

    .line 2
    .line 3
    invoke-static {v0}, Lio/appmetrica/analytics/impl/Bm;->a(Ljava/lang/Class;)Lio/appmetrica/analytics/impl/Cm;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/Cm;->d(Landroid/content/Context;)Lio/appmetrica/analytics/coreapi/internal/data/IBinaryDataHelper;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, p1, v1}, Lio/appmetrica/analytics/impl/Cm;->a(Landroid/content/Context;Lio/appmetrica/analytics/coreapi/internal/data/IBinaryDataHelper;)Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1}, Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;->read()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lio/appmetrica/analytics/impl/Ul;

    .line 20
    .line 21
    iget-object v1, v0, Lio/appmetrica/analytics/impl/Ul;->m:Lio/appmetrica/analytics/impl/C4;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/Ul;->a(Lio/appmetrica/analytics/impl/C4;)Lio/appmetrica/analytics/impl/Tl;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-wide/16 v1, 0x0

    .line 28
    .line 29
    iput-wide v1, v0, Lio/appmetrica/analytics/impl/Tl;->o:J

    .line 30
    .line 31
    new-instance v1, Lio/appmetrica/analytics/impl/Ul;

    .line 32
    .line 33
    invoke-direct {v1, v0}, Lio/appmetrica/analytics/impl/Ul;-><init>(Lio/appmetrica/analytics/impl/Tl;)V

    .line 34
    .line 35
    .line 36
    invoke-interface {p1, v1}, Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;->save(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method
