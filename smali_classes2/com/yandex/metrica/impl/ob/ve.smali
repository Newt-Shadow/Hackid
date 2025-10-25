.class public Lcom/yandex/metrica/impl/ob/ve;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/ze;


# direct methods
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
.method public a(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/qf$d$a$c;
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/qf$d$a$c;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/qf$d$a$c;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    iput p1, v0, Lcom/yandex/metrica/impl/ob/qf$d$a$c;->c:I

    .line 13
    .line 14
    :cond_0
    if-eqz p2, :cond_1

    .line 15
    .line 16
    iput-object p2, v0, Lcom/yandex/metrica/impl/ob/qf$d$a$c;->d:Ljava/lang/String;

    .line 17
    .line 18
    :cond_1
    const/4 p1, 0x0

    .line 19
    :try_start_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    if-nez p2, :cond_2

    .line 24
    .line 25
    new-instance p2, Lorg/json/JSONArray;

    .line 26
    .line 27
    invoke-direct {p2, p4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-static {p2}, Lcom/yandex/metrica/impl/ob/J1;->b(Lorg/json/JSONArray;)[Lcom/yandex/metrica/impl/ob/of;

    .line 31
    .line 32
    .line 33
    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    :try_start_1
    new-instance p2, Lorg/json/JSONObject;

    .line 36
    .line 37
    invoke-direct {p2, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const/4 p4, 0x1

    .line 41
    new-array p4, p4, [Lcom/yandex/metrica/impl/ob/of;

    .line 42
    .line 43
    invoke-static {p2}, Lcom/yandex/metrica/impl/ob/J1;->b(Lorg/json/JSONObject;)Lcom/yandex/metrica/impl/ob/of;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    aput-object p2, p4, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :catchall_1
    :cond_2
    const/4 p2, 0x0

    .line 51
    :goto_0
    move-object p4, p2

    .line 52
    :goto_1
    if-eqz p4, :cond_3

    .line 53
    .line 54
    iput-object p4, v0, Lcom/yandex/metrica/impl/ob/qf$d$a$c;->a:[Lcom/yandex/metrica/impl/ob/of;

    .line 55
    .line 56
    :cond_3
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    if-nez p2, :cond_4

    .line 61
    .line 62
    new-array p1, p1, [Lcom/yandex/metrica/impl/ob/rf;

    .line 63
    .line 64
    :try_start_2
    new-instance p2, Lorg/json/JSONArray;

    .line 65
    .line 66
    invoke-direct {p2, p3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-static {p2}, Lcom/yandex/metrica/impl/ob/J1;->a(Lorg/json/JSONArray;)[Lcom/yandex/metrica/impl/ob/rf;

    .line 70
    .line 71
    .line 72
    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 73
    :catchall_2
    iput-object p1, v0, Lcom/yandex/metrica/impl/ob/qf$d$a$c;->b:[Lcom/yandex/metrica/impl/ob/rf;

    .line 74
    .line 75
    :cond_4
    return-object v0
.end method
