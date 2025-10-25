.class public final Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsPigeon;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appmetrica/analytics/flutter/pigeon/Pigeon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StartupParamsPigeon"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsPigeon$Builder;
    }
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

.method static fromList(Ljava/util/ArrayList;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsPigeon;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsPigeon;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsPigeon;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsPigeon;-><init>()V

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
    const/4 v2, 0x0

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    move-object v1, v2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    check-cast v1, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-static {v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsResultPigeon;->fromList(Ljava/util/ArrayList;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsResultPigeon;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    :goto_0
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsPigeon;->setResult(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsResultPigeon;)V

    .line 23
    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    if-nez p0, :cond_1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    check-cast p0, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-static {p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsReasonPigeon;->fromList(Ljava/util/ArrayList;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsReasonPigeon;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    :goto_1
    invoke-virtual {v0, v2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsPigeon;->setReason(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsReasonPigeon;)V

    .line 40
    .line 41
    .line 42
    return-object v0
.end method


# virtual methods
.method public getReason()Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsReasonPigeon;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsPigeon;->reason:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsReasonPigeon;

    .line 2
    .line 3
    return-object v0
.end method

.method public getResult()Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsResultPigeon;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsPigeon;->result:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsResultPigeon;

    .line 2
    .line 3
    return-object v0
.end method

.method public setReason(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsReasonPigeon;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsPigeon;->reason:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsReasonPigeon;

    .line 2
    .line 3
    return-void
.end method

.method public setResult(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsResultPigeon;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsPigeon;->result:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsResultPigeon;

    .line 2
    .line 3
    return-void
.end method

.method toList()Ljava/util/ArrayList;
    .locals 3
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
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsPigeon;->result:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsResultPigeon;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    move-object v1, v2

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsResultPigeon;->toList()Ljava/util/ArrayList;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsPigeon;->reason:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsReasonPigeon;

    .line 22
    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    invoke-virtual {v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$StartupParamsReasonPigeon;->toList()Ljava/util/ArrayList;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    :goto_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    return-object v0
.end method
