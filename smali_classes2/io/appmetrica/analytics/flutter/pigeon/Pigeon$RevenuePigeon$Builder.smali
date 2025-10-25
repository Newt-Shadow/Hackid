.class public final Lio/appmetrica/analytics/flutter/pigeon/Pigeon$RevenuePigeon$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appmetrica/analytics/flutter/pigeon/Pigeon$RevenuePigeon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private currency:Ljava/lang/String;

.field private payload:Ljava/lang/String;

.field private price:Ljava/lang/String;

.field private productId:Ljava/lang/String;

.field private quantity:Ljava/lang/Long;

.field private receipt:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReceiptPigeon;

.field private transactionId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lio/appmetrica/analytics/flutter/pigeon/Pigeon$RevenuePigeon;
    .locals 2

    .line 1
    new-instance v0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$RevenuePigeon;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$RevenuePigeon;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$RevenuePigeon$Builder;->price:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$RevenuePigeon;->setPrice(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$RevenuePigeon$Builder;->currency:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$RevenuePigeon;->setCurrency(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$RevenuePigeon$Builder;->quantity:Ljava/lang/Long;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$RevenuePigeon;->setQuantity(Ljava/lang/Long;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$RevenuePigeon$Builder;->productId:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$RevenuePigeon;->setProductId(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$RevenuePigeon$Builder;->payload:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$RevenuePigeon;->setPayload(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$RevenuePigeon$Builder;->receipt:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReceiptPigeon;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$RevenuePigeon;->setReceipt(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReceiptPigeon;)V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$RevenuePigeon$Builder;->transactionId:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$RevenuePigeon;->setTransactionId(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-object v0
.end method

.method public setCurrency(Ljava/lang/String;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$RevenuePigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$RevenuePigeon$Builder;->currency:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setPayload(Ljava/lang/String;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$RevenuePigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$RevenuePigeon$Builder;->payload:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setPrice(Ljava/lang/String;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$RevenuePigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$RevenuePigeon$Builder;->price:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setProductId(Ljava/lang/String;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$RevenuePigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$RevenuePigeon$Builder;->productId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setQuantity(Ljava/lang/Long;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$RevenuePigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$RevenuePigeon$Builder;->quantity:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public setReceipt(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReceiptPigeon;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$RevenuePigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$RevenuePigeon$Builder;->receipt:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReceiptPigeon;

    .line 2
    .line 3
    return-object p0
.end method

.method public setTransactionId(Ljava/lang/String;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$RevenuePigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$RevenuePigeon$Builder;->transactionId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
