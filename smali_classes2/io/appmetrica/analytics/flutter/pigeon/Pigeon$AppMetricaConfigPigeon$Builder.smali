.class public final Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private advIdentifiersTracking:Ljava/lang/Boolean;

.field private anrMonitoring:Ljava/lang/Boolean;

.field private anrMonitoringTimeout:Ljava/lang/Long;

.field private apiKey:Ljava/lang/String;

.field private appBuildNumber:Ljava/lang/Long;

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

.field private appOpenTrackingEnabled:Ljava/lang/Boolean;

.field private appVersion:Ljava/lang/String;

.field private crashReporting:Ljava/lang/Boolean;

.field private customHosts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private dataSendingEnabled:Ljava/lang/Boolean;

.field private deviceType:Ljava/lang/String;

.field private dispatchPeriodSeconds:Ljava/lang/Long;

.field private errorEnvironment:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private firstActivationAsUpdate:Ljava/lang/Boolean;

.field private location:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon;

.field private locationTracking:Ljava/lang/Boolean;

.field private logs:Ljava/lang/Boolean;

.field private maxReportsCount:Ljava/lang/Long;

.field private maxReportsInDatabaseCount:Ljava/lang/Long;

.field private nativeCrashReporting:Ljava/lang/Boolean;

.field private preloadInfo:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$PreloadInfoPigeon;

.field private revenueAutoTrackingEnabled:Ljava/lang/Boolean;

.field private sessionTimeout:Ljava/lang/Long;

.field private sessionsAutoTrackingEnabled:Ljava/lang/Boolean;

