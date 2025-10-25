.class public final Lio/appmetrica/analytics/impl/qm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/pm;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    new-instance v0, Lio/appmetrica/analytics/impl/pm;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/pm;-><init>()V

    invoke-direct {p0, v0}, Lio/appmetrica/analytics/impl/qm;-><init>(Lio/appmetrica/analytics/impl/pm;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/pm;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/appmetrica/analytics/impl/qm;->a:Lio/appmetrica/analytics/impl/pm;

    return-void
.end method
