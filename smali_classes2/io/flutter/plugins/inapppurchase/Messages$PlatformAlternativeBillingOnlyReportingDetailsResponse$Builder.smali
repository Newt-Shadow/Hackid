.class public final Lio/flutter/plugins/inapppurchase/Messages$PlatformAlternativeBillingOnlyReportingDetailsResponse$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/inapppurchase/Messages$PlatformAlternativeBillingOnlyReportingDetailsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private billingResult:Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult;

.field private externalTransactionToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lio/flutter/plugins/inapppurchase/Messages$PlatformAlternativeBillingOnlyReportingDetailsResponse;
    .locals 2

    .line 1
    new-instance v0, Lio/flutter/plugins/inapppurchase/Messages$PlatformAlternativeBillingOnlyReportingDetailsResponse;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/flutter/plugins/inapppurchase/Messages$PlatformAlternativeBillingOnlyReportingDetailsResponse;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformAlternativeBillingOnlyReportingDetailsResponse$Builder;->billingResult:Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformAlternativeBillingOnlyReportingDetailsResponse;->setBillingResult(Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformAlternativeBillingOnlyReportingDetailsResponse$Builder;->externalTransactionToken:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformAlternativeBillingOnlyReportingDetailsResponse;->setExternalTransactionToken(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public setBillingResult(Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult;)Lio/flutter/plugins/inapppurchase/Messages$PlatformAlternativeBillingOnlyReportingDetailsResponse$Builder;
    .locals 0
    .annotation build Lio/flutter/plugins/inapppurchase/Messages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformAlternativeBillingOnlyReportingDetailsResponse$Builder;->billingResult:Lio/flutter/plugins/inapppurchase/Messages$PlatformBillingResult;

    .line 2
    .line 3
    return-object p0
.end method

.method public setExternalTransactionToken(Ljava/lang/String;)Lio/flutter/plugins/inapppurchase/Messages$PlatformAlternativeBillingOnlyReportingDetailsResponse$Builder;
    .locals 0
    .annotation build Lio/flutter/plugins/inapppurchase/Messages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformAlternativeBillingOnlyReportingDetailsResponse$Builder;->externalTransactionToken:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
