.class public final Lqb/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqb/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lqb/e$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 2

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "com.pravera.flutter_foreground_task.prefs.FOREGROUND_TASK_OPTIONS"

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 18
    .line 19
    .line 20
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final b(Landroid/content/Context;)Lqb/e;
    .locals 11

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "com.pravera.flutter_foreground_task.prefs.FOREGROUND_TASK_OPTIONS"

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-string v0, "taskEventAction"

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    sget-object v2, Lqb/c;->c:Lqb/c$a;

    .line 23
    .line 24
    invoke-virtual {v2, v0}, Lqb/c$a;->a(Ljava/lang/String;)Lqb/c;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    :goto_0
    move-object v6, v0

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    const-string v0, "isOnceEvent"

    .line 31
    .line 32
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    const-string v2, "interval"

    .line 37
    .line 38
    const-wide/16 v3, 0x1388

    .line 39
    .line 40
    invoke-interface {p1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 41
    .line 42
    .line 43
    move-result-wide v2

    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    new-instance v0, Lqb/c;

    .line 47
    .line 48
    sget-object v4, Lqb/d;->d:Lqb/d;

    .line 49
    .line 50
    invoke-direct {v0, v4, v2, v3}, Lqb/c;-><init>(Lqb/d;J)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    new-instance v0, Lqb/c;

    .line 55
    .line 56
    sget-object v4, Lqb/d;->e:Lqb/d;

    .line 57
    .line 58
    invoke-direct {v0, v4, v2, v3}, Lqb/c;-><init>(Lqb/d;J)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :goto_1
    const-string v0, "autoRunOnBoot"

    .line 63
    .line 64
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 65
    .line 66
    .line 67
    move-result v7

    .line 68
    const-string v0, "autoRunOnMyPackageReplaced"

    .line 69
    .line 70
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 71
    .line 72
    .line 73
    move-result v8

    .line 74
    const-string v0, "allowWakeLock"

    .line 75
    .line 76
    const/4 v2, 0x1

    .line 77
    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 78
    .line 79
    .line 80
    move-result v9

    .line 81
    const-string v0, "allowWifiLock"

    .line 82
    .line 83
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 84
    .line 85
    .line 86
    move-result v10

    .line 87
    new-instance p1, Lqb/e;

    .line 88
    .line 89
    move-object v5, p1

    .line 90
    invoke-direct/range {v5 .. v10}, Lqb/e;-><init>(Lqb/c;ZZZZ)V

    .line 91
    .line 92
    .line 93
    return-object p1
.end method

.method public final c(Landroid/content/Context;Ljava/util/Map;)V
    .locals 12

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "com.pravera.flutter_foreground_task.prefs.FOREGROUND_TASK_OPTIONS"

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-string v0, "taskEventAction"

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object v3, v2

    .line 24
    :goto_0
    instance-of v4, v3, Ljava/util/Map;

    .line 25
    .line 26
    if-eqz v4, :cond_1

    .line 27
    .line 28
    check-cast v3, Ljava/util/Map;

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    move-object v3, v2

    .line 32
    :goto_1
    if-eqz v3, :cond_2

    .line 33
    .line 34
    new-instance v4, Lorg/json/JSONObject;

    .line 35
    .line 36
    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    goto :goto_2

    .line 44
    :cond_2
    move-object v3, v2

    .line 45
    :goto_2
    const-string v4, "autoRunOnBoot"

    .line 46
    .line 47
    if-eqz p2, :cond_3

    .line 48
    .line 49
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    goto :goto_3

    .line 54
    :cond_3
    move-object v5, v2

    .line 55
    :goto_3
    instance-of v6, v5, Ljava/lang/Boolean;

    .line 56
    .line 57
    if-eqz v6, :cond_4

    .line 58
    .line 59
    check-cast v5, Ljava/lang/Boolean;

    .line 60
    .line 61
    goto :goto_4

    .line 62
    :cond_4
    move-object v5, v2

    .line 63
    :goto_4
    if-eqz v5, :cond_5

    .line 64
    .line 65
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    goto :goto_5

    .line 70
    :cond_5
    move v5, v1

    .line 71
    :goto_5
    const-string v6, "autoRunOnMyPackageReplaced"

    .line 72
    .line 73
    if-eqz p2, :cond_6

    .line 74
    .line 75
    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    goto :goto_6

    .line 80
    :cond_6
    move-object v7, v2

    .line 81
    :goto_6
    instance-of v8, v7, Ljava/lang/Boolean;

    .line 82
    .line 83
    if-eqz v8, :cond_7

    .line 84
    .line 85
    check-cast v7, Ljava/lang/Boolean;

    .line 86
    .line 87
    goto :goto_7

    .line 88
    :cond_7
    move-object v7, v2

    .line 89
    :goto_7
    if-eqz v7, :cond_8

    .line 90
    .line 91
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 92
    .line 93
    .line 94
    move-result v7

    .line 95
    goto :goto_8

    .line 96
    :cond_8
    move v7, v1

    .line 97
    :goto_8
    const-string v8, "allowWakeLock"

    .line 98
    .line 99
    if-eqz p2, :cond_9

    .line 100
    .line 101
    invoke-interface {p2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v9

    .line 105
    goto :goto_9

    .line 106
    :cond_9
    move-object v9, v2

    .line 107
    :goto_9
    instance-of v10, v9, Ljava/lang/Boolean;

    .line 108
    .line 109
    if-eqz v10, :cond_a

    .line 110
    .line 111
    check-cast v9, Ljava/lang/Boolean;

    .line 112
    .line 113
    goto :goto_a

    .line 114
    :cond_a
    move-object v9, v2

    .line 115
    :goto_a
    if-eqz v9, :cond_b

    .line 116
    .line 117
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    .line 118
    .line 119
    .line 120
    move-result v9

    .line 121
    goto :goto_b

    .line 122
    :cond_b
    const/4 v9, 0x1

    .line 123
    :goto_b
    const-string v10, "allowWifiLock"

    .line 124
    .line 125
    if-eqz p2, :cond_c

    .line 126
    .line 127
    invoke-interface {p2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object p2

    .line 131
    goto :goto_c

    .line 132
    :cond_c
    move-object p2, v2

    .line 133
    :goto_c
    instance-of v11, p2, Ljava/lang/Boolean;

    .line 134
    .line 135
    if-eqz v11, :cond_d

    .line 136
    .line 137
    move-object v2, p2

    .line 138
    check-cast v2, Ljava/lang/Boolean;

    .line 139
    .line 140
    :cond_d
    if-eqz v2, :cond_e

    .line 141
    .line 142
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    :cond_e
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 151
    .line 152
    .line 153
    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 154
    .line 155
    .line 156
    invoke-interface {p1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 157
    .line 158
    .line 159
    invoke-interface {p1, v8, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 160
    .line 161
    .line 162
    invoke-interface {p1, v10, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 163
    .line 164
    .line 165
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 166
    .line 167
    .line 168
    return-void
.end method

.method public final d(Landroid/content/Context;Ljava/util/Map;)V
    .locals 11

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "com.pravera.flutter_foreground_task.prefs.FOREGROUND_TASK_OPTIONS"

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-string v0, "taskEventAction"

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object v2, v1

    .line 24
    :goto_0
    instance-of v3, v2, Ljava/util/Map;

    .line 25
    .line 26
    if-eqz v3, :cond_1

    .line 27
    .line 28
    check-cast v2, Ljava/util/Map;

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    move-object v2, v1

    .line 32
    :goto_1
    if-eqz v2, :cond_2

    .line 33
    .line 34
    new-instance v3, Lorg/json/JSONObject;

    .line 35
    .line 36
    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    goto :goto_2

    .line 44
    :cond_2
    move-object v2, v1

    .line 45
    :goto_2
    const-string v3, "autoRunOnBoot"

    .line 46
    .line 47
    if-eqz p2, :cond_3

    .line 48
    .line 49
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    goto :goto_3

    .line 54
    :cond_3
    move-object v4, v1

    .line 55
    :goto_3
    instance-of v5, v4, Ljava/lang/Boolean;

    .line 56
    .line 57
    if-eqz v5, :cond_4

    .line 58
    .line 59
    check-cast v4, Ljava/lang/Boolean;

    .line 60
    .line 61
    goto :goto_4

    .line 62
    :cond_4
    move-object v4, v1

    .line 63
    :goto_4
    const-string v5, "autoRunOnMyPackageReplaced"

    .line 64
    .line 65
    if-eqz p2, :cond_5

    .line 66
    .line 67
    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    goto :goto_5

    .line 72
    :cond_5
    move-object v6, v1

    .line 73
    :goto_5
    instance-of v7, v6, Ljava/lang/Boolean;

    .line 74
    .line 75
    if-eqz v7, :cond_6

    .line 76
    .line 77
    check-cast v6, Ljava/lang/Boolean;

    .line 78
    .line 79
    goto :goto_6

    .line 80
    :cond_6
    move-object v6, v1

    .line 81
    :goto_6
    const-string v7, "allowWakeLock"

    .line 82
    .line 83
    if-eqz p2, :cond_7

    .line 84
    .line 85
    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v8

    .line 89
    goto :goto_7

    .line 90
    :cond_7
    move-object v8, v1

    .line 91
    :goto_7
    instance-of v9, v8, Ljava/lang/Boolean;

    .line 92
    .line 93
    if-eqz v9, :cond_8

    .line 94
    .line 95
    check-cast v8, Ljava/lang/Boolean;

    .line 96
    .line 97
    goto :goto_8

    .line 98
    :cond_8
    move-object v8, v1

    .line 99
    :goto_8
    const-string v9, "allowWifiLock"

    .line 100
    .line 101
    if-eqz p2, :cond_9

    .line 102
    .line 103
    invoke-interface {p2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    goto :goto_9

    .line 108
    :cond_9
    move-object p2, v1

    .line 109
    :goto_9
    instance-of v10, p2, Ljava/lang/Boolean;

    .line 110
    .line 111
    if-eqz v10, :cond_a

    .line 112
    .line 113
    move-object v1, p2

    .line 114
    check-cast v1, Ljava/lang/Boolean;

    .line 115
    .line 116
    :cond_a
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    if-eqz v2, :cond_b

    .line 121
    .line 122
    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 123
    .line 124
    .line 125
    :cond_b
    if-eqz v4, :cond_c

    .line 126
    .line 127
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 128
    .line 129
    .line 130
    move-result p2

    .line 131
    invoke-interface {p1, v3, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 132
    .line 133
    .line 134
    :cond_c
    if-eqz v6, :cond_d

    .line 135
    .line 136
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 137
    .line 138
    .line 139
    move-result p2

    .line 140
    invoke-interface {p1, v5, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 141
    .line 142
    .line 143
    :cond_d
    if-eqz v8, :cond_e

    .line 144
    .line 145
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 146
    .line 147
    .line 148
    move-result p2

    .line 149
    invoke-interface {p1, v7, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 150
    .line 151
    .line 152
    :cond_e
    if-eqz v1, :cond_f

    .line 153
    .line 154
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 155
    .line 156
    .line 157
    move-result p2

    .line 158
    invoke-interface {p1, v9, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 159
    .line 160
    .line 161
    :cond_f
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 162
    .line 163
    .line 164
    return-void
.end method
