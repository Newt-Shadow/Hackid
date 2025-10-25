.class public final Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReceiptPigeon$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReceiptPigeon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
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


# virtual methods
.method public build()Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReceiptPigeon;
    .locals 2

    .line 1
    new-instance v0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReceiptPigeon;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReceiptPigeon;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReceiptPigeon$Builder;->data:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReceiptPigeon;->setData(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReceiptPigeon$Builder;->signature:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReceiptPigeon;->setSignature(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public setData(Ljava/lang/String;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReceiptPigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReceiptPigeon$Builder;->data:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setSignature(Ljava/lang/String;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReceiptPigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReceiptPigeon$Builder;->signature:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
