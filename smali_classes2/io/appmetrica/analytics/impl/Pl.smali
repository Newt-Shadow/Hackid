.class public final Lio/appmetrica/analytics/impl/Pl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;

.field public final b:Lio/appmetrica/analytics/impl/co;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 4
    const-class v0, Lio/appmetrica/analytics/impl/Ul;

    invoke-static {v0}, Lio/appmetrica/analytics/impl/Bm;->a(Ljava/lang/Class;)Lio/appmetrica/analytics/impl/Cm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/Cm;->a(Landroid/content/Context;)Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;

    move-result-object p1

    .line 5
    invoke-static {}, Lio/appmetrica/analytics/impl/za;->j()Lio/appmetrica/analytics/impl/za;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/za;->B()Lio/appmetrica/analytics/impl/go;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/go;->a()Lio/appmetrica/analytics/impl/co;

    move-result-object v0

    .line 6
    invoke-direct {p0, p1, v0}, Lio/appmetrica/analytics/impl/Pl;-><init>(Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;Lio/appmetrica/analytics/impl/co;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;Lio/appmetrica/analytics/impl/co;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Pl;->a:Lio/appmetrica/analytics/coreapi/internal/data/ProtobufStateStorage;

    .line 3
    iput-object p2, p0, Lio/appmetrica/analytics/impl/Pl;->b:Lio/appmetrica/analytics/impl/co;

    return-void
.end method
