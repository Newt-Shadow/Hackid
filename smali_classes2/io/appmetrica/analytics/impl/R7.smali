.class public final Lio/appmetrica/analytics/impl/R7;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Em;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 3
    new-instance v0, Lio/appmetrica/analytics/impl/Em;

    .line 4
    invoke-static {}, Lio/appmetrica/analytics/impl/za;->j()Lio/appmetrica/analytics/impl/za;

    move-result-object v1

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/za;->f()Landroid/content/Context;

    move-result-object v1

    const-string v2, "appmetrica_startup_hosts"

    .line 5
    invoke-direct {v0, v1, v2}, Lio/appmetrica/analytics/impl/Em;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0, v0}, Lio/appmetrica/analytics/impl/R7;-><init>(Lio/appmetrica/analytics/impl/Em;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/Em;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/appmetrica/analytics/impl/R7;->a:Lio/appmetrica/analytics/impl/Em;

    return-void
.end method
