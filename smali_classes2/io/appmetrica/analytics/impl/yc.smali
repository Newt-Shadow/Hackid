.class public final Lio/appmetrica/analytics/impl/yc;
.super Lio/appmetrica/analytics/impl/f;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/zg;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/appmetrica/analytics/impl/f;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/zg;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final b(Lio/appmetrica/analytics/impl/e6;Lio/appmetrica/analytics/impl/G4;)V
    .locals 2

    .line 1
    iget-object v0, p2, Lio/appmetrica/analytics/impl/G4;->b:Lio/appmetrica/analytics/impl/F4;

    .line 2
    .line 3
    iget-object v0, v0, Lio/appmetrica/analytics/impl/F4;->b:Ljava/lang/Boolean;

    .line 4
    .line 5
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-static {v0, v1}, Lio/appmetrica/analytics/coreutils/internal/WrapUtils;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    sget-object v1, Lio/appmetrica/analytics/impl/za;->E:Lio/appmetrica/analytics/impl/za;

    .line 18
    .line 19
    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/za;->l()Lio/appmetrica/analytics/impl/Vb;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-interface {v1, v0}, Lio/appmetrica/analytics/impl/Yb;->a(Z)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p2, Lio/appmetrica/analytics/impl/G4;->b:Lio/appmetrica/analytics/impl/F4;

    .line 27
    .line 28
    iget-object v0, v0, Lio/appmetrica/analytics/impl/F4;->c:Landroid/location/Location;

    .line 29
    .line 30
    invoke-interface {v1, v0}, Lio/appmetrica/analytics/impl/Yb;->a(Landroid/location/Location;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p2, Lio/appmetrica/analytics/impl/G4;->b:Lio/appmetrica/analytics/impl/F4;

    .line 34
    .line 35
    iget-object v0, v0, Lio/appmetrica/analytics/impl/F4;->n:Ljava/lang/Boolean;

    .line 36
    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    sget-object v1, Lio/appmetrica/analytics/impl/za;->E:Lio/appmetrica/analytics/impl/za;

    .line 40
    .line 41
    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/za;->b()Lio/appmetrica/analytics/impl/O;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    invoke-virtual {v1, v0}, Lio/appmetrica/analytics/impl/O;->b(Z)V

    .line 50
    .line 51
    .line 52
    :cond_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/f;->b:Lio/appmetrica/analytics/impl/zg;

    .line 53
    .line 54
    invoke-virtual {v0, p1, p2}, Lio/appmetrica/analytics/impl/zg;->a(Lio/appmetrica/analytics/impl/e6;Lio/appmetrica/analytics/impl/G4;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method
