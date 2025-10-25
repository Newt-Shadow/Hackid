.class public Lio/appmetrica/analytics/AppMetricaLibraryAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lio/appmetrica/analytics/impl/v0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/appmetrica/analytics/impl/v0;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/appmetrica/analytics/impl/v0;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/appmetrica/analytics/AppMetricaLibraryAdapter;->a:Lio/appmetrica/analytics/impl/v0;

    .line 7
    .line 8
    return-void
.end method

.method public static activate(Landroid/content/Context;)V
    .locals 3

    .line 1
    sget-object v0, Lio/appmetrica/analytics/AppMetricaLibraryAdapter;->a:Lio/appmetrica/analytics/impl/v0;

    .line 2
    iget-object v1, v0, Lio/appmetrica/analytics/impl/v0;->a:Lio/appmetrica/analytics/impl/Mb;

    .line 3
    iget-object v1, v1, Lio/appmetrica/analytics/impl/Mb;->a:Lio/appmetrica/analytics/impl/ae;

    .line 4
    invoke-virtual {v1, p0}, Lio/appmetrica/analytics/impl/ae;->a(Ljava/lang/Object;)Lio/appmetrica/analytics/impl/Wn;

    move-result-object v1

    .line 5
    iget-boolean v1, v1, Lio/appmetrica/analytics/impl/Wn;->a:Z

    if-eqz v1, :cond_0

    .line 6
    iget-object v0, v0, Lio/appmetrica/analytics/impl/v0;->b:Lio/appmetrica/analytics/impl/Nb;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    invoke-static {}, Lio/appmetrica/analytics/impl/t4;->j()Lio/appmetrica/analytics/impl/t4;

    move-result-object v0

    .line 8
    iget-object v0, v0, Lio/appmetrica/analytics/impl/t4;->g:Lio/appmetrica/analytics/impl/T5;

    .line 9
    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/impl/T5;->a(Landroid/content/Context;)V

    .line 10
    invoke-static {}, Lio/appmetrica/analytics/impl/t4;->j()Lio/appmetrica/analytics/impl/t4;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/t4;->b()Lio/appmetrica/analytics/impl/U;

    move-result-object v0

    .line 11
    invoke-static {}, Lio/appmetrica/analytics/AppMetricaLibraryAdapterConfig;->newConfigBuilder()Lio/appmetrica/analytics/AppMetricaLibraryAdapterConfig$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lio/appmetrica/analytics/AppMetricaLibraryAdapterConfig$Builder;->build()Lio/appmetrica/analytics/AppMetricaLibraryAdapterConfig;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lio/appmetrica/analytics/impl/U;->a(Landroid/content/Context;Lio/appmetrica/analytics/AppMetricaLibraryAdapterConfig;)V

    goto :goto_0

    .line 12
    :cond_0
    sget-object p0, Lio/appmetrica/analytics/logger/appmetrica/internal/ImportantLogger;->INSTANCE:Lio/appmetrica/analytics/logger/appmetrica/internal/ImportantLogger;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "[AppMetricaLibraryAdapterProxy]"

    const-string v2, "Activation failed due to context is null"

    invoke-virtual {p0, v1, v2, v0}, Lio/appmetrica/analytics/logger/common/BaseImportantLogger;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static activate(Landroid/content/Context;Lio/appmetrica/analytics/AppMetricaLibraryAdapterConfig;)V
    .locals 3

    .line 13
    sget-object v0, Lio/appmetrica/analytics/AppMetricaLibraryAdapter;->a:Lio/appmetrica/analytics/impl/v0;

    .line 14
    iget-object v1, v0, Lio/appmetrica/analytics/impl/v0;->a:Lio/appmetrica/analytics/impl/Mb;

    .line 15
    iget-object v2, v1, Lio/appmetrica/analytics/impl/Mb;->a:Lio/appmetrica/analytics/impl/ae;

    .line 16
    invoke-virtual {v2, p0}, Lio/appmetrica/analytics/impl/ae;->a(Ljava/lang/Object;)Lio/appmetrica/analytics/impl/Wn;

    move-result-object v2

    .line 17
    iget-boolean v2, v2, Lio/appmetrica/analytics/impl/Wn;->a:Z

    if-eqz v2, :cond_0

    .line 18
    iget-object v1, v1, Lio/appmetrica/analytics/impl/Mb;->b:Lio/appmetrica/analytics/impl/ae;

    invoke-virtual {v1, p1}, Lio/appmetrica/analytics/impl/ae;->a(Ljava/lang/Object;)Lio/appmetrica/analytics/impl/Wn;

    move-result-object v1

    .line 19
    iget-boolean v1, v1, Lio/appmetrica/analytics/impl/Wn;->a:Z

    if-eqz v1, :cond_0

    .line 20
    iget-object v0, v0, Lio/appmetrica/analytics/impl/v0;->b:Lio/appmetrica/analytics/impl/Nb;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    invoke-static {}, Lio/appmetrica/analytics/impl/t4;->j()Lio/appmetrica/analytics/impl/t4;

    move-result-object v0

    .line 22
    iget-object v0, v0, Lio/appmetrica/analytics/impl/t4;->g:Lio/appmetrica/analytics/impl/T5;

    .line 23
    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/impl/T5;->a(Landroid/content/Context;)V

    .line 24
    invoke-static {}, Lio/appmetrica/analytics/impl/t4;->j()Lio/appmetrica/analytics/impl/t4;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/t4;->b()Lio/appmetrica/analytics/impl/U;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lio/appmetrica/analytics/impl/U;->a(Landroid/content/Context;Lio/appmetrica/analytics/AppMetricaLibraryAdapterConfig;)V

    goto :goto_0

    .line 25
    :cond_0
    sget-object p0, Lio/appmetrica/analytics/logger/appmetrica/internal/ImportantLogger;->INSTANCE:Lio/appmetrica/analytics/logger/appmetrica/internal/ImportantLogger;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "[AppMetricaLibraryAdapterProxy]"

    const-string v1, "Activation failed due to context is null or invalid config"

    invoke-virtual {p0, v0, v1, p1}, Lio/appmetrica/analytics/logger/common/BaseImportantLogger;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    sget-object v0, Lio/appmetrica/analytics/AppMetricaLibraryAdapter;->a:Lio/appmetrica/analytics/impl/v0;

    .line 2
    .line 3
    iget-object v1, v0, Lio/appmetrica/analytics/impl/v0;->a:Lio/appmetrica/analytics/impl/Mb;

    .line 4
    .line 5
    iget-object v2, v1, Lio/appmetrica/analytics/impl/Mb;->c:Lio/appmetrica/analytics/impl/Sk;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-virtual {v2, v3}, Lio/appmetrica/analytics/impl/Sk;->a(Ljava/lang/Void;)Lio/appmetrica/analytics/impl/Wn;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    iget-boolean v2, v2, Lio/appmetrica/analytics/impl/Wn;->a:Z

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    if-eqz v2, :cond_3

    .line 16
    .line 17
    iget-object v2, v1, Lio/appmetrica/analytics/impl/Mb;->d:Lio/appmetrica/analytics/impl/ae;

    .line 18
    .line 19
    invoke-virtual {v2, p0}, Lio/appmetrica/analytics/impl/ae;->a(Ljava/lang/Object;)Lio/appmetrica/analytics/impl/Wn;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    iget-boolean v2, v2, Lio/appmetrica/analytics/impl/Wn;->a:Z

    .line 24
    .line 25
    if-eqz v2, :cond_3

    .line 26
    .line 27
    iget-object v2, v1, Lio/appmetrica/analytics/impl/Mb;->e:Lio/appmetrica/analytics/impl/ae;

    .line 28
    .line 29
    invoke-virtual {v2, p1}, Lio/appmetrica/analytics/impl/ae;->a(Ljava/lang/Object;)Lio/appmetrica/analytics/impl/Wn;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    iget-boolean v2, v2, Lio/appmetrica/analytics/impl/Wn;->a:Z

    .line 34
    .line 35
    if-eqz v2, :cond_3

    .line 36
    .line 37
    iget-object v1, v1, Lio/appmetrica/analytics/impl/Mb;->f:Lio/appmetrica/analytics/impl/ae;

    .line 38
    .line 39
    invoke-virtual {v1, p2}, Lio/appmetrica/analytics/impl/ae;->a(Ljava/lang/Object;)Lio/appmetrica/analytics/impl/Wn;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iget-boolean v1, v1, Lio/appmetrica/analytics/impl/Wn;->a:Z

    .line 44
    .line 45
    if-eqz v1, :cond_3

    .line 46
    .line 47
    iget-object v1, v0, Lio/appmetrica/analytics/impl/v0;->b:Lio/appmetrica/analytics/impl/Nb;

    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    iget-object v0, v0, Lio/appmetrica/analytics/impl/v0;->c:Lio/appmetrica/analytics/impl/Pb;

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    const/4 v0, 0x4

    .line 58
    invoke-static {v0}, Lio/appmetrica/analytics/ModuleEvent;->newBuilder(I)Lio/appmetrica/analytics/ModuleEvent$Builder;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    const-string v1, "appmetrica_system_event_42"

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/ModuleEvent$Builder;->withName(Ljava/lang/String;)Lio/appmetrica/analytics/ModuleEvent$Builder;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    const/4 v1, 0x3

    .line 69
    new-array v1, v1, [Lxc/k;

    .line 70
    .line 71
    const-string v2, "null"

    .line 72
    .line 73
    if-nez p0, :cond_0

    .line 74
    .line 75
    move-object p0, v2

    .line 76
    :cond_0
    const-string v4, "sender"

    .line 77
    .line 78
    invoke-static {v4, p0}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    aput-object p0, v1, v3

    .line 83
    .line 84
    if-nez p1, :cond_1

    .line 85
    .line 86
    move-object p1, v2

    .line 87
    :cond_1
    const-string p0, "event"

    .line 88
    .line 89
    invoke-static {p0, p1}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    const/4 p1, 0x1

    .line 94
    aput-object p0, v1, p1

    .line 95
    .line 96
    if-nez p2, :cond_2

    .line 97
    .line 98
    move-object p2, v2

    .line 99
    :cond_2
    const-string p0, "payload"

    .line 100
    .line 101
    invoke-static {p0, p2}, Lxc/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Lxc/k;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    const/4 p1, 0x2

    .line 106
    aput-object p0, v1, p1

    .line 107
    .line 108
    invoke-static {v1}, Lyc/e0;->h([Lxc/k;)Ljava/util/Map;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/ModuleEvent$Builder;->withAttributes(Ljava/util/Map;)Lio/appmetrica/analytics/ModuleEvent$Builder;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    invoke-virtual {p0}, Lio/appmetrica/analytics/ModuleEvent$Builder;->build()Lio/appmetrica/analytics/ModuleEvent;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    invoke-static {p0}, Lio/appmetrica/analytics/ModulesFacade;->reportEvent(Lio/appmetrica/analytics/ModuleEvent;)V

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    const-string v1, "Failed report event from sender: "

    .line 127
    .line 128
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    const-string p0, " with name = "

    .line 135
    .line 136
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    const-string p0, " and payload = "

    .line 143
    .line 144
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    sget-object p1, Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;->Companion:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger$Companion;

    .line 155
    .line 156
    invoke-virtual {p1}, Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger$Companion;->getAnonymousInstance()Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    new-instance p2, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    const-string v0, "[AppMetricaLibraryAdapterProxy]"

    .line 163
    .line 164
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p0

    .line 174
    new-array p2, v3, [Ljava/lang/Object;

    .line 175
    .line 176
    invoke-virtual {p1, p0, p2}, Lio/appmetrica/analytics/logger/common/BaseReleaseLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    :goto_0
    return-void
.end method

.method public static setAdvIdentifiersTracking(Z)V
    .locals 3

    .line 1
    sget-object v0, Lio/appmetrica/analytics/AppMetricaLibraryAdapter;->a:Lio/appmetrica/analytics/impl/v0;

    .line 2
    .line 3
    iget-object v1, v0, Lio/appmetrica/analytics/impl/v0;->a:Lio/appmetrica/analytics/impl/Mb;

    .line 4
    .line 5
    iget-object v1, v1, Lio/appmetrica/analytics/impl/Mb;->c:Lio/appmetrica/analytics/impl/Sk;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v1, v2}, Lio/appmetrica/analytics/impl/Sk;->a(Ljava/lang/Void;)Lio/appmetrica/analytics/impl/Wn;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iget-boolean v1, v1, Lio/appmetrica/analytics/impl/Wn;->a:Z

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    iget-object v0, v0, Lio/appmetrica/analytics/impl/v0;->b:Lio/appmetrica/analytics/impl/Nb;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-static {p0}, Lio/appmetrica/analytics/ModulesFacade;->setAdvIdentifiersTracking(Z)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public static setProxy(Lio/appmetrica/analytics/impl/v0;)V
    .locals 0

    .line 1
    sput-object p0, Lio/appmetrica/analytics/AppMetricaLibraryAdapter;->a:Lio/appmetrica/analytics/impl/v0;

    .line 2
    .line 3
    return-void
.end method
