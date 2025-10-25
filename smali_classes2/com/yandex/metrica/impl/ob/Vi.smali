.class public final Lcom/yandex/metrica/impl/ob/Vi;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/Y9;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    new-instance v0, Lcom/yandex/metrica/impl/ob/Y9;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/Y9;-><init>()V

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/Vi;-><init>(Lcom/yandex/metrica/impl/ob/Y9;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/metrica/impl/ob/Y9;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Vi;->a:Lcom/yandex/metrica/impl/ob/Y9;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/metrica/impl/ob/Ui;Lorg/json/JSONObject;)V
    .locals 3

    .line 1
    const-string v0, "startup_update"

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    new-instance v0, Lcom/yandex/metrica/impl/ob/If$r;

    .line 8
    .line 9
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/If$r;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v1, "interval_seconds"

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-static {p2, v1, v2}, Lcom/yandex/metrica/impl/ob/Tl;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    if-eqz p2, :cond_0

    .line 20
    .line 21
    const-string v1, "it"

    .line 22
    .line 23
    invoke-static {p2, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    iput p2, v0, Lcom/yandex/metrica/impl/ob/If$r;->a:I

    .line 31
    .line 32
    :cond_0
    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/Vi;->a:Lcom/yandex/metrica/impl/ob/Y9;

    .line 33
    .line 34
    invoke-virtual {p2, v0}, Lcom/yandex/metrica/impl/ob/Y9;->a(Lcom/yandex/metrica/impl/ob/If$r;)Lcom/yandex/metrica/impl/ob/si;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-virtual {p1, p2}, Lcom/yandex/metrica/impl/ob/Ui;->a(Lcom/yandex/metrica/impl/ob/si;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method
