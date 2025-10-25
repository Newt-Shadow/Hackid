.class public Lcom/yandex/metrica/f;
.super Lcom/yandex/metrica/ReporterConfig;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/f$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Integer;

.field public final b:Ljava/lang/Integer;

.field public final c:Ljava/util/Map;


# direct methods
.method private constructor <init>(Lcom/yandex/metrica/ReporterConfig;)V
    .locals 1

    .line 6
    invoke-direct {p0, p1}, Lcom/yandex/metrica/ReporterConfig;-><init>(Lcom/yandex/metrica/ReporterConfig;)V

    .line 7
    instance-of v0, p1, Lcom/yandex/metrica/f;

    if-eqz v0, :cond_0

    .line 8
    check-cast p1, Lcom/yandex/metrica/f;

    .line 9
    iget-object v0, p1, Lcom/yandex/metrica/f;->a:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/yandex/metrica/f;->a:Ljava/lang/Integer;

    .line 10
    iget-object v0, p1, Lcom/yandex/metrica/f;->b:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/yandex/metrica/f;->b:Ljava/lang/Integer;

    .line 11
    iget-object p1, p1, Lcom/yandex/metrica/f;->c:Ljava/util/Map;

    iput-object p1, p0, Lcom/yandex/metrica/f;->c:Ljava/util/Map;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lcom/yandex/metrica/f;->a:Ljava/lang/Integer;

    .line 13
    iput-object p1, p0, Lcom/yandex/metrica/f;->b:Ljava/lang/Integer;

    .line 14
    iput-object p1, p0, Lcom/yandex/metrica/f;->c:Ljava/util/Map;

    :goto_0
    return-void
.end method

