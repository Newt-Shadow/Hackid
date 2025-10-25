.class public Lcom/yandex/metrica/YandexMetricaConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/YandexMetricaConfig$Builder;
    }
.end annotation


# instance fields
.field public final apiKey:Ljava/lang/String;

.field public final appOpenTrackingEnabled:Ljava/lang/Boolean;

.field public final appVersion:Ljava/lang/String;

.field public final crashReporting:Ljava/lang/Boolean;

.field public final errorEnvironment:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final firstActivationAsUpdate:Ljava/lang/Boolean;

.field public final location:Landroid/location/Location;

.field public final locationTracking:Ljava/lang/Boolean;

.field public final logs:Ljava/lang/Boolean;

.field public final maxReportsInDatabaseCount:Ljava/lang/Integer;

.field public final nativeCrashReporting:Ljava/lang/Boolean;

.field public final preloadInfo:Lcom/yandex/metrica/PreloadInfo;

.field public final revenueAutoTrackingEnabled:Ljava/lang/Boolean;

.field public final sessionTimeout:Ljava/lang/Integer;

.field public final sessionsAutoTrackingEnabled:Ljava/lang/Boolean;

.field public final statisticsSending:Ljava/lang/Boolean;

.field public final userProfileID:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/yandex/metrica/YandexMetricaConfig$Builder;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->a(Lcom/yandex/metrica/YandexMetricaConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->apiKey:Ljava/lang/String;

    .line 3
    invoke-static {p1}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->b(Lcom/yandex/metrica/YandexMetricaConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->appVersion:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->j(Lcom/yandex/metrica/YandexMetricaConfig$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->sessionTimeout:Ljava/lang/Integer;

    .line 5
    invoke-static {p1}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->k(Lcom/yandex/metrica/YandexMetricaConfig$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->crashReporting:Ljava/lang/Boolean;

    .line 6
    invoke-static {p1}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->l(Lcom/yandex/metrica/YandexMetricaConfig$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->nativeCrashReporting:Ljava/lang/Boolean;

    .line 7
    invoke-static {p1}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->m(Lcom/yandex/metrica/YandexMetricaConfig$Builder;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->location:Landroid/location/Location;

    .line 8
    invoke-static {p1}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->n(Lcom/yandex/metrica/YandexMetricaConfig$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->locationTracking:Ljava/lang/Boolean;

    .line 9
    invoke-static {p1}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->o(Lcom/yandex/metrica/YandexMetricaConfig$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->logs:Ljava/lang/Boolean;

    .line 10
    invoke-static {p1}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->p(Lcom/yandex/metrica/YandexMetricaConfig$Builder;)Lcom/yandex/metrica/PreloadInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->preloadInfo:Lcom/yandex/metrica/PreloadInfo;

    .line 11
    invoke-static {p1}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->q(Lcom/yandex/metrica/YandexMetricaConfig$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->firstActivationAsUpdate:Ljava/lang/Boolean;

    .line 12
    invoke-static {p1}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->c(Lcom/yandex/metrica/YandexMetricaConfig$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->statisticsSending:Ljava/lang/Boolean;

    .line 13
    invoke-static {p1}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->d(Lcom/yandex/metrica/YandexMetricaConfig$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->maxReportsInDatabaseCount:Ljava/lang/Integer;

    .line 14
    invoke-static {p1}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->e(Lcom/yandex/metrica/YandexMetricaConfig$Builder;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/A2;->e(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->errorEnvironment:Ljava/util/Map;

    .line 15
    invoke-static {p1}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->f(Lcom/yandex/metrica/YandexMetricaConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->userProfileID:Ljava/lang/String;

    .line 16
    invoke-static {p1}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->g(Lcom/yandex/metrica/YandexMetricaConfig$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->revenueAutoTrackingEnabled:Ljava/lang/Boolean;

    .line 17
    invoke-static {p1}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->h(Lcom/yandex/metrica/YandexMetricaConfig$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->sessionsAutoTrackingEnabled:Ljava/lang/Boolean;

    .line 18
    invoke-static {p1}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->i(Lcom/yandex/metrica/YandexMetricaConfig$Builder;)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/metrica/YandexMetricaConfig;->appOpenTrackingEnabled:Ljava/lang/Boolean;

    return-void
.end method

.method protected constructor <init>(Lcom/yandex/metrica/YandexMetricaConfig;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iget-object v0, p1, Lcom/yandex/metrica/YandexMetricaConfig;->apiKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->apiKey:Ljava/lang/String;

    .line 21
    iget-object v0, p1, Lcom/yandex/metrica/YandexMetricaConfig;->appVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->appVersion:Ljava/lang/String;

    .line 22
    iget-object v0, p1, Lcom/yandex/metrica/YandexMetricaConfig;->sessionTimeout:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->sessionTimeout:Ljava/lang/Integer;

    .line 23
    iget-object v0, p1, Lcom/yandex/metrica/YandexMetricaConfig;->crashReporting:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->crashReporting:Ljava/lang/Boolean;

    .line 24
    iget-object v0, p1, Lcom/yandex/metrica/YandexMetricaConfig;->nativeCrashReporting:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->nativeCrashReporting:Ljava/lang/Boolean;

    .line 25
    iget-object v0, p1, Lcom/yandex/metrica/YandexMetricaConfig;->location:Landroid/location/Location;

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->location:Landroid/location/Location;

    .line 26
    iget-object v0, p1, Lcom/yandex/metrica/YandexMetricaConfig;->locationTracking:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->locationTracking:Ljava/lang/Boolean;

    .line 27
    iget-object v0, p1, Lcom/yandex/metrica/YandexMetricaConfig;->logs:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->logs:Ljava/lang/Boolean;

    .line 28
    iget-object v0, p1, Lcom/yandex/metrica/YandexMetricaConfig;->preloadInfo:Lcom/yandex/metrica/PreloadInfo;

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->preloadInfo:Lcom/yandex/metrica/PreloadInfo;

    .line 29
    iget-object v0, p1, Lcom/yandex/metrica/YandexMetricaConfig;->firstActivationAsUpdate:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->firstActivationAsUpdate:Ljava/lang/Boolean;

    .line 30
    iget-object v0, p1, Lcom/yandex/metrica/YandexMetricaConfig;->statisticsSending:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->statisticsSending:Ljava/lang/Boolean;

    .line 31
    iget-object v0, p1, Lcom/yandex/metrica/YandexMetricaConfig;->maxReportsInDatabaseCount:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->maxReportsInDatabaseCount:Ljava/lang/Integer;

    .line 32
    iget-object v0, p1, Lcom/yandex/metrica/YandexMetricaConfig;->errorEnvironment:Ljava/util/Map;

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->errorEnvironment:Ljava/util/Map;

    .line 33
    iget-object v0, p1, Lcom/yandex/metrica/YandexMetricaConfig;->userProfileID:Ljava/lang/String;

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->userProfileID:Ljava/lang/String;

    .line 34
    iget-object v0, p1, Lcom/yandex/metrica/YandexMetricaConfig;->revenueAutoTrackingEnabled:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->revenueAutoTrackingEnabled:Ljava/lang/Boolean;

    .line 35
    iget-object v0, p1, Lcom/yandex/metrica/YandexMetricaConfig;->sessionsAutoTrackingEnabled:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->sessionsAutoTrackingEnabled:Ljava/lang/Boolean;

    .line 36
    iget-object p1, p1, Lcom/yandex/metrica/YandexMetricaConfig;->appOpenTrackingEnabled:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/yandex/metrica/YandexMetricaConfig;->appOpenTrackingEnabled:Ljava/lang/Boolean;

    return-void
.end method

.method public static createBuilderFromConfig(Lcom/yandex/metrica/YandexMetricaConfig;)Lcom/yandex/metrica/YandexMetricaConfig$Builder;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->apiKey:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/yandex/metrica/YandexMetricaConfig;->newConfigBuilder(Ljava/lang/String;)Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/yandex/metrica/YandexMetricaConfig;->appVersion:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lcom/yandex/metrica/YandexMetricaConfig;->appVersion:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->withAppVersion(Ljava/lang/String;)Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v1, p0, Lcom/yandex/metrica/YandexMetricaConfig;->sessionTimeout:Ljava/lang/Integer;

    .line 21
    .line 22
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    iget-object v1, p0, Lcom/yandex/metrica/YandexMetricaConfig;->sessionTimeout:Ljava/lang/Integer;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->withSessionTimeout(I)Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    .line 35
    .line 36
    .line 37
    :cond_1
    iget-object v1, p0, Lcom/yandex/metrica/YandexMetricaConfig;->crashReporting:Ljava/lang/Boolean;

    .line 38
    .line 39
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    iget-object v1, p0, Lcom/yandex/metrica/YandexMetricaConfig;->crashReporting:Ljava/lang/Boolean;

    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->withCrashReporting(Z)Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    .line 52
    .line 53
    .line 54
    :cond_2
    iget-object v1, p0, Lcom/yandex/metrica/YandexMetricaConfig;->nativeCrashReporting:Ljava/lang/Boolean;

    .line 55
    .line 56
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_3

    .line 61
    .line 62
    iget-object v1, p0, Lcom/yandex/metrica/YandexMetricaConfig;->nativeCrashReporting:Ljava/lang/Boolean;

    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->withNativeCrashReporting(Z)Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    .line 69
    .line 70
    .line 71
    :cond_3
    iget-object v1, p0, Lcom/yandex/metrica/YandexMetricaConfig;->location:Landroid/location/Location;

    .line 72
    .line 73
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_4

    .line 78
    .line 79
    iget-object v1, p0, Lcom/yandex/metrica/YandexMetricaConfig;->location:Landroid/location/Location;

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->withLocation(Landroid/location/Location;)Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    .line 82
    .line 83
    .line 84
    :cond_4
    iget-object v1, p0, Lcom/yandex/metrica/YandexMetricaConfig;->locationTracking:Ljava/lang/Boolean;

    .line 85
    .line 86
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-eqz v1, :cond_5

    .line 91
    .line 92
    iget-object v1, p0, Lcom/yandex/metrica/YandexMetricaConfig;->locationTracking:Ljava/lang/Boolean;

    .line 93
    .line 94
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->withLocationTracking(Z)Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    .line 99
    .line 100
    .line 101
    :cond_5
    iget-object v1, p0, Lcom/yandex/metrica/YandexMetricaConfig;->logs:Ljava/lang/Boolean;

    .line 102
    .line 103
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-eqz v1, :cond_6

    .line 108
    .line 109
    iget-object v1, p0, Lcom/yandex/metrica/YandexMetricaConfig;->logs:Ljava/lang/Boolean;

    .line 110
    .line 111
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    if-eqz v1, :cond_6

    .line 116
    .line 117
    invoke-virtual {v0}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->withLogs()Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    .line 118
    .line 119
    .line 120
    :cond_6
    iget-object v1, p0, Lcom/yandex/metrica/YandexMetricaConfig;->preloadInfo:Lcom/yandex/metrica/PreloadInfo;

    .line 121
    .line 122
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    if-eqz v1, :cond_7

    .line 127
    .line 128
    iget-object v1, p0, Lcom/yandex/metrica/YandexMetricaConfig;->preloadInfo:Lcom/yandex/metrica/PreloadInfo;

    .line 129
    .line 130
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->withPreloadInfo(Lcom/yandex/metrica/PreloadInfo;)Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    .line 131
    .line 132
    .line 133
    :cond_7
    iget-object v1, p0, Lcom/yandex/metrica/YandexMetricaConfig;->firstActivationAsUpdate:Ljava/lang/Boolean;

    .line 134
    .line 135
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    if-eqz v1, :cond_8

    .line 140
    .line 141
    iget-object v1, p0, Lcom/yandex/metrica/YandexMetricaConfig;->firstActivationAsUpdate:Ljava/lang/Boolean;

    .line 142
    .line 143
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->handleFirstActivationAsUpdate(Z)Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    .line 148
    .line 149
    .line 150
    :cond_8
    iget-object v1, p0, Lcom/yandex/metrica/YandexMetricaConfig;->statisticsSending:Ljava/lang/Boolean;

    .line 151
    .line 152
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    if-eqz v1, :cond_9

    .line 157
    .line 158
    iget-object v1, p0, Lcom/yandex/metrica/YandexMetricaConfig;->statisticsSending:Ljava/lang/Boolean;

    .line 159
    .line 160
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->withStatisticsSending(Z)Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    .line 165
    .line 166
    .line 167
    :cond_9
    iget-object v1, p0, Lcom/yandex/metrica/YandexMetricaConfig;->maxReportsInDatabaseCount:Ljava/lang/Integer;

    .line 168
    .line 169
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    if-eqz v1, :cond_a

    .line 174
    .line 175
    iget-object v1, p0, Lcom/yandex/metrica/YandexMetricaConfig;->maxReportsInDatabaseCount:Ljava/lang/Integer;

    .line 176
    .line 177
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 178
    .line 179
    .line 180
    move-result v1

    .line 181
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->withMaxReportsInDatabaseCount(I)Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    .line 182
    .line 183
    .line 184
    :cond_a
    iget-object v1, p0, Lcom/yandex/metrica/YandexMetricaConfig;->errorEnvironment:Ljava/util/Map;

    .line 185
    .line 186
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result v1

    .line 190
    if-eqz v1, :cond_b

    .line 191
    .line 192
    iget-object v1, p0, Lcom/yandex/metrica/YandexMetricaConfig;->errorEnvironment:Ljava/util/Map;

    .line 193
    .line 194
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 203
    .line 204
    .line 205
    move-result v2

    .line 206
    if-eqz v2, :cond_b

    .line 207
    .line 208
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    check-cast v2, Ljava/util/Map$Entry;

    .line 213
    .line 214
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v3

    .line 218
    check-cast v3, Ljava/lang/String;

    .line 219
    .line 220
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    check-cast v2, Ljava/lang/String;

    .line 225
    .line 226
    invoke-virtual {v0, v3, v2}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->withErrorEnvironmentValue(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    .line 227
    .line 228
    .line 229
    goto :goto_0

    .line 230
    :cond_b
    iget-object v1, p0, Lcom/yandex/metrica/YandexMetricaConfig;->userProfileID:Ljava/lang/String;

    .line 231
    .line 232
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    move-result v1

    .line 236
    if-eqz v1, :cond_c

    .line 237
    .line 238
    iget-object v1, p0, Lcom/yandex/metrica/YandexMetricaConfig;->userProfileID:Ljava/lang/String;

    .line 239
    .line 240
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->withUserProfileID(Ljava/lang/String;)Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    .line 241
    .line 242
    .line 243
    :cond_c
    iget-object v1, p0, Lcom/yandex/metrica/YandexMetricaConfig;->revenueAutoTrackingEnabled:Ljava/lang/Boolean;

    .line 244
    .line 245
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    move-result v1

    .line 249
    if-eqz v1, :cond_d

    .line 250
    .line 251
    iget-object v1, p0, Lcom/yandex/metrica/YandexMetricaConfig;->revenueAutoTrackingEnabled:Ljava/lang/Boolean;

    .line 252
    .line 253
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 254
    .line 255
    .line 256
    move-result v1

    .line 257
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->withRevenueAutoTrackingEnabled(Z)Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    .line 258
    .line 259
    .line 260
    :cond_d
    iget-object v1, p0, Lcom/yandex/metrica/YandexMetricaConfig;->sessionsAutoTrackingEnabled:Ljava/lang/Boolean;

    .line 261
    .line 262
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    move-result v1

    .line 266
    if-eqz v1, :cond_e

    .line 267
    .line 268
    iget-object v1, p0, Lcom/yandex/metrica/YandexMetricaConfig;->sessionsAutoTrackingEnabled:Ljava/lang/Boolean;

    .line 269
    .line 270
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 271
    .line 272
    .line 273
    move-result v1

    .line 274
    invoke-virtual {v0, v1}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->withSessionsAutoTrackingEnabled(Z)Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    .line 275
    .line 276
    .line 277
    :cond_e
    iget-object v1, p0, Lcom/yandex/metrica/YandexMetricaConfig;->appOpenTrackingEnabled:Ljava/lang/Boolean;

    .line 278
    .line 279
    invoke-static {v1}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    .line 280
    .line 281
    .line 282
    move-result v1

    .line 283
    if-eqz v1, :cond_f

    .line 284
    .line 285
    iget-object p0, p0, Lcom/yandex/metrica/YandexMetricaConfig;->appOpenTrackingEnabled:Ljava/lang/Boolean;

    .line 286
    .line 287
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 288
    .line 289
    .line 290
    move-result p0

    .line 291
    invoke-virtual {v0, p0}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;->withAppOpenTrackingEnabled(Z)Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    .line 292
    .line 293
    .line 294
    :cond_f
    return-object v0
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/yandex/metrica/YandexMetricaConfig;
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/m1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/m1;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/yandex/metrica/impl/ob/m1;->a(Ljava/lang/String;)Lcom/yandex/metrica/YandexMetricaConfig;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static newConfigBuilder(Ljava/lang/String;)Lcom/yandex/metrica/YandexMetricaConfig$Builder;
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/YandexMetricaConfig$Builder;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/yandex/metrica/YandexMetricaConfig$Builder;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public toJson()Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/m1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/m1;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lcom/yandex/metrica/impl/ob/m1;->a(Lcom/yandex/metrica/YandexMetricaConfig;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method
