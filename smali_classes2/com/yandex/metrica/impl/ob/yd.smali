.class public Lcom/yandex/metrica/impl/ob/yd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/yandex/metrica/impl/ob/wd;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/wd;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/yd;->a:Lcom/yandex/metrica/impl/ob/wd;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/wd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/yd;->a:Lcom/yandex/metrica/impl/ob/wd;

    return-void
.end method

.method public a(Landroid/content/Context;)Z
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/yd;->a:Lcom/yandex/metrica/impl/ob/wd;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 3
    invoke-interface {v0, v1}, Lcom/yandex/metrica/impl/ob/wd;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1, v1}, Lcom/yandex/metrica/impl/ob/vd;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public b(Landroid/content/Context;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/yd;->a:Lcom/yandex/metrica/impl/ob/wd;

    .line 2
    .line 3
    const-string v1, "android.permission.READ_PHONE_STATE"

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lcom/yandex/metrica/impl/ob/wd;->a(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-static {p1, v1}, Lcom/yandex/metrica/impl/ob/vd;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    :goto_0
    return p1
.end method

.method public c(Landroid/content/Context;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/yd;->a:Lcom/yandex/metrica/impl/ob/wd;

    .line 2
    .line 3
    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lcom/yandex/metrica/impl/ob/wd;->a(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-static {p1, v1}, Lcom/yandex/metrica/impl/ob/vd;->a(Landroid/content/Context;Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    :goto_0
    return p1
.end method
