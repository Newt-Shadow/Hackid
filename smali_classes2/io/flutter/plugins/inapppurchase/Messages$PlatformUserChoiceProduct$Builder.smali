.class public final Lio/flutter/plugins/inapppurchase/Messages$PlatformUserChoiceProduct$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/inapppurchase/Messages$PlatformUserChoiceProduct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private id:Ljava/lang/String;

.field private offerToken:Ljava/lang/String;

.field private type:Lio/flutter/plugins/inapppurchase/Messages$PlatformProductType;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lio/flutter/plugins/inapppurchase/Messages$PlatformUserChoiceProduct;
    .locals 2

    .line 1
    new-instance v0, Lio/flutter/plugins/inapppurchase/Messages$PlatformUserChoiceProduct;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/flutter/plugins/inapppurchase/Messages$PlatformUserChoiceProduct;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformUserChoiceProduct$Builder;->id:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformUserChoiceProduct;->setId(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformUserChoiceProduct$Builder;->offerToken:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformUserChoiceProduct;->setOfferToken(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformUserChoiceProduct$Builder;->type:Lio/flutter/plugins/inapppurchase/Messages$PlatformProductType;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformUserChoiceProduct;->setType(Lio/flutter/plugins/inapppurchase/Messages$PlatformProductType;)V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method

.method public setId(Ljava/lang/String;)Lio/flutter/plugins/inapppurchase/Messages$PlatformUserChoiceProduct$Builder;
    .locals 0
    .annotation build Lio/flutter/plugins/inapppurchase/Messages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformUserChoiceProduct$Builder;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setOfferToken(Ljava/lang/String;)Lio/flutter/plugins/inapppurchase/Messages$PlatformUserChoiceProduct$Builder;
    .locals 0
    .annotation build Lio/flutter/plugins/inapppurchase/Messages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformUserChoiceProduct$Builder;->offerToken:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setType(Lio/flutter/plugins/inapppurchase/Messages$PlatformProductType;)Lio/flutter/plugins/inapppurchase/Messages$PlatformUserChoiceProduct$Builder;
    .locals 0
    .annotation build Lio/flutter/plugins/inapppurchase/Messages$CanIgnoreReturnValue;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformUserChoiceProduct$Builder;->type:Lio/flutter/plugins/inapppurchase/Messages$PlatformProductType;

    .line 2
    .line 3
    return-object p0
.end method
