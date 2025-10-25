.class public final Lgb/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;
.implements Leb/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgb/c$a;
    }
.end annotation


# static fields
.field private static final d:Lgb/c$a;

.field private static volatile e:Z


# instance fields
.field private final a:Landroid/app/Application;

.field private final b:Lfb/b;

.field private c:Leb/h;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lgb/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgb/c$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lgb/c;->d:Lgb/c$a;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Lfb/b;)V
    .locals 1

    .line 1
    const-string v0, "application"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "config"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lgb/c;->a:Landroid/app/Application;

    .line 15
    .line 16
    iput-object p2, p0, Lgb/c;->b:Lfb/b;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lgb/c;->c:Leb/h;

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    sput-boolean v0, Lgb/c;->e:Z

    .line 6
    .line 7
    iget-object v0, p0, Lgb/c;->a:Landroid/app/Application;

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public c(Leb/h;)V
    .locals 1

    .line 1
    const-string v0, "postHog"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-boolean v0, Lgb/c;->e:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const/4 v0, 0x1

    .line 12
    sput-boolean v0, Lgb/c;->e:Z

    .line 13
    .line 14
    iput-object p1, p0, Lgb/c;->c:Leb/h;

    .line 15
    .line 16
    iget-object p1, p0, Lgb/c;->a:Landroid/app/Application;

    .line 17
    .line 18
    invoke-virtual {p1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 10

    .line 1
    const-string p2, "activity"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lgb/c;->b:Lfb/b;

    .line 7
    .line 8
    invoke-virtual {p2}, Lfb/b;->h0()Z

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    if-eqz p2, :cond_7

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_7

    .line 19
    .line 20
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 21
    .line 22
    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    const-string v0, "it.toString()"

    .line 30
    .line 31
    const-string v1, "url"

    .line 32
    .line 33
    const/4 v2, 0x1

    .line 34
    if-eqz p2, :cond_5

    .line 35
    .line 36
    :try_start_0
    invoke-virtual {p2}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    if-eqz v5, :cond_3

    .line 49
    .line 50
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    check-cast v5, Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {p2, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    if-eqz v6, :cond_2

    .line 61
    .line 62
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    if-nez v7, :cond_1

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_1
    const/4 v7, 0x0

    .line 70
    goto :goto_2

    .line 71
    :cond_2
    :goto_1
    move v7, v2

    .line 72
    :goto_2
    if-nez v7, :cond_0

    .line 73
    .line 74
    const-string v7, "item"

    .line 75
    .line 76
    invoke-static {v5, v7}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_3
    sget-object v4, Lxc/t;->a:Lxc/t;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    .line 85
    goto/16 :goto_5

    .line 86
    .line 87
    :catchall_0
    move-exception v4

    .line 88
    move-object v9, v4

    .line 89
    goto :goto_4

    .line 90
    :catch_0
    :try_start_1
    iget-object v4, p0, Lgb/c;->b:Lfb/b;

    .line 91
    .line 92
    invoke-virtual {v4}, Leb/d;->o()Llb/i;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    new-instance v5, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    .line 101
    const-string v6, "Deep link "

    .line 102
    .line 103
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string v6, " has invalid query param names."

    .line 110
    .line 111
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    invoke-interface {v4, v5}, Llb/i;->a(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    sget-object v4, Lxc/t;->a:Lxc/t;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    .line 123
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p2

    .line 127
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-interface {v3, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    iget-object p2, p0, Lgb/c;->b:Lfb/b;

    .line 134
    .line 135
    invoke-static {p1, p2}, Lgb/o;->j(Landroid/content/Intent;Lfb/b;)Ljava/util/Map;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-interface {v3, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 140
    .line 141
    .line 142
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    xor-int/2addr p1, v2

    .line 147
    if-eqz p1, :cond_7

    .line 148
    .line 149
    iget-object v0, p0, Lgb/c;->c:Leb/h;

    .line 150
    .line 151
    if-eqz v0, :cond_7

    .line 152
    .line 153
    :goto_3
    const-string v1, "Deep Link Opened"

    .line 154
    .line 155
    const/4 v2, 0x0

    .line 156
    const/4 v4, 0x0

    .line 157
    const/4 v5, 0x0

    .line 158
    const/4 v6, 0x0

    .line 159
    const/16 v7, 0x3a

    .line 160
    .line 161
    const/4 v8, 0x0

    .line 162
    invoke-static/range {v0 .. v8}, Leb/h$a;->a(Leb/h;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;ILjava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    goto :goto_6

    .line 166
    :goto_4
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p2

    .line 170
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    invoke-interface {v3, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    iget-object p2, p0, Lgb/c;->b:Lfb/b;

    .line 177
    .line 178
    invoke-static {p1, p2}, Lgb/o;->j(Landroid/content/Intent;Lfb/b;)Ljava/util/Map;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    invoke-interface {v3, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 183
    .line 184
    .line 185
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    .line 186
    .line 187
    .line 188
    move-result p1

    .line 189
    xor-int/2addr p1, v2

    .line 190
    if-eqz p1, :cond_4

    .line 191
    .line 192
    iget-object v0, p0, Lgb/c;->c:Leb/h;

    .line 193
    .line 194
    if-eqz v0, :cond_4

    .line 195
    .line 196
    const-string v1, "Deep Link Opened"

    .line 197
    .line 198
    const/4 v2, 0x0

    .line 199
    const/4 v4, 0x0

    .line 200
    const/4 v5, 0x0

    .line 201
    const/4 v6, 0x0

    .line 202
    const/16 v7, 0x3a

    .line 203
    .line 204
    const/4 v8, 0x0

    .line 205
    invoke-static/range {v0 .. v8}, Leb/h$a;->a(Leb/h;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;ILjava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    :cond_4
    throw v9

    .line 209
    :cond_5
    :goto_5
    if-eqz p2, :cond_6

    .line 210
    .line 211
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object p2

    .line 215
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    invoke-interface {v3, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    :cond_6
    iget-object p2, p0, Lgb/c;->b:Lfb/b;

    .line 222
    .line 223
    invoke-static {p1, p2}, Lgb/o;->j(Landroid/content/Intent;Lfb/b;)Ljava/util/Map;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    invoke-interface {v3, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 228
    .line 229
    .line 230
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    .line 231
    .line 232
    .line 233
    move-result p1

    .line 234
    xor-int/2addr p1, v2

    .line 235
    if-eqz p1, :cond_7

    .line 236
    .line 237
    iget-object v0, p0, Lgb/c;->c:Leb/h;

    .line 238
    .line 239
    if-eqz v0, :cond_7

    .line 240
    .line 241
    goto :goto_3

    .line 242
    :cond_7
    :goto_6
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    .line 1
    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    .line 1
    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    .line 1
    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "outState"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 3

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lgb/c;->b:Lfb/b;

    .line 7
    .line 8
    invoke-virtual {v0}, Lfb/b;->i0()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    iget-object v0, p0, Lgb/c;->b:Lfb/b;

    .line 15
    .line 16
    invoke-static {p1, v0}, Lgb/o;->a(Landroid/app/Activity;Lfb/b;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 32
    :goto_1
    if-nez v0, :cond_2

    .line 33
    .line 34
    iget-object v0, p0, Lgb/c;->c:Leb/h;

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    const/4 v1, 0x2

    .line 39
    const/4 v2, 0x0

    .line 40
    invoke-static {v0, p1, v2, v1, v2}, Leb/h$a;->f(Leb/h;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    :cond_2
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    .line 1
    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