.field private userProfileID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;
    .locals 2

    .line 1
    new-instance v0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon$Builder;->apiKey:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->setApiKey(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon$Builder;->advIdentifiersTracking:Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->setAdvIdentifiersTracking(Ljava/lang/Boolean;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon$Builder;->anrMonitoring:Ljava/lang/Boolean;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->setAnrMonitoring(Ljava/lang/Boolean;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon$Builder;->anrMonitoringTimeout:Ljava/lang/Long;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->setAnrMonitoringTimeout(Ljava/lang/Long;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon$Builder;->appBuildNumber:Ljava/lang/Long;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->setAppBuildNumber(Ljava/lang/Long;)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon$Builder;->appEnvironment:Ljava/util/Map;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->setAppEnvironment(Ljava/util/Map;)V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon$Builder;->appOpenTrackingEnabled:Ljava/lang/Boolean;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->setAppOpenTrackingEnabled(Ljava/lang/Boolean;)V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon$Builder;->appVersion:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->setAppVersion(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon$Builder;->crashReporting:Ljava/lang/Boolean;

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->setCrashReporting(Ljava/lang/Boolean;)V

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon$Builder;->customHosts:Ljava/util/List;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->setCustomHosts(Ljava/util/List;)V

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon$Builder;->dataSendingEnabled:Ljava/lang/Boolean;

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->setDataSendingEnabled(Ljava/lang/Boolean;)V

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon$Builder;->deviceType:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->setDeviceType(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon$Builder;->dispatchPeriodSeconds:Ljava/lang/Long;

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->setDispatchPeriodSeconds(Ljava/lang/Long;)V

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon$Builder;->errorEnvironment:Ljava/util/Map;

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->setErrorEnvironment(Ljava/util/Map;)V

    .line 74
    .line 75
    .line 76
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon$Builder;->firstActivationAsUpdate:Ljava/lang/Boolean;

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->setFirstActivationAsUpdate(Ljava/lang/Boolean;)V

    .line 79
    .line 80
    .line 81
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon$Builder;->location:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon;

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->setLocation(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon;)V

    .line 84
    .line 85
    .line 86
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon$Builder;->locationTracking:Ljava/lang/Boolean;

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->setLocationTracking(Ljava/lang/Boolean;)V

    .line 89
    .line 90
    .line 91
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon$Builder;->logs:Ljava/lang/Boolean;

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->setLogs(Ljava/lang/Boolean;)V

    .line 94
    .line 95
    .line 96
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon$Builder;->maxReportsCount:Ljava/lang/Long;

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->setMaxReportsCount(Ljava/lang/Long;)V

    .line 99
    .line 100
    .line 101
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon$Builder;->maxReportsInDatabaseCount:Ljava/lang/Long;

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->setMaxReportsInDatabaseCount(Ljava/lang/Long;)V

    .line 104
    .line 105
    .line 106
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon$Builder;->nativeCrashReporting:Ljava/lang/Boolean;

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->setNativeCrashReporting(Ljava/lang/Boolean;)V

    .line 109
    .line 110
    .line 111
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon$Builder;->preloadInfo:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$PreloadInfoPigeon;

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->setPreloadInfo(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$PreloadInfoPigeon;)V

    .line 114
    .line 115
    .line 116
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon$Builder;->revenueAutoTrackingEnabled:Ljava/lang/Boolean;

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->setRevenueAutoTrackingEnabled(Ljava/lang/Boolean;)V

    .line 119
    .line 120
    .line 121
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon$Builder;->sessionTimeout:Ljava/lang/Long;

    .line 122
    .line 123
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->setSessionTimeout(Ljava/lang/Long;)V

    .line 124
    .line 125
    .line 126
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon$Builder;->sessionsAutoTrackingEnabled:Ljava/lang/Boolean;

    .line 127
    .line 128
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->setSessionsAutoTrackingEnabled(Ljava/lang/Boolean;)V

    .line 129
    .line 130
    .line 131
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon$Builder;->userProfileID:Ljava/lang/String;

    .line 132
    .line 133
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon;->setUserProfileID(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    return-object v0
.end method

.method public setAdvIdentifiersTracking(Ljava/lang/Boolean;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon$Builder;->advIdentifiersTracking:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public setAnrMonitoring(Ljava/lang/Boolean;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon$Builder;->anrMonitoring:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public setAnrMonitoringTimeout(Ljava/lang/Long;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon$Builder;->anrMonitoringTimeout:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public setApiKey(Ljava/lang/String;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon$Builder;->apiKey:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setAppBuildNumber(Ljava/lang/Long;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon$Builder;->appBuildNumber:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public setAppEnvironment(Ljava/util/Map;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon$Builder;->appEnvironment:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public setAppOpenTrackingEnabled(Ljava/lang/Boolean;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon$Builder;->appOpenTrackingEnabled:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public setAppVersion(Ljava/lang/String;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon$Builder;->appVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setCrashReporting(Ljava/lang/Boolean;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon$Builder;->crashReporting:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public setCustomHosts(Ljava/util/List;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon$Builder;->customHosts:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public setDataSendingEnabled(Ljava/lang/Boolean;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon$Builder;->dataSendingEnabled:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public setDeviceType(Ljava/lang/String;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon$Builder;->deviceType:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setDispatchPeriodSeconds(Ljava/lang/Long;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon$Builder;->dispatchPeriodSeconds:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public setErrorEnvironment(Ljava/util/Map;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon$Builder;->errorEnvironment:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public setFirstActivationAsUpdate(Ljava/lang/Boolean;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon$Builder;->firstActivationAsUpdate:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public setLocation(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon$Builder;->location:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$LocationPigeon;

    .line 2
    .line 3
    return-object p0
.end method

.method public setLocationTracking(Ljava/lang/Boolean;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon$Builder;->locationTracking:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public setLogs(Ljava/lang/Boolean;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon$Builder;->logs:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public setMaxReportsCount(Ljava/lang/Long;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon$Builder;->maxReportsCount:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public setMaxReportsInDatabaseCount(Ljava/lang/Long;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon$Builder;->maxReportsInDatabaseCount:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public setNativeCrashReporting(Ljava/lang/Boolean;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon$Builder;->nativeCrashReporting:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public setPreloadInfo(Lio/appmetrica/analytics/flutter/pigeon/Pigeon$PreloadInfoPigeon;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon$Builder;->preloadInfo:Lio/appmetrica/analytics/flutter/pigeon/Pigeon$PreloadInfoPigeon;

    .line 2
    .line 3
    return-object p0
.end method

.method public setRevenueAutoTrackingEnabled(Ljava/lang/Boolean;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon$Builder;->revenueAutoTrackingEnabled:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public setSessionTimeout(Ljava/lang/Long;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon$Builder;->sessionTimeout:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public setSessionsAutoTrackingEnabled(Ljava/lang/Boolean;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon$Builder;->sessionsAutoTrackingEnabled:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public setUserProfileID(Ljava/lang/String;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$AppMetricaConfigPigeon$Builder;->userProfileID:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
