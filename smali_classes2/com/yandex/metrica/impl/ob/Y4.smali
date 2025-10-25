.class public Lcom/yandex/metrica/impl/ob/Y4;
.super Lcom/yandex/metrica/impl/ob/X4;
.source "SourceFile"


# instance fields
.field private final b:Lcom/yandex/metrica/IReporter;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/L3;Lcom/yandex/metrica/IReporter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/X4;-><init>(Lcom/yandex/metrica/impl/ob/L3;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/Y4;->b:Lcom/yandex/metrica/IReporter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/c0;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/c0;->o()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/r6;->a(I)Lcom/yandex/metrica/impl/ob/r6;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    new-instance v0, Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v1, p1, Lcom/yandex/metrica/impl/ob/r6;->a:Ljava/lang/String;

    .line 15
    .line 16
    const-string v2, "type"

    .line 17
    .line 18
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/r6;->b:Ljava/lang/String;

    .line 22
    .line 23
    const-string v1, "delivery_method"

    .line 24
    .line 25
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/Y4;->b:Lcom/yandex/metrica/IReporter;

    .line 29
    .line 30
    const-string v1, "crash_saved"

    .line 31
    .line 32
    invoke-interface {p1, v1, v0}, Lcom/yandex/metrica/IReporter;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 33
    .line 34
    .line 35
    const/4 p1, 0x0

    .line 36
    return p1
.end method
