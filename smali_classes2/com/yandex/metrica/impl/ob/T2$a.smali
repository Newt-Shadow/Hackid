.class Lcom/yandex/metrica/impl/ob/T2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/IIdentifierCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/ob/T2;->a(Lcom/yandex/metrica/AppMetricaDeviceIDListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/AppMetricaDeviceIDListener;

.field final synthetic b:Lcom/yandex/metrica/impl/ob/T2;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/T2;Lcom/yandex/metrica/AppMetricaDeviceIDListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/T2$a;->b:Lcom/yandex/metrica/impl/ob/T2;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/T2$a;->a:Lcom/yandex/metrica/AppMetricaDeviceIDListener;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onReceive(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/T2$a;->b:Lcom/yandex/metrica/impl/ob/T2;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/ob/T2;->a(Lcom/yandex/metrica/impl/ob/T2;Lcom/yandex/metrica/IIdentifierCallback;)Lcom/yandex/metrica/IIdentifierCallback;

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/T2$a;->a:Lcom/yandex/metrica/AppMetricaDeviceIDListener;

    .line 8
    .line 9
    const-string v1, "appmetrica_device_id_hash"

    .line 10
    .line 11
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Ljava/lang/String;

    .line 16
    .line 17
    invoke-interface {v0, p1}, Lcom/yandex/metrica/AppMetricaDeviceIDListener;->onLoaded(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public onRequestError(Lcom/yandex/metrica/IIdentifierCallback$Reason;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/T2$a;->b:Lcom/yandex/metrica/impl/ob/T2;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/ob/T2;->a(Lcom/yandex/metrica/impl/ob/T2;Lcom/yandex/metrica/IIdentifierCallback;)Lcom/yandex/metrica/IIdentifierCallback;

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/T2$a;->a:Lcom/yandex/metrica/AppMetricaDeviceIDListener;

    .line 8
    .line 9
    invoke-static {}, Lcom/yandex/metrica/impl/ob/T2;->e()Ljava/util/EnumMap;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lcom/yandex/metrica/AppMetricaDeviceIDListener$Reason;

    .line 18
    .line 19
    invoke-interface {v0, p1}, Lcom/yandex/metrica/AppMetricaDeviceIDListener;->onError(Lcom/yandex/metrica/AppMetricaDeviceIDListener$Reason;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
