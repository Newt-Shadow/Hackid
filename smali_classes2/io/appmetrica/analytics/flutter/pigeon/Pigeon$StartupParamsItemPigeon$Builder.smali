.class public final Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsItemPigeon$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsItemPigeon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private errorDetails:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private status:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsItemStatusPigeon;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsItemPigeon;
    .locals 2

    .line 1
    new-instance v0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsItemPigeon;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsItemPigeon;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsItemPigeon$Builder;->id:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsItemPigeon;->setId(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsItemPigeon$Builder;->status:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsItemStatusPigeon;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsItemPigeon;->setStatus(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsItemStatusPigeon;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsItemPigeon$Builder;->errorDetails:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsItemPigeon;->setErrorDetails(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method

.method public setErrorDetails(Ljava/lang/String;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsItemPigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsItemPigeon$Builder;->errorDetails:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsItemPigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsItemPigeon$Builder;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setStatus(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsItemStatusPigeon;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsItemPigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsItemPigeon$Builder;->status:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsItemStatusPigeon;

    .line 2
    .line 3
    return-object p0
.end method
