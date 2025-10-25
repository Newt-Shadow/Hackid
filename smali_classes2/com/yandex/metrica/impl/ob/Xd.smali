.class public final Lcom/yandex/metrica/impl/ob/Xd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/W;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/metrica/impl/ob/W<",
        "Lcom/yandex/metrica/impl/ob/ee;",
        ">;"
    }
.end annotation


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
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    check-cast p1, Landroid/content/ContentValues;

    .line 2
    .line 3
    const-string v0, "tracking_id"

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v7, 0x0

    .line 14
    const/4 v8, 0x0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    new-array p1, v8, [Ljava/lang/Object;

    .line 18
    .line 19
    const-string v0, "Tracking id is empty"

    .line 20
    .line 21
    invoke-static {v0, p1}, Lcom/yandex/metrica/impl/ob/h2;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    :try_start_0
    const-string v0, "additional_params"

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    const-string p1, "No additional params"

    .line 38
    .line 39
    :try_start_1
    new-array v0, v8, [Ljava/lang/Object;

    .line 40
    .line 41
    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/ob/h2;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    new-instance v3, Lorg/json/JSONObject;

    .line 46
    .line 47
    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    .line 51
    .line 52
    .line 53
    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    if-nez p1, :cond_2

    .line 55
    .line 56
    const-string p1, "Additional params are empty"

    .line 57
    .line 58
    :try_start_2
    new-array v0, v8, [Ljava/lang/Object;

    .line 59
    .line 60
    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/ob/h2;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    const-string p1, "Successfully parsed preload info. Tracking id = %s, additionalParams = %s"

    .line 65
    .line 66
    :try_start_3
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-static {p1, v0}, Lcom/yandex/metrica/impl/ob/h2;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    new-instance p1, Lcom/yandex/metrica/impl/ob/ee;

    .line 74
    .line 75
    const/4 v4, 0x1

    .line 76
    const/4 v5, 0x0

    .line 77
    sget-object v6, Lcom/yandex/metrica/impl/ob/u0;->e:Lcom/yandex/metrica/impl/ob/u0;

    .line 78
    .line 79
    move-object v1, p1

    .line 80
    invoke-direct/range {v1 .. v6}, Lcom/yandex/metrica/impl/ob/ee;-><init>(Ljava/lang/String;Lorg/json/JSONObject;ZZLcom/yandex/metrica/impl/ob/u0;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 81
    .line 82
    .line 83
    move-object v7, p1

    .line 84
    goto :goto_0

    .line 85
    :catchall_0
    move-exception p1

    .line 86
    new-array v0, v8, [Ljava/lang/Object;

    .line 87
    .line 88
    const-string v1, "Could not parse additional parameters"

    .line 89
    .line 90
    invoke-static {p1, v1, v0}, Lcom/yandex/metrica/impl/ob/h2;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    :goto_0
    return-object v7
.end method
