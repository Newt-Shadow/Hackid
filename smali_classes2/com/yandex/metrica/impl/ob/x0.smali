.class public Lcom/yandex/metrica/impl/ob/x0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/yandex/metrica/impl/ob/am;

.field private b:Lcom/yandex/metrica/impl/ob/bn;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/bn;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/yandex/metrica/impl/ob/am;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/am;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/x0;->a:Lcom/yandex/metrica/impl/ob/am;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/x0;->b:Lcom/yandex/metrica/impl/ob/bn;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/x0;->a:Lcom/yandex/metrica/impl/ob/am;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/x0;->a:Lcom/yandex/metrica/impl/ob/am;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/x0;->b:Lcom/yandex/metrica/impl/ob/bn;

    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/x0;->a:Lcom/yandex/metrica/impl/ob/am;

    invoke-virtual {v0, v1, p1, p2}, Lcom/yandex/metrica/impl/ob/bn;->b(Lcom/yandex/metrica/impl/ob/am;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
