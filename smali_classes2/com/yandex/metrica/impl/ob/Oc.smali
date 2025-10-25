.class public Lcom/yandex/metrica/impl/ob/Oc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/location/LocationManager;

.field private final b:Lcom/yandex/metrica/impl/ob/H2;

.field private final c:Lcom/yandex/metrica/impl/ob/Xj;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "location"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/location/LocationManager;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/Oc;->a:Landroid/location/LocationManager;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/H2;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/ob/H2;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Oc;->b:Lcom/yandex/metrica/impl/ob/H2;

    .line 19
    .line 20
    invoke-static {}, Lcom/yandex/metrica/impl/ob/F0;->g()Lcom/yandex/metrica/impl/ob/F0;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/F0;->v()Lcom/yandex/metrica/impl/ob/Xj;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Oc;->c:Lcom/yandex/metrica/impl/ob/Xj;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public a()Landroid/location/LocationManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Oc;->a:Landroid/location/LocationManager;

    .line 2
    .line 3
    return-object v0
.end method

.method public b()Lcom/yandex/metrica/impl/ob/Xj;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Oc;->c:Lcom/yandex/metrica/impl/ob/Xj;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()Lcom/yandex/metrica/impl/ob/H2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Oc;->b:Lcom/yandex/metrica/impl/ob/H2;

    .line 2
    .line 3
    return-object v0
.end method
