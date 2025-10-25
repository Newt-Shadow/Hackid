.class Lcom/yandex/metrica/impl/ob/Tc;
.super Lcom/yandex/metrica/impl/ob/Dc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/metrica/impl/ob/Dc<",
        "Lcom/yandex/metrica/impl/ob/Xb;",
        ">;"
    }
.end annotation


# instance fields
.field private final f:Landroid/location/LocationManager;

.field private final g:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/location/LocationManager;Lcom/yandex/metrica/impl/ob/zd;Ljava/lang/String;Landroid/location/LocationListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p6, p4, p2}, Lcom/yandex/metrica/impl/ob/Dc;-><init>(Landroid/content/Context;Landroid/location/LocationListener;Lcom/yandex/metrica/impl/ob/zd;Landroid/os/Looper;)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/Tc;->f:Landroid/location/LocationManager;

    .line 5
    .line 6
    iput-object p5, p0, Lcom/yandex/metrica/impl/ob/Tc;->g:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/Tc;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/Tc;->g:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Tc;->f:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Dc;->c:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 0

    .line 2
    check-cast p1, Lcom/yandex/metrica/impl/ob/Xb;

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/Tc;->c()Z

    move-result p1

    return p1
.end method

.method public b()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Dc;->b:Lcom/yandex/metrica/impl/ob/zd;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Dc;->a:Landroid/content/Context;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lcom/yandex/metrica/impl/ob/zd;->a(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Tc;->f:Landroid/location/LocationManager;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    :try_start_0
    invoke-static {p0}, Lcom/yandex/metrica/impl/ob/Tc;->a(Lcom/yandex/metrica/impl/ob/Tc;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    .line 20
    .line 21
    .line 22
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    :cond_0
    const/4 v0, 0x0

    .line 25
    :goto_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Dc;->c:Landroid/location/LocationListener;

    .line 26
    .line 27
    invoke-interface {v1, v0}, Landroid/location/LocationListener;->onLocationChanged(Landroid/location/Location;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void
.end method

.method public c()Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Dc;->b:Lcom/yandex/metrica/impl/ob/zd;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/Dc;->a:Landroid/content/Context;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lcom/yandex/metrica/impl/ob/zd;->a(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/Tc;->g:Ljava/lang/String;

    .line 13
    .line 14
    const/4 v6, 0x0

    .line 15
    sget-wide v4, Lcom/yandex/metrica/impl/ob/Dc;->e:J

    .line 16
    .line 17
    iget-object v7, p0, Lcom/yandex/metrica/impl/ob/Dc;->c:Landroid/location/LocationListener;

    .line 18
    .line 19
    iget-object v8, p0, Lcom/yandex/metrica/impl/ob/Dc;->d:Landroid/os/Looper;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Tc;->f:Landroid/location/LocationManager;

    .line 22
    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    :try_start_0
    invoke-virtual/range {v2 .. v8}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    :catchall_0
    :cond_0
    return v1
.end method
