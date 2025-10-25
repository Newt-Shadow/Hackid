.class public final Lqb/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqb/g;
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
    invoke-direct {p0}, Lqb/g$a;-><init>()V

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
    const-string v0, "com.pravera.flutter_foreground_task.prefs.NOTIFICATION_OPTIONS"

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

.method public final b(Landroid/content/Context;)Lqb/g;
    .locals 10

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "com.pravera.flutter_foreground_task.prefs.NOTIFICATION_OPTIONS"

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
    const-string v0, "notificationContentTitle"

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
    const-string v3, ""

    .line 21
    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    move-object v5, v3

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move-object v5, v0

    .line 27
    :goto_0
    const-string v0, "notificationContentText"

    .line 28
    .line 29
    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    move-object v6, v3

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    move-object v6, v0

    .line 38
    :goto_1
    const-string v0, "icon"

    .line 39
    .line 40
    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    sget-object v3, Lqb/h;->c:Lqb/h$a;

    .line 47
    .line 48
    invoke-virtual {v3, v0}, Lqb/h$a;->a(Ljava/lang/String;)Lqb/h;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    move-object v7, v0

    .line 53
    goto :goto_2

    .line 54
    :cond_2
    move-object v7, v2

    .line 55
    :goto_2
    const-string v0, "buttons"

    .line 56
    .line 57
    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    new-instance v8, Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .line 65
    .line 66
    if-eqz v0, :cond_3

    .line 67
    .line 68
    new-instance v3, Lorg/json/JSONArray;

    .line 69
    .line 70
    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    :goto_3
    if-ge v1, v0, :cond_3

    .line 78
    .line 79
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    sget-object v9, Lqb/f;->d:Lqb/f$a;

    .line 84
    .line 85
    invoke-static {v4}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v9, v4}, Lqb/f$a;->a(Lorg/json/JSONObject;)Lqb/f;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    add-int/lit8 v1, v1, 0x1

    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_3
    const-string v0, "initialRoute"

    .line 99
    .line 100
    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v9

    .line 104
    new-instance p1, Lqb/g;

    .line 105
    .line 106
    move-object v4, p1

    .line 107
    invoke-direct/range {v4 .. v9}, Lqb/g;-><init>(Ljava/lang/String;Ljava/lang/String;Lqb/h;Ljava/util/List;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    return-object p1
.end method

.method public final c(Landroid/content/Context;Ljava/util/Map;)V
    .locals 11

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "com.pravera.flutter_foreground_task.prefs.NOTIFICATION_OPTIONS"

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
    const-string v0, "notificationContentTitle"

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
    instance-of v3, v2, Ljava/lang/String;

    .line 25
    .line 26
    if-eqz v3, :cond_1

    .line 27
    .line 28
    check-cast v2, Ljava/lang/String;

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    move-object v2, v1

    .line 32
    :goto_1
    const-string v3, ""

    .line 33
    .line 34
    if-nez v2, :cond_2

    .line 35
    .line 36
    move-object v2, v3

    .line 37
    :cond_2
    const-string v4, "notificationContentText"

    .line 38
    .line 39
    if-eqz p2, :cond_3

    .line 40
    .line 41
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    goto :goto_2

    .line 46
    :cond_3
    move-object v5, v1

    .line 47
    :goto_2
    instance-of v6, v5, Ljava/lang/String;

    .line 48
    .line 49
    if-eqz v6, :cond_4

    .line 50
    .line 51
    check-cast v5, Ljava/lang/String;

    .line 52
    .line 53
    goto :goto_3

    .line 54
    :cond_4
    move-object v5, v1

    .line 55
    :goto_3
    if-nez v5, :cond_5

    .line 56
    .line 57
    goto :goto_4

    .line 58
    :cond_5
    move-object v3, v5

    .line 59
    :goto_4
    const-string v5, "icon"

    .line 60
    .line 61
    if-eqz p2, :cond_6

    .line 62
    .line 63
    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    goto :goto_5

    .line 68
    :cond_6
    move-object v6, v1

    .line 69
    :goto_5
    instance-of v7, v6, Ljava/util/Map;

    .line 70
    .line 71
    if-eqz v7, :cond_7

    .line 72
    .line 73
    check-cast v6, Ljava/util/Map;

    .line 74
    .line 75
    goto :goto_6

    .line 76
    :cond_7
    move-object v6, v1

    .line 77
    :goto_6
    if-eqz v6, :cond_8

    .line 78
    .line 79
    new-instance v7, Lorg/json/JSONObject;

    .line 80
    .line 81
    invoke-direct {v7, v6}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    goto :goto_7

    .line 89
    :cond_8
    move-object v6, v1

    .line 90
    :goto_7
    const-string v7, "buttons"

    .line 91
    .line 92
    if-eqz p2, :cond_9

    .line 93
    .line 94
    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v8

    .line 98
    goto :goto_8

    .line 99
    :cond_9
    move-object v8, v1

    .line 100
    :goto_8
    instance-of v9, v8, Ljava/util/List;

    .line 101
    .line 102
    if-eqz v9, :cond_a

    .line 103
    .line 104
    check-cast v8, Ljava/util/List;

    .line 105
    .line 106
    goto :goto_9

    .line 107
    :cond_a
    move-object v8, v1

    .line 108
    :goto_9
    if-eqz v8, :cond_b

    .line 109
    .line 110
    new-instance v9, Lorg/json/JSONArray;

    .line 111
    .line 112
    check-cast v8, Ljava/util/Collection;

    .line 113
    .line 114
    invoke-direct {v9, v8}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v9}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v8

    .line 121
    goto :goto_a

    .line 122
    :cond_b
    move-object v8, v1

    .line 123
    :goto_a
    const-string v9, "initialRoute"

    .line 124
    .line 125
    if-eqz p2, :cond_c

    .line 126
    .line 127
    invoke-interface {p2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object p2

    .line 131
    goto :goto_b

    .line 132
    :cond_c
    move-object p2, v1

    .line 133
    :goto_b
    instance-of v10, p2, Ljava/lang/String;

    .line 134
    .line 135
    if-eqz v10, :cond_d

    .line 136
    .line 137
    move-object v1, p2

    .line 138
    check-cast v1, Ljava/lang/String;

    .line 139
    .line 140
    :cond_d
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 145
    .line 146
    .line 147
    invoke-interface {p1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 148
    .line 149
    .line 150
    invoke-interface {p1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 151
    .line 152
    .line 153
    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 154
    .line 155
    .line 156
    invoke-interface {p1, v9, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 157
    .line 158
    .line 159
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 160
    .line 161
    .line 162
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
    const-string v0, "com.pravera.flutter_foreground_task.prefs.NOTIFICATION_OPTIONS"

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
    const-string v0, "notificationContentTitle"

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
    instance-of v3, v2, Ljava/lang/String;

    .line 25
    .line 26
    if-eqz v3, :cond_1

    .line 27
    .line 28
    check-cast v2, Ljava/lang/String;

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    move-object v2, v1

    .line 32
    :goto_1
    const-string v3, "notificationContentText"

    .line 33
    .line 34
    if-eqz p2, :cond_2

    .line 35
    .line 36
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    goto :goto_2

    .line 41
    :cond_2
    move-object v4, v1

    .line 42
    :goto_2
    instance-of v5, v4, Ljava/lang/String;

    .line 43
    .line 44
    if-eqz v5, :cond_3

    .line 45
    .line 46
    check-cast v4, Ljava/lang/String;

    .line 47
    .line 48
    goto :goto_3

    .line 49
    :cond_3
    move-object v4, v1

    .line 50
    :goto_3
    const-string v5, "icon"

    .line 51
    .line 52
    if-eqz p2, :cond_4

    .line 53
    .line 54
    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    goto :goto_4

    .line 59
    :cond_4
    move-object v6, v1

    .line 60
    :goto_4
    instance-of v7, v6, Ljava/util/Map;

    .line 61
    .line 62
    if-eqz v7, :cond_5

    .line 63
    .line 64
    check-cast v6, Ljava/util/Map;

    .line 65
    .line 66
    goto :goto_5

    .line 67
    :cond_5
    move-object v6, v1

    .line 68
    :goto_5
    if-eqz v6, :cond_6

    .line 69
    .line 70
    new-instance v7, Lorg/json/JSONObject;

    .line 71
    .line 72
    invoke-direct {v7, v6}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    goto :goto_6

    .line 80
    :cond_6
    move-object v6, v1

    .line 81
    :goto_6
    const-string v7, "buttons"

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
    instance-of v9, v8, Ljava/util/List;

    .line 92
    .line 93
    if-eqz v9, :cond_8

    .line 94
    .line 95
    check-cast v8, Ljava/util/List;

    .line 96
    .line 97
    goto :goto_8

    .line 98
    :cond_8
    move-object v8, v1

    .line 99
    :goto_8
    if-eqz v8, :cond_9

    .line 100
    .line 101
    new-instance v9, Lorg/json/JSONArray;

    .line 102
    .line 103
    check-cast v8, Ljava/util/Collection;

    .line 104
    .line 105
    invoke-direct {v9, v8}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v9}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v8

    .line 112
    goto :goto_9

    .line 113
    :cond_9
    move-object v8, v1

    .line 114
    :goto_9
    const-string v9, "initialRoute"

    .line 115
    .line 116
    if-eqz p2, :cond_a

    .line 117
    .line 118
    invoke-interface {p2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object p2

    .line 122
    goto :goto_a

    .line 123
    :cond_a
    move-object p2, v1

    .line 124
    :goto_a
    instance-of v10, p2, Ljava/lang/String;

    .line 125
    .line 126
    if-eqz v10, :cond_b

    .line 127
    .line 128
    move-object v1, p2

    .line 129
    check-cast v1, Ljava/lang/String;

    .line 130
    .line 131
    :cond_b
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    if-eqz v2, :cond_c

    .line 136
    .line 137
    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 138
    .line 139
    .line 140
    :cond_c
    if-eqz v4, :cond_d

    .line 141
    .line 142
    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 143
    .line 144
    .line 145
    :cond_d
    if-eqz v6, :cond_e

    .line 146
    .line 147
    invoke-interface {p1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 148
    .line 149
    .line 150
    :cond_e
    if-eqz v8, :cond_f

    .line 151
    .line 152
    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 153
    .line 154
    .line 155
    :cond_f
    if-eqz v1, :cond_10

    .line 156
    .line 157
    invoke-interface {p1, v9, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 158
    .line 159
    .line 160
    :cond_10
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 161
    .line 162
    .line 163
    return-void
.end method
