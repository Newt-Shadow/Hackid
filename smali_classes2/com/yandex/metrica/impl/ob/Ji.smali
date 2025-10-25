.class public Lcom/yandex/metrica/impl/ob/Ji;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/J9;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/J9;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/J9;-><init>()V

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/Ji;-><init>(Lcom/yandex/metrica/impl/ob/J9;)V

    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/impl/ob/J9;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Ji;->a:Lcom/yandex/metrica/impl/ob/J9;

    return-void
.end method


# virtual methods
.method a(Lcom/yandex/metrica/impl/ob/Ui;Lcom/yandex/metrica/impl/ob/Tl$a;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Ui;->e()Lcom/yandex/metrica/impl/ob/Sh;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-boolean v0, v0, Lcom/yandex/metrica/impl/ob/Sh;->f:Z

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    new-instance v0, Lcom/yandex/metrica/impl/ob/If$j;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/If$j;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v1, "identity_light_collecting"

    .line 15
    .line 16
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    if-eqz p2, :cond_0

    .line 21
    .line 22
    iget-wide v1, v0, Lcom/yandex/metrica/impl/ob/If$j;->a:J

    .line 23
    .line 24
    const-string v3, "min_interval_seconds"

    .line 25
    .line 26
    invoke-virtual {p2, v3, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 27
    .line 28
    .line 29
    move-result-wide v1

    .line 30
    iput-wide v1, v0, Lcom/yandex/metrica/impl/ob/If$j;->a:J

    .line 31
    .line 32
    :cond_0
    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/Ji;->a:Lcom/yandex/metrica/impl/ob/J9;

    .line 33
    .line 34
    invoke-virtual {p2, v0}, Lcom/yandex/metrica/impl/ob/J9;->a(Lcom/yandex/metrica/impl/ob/If$j;)Lcom/yandex/metrica/impl/ob/Zh;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-virtual {p1, p2}, Lcom/yandex/metrica/impl/ob/Ui;->a(Lcom/yandex/metrica/impl/ob/Zh;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    return-void
.end method
