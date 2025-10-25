.class public Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseCallbackApi;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/inapppurchase/Messages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InAppPurchaseCallbackApi"
.end annotation


# instance fields
.field private final binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

.field private final messageChannelSuffix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/flutter/plugin/common/BinaryMessenger;)V
    .locals 1

    const-string v0, ""

    .line 1
    invoke-direct {p0, p1, v0}, Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseCallbackApi;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseCallbackApi;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 4
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseCallbackApi;->messageChannelSuffix:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lio/flutter/plugins/inapppurchase/Messages$VoidResult;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseCallbackApi;->lambda$userSelectedalternativeBilling$2(Lio/flutter/plugins/inapppurchase/Messages$VoidResult;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic b(Lio/flutter/plugins/inapppurchase/Messages$VoidResult;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseCallbackApi;->lambda$onPurchasesUpdated$1(Lio/flutter/plugins/inapppurchase/Messages$VoidResult;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic c(Lio/flutter/plugins/inapppurchase/Messages$VoidResult;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseCallbackApi;->lambda$onBillingServiceDisconnected$0(Lio/flutter/plugins/inapppurchase/Messages$VoidResult;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static getCodec()Lio/flutter/plugin/common/MessageCodec;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/flutter/plugin/common/MessageCodec<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/flutter/plugins/inapppurchase/Messages$PigeonCodec;->INSTANCE:Lio/flutter/plugins/inapppurchase/Messages$PigeonCodec;

    .line 2
    .line 3
    return-object v0
.end method

.method private static synthetic lambda$onBillingServiceDisconnected$0(Lio/flutter/plugins/inapppurchase/Messages$VoidResult;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .line 1
    instance-of v0, p2, Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    check-cast p2, Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const/4 v0, 0x1

    .line 12
    if-le p1, v0, :cond_0

    .line 13
    .line 14
    new-instance p1, Lio/flutter/plugins/inapppurchase/Messages$FlutterError;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/lang/String;

    .line 22
    .line 23
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Ljava/lang/String;

    .line 28
    .line 29
    const/4 v2, 0x2

    .line 30
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-direct {p1, v1, v0, p2}, Lio/flutter/plugins/inapppurchase/Messages$FlutterError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-interface {p0, p1}, Lio/flutter/plugins/inapppurchase/Messages$VoidResult;->error(Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-interface {p0}, Lio/flutter/plugins/inapppurchase/Messages$VoidResult;->success()V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-static {p1}, Lio/flutter/plugins/inapppurchase/Messages;->createConnectionError(Ljava/lang/String;)Lio/flutter/plugins/inapppurchase/Messages$FlutterError;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-interface {p0, p1}, Lio/flutter/plugins/inapppurchase/Messages$VoidResult;->error(Ljava/lang/Throwable;)V

    .line 50
    .line 51
    .line 52
    :goto_0
    return-void
.end method

.method private static synthetic lambda$onPurchasesUpdated$1(Lio/flutter/plugins/inapppurchase/Messages$VoidResult;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .line 1
    instance-of v0, p2, Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    check-cast p2, Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const/4 v0, 0x1

    .line 12
    if-le p1, v0, :cond_0

    .line 13
    .line 14
    new-instance p1, Lio/flutter/plugins/inapppurchase/Messages$FlutterError;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/lang/String;

    .line 22
    .line 23
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Ljava/lang/String;

    .line 28
    .line 29
    const/4 v2, 0x2

    .line 30
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-direct {p1, v1, v0, p2}, Lio/flutter/plugins/inapppurchase/Messages$FlutterError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-interface {p0, p1}, Lio/flutter/plugins/inapppurchase/Messages$VoidResult;->error(Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-interface {p0}, Lio/flutter/plugins/inapppurchase/Messages$VoidResult;->success()V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-static {p1}, Lio/flutter/plugins/inapppurchase/Messages;->createConnectionError(Ljava/lang/String;)Lio/flutter/plugins/inapppurchase/Messages$FlutterError;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-interface {p0, p1}, Lio/flutter/plugins/inapppurchase/Messages$VoidResult;->error(Ljava/lang/Throwable;)V

    .line 50
    .line 51
    .line 52
    :goto_0
    return-void
.end method

.method private static synthetic lambda$userSelectedalternativeBilling$2(Lio/flutter/plugins/inapppurchase/Messages$VoidResult;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .line 1
    instance-of v0, p2, Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    check-cast p2, Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const/4 v0, 0x1

    .line 12
    if-le p1, v0, :cond_0

    .line 13
    .line 14
    new-instance p1, Lio/flutter/plugins/inapppurchase/Messages$FlutterError;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/lang/String;

    .line 22
    .line 23
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Ljava/lang/String;

    .line 28
    .line 29
    const/4 v2, 0x2

    .line 30
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-direct {p1, v1, v0, p2}, Lio/flutter/plugins/inapppurchase/Messages$FlutterError;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-interface {p0, p1}, Lio/flutter/plugins/inapppurchase/Messages$VoidResult;->error(Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-interface {p0}, Lio/flutter/plugins/inapppurchase/Messages$VoidResult;->success()V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-static {p1}, Lio/flutter/plugins/inapppurchase/Messages;->createConnectionError(Ljava/lang/String;)Lio/flutter/plugins/inapppurchase/Messages$FlutterError;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-interface {p0, p1}, Lio/flutter/plugins/inapppurchase/Messages$VoidResult;->error(Ljava/lang/Throwable;)V

    .line 50
    .line 51
    .line 52
    :goto_0
    return-void
.end method


# virtual methods
.method public onBillingServiceDisconnected(Ljava/lang/Long;Lio/flutter/plugins/inapppurchase/Messages$VoidResult;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "dev.flutter.pigeon.in_app_purchase_android.InAppPurchaseCallbackApi.onBillingServiceDisconnected"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseCallbackApi;->messageChannelSuffix:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    new-instance v1, Lio/flutter/plugin/common/BasicMessageChannel;

    .line 21
    .line 22
    iget-object v2, p0, Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseCallbackApi;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 23
    .line 24
    invoke-static {}, Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseCallbackApi;->getCodec()Lio/flutter/plugin/common/MessageCodec;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-direct {v1, v2, v0, v3}, Lio/flutter/plugin/common/BasicMessageChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MessageCodec;)V

    .line 29
    .line 30
    .line 31
    new-instance v2, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 38
    .line 39
    .line 40
    new-instance p1, Lio/flutter/plugins/inapppurchase/s;

    .line 41
    .line 42
    invoke-direct {p1, p2, v0}, Lio/flutter/plugins/inapppurchase/s;-><init>(Lio/flutter/plugins/inapppurchase/Messages$VoidResult;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2, p1}, Lio/flutter/plugin/common/BasicMessageChannel;->send(Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public onPurchasesUpdated(Lio/flutter/plugins/inapppurchase/Messages$PlatformPurchasesResponse;Lio/flutter/plugins/inapppurchase/Messages$VoidResult;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "dev.flutter.pigeon.in_app_purchase_android.InAppPurchaseCallbackApi.onPurchasesUpdated"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseCallbackApi;->messageChannelSuffix:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    new-instance v1, Lio/flutter/plugin/common/BasicMessageChannel;

    .line 21
    .line 22
    iget-object v2, p0, Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseCallbackApi;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 23
    .line 24
    invoke-static {}, Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseCallbackApi;->getCodec()Lio/flutter/plugin/common/MessageCodec;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-direct {v1, v2, v0, v3}, Lio/flutter/plugin/common/BasicMessageChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MessageCodec;)V

    .line 29
    .line 30
    .line 31
    new-instance v2, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 38
    .line 39
    .line 40
    new-instance p1, Lio/flutter/plugins/inapppurchase/p;

    .line 41
    .line 42
    invoke-direct {p1, p2, v0}, Lio/flutter/plugins/inapppurchase/p;-><init>(Lio/flutter/plugins/inapppurchase/Messages$VoidResult;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2, p1}, Lio/flutter/plugin/common/BasicMessageChannel;->send(Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public userSelectedalternativeBilling(Lio/flutter/plugins/inapppurchase/Messages$PlatformUserChoiceDetails;Lio/flutter/plugins/inapppurchase/Messages$VoidResult;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "dev.flutter.pigeon.in_app_purchase_android.InAppPurchaseCallbackApi.userSelectedalternativeBilling"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseCallbackApi;->messageChannelSuffix:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    new-instance v1, Lio/flutter/plugin/common/BasicMessageChannel;

    .line 21
    .line 22
    iget-object v2, p0, Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseCallbackApi;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 23
    .line 24
    invoke-static {}, Lio/flutter/plugins/inapppurchase/Messages$InAppPurchaseCallbackApi;->getCodec()Lio/flutter/plugin/common/MessageCodec;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-direct {v1, v2, v0, v3}, Lio/flutter/plugin/common/BasicMessageChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MessageCodec;)V

    .line 29
    .line 30
    .line 31
    new-instance v2, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 38
    .line 39
    .line 40
    new-instance p1, Lio/flutter/plugins/inapppurchase/q;

    .line 41
    .line 42
    invoke-direct {p1, p2, v0}, Lio/flutter/plugins/inapppurchase/q;-><init>(Lio/flutter/plugins/inapppurchase/Messages$VoidResult;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2, p1}, Lio/flutter/plugin/common/BasicMessageChannel;->send(Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method
