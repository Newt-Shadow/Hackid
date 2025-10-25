.class public abstract synthetic Lcom/yandex/metrica/impl/ob/jo;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a(Landroid/location/Location;)F
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/location/Location;->getVerticalAccuracyMeters()F

    move-result p0

    return p0
.end method
