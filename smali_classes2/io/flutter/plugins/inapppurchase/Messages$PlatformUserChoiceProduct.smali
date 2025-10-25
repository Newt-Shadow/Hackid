.class public final Lio/flutter/plugins/inapppurchase/Messages$PlatformUserChoiceProduct;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/inapppurchase/Messages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlatformUserChoiceProduct"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugins/inapppurchase/Messages$PlatformUserChoiceProduct$Builder;
    }
.end annotation


# instance fields
.field private id:Ljava/lang/String;

.field private offerToken:Ljava/lang/String;

.field private type:Lio/flutter/plugins/inapppurchase/Messages$PlatformProductType;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fromList(Ljava/util/ArrayList;)Lio/flutter/plugins/inapppurchase/Messages$PlatformUserChoiceProduct;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/flutter/plugins/inapppurchase/Messages$PlatformUserChoiceProduct;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/flutter/plugins/inapppurchase/Messages$PlatformUserChoiceProduct;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/flutter/plugins/inapppurchase/Messages$PlatformUserChoiceProduct;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformUserChoiceProduct;->setId(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lio/flutter/plugins/inapppurchase/Messages$PlatformUserChoiceProduct;->setOfferToken(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const/4 v1, 0x2

    .line 27
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformProductType;

    .line 32
    .line 33
    invoke-virtual {v0, p0}, Lio/flutter/plugins/inapppurchase/Messages$PlatformUserChoiceProduct;->setType(Lio/flutter/plugins/inapppurchase/Messages$PlatformProductType;)V

    .line 34
    .line 35
    .line 36
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_3

    .line 7
    .line 8
    const-class v2, Lio/flutter/plugins/inapppurchase/Messages$PlatformUserChoiceProduct;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    if-eq v2, v3, :cond_1

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    check-cast p1, Lio/flutter/plugins/inapppurchase/Messages$PlatformUserChoiceProduct;

    .line 18
    .line 19
    iget-object v2, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformUserChoiceProduct;->id:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v3, p1, Lio/flutter/plugins/inapppurchase/Messages$PlatformUserChoiceProduct;->id:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    iget-object v2, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformUserChoiceProduct;->offerToken:Ljava/lang/String;

    .line 30
    .line 31
    iget-object v3, p1, Lio/flutter/plugins/inapppurchase/Messages$PlatformUserChoiceProduct;->offerToken:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    iget-object v2, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformUserChoiceProduct;->type:Lio/flutter/plugins/inapppurchase/Messages$PlatformProductType;

    .line 40
    .line 41
    iget-object p1, p1, Lio/flutter/plugins/inapppurchase/Messages$PlatformUserChoiceProduct;->type:Lio/flutter/plugins/inapppurchase/Messages$PlatformProductType;

    .line 42
    .line 43
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_2

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    move v0, v1

    .line 51
    :goto_0
    return v0

    .line 52
    :cond_3
    :goto_1
    return v1
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformUserChoiceProduct;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOfferToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformUserChoiceProduct;->offerToken:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getType()Lio/flutter/plugins/inapppurchase/Messages$PlatformProductType;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformUserChoiceProduct;->type:Lio/flutter/plugins/inapppurchase/Messages$PlatformProductType;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformUserChoiceProduct;->id:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformUserChoiceProduct;->offerToken:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformUserChoiceProduct;->type:Lio/flutter/plugins/inapppurchase/Messages$PlatformProductType;

    .line 6
    .line 7
    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformUserChoiceProduct;->id:Ljava/lang/String;

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v0, "Nonnull field \"id\" is null."

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public setOfferToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformUserChoiceProduct;->offerToken:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setType(Lio/flutter/plugins/inapppurchase/Messages$PlatformProductType;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformUserChoiceProduct;->type:Lio/flutter/plugins/inapppurchase/Messages$PlatformProductType;

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v0, "Nonnull field \"type\" is null."

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method toList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformUserChoiceProduct;->id:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformUserChoiceProduct;->offerToken:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lio/flutter/plugins/inapppurchase/Messages$PlatformUserChoiceProduct;->type:Lio/flutter/plugins/inapppurchase/Messages$PlatformProductType;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    return-object v0
.end method
