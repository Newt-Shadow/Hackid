.class public final Lcom/android/billingclient/api/i$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/android/billingclient/api/i$c;

.field private final e:Ljava/util/List;

.field private final f:Lcom/android/billingclient/api/o0;

.field private final g:Lcom/android/billingclient/api/u0;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "basePlanId"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/android/billingclient/api/i$d;->a:Ljava/lang/String;

    .line 11
    .line 12
    const-string v0, "offerId"

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/4 v2, 0x0

    .line 23
    const/4 v3, 0x1

    .line 24
    if-ne v3, v1, :cond_0

    .line 25
    .line 26
    move-object v0, v2

    .line 27
    :cond_0
    iput-object v0, p0, Lcom/android/billingclient/api/i$d;->b:Ljava/lang/String;

    .line 28
    .line 29
    const-string v0, "offerIdToken"

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/android/billingclient/api/i$d;->c:Ljava/lang/String;

    .line 36
    .line 37
    new-instance v0, Lcom/android/billingclient/api/i$c;

    .line 38
    .line 39
    const-string v1, "pricingPhases"

    .line 40
    .line 41
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-direct {v0, v1}, Lcom/android/billingclient/api/i$c;-><init>(Lorg/json/JSONArray;)V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, Lcom/android/billingclient/api/i$d;->d:Lcom/android/billingclient/api/i$c;

    .line 49
    .line 50
    const-string v0, "installmentPlanDetails"

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    if-nez v0, :cond_1

    .line 57
    .line 58
    move-object v1, v2

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    new-instance v1, Lcom/android/billingclient/api/o0;

    .line 61
    .line 62
    invoke-direct {v1, v0}, Lcom/android/billingclient/api/o0;-><init>(Lorg/json/JSONObject;)V

    .line 63
    .line 64
    .line 65
    :goto_0
    iput-object v1, p0, Lcom/android/billingclient/api/i$d;->f:Lcom/android/billingclient/api/o0;

    .line 66
    .line 67
    const-string v0, "transitionPlanDetails"

    .line 68
    .line 69
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    if-nez v0, :cond_2

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_2
    new-instance v2, Lcom/android/billingclient/api/u0;

    .line 77
    .line 78
    invoke-direct {v2, v0}, Lcom/android/billingclient/api/u0;-><init>(Lorg/json/JSONObject;)V

    .line 79
    .line 80
    .line 81
    :goto_1
    iput-object v2, p0, Lcom/android/billingclient/api/i$d;->g:Lcom/android/billingclient/api/u0;

    .line 82
    .line 83
    new-instance v0, Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .line 87
    .line 88
    const-string v1, "offerTags"

    .line 89
    .line 90
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    if-eqz p1, :cond_3

    .line 95
    .line 96
    const/4 v1, 0x0

    .line 97
    :goto_2
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    if-ge v1, v2, :cond_3

    .line 102
    .line 103
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    add-int/lit8 v1, v1, 0x1

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_3
    iput-object v0, p0, Lcom/android/billingclient/api/i$d;->e:Ljava/util/List;

    .line 114
    .line 115
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/i$d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/i$d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/i$d;->e:Ljava/util/List;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/i$d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e()Lcom/android/billingclient/api/i$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/i$d;->d:Lcom/android/billingclient/api/i$c;

    return-object v0
.end method
