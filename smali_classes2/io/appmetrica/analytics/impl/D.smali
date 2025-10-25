.class public final Lio/appmetrica/analytics/impl/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/Savable;


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/impl/E;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/E;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/impl/D;->a:Lio/appmetrica/analytics/impl/E;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Boolean;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/impl/D;->a:Lio/appmetrica/analytics/impl/E;

    .line 2
    iget-object v0, v0, Lio/appmetrica/analytics/impl/E;->a:Lio/appmetrica/analytics/impl/Xe;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/Xe;->a(Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final a(Z)V
    .locals 1

    .line 4
    iget-object v0, p0, Lio/appmetrica/analytics/impl/D;->a:Lio/appmetrica/analytics/impl/E;

    .line 5
    iget-object v0, v0, Lio/appmetrica/analytics/impl/E;->a:Lio/appmetrica/analytics/impl/Xe;

    .line 6
    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/Xe;->e(Z)V

    return-void
.end method

.method public final bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/D;->a()Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge synthetic setValue(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/D;->a(Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
