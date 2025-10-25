.class public final Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private apiKey:Ljava/lang/String;

.field private appEnvironment:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private dataSendingEnabled:Ljava/lang/Boolean;

.field private dispatchPeriodSeconds:Ljava/lang/Long;

.field private logs:Ljava/lang/Boolean;

.field private maxReportsCount:Ljava/lang/Long;

.field private maxReportsInDatabaseCount:Ljava/lang/Long;

.field private sessionTimeout:Ljava/lang/Long;

.field private userProfileID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon;
    .locals 2

    .line 1
    new-instance v0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon$Builder;->apiKey:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon;->setApiKey(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon$Builder;->appEnvironment:Ljava/util/Map;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon;->setAppEnvironment(Ljava/util/Map;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon$Builder;->dataSendingEnabled:Ljava/lang/Boolean;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon;->setDataSendingEnabled(Ljava/lang/Boolean;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon$Builder;->dispatchPeriodSeconds:Ljava/lang/Long;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon;->setDispatchPeriodSeconds(Ljava/lang/Long;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon$Builder;->logs:Ljava/lang/Boolean;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon;->setLogs(Ljava/lang/Boolean;)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon$Builder;->maxReportsCount:Ljava/lang/Long;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon;->setMaxReportsCount(Ljava/lang/Long;)V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon$Builder;->maxReportsInDatabaseCount:Ljava/lang/Long;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon;->setMaxReportsInDatabaseCount(Ljava/lang/Long;)V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon$Builder;->sessionTimeout:Ljava/lang/Long;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon;->setSessionTimeout(Ljava/lang/Long;)V

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon$Builder;->userProfileID:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon;->setUserProfileID(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-object v0
.end method

.method public setApiKey(Ljava/lang/String;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon$Builder;->apiKey:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setAppEnvironment(Ljava/util/Map;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon$Builder;->appEnvironment:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public setDataSendingEnabled(Ljava/lang/Boolean;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon$Builder;->dataSendingEnabled:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public setDispatchPeriodSeconds(Ljava/lang/Long;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon$Builder;->dispatchPeriodSeconds:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public setLogs(Ljava/lang/Boolean;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon$Builder;->logs:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public setMaxReportsCount(Ljava/lang/Long;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon$Builder;->maxReportsCount:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public setMaxReportsInDatabaseCount(Ljava/lang/Long;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon$Builder;->maxReportsInDatabaseCount:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public setSessionTimeout(Ljava/lang/Long;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon$Builder;->sessionTimeout:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public setUserProfileID(Ljava/lang/String;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon$Builder;->userProfileID:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
