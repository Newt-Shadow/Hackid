.class public Lcom/yandex/metrica/impl/ob/zc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/Pc;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/Pc;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/zc;->a:Lcom/yandex/metrica/impl/ob/Pc;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/zc;->a:Lcom/yandex/metrica/impl/ob/Pc;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/Pc;->a(Landroid/location/Location;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
