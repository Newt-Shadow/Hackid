.class public Lcom/yandex/metrica/impl/ob/i1;
.super Lcom/yandex/metrica/impl/ob/y2;
.source "SourceFile"


# instance fields
.field private final c:Lcom/yandex/metrica/j;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/O0;Lcom/yandex/metrica/j;)V
    .locals 1

    .line 1
    iget-object v0, p2, Lcom/yandex/metrica/YandexMetricaConfig;->apiKey:Ljava/lang/String;

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/yandex/metrica/impl/ob/y2;-><init>(Lcom/yandex/metrica/impl/ob/O0;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/i1;->c:Lcom/yandex/metrica/j;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/ob/R0;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/y2;->b:Lcom/yandex/metrica/impl/ob/O0;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/yandex/metrica/impl/ob/O0;->b()Lcom/yandex/metrica/impl/ob/N0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/i1;->c:Lcom/yandex/metrica/j;

    .line 8
    .line 9
    invoke-interface {v0, v1}, Lcom/yandex/metrica/impl/ob/N0;->a(Lcom/yandex/metrica/j;)Lcom/yandex/metrica/impl/ob/R0;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method
