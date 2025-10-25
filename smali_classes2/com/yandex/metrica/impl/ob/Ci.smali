.class Lcom/yandex/metrica/impl/ob/Ci;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/t9;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/t9;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/t9;-><init>()V

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/Ci;-><init>(Lcom/yandex/metrica/impl/ob/t9;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/t9;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Ci;->a:Lcom/yandex/metrica/impl/ob/t9;

    return-void
.end method


# virtual methods
.method a(Lcom/yandex/metrica/impl/ob/Ui;Lorg/json/JSONObject;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/Ci;->a:Lcom/yandex/metrica/impl/ob/t9;

    .line 2
    .line 3
    new-instance v1, Lcom/yandex/metrica/impl/ob/If$b;

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/yandex/metrica/impl/ob/If$b;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "auto_inapp_collecting"

    .line 9
    .line 10
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    iget v2, v1, Lcom/yandex/metrica/impl/ob/If$b;->a:I

    .line 17
    .line 18
    const-string v3, "send_frequency_seconds"

    .line 19
    .line 20
    invoke-virtual {p2, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    iput v2, v1, Lcom/yandex/metrica/impl/ob/If$b;->a:I

    .line 25
    .line 26
    iget v2, v1, Lcom/yandex/metrica/impl/ob/If$b;->b:I

    .line 27
    .line 28
    const-string v3, "first_collecting_inapp_max_age_seconds"

    .line 29
    .line 30
    invoke-virtual {p2, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    iput p2, v1, Lcom/yandex/metrica/impl/ob/If$b;->b:I

    .line 35
    .line 36
    :cond_0
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/ob/t9;->a(Lcom/yandex/metrica/impl/ob/If$b;)Lcom/yandex/metrica/impl/ob/i;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-virtual {p1, p2}, Lcom/yandex/metrica/impl/ob/Ui;->a(Lcom/yandex/metrica/impl/ob/i;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method
