.class final Lcom/google/android/gms/measurement/internal/k9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;
.implements Li6/y;


# instance fields
.field final synthetic a:Lcom/google/android/gms/measurement/internal/w9;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/w9;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/k9;->a:Lcom/google/android/gms/measurement/internal/w9;

    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/measurement/i2;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/k9;->a:Lcom/google/android/gms/measurement/internal/w9;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->I()Lcom/google/android/gms/measurement/internal/la;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/la;->x(Lcom/google/android/gms/internal/measurement/i2;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->z()Lcom/google/android/gms/measurement/internal/mc;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->f()Lcom/google/android/gms/common/util/d;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-interface {v1}, Lcom/google/android/gms/common/util/d;->elapsedRealtime()J

    .line 23
    .line 24
    .line 25
    move-result-wide v1

    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->b()Lcom/google/android/gms/measurement/internal/s6;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    new-instance v3, Lcom/google/android/gms/measurement/internal/ec;

    .line 31
    .line 32
    invoke-direct {v3, p1, v1, v2}, Lcom/google/android/gms/measurement/internal/ec;-><init>(Lcom/google/android/gms/measurement/internal/mc;J)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/s6;->t(Ljava/lang/Runnable;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/measurement/i2;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/k9;->a:Lcom/google/android/gms/measurement/internal/w9;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->I()Lcom/google/android/gms/measurement/internal/la;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/la;->z(Lcom/google/android/gms/internal/measurement/i2;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final c(Lcom/google/android/gms/internal/measurement/i2;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/k9;->a:Lcom/google/android/gms/measurement/internal/w9;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->I()Lcom/google/android/gms/measurement/internal/la;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/la;->y(Lcom/google/android/gms/internal/measurement/i2;Landroid/os/Bundle;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final d(Lcom/google/android/gms/internal/measurement/i2;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/k9;->a:Lcom/google/android/gms/measurement/internal/w9;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->z()Lcom/google/android/gms/measurement/internal/mc;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 10
    .line 11
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->f()Lcom/google/android/gms/common/util/d;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-interface {v3}, Lcom/google/android/gms/common/util/d;->elapsedRealtime()J

    .line 16
    .line 17
    .line 18
    move-result-wide v3

    .line 19
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/w6;->b()Lcom/google/android/gms/measurement/internal/s6;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    new-instance v5, Lcom/google/android/gms/measurement/internal/dc;

    .line 24
    .line 25
    invoke-direct {v5, v1, v3, v4}, Lcom/google/android/gms/measurement/internal/dc;-><init>(Lcom/google/android/gms/measurement/internal/mc;J)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v5}, Lcom/google/android/gms/measurement/internal/s6;->t(Ljava/lang/Runnable;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->I()Lcom/google/android/gms/measurement/internal/la;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/la;->w(Lcom/google/android/gms/internal/measurement/i2;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final e(Lcom/google/android/gms/internal/measurement/i2;Landroid/os/Bundle;)V
    .locals 8

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/k9;->a:Lcom/google/android/gms/measurement/internal/w9;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p5;->w()Lcom/google/android/gms/measurement/internal/n5;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    const-string v3, "onActivityCreated"

    .line 14
    .line 15
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/i2;->c:Landroid/content/Intent;

    .line 19
    .line 20
    if-eqz v2, :cond_7

    .line 21
    .line 22
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    if-eqz v3, :cond_1

    .line 27
    .line 28
    invoke-virtual {v3}, Landroid/net/Uri;->isHierarchical()Z

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-nez v4, :cond_0

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    :goto_0
    move-object v4, v3

    .line 36
    goto :goto_2

    .line 37
    :cond_1
    :goto_1
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    const/4 v4, 0x0

    .line 42
    if-eqz v3, :cond_2

    .line 43
    .line 44
    const-string v5, "com.android.vending.referral_url"

    .line 45
    .line 46
    invoke-virtual {v3, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    if-nez v5, :cond_2

    .line 55
    .line 56
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    goto :goto_0

    .line 61
    :cond_2
    :goto_2
    if-eqz v4, :cond_7

    .line 62
    .line 63
    invoke-virtual {v4}, Landroid/net/Uri;->isHierarchical()Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-nez v3, :cond_3

    .line 68
    .line 69
    goto :goto_6

    .line 70
    :cond_3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->C()Lcom/google/android/gms/measurement/internal/yd;

    .line 71
    .line 72
    .line 73
    const-string v0, "android.intent.extra.REFERRER_NAME"

    .line 74
    .line 75
    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    const-string v2, "android-app://com.google.android.googlequicksearchbox/https/www.google.com"

    .line 80
    .line 81
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-nez v2, :cond_5

    .line 86
    .line 87
    const-string v2, "https://www.google.com"

    .line 88
    .line 89
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    if-nez v2, :cond_5

    .line 94
    .line 95
    const-string v2, "android-app://com.google.appcrawler"

    .line 96
    .line 97
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-eqz v0, :cond_4

    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_4
    const-string v0, "auto"

    .line 105
    .line 106
    goto :goto_4

    .line 107
    :cond_5
    :goto_3
    const-string v0, "gs"

    .line 108
    .line 109
    :goto_4
    move-object v5, v0

    .line 110
    const-string v0, "referrer"

    .line 111
    .line 112
    invoke-virtual {v4, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    if-nez p2, :cond_6

    .line 117
    .line 118
    const/4 v0, 0x1

    .line 119
    goto :goto_5

    .line 120
    :cond_6
    const/4 v0, 0x0

    .line 121
    :goto_5
    move v3, v0

    .line 122
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->b()Lcom/google/android/gms/measurement/internal/s6;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    new-instance v7, Lcom/google/android/gms/measurement/internal/j9;

    .line 127
    .line 128
    move-object v1, v7

    .line 129
    move-object v2, p0

    .line 130
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/j9;-><init>(Lcom/google/android/gms/measurement/internal/k9;ZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v7}, Lcom/google/android/gms/measurement/internal/s6;->t(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    .line 135
    .line 136
    goto :goto_8

    .line 137
    :cond_7
    :goto_6
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 138
    .line 139
    :goto_7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->I()Lcom/google/android/gms/measurement/internal/la;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/la;->v(Lcom/google/android/gms/internal/measurement/i2;Landroid/os/Bundle;)V

    .line 144
    .line 145
    .line 146
    return-void

    .line 147
    :catchall_0
    move-exception v0

    .line 148
    goto :goto_9

    .line 149
    :catch_0
    move-exception v0

    .line 150
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/k9;->a:Lcom/google/android/gms/measurement/internal/w9;

    .line 151
    .line 152
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 153
    .line 154
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    const-string v2, "Throwable caught in onActivityCreated"

    .line 163
    .line 164
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    .line 166
    .line 167
    :goto_8
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/k9;->a:Lcom/google/android/gms/measurement/internal/w9;

    .line 168
    .line 169
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 170
    .line 171
    goto :goto_7

    .line 172
    :goto_9
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/k9;->a:Lcom/google/android/gms/measurement/internal/w9;

    .line 173
    .line 174
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 175
    .line 176
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->I()Lcom/google/android/gms/measurement/internal/la;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/measurement/internal/la;->v(Lcom/google/android/gms/internal/measurement/i2;Landroid/os/Bundle;)V

    .line 181
    .line 182
    .line 183
    throw v0
.end method

.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/i2;->g(Landroid/app/Activity;)Lcom/google/android/gms/internal/measurement/i2;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/k9;->e(Lcom/google/android/gms/internal/measurement/i2;Landroid/os/Bundle;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/i2;->g(Landroid/app/Activity;)Lcom/google/android/gms/internal/measurement/i2;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/k9;->b(Lcom/google/android/gms/internal/measurement/i2;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/i2;->g(Landroid/app/Activity;)Lcom/google/android/gms/internal/measurement/i2;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/k9;->a(Lcom/google/android/gms/internal/measurement/i2;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/i2;->g(Landroid/app/Activity;)Lcom/google/android/gms/internal/measurement/i2;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/k9;->d(Lcom/google/android/gms/internal/measurement/i2;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/i2;->g(Landroid/app/Activity;)Lcom/google/android/gms/internal/measurement/i2;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/k9;->c(Lcom/google/android/gms/internal/measurement/i2;Landroid/os/Bundle;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
