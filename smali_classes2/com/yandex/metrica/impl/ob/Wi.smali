.class public Lcom/yandex/metrica/impl/ob/Wi;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/yandex/metrica/impl/ob/If$u;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/If$u;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/If$u;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/yandex/metrica/impl/ob/Wi;->a:Lcom/yandex/metrica/impl/ob/If$u;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/Tl$a;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ui;
    .locals 8

    .line 1
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 p2, 0x0

    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    const-string v0, "cell"

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "refresh_period_seconds"

    .line 15
    .line 16
    const-string v2, "refresh_event_count"

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    new-instance v3, Lcom/yandex/metrica/impl/ob/ui$a;

    .line 21
    .line 22
    sget-object v4, Lcom/yandex/metrica/impl/ob/Wi;->a:Lcom/yandex/metrica/impl/ob/If$u;

    .line 23
    .line 24
    iget v5, v4, Lcom/yandex/metrica/impl/ob/If$u;->a:I

    .line 25
    .line 26
    invoke-virtual {v0, v2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    iget-wide v6, v4, Lcom/yandex/metrica/impl/ob/If$u;->b:J

    .line 31
    .line 32
    invoke-virtual {v0, v1, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 33
    .line 34
    .line 35
    move-result-wide v6

    .line 36
    invoke-direct {v3, v5, v6, v7}, Lcom/yandex/metrica/impl/ob/ui$a;-><init>(IJ)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    move-object v3, p2

    .line 41
    :goto_0
    const-string v0, "wifi"

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    if-eqz p1, :cond_1

    .line 48
    .line 49
    new-instance p2, Lcom/yandex/metrica/impl/ob/ui$a;

    .line 50
    .line 51
    sget-object v0, Lcom/yandex/metrica/impl/ob/Wi;->a:Lcom/yandex/metrica/impl/ob/If$u;

    .line 52
    .line 53
    iget v4, v0, Lcom/yandex/metrica/impl/ob/If$u;->a:I

    .line 54
    .line 55
    invoke-virtual {p1, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    iget-wide v4, v0, Lcom/yandex/metrica/impl/ob/If$u;->b:J

    .line 60
    .line 61
    invoke-virtual {p1, v1, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 62
    .line 63
    .line 64
    move-result-wide v0

    .line 65
    invoke-direct {p2, v2, v0, v1}, Lcom/yandex/metrica/impl/ob/ui$a;-><init>(IJ)V

    .line 66
    .line 67
    .line 68
    :cond_1
    new-instance p1, Lcom/yandex/metrica/impl/ob/ui;

    .line 69
    .line 70
    invoke-direct {p1, v3, p2}, Lcom/yandex/metrica/impl/ob/ui;-><init>(Lcom/yandex/metrica/impl/ob/ui$a;Lcom/yandex/metrica/impl/ob/ui$a;)V

    .line 71
    .line 72
    .line 73
    return-object p1

    .line 74
    :cond_2
    return-object p2
.end method
