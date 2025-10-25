.class final Lio/flutter/plugins/inapppurchase/BillingClientFactoryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/plugins/inapppurchase/BillingClientFactory;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lio/flutter/plugins/inapppurchase/BillingClientFactoryImpl;Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseCallbackApi;Lcom/android/billingclient/api/l;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/flutter/plugins/inapppurchase/BillingClientFactoryImpl;->lambda$createUserChoiceBillingListener$0(Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseCallbackApi;Lcom/android/billingclient/api/l;)V

    return-void
.end method

.method private synthetic lambda$createUserChoiceBillingListener$0(Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseCallbackApi;Lcom/android/billingclient/api/l;)V
    .locals 1

    .line 1
    invoke-static {p2}, Lio/flutter/plugins/inapppurchase/Translator;->fromUserChoiceDetails(Lcom/android/billingclient/api/l;)Lio/flutter/plugins/inapppurchase/Messages$PlatformUserChoiceDetails;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    new-instance v0, Lio/flutter/plugins/inapppurchase/BillingClientFactoryImpl$1;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lio/flutter/plugins/inapppurchase/BillingClientFactoryImpl$1;-><init>(Lio/flutter/plugins/inapppurchase/BillingClientFactoryImpl;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p2, v0}, Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseCallbackApi;->userSelectedalternativeBilling(Lio/flutter/plugins/inapppurchase/Messages$PlatformUserChoiceDetails;Lio/flutter/plugins/inapppurchase/Messages$VoidResult;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public createBillingClient(Landroid/content/Context;Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseCallbackApi;Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingChoiceMode;)Lcom/android/billingclient/api/d;
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/android/billingclient/api/d;->j(Landroid/content/Context;)Lcom/android/billingclient/api/d$a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/android/billingclient/api/d$a;->c()Lcom/android/billingclient/api/d$a;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    sget-object v0, Lio/flutter/plugins/inapppurchase/BillingClientFactoryImpl$2;->$SwitchMap$io$flutter$plugins$inapppurchase$Messages$PlatformBillingChoiceMode:[I

    .line 10
    .line 11
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    aget v0, v0, v1

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    if-eq v0, v1, :cond_1

    .line 19
    .line 20
    const/4 v1, 0x2

    .line 21
    if-eq v0, v1, :cond_0

    .line 22
    .line 23
    const/4 v1, 0x3

    .line 24
    if-eq v0, v1, :cond_2

    .line 25
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v1, "Unknown BillingChoiceMode "

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string p3, ", Defaulting to PLAY_BILLING_ONLY"

    .line 40
    .line 41
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p3

    .line 48
    const-string v0, "BillingClientFactoryImpl"

    .line 49
    .line 50
    invoke-static {v0, p3}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {p0, p2}, Lio/flutter/plugins/inapppurchase/BillingClientFactoryImpl;->createUserChoiceBillingListener(Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseCallbackApi;)Lc2/s;

    .line 55
    .line 56
    .line 57
    move-result-object p3

    .line 58
    invoke-virtual {p1, p3}, Lcom/android/billingclient/api/d$a;->d(Lc2/s;)Lcom/android/billingclient/api/d$a;

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {p1}, Lcom/android/billingclient/api/d$a;->b()Lcom/android/billingclient/api/d$a;

    .line 63
    .line 64
    .line 65
    :cond_2
    :goto_0
    new-instance p3, Lio/flutter/plugins/inapppurchase/PluginPurchaseListener;

    .line 66
    .line 67
    invoke-direct {p3, p2}, Lio/flutter/plugins/inapppurchase/PluginPurchaseListener;-><init>(Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseCallbackApi;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, p3}, Lcom/android/billingclient/api/d$a;->e(Lc2/o;)Lcom/android/billingclient/api/d$a;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p1}, Lcom/android/billingclient/api/d$a;->a()Lcom/android/billingclient/api/d;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    return-object p1
.end method

.method createUserChoiceBillingListener(Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseCallbackApi;)Lc2/s;
    .locals 1

    .line 1
    new-instance v0, Lio/flutter/plugins/inapppurchase/a;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lio/flutter/plugins/inapppurchase/a;-><init>(Lio/flutter/plugins/inapppurchase/BillingClientFactoryImpl;Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseCallbackApi;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
