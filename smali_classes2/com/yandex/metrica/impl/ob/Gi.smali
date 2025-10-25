.class public final Lcom/yandex/metrica/impl/ob/Gi;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/C9;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    new-instance v0, Lcom/yandex/metrica/impl/ob/C9;

    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/C9;-><init>()V

    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/Gi;-><init>(Lcom/yandex/metrica/impl/ob/C9;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/metrica/impl/ob/C9;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/Gi;->a:Lcom/yandex/metrica/impl/ob/C9;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/metrica/impl/ob/Ui;Lorg/json/JSONObject;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/If$h;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/If$h;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "egress"

    .line 7
    .line 8
    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    iget-object v1, v0, Lcom/yandex/metrica/impl/ob/If$h;->a:Ljava/lang/String;

    .line 15
    .line 16
    const-string v2, "url"

    .line 17
    .line 18
    invoke-virtual {p2, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/If$h;->a:Ljava/lang/String;

    .line 23
    .line 24
    iget v1, v0, Lcom/yandex/metrica/impl/ob/If$h;->b:I

    .line 25
    .line 26
    const-string v2, "repeated_delay"

    .line 27
    .line 28
    invoke-virtual {p2, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    iput v1, v0, Lcom/yandex/metrica/impl/ob/If$h;->b:I

    .line 33
    .line 34
    iget v1, v0, Lcom/yandex/metrica/impl/ob/If$h;->c:I

    .line 35
    .line 36
    const-string v2, "random_delay_window"

    .line 37
    .line 38
    invoke-virtual {p2, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    iput v1, v0, Lcom/yandex/metrica/impl/ob/If$h;->c:I

    .line 43
    .line 44
    iget-boolean v1, v0, Lcom/yandex/metrica/impl/ob/If$h;->d:Z

    .line 45
    .line 46
    const-string v2, "background_allowed"

    .line 47
    .line 48
    invoke-virtual {p2, v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    iput-boolean v1, v0, Lcom/yandex/metrica/impl/ob/If$h;->d:Z

    .line 53
    .line 54
    iget-boolean v1, v0, Lcom/yandex/metrica/impl/ob/If$h;->e:Z

    .line 55
    .line 56
    const-string v2, "diagnostic_enabled"

    .line 57
    .line 58
    invoke-virtual {p2, v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 59
    .line 60
    .line 61
    move-result p2

    .line 62
    iput-boolean p2, v0, Lcom/yandex/metrica/impl/ob/If$h;->e:Z

    .line 63
    .line 64
    :cond_0
    iget-object p2, p0, Lcom/yandex/metrica/impl/ob/Gi;->a:Lcom/yandex/metrica/impl/ob/C9;

    .line 65
    .line 66
    invoke-virtual {p2, v0}, Lcom/yandex/metrica/impl/ob/C9;->a(Lcom/yandex/metrica/impl/ob/If$h;)Lcom/yandex/metrica/impl/ob/Uh;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    invoke-virtual {p1, p2}, Lcom/yandex/metrica/impl/ob/Ui;->a(Lcom/yandex/metrica/impl/ob/Uh;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method
