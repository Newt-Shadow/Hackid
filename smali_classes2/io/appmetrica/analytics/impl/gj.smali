.class public final Lio/appmetrica/analytics/impl/gj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/w4;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/zg;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/zg;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/appmetrica/analytics/impl/gj;->a:Lio/appmetrica/analytics/impl/zg;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    return-void
.end method

.method public final a(Lio/appmetrica/analytics/impl/e6;Lio/appmetrica/analytics/impl/G4;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lio/appmetrica/analytics/impl/gj;->a:Lio/appmetrica/analytics/impl/zg;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1, p2}, Lio/appmetrica/analytics/impl/zg;->a(Lio/appmetrica/analytics/impl/e6;Lio/appmetrica/analytics/impl/G4;)V

    :cond_0
    return-void
.end method
