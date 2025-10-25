.class public final Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReceiptPigeon;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appmetrica/analytics/flutter/pigeon/Pigeon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReceiptPigeon"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReceiptPigeon$Builder;
    }
.end annotation


# instance fields
.field private data:Ljava/lang/String;

.field private signature:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fromList(Ljava/util/ArrayList;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReceiptPigeon;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReceiptPigeon;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReceiptPigeon;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReceiptPigeon;-><init>()V

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
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReceiptPigeon;->setData(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReceiptPigeon;->setSignature(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-object v0
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReceiptPigeon;->data:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReceiptPigeon;->signature:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReceiptPigeon;->data:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReceiptPigeon;->signature:Ljava/lang/String;

    .line 2
    .line 3
    return-void
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
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReceiptPigeon;->data:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReceiptPigeon;->signature:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-object v0
.end method
