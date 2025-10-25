.class public final Lio/appmetrica/analytics/impl/O6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/N6;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Xe;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Xe;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/appmetrica/analytics/impl/O6;->a:Lio/appmetrica/analytics/impl/Xe;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Boolean;
    .locals 1

    .line 2
    iget-object v0, p0, Lio/appmetrica/analytics/impl/O6;->a:Lio/appmetrica/analytics/impl/Xe;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Xe;->d()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final a(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/O6;->a:Lio/appmetrica/analytics/impl/Xe;

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/Xe;->c(Z)Lio/appmetrica/analytics/impl/Xe;

    move-result-object p1

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/Ve;->b()V

    return-void
.end method
