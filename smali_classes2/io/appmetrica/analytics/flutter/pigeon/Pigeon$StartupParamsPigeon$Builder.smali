.class public final Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsPigeon$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsPigeon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private reason:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsReasonPigeon;

.field private result:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsResultPigeon;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsPigeon;
    .locals 2

    .line 1
    new-instance v0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsPigeon;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsPigeon;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsPigeon$Builder;->result:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsResultPigeon;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsPigeon;->setResult(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsResultPigeon;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsPigeon$Builder;->reason:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsReasonPigeon;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsPigeon;->setReason(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsReasonPigeon;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public setReason(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsReasonPigeon;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsPigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsPigeon$Builder;->reason:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsReasonPigeon;

    .line 2
    .line 3
    return-object p0
.end method

.method public setResult(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsResultPigeon;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsPigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsPigeon$Builder;->result:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsResultPigeon;

    .line 2
    .line 3
    return-object p0
.end method