.method constructor <init>(Lcom/yandex/metrica/f$a;)V
    .locals 1

    .line 1
    iget-object v0, p1, Lcom/yandex/metrica/f$a;->a:Lcom/yandex/metrica/ReporterConfig$Builder;

    invoke-direct {p0, v0}, Lcom/yandex/metrica/ReporterConfig;-><init>(Lcom/yandex/metrica/ReporterConfig$Builder;)V

    .line 2
    iget-object v0, p1, Lcom/yandex/metrica/f$a;->b:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/yandex/metrica/f;->b:Ljava/lang/Integer;

    .line 3
    iget-object v0, p1, Lcom/yandex/metrica/f$a;->c:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/yandex/metrica/f;->a:Ljava/lang/Integer;

    .line 4
    iget-object p1, p1, Lcom/yandex/metrica/f$a;->d:Ljava/util/LinkedHashMap;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/A2;->e(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/yandex/metrica/f;->c:Ljava/util/Map;

    return-void
.end method

.method public static a(Lcom/yandex/metrica/f;)Lcom/yandex/metrica/f$a;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/ReporterConfig;->apiKey:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Lcom/yandex/metrica/f$a;

    .line 4
    .line 5
    invoke-direct {v1, v0}, Lcom/yandex/metrica/f$a;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/yandex/metrica/ReporterConfig;->sessionTimeout:Ljava/lang/Integer;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/yandex/metrica/ReporterConfig;->sessionTimeout:Ljava/lang/Integer;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget-object v2, v1, Lcom/yandex/metrica/f$a;->a:Lcom/yandex/metrica/ReporterConfig$Builder;

    .line 23
    .line 24
    invoke-virtual {v2, v0}, Lcom/yandex/metrica/ReporterConfig$Builder;->withSessionTimeout(I)Lcom/yandex/metrica/ReporterConfig$Builder;

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/yandex/metrica/ReporterConfig;->logs:Ljava/lang/Boolean;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    iget-object v0, p0, Lcom/yandex/metrica/ReporterConfig;->logs:Ljava/lang/Boolean;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    iget-object v0, v1, Lcom/yandex/metrica/f$a;->a:Lcom/yandex/metrica/ReporterConfig$Builder;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/yandex/metrica/ReporterConfig$Builder;->withLogs()Lcom/yandex/metrica/ReporterConfig$Builder;

    .line 46
    .line 47
    .line 48
    :cond_1
    iget-object v0, p0, Lcom/yandex/metrica/ReporterConfig;->statisticsSending:Ljava/lang/Boolean;

    .line 49
    .line 50
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    iget-object v0, p0, Lcom/yandex/metrica/ReporterConfig;->statisticsSending:Ljava/lang/Boolean;

    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    iget-object v2, v1, Lcom/yandex/metrica/f$a;->a:Lcom/yandex/metrica/ReporterConfig$Builder;

    .line 63
    .line 64
    invoke-virtual {v2, v0}, Lcom/yandex/metrica/ReporterConfig$Builder;->withStatisticsSending(Z)Lcom/yandex/metrica/ReporterConfig$Builder;

    .line 65
    .line 66
    .line 67
    :cond_2
    iget-object v0, p0, Lcom/yandex/metrica/ReporterConfig;->maxReportsInDatabaseCount:Ljava/lang/Integer;

    .line 68
    .line 69
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_3

    .line 74
    .line 75
    iget-object v0, p0, Lcom/yandex/metrica/ReporterConfig;->maxReportsInDatabaseCount:Ljava/lang/Integer;

    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    iget-object v2, v1, Lcom/yandex/metrica/f$a;->a:Lcom/yandex/metrica/ReporterConfig$Builder;

    .line 82
    .line 83
    invoke-virtual {v2, v0}, Lcom/yandex/metrica/ReporterConfig$Builder;->withMaxReportsInDatabaseCount(I)Lcom/yandex/metrica/ReporterConfig$Builder;

    .line 84
    .line 85
    .line 86
    :cond_3
    iget-object v0, p0, Lcom/yandex/metrica/f;->a:Ljava/lang/Integer;

    .line 87
    .line 88
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-eqz v0, :cond_4

    .line 93
    .line 94
    iget-object v0, p0, Lcom/yandex/metrica/f;->a:Ljava/lang/Integer;

    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    iput-object v0, v1, Lcom/yandex/metrica/f$a;->c:Ljava/lang/Integer;

    .line 105
    .line 106
    :cond_4
    iget-object v0, p0, Lcom/yandex/metrica/f;->b:Ljava/lang/Integer;

    .line 107
    .line 108
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-eqz v0, :cond_5

    .line 113
    .line 114
    iget-object v0, p0, Lcom/yandex/metrica/f;->b:Ljava/lang/Integer;

    .line 115
    .line 116
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    iput-object v0, v1, Lcom/yandex/metrica/f$a;->b:Ljava/lang/Integer;

    .line 125
    .line 126
    :cond_5
    iget-object v0, p0, Lcom/yandex/metrica/f;->c:Ljava/util/Map;

    .line 127
    .line 128
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    if-eqz v0, :cond_6

    .line 133
    .line 134
    iget-object v0, p0, Lcom/yandex/metrica/f;->c:Ljava/util/Map;

    .line 135
    .line 136
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    if-eqz v2, :cond_6

    .line 149
    .line 150
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    check-cast v2, Ljava/util/Map$Entry;

    .line 155
    .line 156
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    check-cast v3, Ljava/lang/String;

    .line 161
    .line 162
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    check-cast v2, Ljava/lang/String;

    .line 167
    .line 168
    iget-object v4, v1, Lcom/yandex/metrica/f$a;->d:Ljava/util/LinkedHashMap;

    .line 169
    .line 170
    invoke-virtual {v4, v3, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    goto :goto_0

    .line 174
    :cond_6
    iget-object v0, p0, Lcom/yandex/metrica/ReporterConfig;->userProfileID:Ljava/lang/String;

    .line 175
    .line 176
    invoke-static {v0}, Lcom/yandex/metrica/impl/ob/A2;->a(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    if-eqz v0, :cond_7

    .line 181
    .line 182
    iget-object p0, p0, Lcom/yandex/metrica/ReporterConfig;->userProfileID:Ljava/lang/String;

    .line 183
    .line 184
    iget-object v0, v1, Lcom/yandex/metrica/f$a;->a:Lcom/yandex/metrica/ReporterConfig$Builder;

    .line 185
    .line 186
    invoke-virtual {v0, p0}, Lcom/yandex/metrica/ReporterConfig$Builder;->withUserProfileID(Ljava/lang/String;)Lcom/yandex/metrica/ReporterConfig$Builder;

    .line 187
    .line 188
    .line 189
    :cond_7
    return-object v1
.end method

.method public static b(Ljava/lang/String;)Lcom/yandex/metrica/f$a;
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/f$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/yandex/metrica/f$a;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static c(Lcom/yandex/metrica/ReporterConfig;)Lcom/yandex/metrica/f;
    .locals 1

    .line 1
    instance-of v0, p0, Lcom/yandex/metrica/f;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lcom/yandex/metrica/f;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    new-instance v0, Lcom/yandex/metrica/f;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/yandex/metrica/f;-><init>(Lcom/yandex/metrica/ReporterConfig;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method
