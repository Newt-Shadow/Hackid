.class public final Lcom/android/billingclient/api/u0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Lcom/android/billingclient/api/i$b;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "productId"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/android/billingclient/api/u0;->a:Ljava/lang/String;

    .line 11
    .line 12
    const-string v0, "title"

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/android/billingclient/api/u0;->b:Ljava/lang/String;

    .line 19
    .line 20
    const-string v0, "name"

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/android/billingclient/api/u0;->c:Ljava/lang/String;

    .line 27
    .line 28
    const-string v0, "description"

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Lcom/android/billingclient/api/u0;->d:Ljava/lang/String;

    .line 35
    .line 36
    const-string v0, "basePlanId"

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iput-object v0, p0, Lcom/android/billingclient/api/u0;->e:Ljava/lang/String;

    .line 43
    .line 44
    const-string v0, "pricingPhase"

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    if-nez p1, :cond_0

    .line 51
    .line 52
    const/4 p1, 0x0

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    new-instance v0, Lcom/android/billingclient/api/i$b;

    .line 55
    .line 56
    invoke-direct {v0, p1}, Lcom/android/billingclient/api/i$b;-><init>(Lorg/json/JSONObject;)V

    .line 57
    .line 58
    .line 59
    move-object p1, v0

    .line 60
    :goto_0
    iput-object p1, p0, Lcom/android/billingclient/api/u0;->f:Lcom/android/billingclient/api/i$b;

    .line 61
    .line 62
    return-void
.end method
