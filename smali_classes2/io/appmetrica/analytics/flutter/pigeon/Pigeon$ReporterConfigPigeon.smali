.class public final Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appmetrica/analytics/flutter/pigeon/Pigeon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReporterConfigPigeon"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon$Builder;
    }
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
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fromList(Ljava/util/ArrayList;)Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon;-><init>()V

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
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon;->setApiKey(Ljava/lang/String;)V

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
    check-cast v1, Ljava/util/Map;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon;->setAppEnvironment(Ljava/util/Map;)V

    .line 24
    .line 25
    .line 26
    const/4 v1, 0x2

    .line 27
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Ljava/lang/Boolean;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon;->setDataSendingEnabled(Ljava/lang/Boolean;)V

    .line 34
    .line 35
    .line 36
    const/4 v1, 0x3

    .line 37
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const/4 v2, 0x0

    .line 42
    if-nez v1, :cond_0

    .line 43
    .line 44
    move-object v1, v2

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    instance-of v3, v1, Ljava/lang/Integer;

    .line 47
    .line 48
    if-eqz v3, :cond_1

    .line 49
    .line 50
    check-cast v1, Ljava/lang/Integer;

    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    int-to-long v3, v1

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    check-cast v1, Ljava/lang/Long;

    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 61
    .line 62
    .line 63
    move-result-wide v3

    .line 64
    :goto_0
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    :goto_1
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon;->setDispatchPeriodSeconds(Ljava/lang/Long;)V

    .line 69
    .line 70
    .line 71
    const/4 v1, 0x4

    .line 72
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    check-cast v1, Ljava/lang/Boolean;

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon;->setLogs(Ljava/lang/Boolean;)V

    .line 79
    .line 80
    .line 81
    const/4 v1, 0x5

    .line 82
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    if-nez v1, :cond_2

    .line 87
    .line 88
    move-object v1, v2

    .line 89
    goto :goto_3

    .line 90
    :cond_2
    instance-of v3, v1, Ljava/lang/Integer;

    .line 91
    .line 92
    if-eqz v3, :cond_3

    .line 93
    .line 94
    check-cast v1, Ljava/lang/Integer;

    .line 95
    .line 96
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    int-to-long v3, v1

    .line 101
    goto :goto_2

    .line 102
    :cond_3
    check-cast v1, Ljava/lang/Long;

    .line 103
    .line 104
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 105
    .line 106
    .line 107
    move-result-wide v3

    .line 108
    :goto_2
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    :goto_3
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon;->setMaxReportsCount(Ljava/lang/Long;)V

    .line 113
    .line 114
    .line 115
    const/4 v1, 0x6

    .line 116
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    if-nez v1, :cond_4

    .line 121
    .line 122
    move-object v1, v2

    .line 123
    goto :goto_5

    .line 124
    :cond_4
    instance-of v3, v1, Ljava/lang/Integer;

    .line 125
    .line 126
    if-eqz v3, :cond_5

    .line 127
    .line 128
    check-cast v1, Ljava/lang/Integer;

    .line 129
    .line 130
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    int-to-long v3, v1

    .line 135
    goto :goto_4

    .line 136
    :cond_5
    check-cast v1, Ljava/lang/Long;

    .line 137
    .line 138
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 139
    .line 140
    .line 141
    move-result-wide v3

    .line 142
    :goto_4
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    :goto_5
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon;->setMaxReportsInDatabaseCount(Ljava/lang/Long;)V

    .line 147
    .line 148
    .line 149
    const/4 v1, 0x7

    .line 150
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    if-nez v1, :cond_6

    .line 155
    .line 156
    goto :goto_7

    .line 157
    :cond_6
    instance-of v2, v1, Ljava/lang/Integer;

    .line 158
    .line 159
    if-eqz v2, :cond_7

    .line 160
    .line 161
    check-cast v1, Ljava/lang/Integer;

    .line 162
    .line 163
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    int-to-long v1, v1

    .line 168
    goto :goto_6

    .line 169
    :cond_7
    check-cast v1, Ljava/lang/Long;

    .line 170
    .line 171
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 172
    .line 173
    .line 174
    move-result-wide v1

    .line 175
    :goto_6
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    :goto_7
    invoke-virtual {v0, v2}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon;->setSessionTimeout(Ljava/lang/Long;)V

    .line 180
    .line 181
    .line 182
    const/16 v1, 0x8

    .line 183
    .line 184
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object p0

    .line 188
    check-cast p0, Ljava/lang/String;

    .line 189
    .line 190
    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon;->setUserProfileID(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    return-object v0
.end method


# virtual methods
.method public getApiKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon;->apiKey:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAppEnvironment()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon;->appEnvironment:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDataSendingEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon;->dataSendingEnabled:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDispatchPeriodSeconds()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon;->dispatchPeriodSeconds:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLogs()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon;->logs:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMaxReportsCount()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon;->maxReportsCount:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMaxReportsInDatabaseCount()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon;->maxReportsInDatabaseCount:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSessionTimeout()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon;->sessionTimeout:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUserProfileID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon;->userProfileID:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setApiKey(Ljava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon;->apiKey:Ljava/lang/String;

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v0, "Nonnull field \"apiKey\" is null."

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public setAppEnvironment(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon;->appEnvironment:Ljava/util/Map;

    .line 2
    .line 3
    return-void
.end method

.method public setDataSendingEnabled(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon;->dataSendingEnabled:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public setDispatchPeriodSeconds(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon;->dispatchPeriodSeconds:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public setLogs(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon;->logs:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public setMaxReportsCount(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon;->maxReportsCount:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public setMaxReportsInDatabaseCount(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon;->maxReportsInDatabaseCount:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public setSessionTimeout(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon;->sessionTimeout:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public setUserProfileID(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon;->userProfileID:Ljava/lang/String;

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
    const/16 v1, 0x9

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon;->apiKey:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon;->appEnvironment:Ljava/util/Map;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon;->dataSendingEnabled:Ljava/lang/Boolean;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon;->dispatchPeriodSeconds:Ljava/lang/Long;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon;->logs:Ljava/lang/Boolean;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon;->maxReportsCount:Ljava/lang/Long;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon;->maxReportsInDatabaseCount:Ljava/lang/Long;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon;->sessionTimeout:Ljava/lang/Long;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lio/appmetrica/analytics/flutter/pigeon/Pigeon$ReporterConfigPigeon;->userProfileID:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    return-object v0
.end method
