.class public final Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetailsResponse$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetailsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private billingResult:Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult;

.field private productDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetailsResponse;
    .locals 2

    .line 1
    new-instance v0, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetailsResponse;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetailsResponse;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetailsResponse$Builder;->billingResult:Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetailsResponse;->setBillingResult(Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetailsResponse$Builder;->productDetails:Ljava/util/List;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetailsResponse;->setProductDetails(Ljava/util/List;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public setBillingResult(Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult;)Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetailsResponse$Builder;
    .locals 0
    .annotation build Lio/flutter/plugins/inapppurchase/Messages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetailsResponse$Builder;->billingResult:Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult;

    .line 2
    .line 3
    return-object p0
.end method

.method public setProductDetails(Ljava/util/List;)Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetailsResponse$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetails;",
            ">;)",
            "Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetailsResponse$Builder;"
        }
    .end annotation

    .annotation build Lio/flutter/plugins/inapppurchase/Messages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductDetailsResponse$Builder;->productDetails:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method
