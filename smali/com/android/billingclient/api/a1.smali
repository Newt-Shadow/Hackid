.class final Lcom/android/billingclient/api/a1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field private a:Z

.field private final b:Z

.field private c:Z

.field final synthetic d:Lcom/android/billingclient/api/b1;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/b1;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/billingclient/api/a1;->d:Lcom/android/billingclient/api/b1;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/billingclient/api/a1;->b:Z

    .line 7
    .line 8
    return-void
.end method

.method private final c(Landroid/os/Bundle;Lcom/android/billingclient/api/h;I)V
    .locals 2

    .line 1
    const-string v0, "FAILURE_LOGGING_PAYLOAD"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    :try_start_0
    iget-object p2, p0, Lcom/android/billingclient/api/a1;->d:Lcom/android/billingclient/api/b1;

    .line 10
    .line 11
    invoke-static {p2}, Lcom/android/billingclient/api/b1;->b(Lcom/android/billingclient/api/b1;)Lcom/android/billingclient/api/i0;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/q1;->a()Lcom/google/android/gms/internal/play_billing/q1;

    .line 20
    .line 21
    .line 22
    move-result-object p3

    .line 23
    invoke-static {p1, p3}, Lcom/google/android/gms/internal/play_billing/p4;->C([BLcom/google/android/gms/internal/play_billing/q1;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-interface {p2, p1}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :catchall_0
    const-string p1, "BillingBroadcastManager"

    .line 32
    .line 33
    const-string p2, "Failed parsing Api failure."

    .line 34
    .line 35
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/play_billing/b0;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    iget-object p1, p0, Lcom/android/billingclient/api/a1;->d:Lcom/android/billingclient/api/b1;

    .line 40
    .line 41
    invoke-static {p1}, Lcom/android/billingclient/api/b1;->b(Lcom/android/billingclient/api/b1;)Lcom/android/billingclient/api/i0;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const/16 v0, 0x17

    .line 46
    .line 47
    invoke-static {v0, p3, p2}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-interface {p1, p2}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;Landroid/content/IntentFilter;)V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/android/billingclient/api/a1;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/billingclient/api/a1;->d:Lcom/android/billingclient/api/b1;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/android/billingclient/api/b1;->h(Lcom/android/billingclient/api/b1;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    iput-boolean v1, p0, Lcom/android/billingclient/api/a1;->c:Z

    .line 15
    .line 16
    invoke-static {v0}, Lcom/android/billingclient/api/b1;->b(Lcom/android/billingclient/api/b1;)Lcom/android/billingclient/api/i0;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    new-instance v1, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    move v3, v2

    .line 27
    :goto_0
    invoke-virtual {p2}, Landroid/content/IntentFilter;->countActions()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-ge v3, v4, :cond_1

    .line 32
    .line 33
    invoke-virtual {p2, v3}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-static {v4}, Lcom/android/billingclient/api/h0;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/d5;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    add-int/lit8 v3, v3, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iget-boolean v3, p0, Lcom/android/billingclient/api/a1;->c:Z

    .line 48
    .line 49
    const/4 v4, 0x2

    .line 50
    invoke-interface {v0, v4, v1, v2, v3}, Lcom/android/billingclient/api/i0;->d(ILjava/util/List;ZZ)V

    .line 51
    .line 52
    .line 53
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 54
    .line 55
    const/16 v1, 0x21

    .line 56
    .line 57
    const/4 v2, 0x1

    .line 58
    if-lt v0, v1, :cond_3

    .line 59
    .line 60
    iget-boolean v0, p0, Lcom/android/billingclient/api/a1;->b:Z

    .line 61
    .line 62
    if-eq v2, v0, :cond_2

    .line 63
    .line 64
    const/4 v4, 0x4

    .line 65
    :cond_2
    invoke-static {p1, p0, p2, v4}, Lc2/b1;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_3
    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 70
    .line 71
    .line 72
    :goto_1
    iput-boolean v2, p0, Lcom/android/billingclient/api/a1;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    .line 74
    monitor-exit p0

    .line 75
    return-void

    .line 76
    :catchall_0
    move-exception p1

    .line 77
    monitor-exit p0

    .line 78
    throw p1
.end method

.method public final declared-synchronized b(Landroid/content/Context;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/android/billingclient/api/a1;->a:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/android/billingclient/api/a1;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    monitor-exit p0

    .line 13
    return-void

    .line 14
    :cond_0
    :try_start_1
    const-string p1, "BillingBroadcastManager"

    .line 15
    .line 16
    const-string v0, "Receiver is not registered."

    .line 17
    .line 18
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/b0;->k(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    .line 20
    .line 21
    monitor-exit p0

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    monitor-exit p0

    .line 25
    throw p1
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x1

    .line 7
    const-string v2, "BillingBroadcastManager"

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    const-string p1, "Bundle is null."

    .line 12
    .line 13
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/play_billing/b0;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/android/billingclient/api/a1;->d:Lcom/android/billingclient/api/b1;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/android/billingclient/api/b1;->b(Lcom/android/billingclient/api/b1;)Lcom/android/billingclient/api/i0;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    sget-object p2, Lcom/android/billingclient/api/j0;->j:Lcom/android/billingclient/api/h;

    .line 23
    .line 24
    const/16 v2, 0xb

    .line 25
    .line 26
    invoke-static {v2, v1, p2}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-interface {p1, v1}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/android/billingclient/api/a1;->d:Lcom/android/billingclient/api/b1;

    .line 34
    .line 35
    invoke-static {p1}, Lcom/android/billingclient/api/b1;->c(Lcom/android/billingclient/api/b1;)Lc2/o;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    if-eqz v1, :cond_8

    .line 40
    .line 41
    invoke-static {p1}, Lcom/android/billingclient/api/b1;->c(Lcom/android/billingclient/api/b1;)Lc2/o;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-interface {p1, p2, v0}, Lc2/o;->onPurchasesUpdated(Lcom/android/billingclient/api/h;Ljava/util/List;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_0
    invoke-static {p2, v2}, Lcom/google/android/gms/internal/play_billing/b0;->f(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/billingclient/api/h;

    .line 50
    .line 51
    .line 52
    move-result-object v8

    .line 53
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    const-string v3, "INTENT_SOURCE"

    .line 58
    .line 59
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    const-string v4, "LAUNCH_BILLING_FLOW"

    .line 64
    .line 65
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-eq v1, v3, :cond_1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    const/4 v1, 0x2

    .line 73
    :goto_0
    const-string v3, "BROADCAST_RECEIVER_LOGGING_PAYLOAD"

    .line 74
    .line 75
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    if-eqz v4, :cond_2

    .line 80
    .line 81
    :try_start_0
    iget-object v4, p0, Lcom/android/billingclient/api/a1;->d:Lcom/android/billingclient/api/b1;

    .line 82
    .line 83
    invoke-static {v4}, Lcom/android/billingclient/api/b1;->b(Lcom/android/billingclient/api/b1;)Lcom/android/billingclient/api/i0;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-interface {v4, v3}, Lcom/android/billingclient/api/i0;->a([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :catchall_0
    const-string v3, "Failed parsing Api failure."

    .line 96
    .line 97
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/play_billing/b0;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    :cond_2
    :goto_1
    const-string v3, "com.android.vending.billing.PURCHASES_UPDATED"

    .line 101
    .line 102
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    if-nez v3, :cond_9

    .line 107
    .line 108
    const-string v3, "com.android.vending.billing.LOCAL_BROADCAST_PURCHASES_UPDATED"

    .line 109
    .line 110
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    if-eqz v3, :cond_3

    .line 115
    .line 116
    goto/16 :goto_2

    .line 117
    .line 118
    :cond_3
    const-string v3, "com.android.vending.billing.ALTERNATIVE_BILLING"

    .line 119
    .line 120
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    if-eqz v3, :cond_8

    .line 125
    .line 126
    iget-object v3, p0, Lcom/android/billingclient/api/a1;->d:Lcom/android/billingclient/api/b1;

    .line 127
    .line 128
    invoke-static {v3}, Lcom/android/billingclient/api/b1;->b(Lcom/android/billingclient/api/b1;)Lcom/android/billingclient/api/i0;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    invoke-static {p2}, Lcom/android/billingclient/api/h0;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/d5;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    invoke-static {p2}, Lcom/google/android/gms/internal/play_billing/j;->t(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/j;

    .line 137
    .line 138
    .line 139
    move-result-object p2

    .line 140
    const/4 v4, 0x0

    .line 141
    iget-boolean v5, p0, Lcom/android/billingclient/api/a1;->c:Z

    .line 142
    .line 143
    const/4 v6, 0x4

    .line 144
    invoke-interface {v3, v6, p2, v4, v5}, Lcom/android/billingclient/api/i0;->d(ILjava/util/List;ZZ)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v8}, Lcom/android/billingclient/api/h;->b()I

    .line 148
    .line 149
    .line 150
    move-result p2

    .line 151
    if-eqz p2, :cond_4

    .line 152
    .line 153
    invoke-direct {p0, p1, v8, v1}, Lcom/android/billingclient/api/a1;->c(Landroid/os/Bundle;Lcom/android/billingclient/api/h;I)V

    .line 154
    .line 155
    .line 156
    iget-object p1, p0, Lcom/android/billingclient/api/a1;->d:Lcom/android/billingclient/api/b1;

    .line 157
    .line 158
    invoke-static {p1}, Lcom/android/billingclient/api/b1;->c(Lcom/android/billingclient/api/b1;)Lc2/o;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/j;->s()Lcom/google/android/gms/internal/play_billing/j;

    .line 163
    .line 164
    .line 165
    move-result-object p2

    .line 166
    invoke-interface {p1, v8, p2}, Lc2/o;->onPurchasesUpdated(Lcom/android/billingclient/api/h;Ljava/util/List;)V

    .line 167
    .line 168
    .line 169
    return-void

    .line 170
    :cond_4
    iget-object p2, p0, Lcom/android/billingclient/api/a1;->d:Lcom/android/billingclient/api/b1;

    .line 171
    .line 172
    invoke-static {p2}, Lcom/android/billingclient/api/b1;->a(Lcom/android/billingclient/api/b1;)Lc2/c;

    .line 173
    .line 174
    .line 175
    invoke-static {p2}, Lcom/android/billingclient/api/b1;->e(Lcom/android/billingclient/api/b1;)Lc2/s;

    .line 176
    .line 177
    .line 178
    move-result-object p2

    .line 179
    if-eqz p2, :cond_7

    .line 180
    .line 181
    const-string p2, "ALTERNATIVE_BILLING_USER_CHOICE_DATA"

    .line 182
    .line 183
    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    if-eqz p1, :cond_6

    .line 188
    .line 189
    :try_start_1
    iget-object p2, p0, Lcom/android/billingclient/api/a1;->d:Lcom/android/billingclient/api/b1;

    .line 190
    .line 191
    invoke-static {p2}, Lcom/android/billingclient/api/b1;->e(Lcom/android/billingclient/api/b1;)Lc2/s;

    .line 192
    .line 193
    .line 194
    move-result-object p2

    .line 195
    if-eqz p2, :cond_5

    .line 196
    .line 197
    new-instance p2, Lcom/android/billingclient/api/l;

    .line 198
    .line 199
    invoke-direct {p2, p1}, Lcom/android/billingclient/api/l;-><init>(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    iget-object v0, p0, Lcom/android/billingclient/api/a1;->d:Lcom/android/billingclient/api/b1;

    .line 203
    .line 204
    invoke-static {v0}, Lcom/android/billingclient/api/b1;->e(Lcom/android/billingclient/api/b1;)Lc2/s;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    invoke-interface {v0, p2}, Lc2/s;->a(Lcom/android/billingclient/api/l;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 209
    .line 210
    .line 211
    iget-object p1, p0, Lcom/android/billingclient/api/a1;->d:Lcom/android/billingclient/api/b1;

    .line 212
    .line 213
    invoke-static {p1}, Lcom/android/billingclient/api/b1;->b(Lcom/android/billingclient/api/b1;)Lcom/android/billingclient/api/i0;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    invoke-static {v1}, Lcom/android/billingclient/api/h0;->d(I)Lcom/google/android/gms/internal/play_billing/t4;

    .line 218
    .line 219
    .line 220
    move-result-object p2

    .line 221
    invoke-interface {p1, p2}, Lcom/android/billingclient/api/i0;->c(Lcom/google/android/gms/internal/play_billing/t4;)V

    .line 222
    .line 223
    .line 224
    return-void

    .line 225
    :cond_5
    :try_start_2
    new-instance p2, Lcom/android/billingclient/api/c;

    .line 226
    .line 227
    invoke-direct {p2, p1}, Lcom/android/billingclient/api/c;-><init>(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    iget-object p2, p0, Lcom/android/billingclient/api/a1;->d:Lcom/android/billingclient/api/b1;

    .line 231
    .line 232
    invoke-static {p2}, Lcom/android/billingclient/api/b1;->a(Lcom/android/billingclient/api/b1;)Lc2/c;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 233
    .line 234
    .line 235
    throw v0

    .line 236
    :catch_0
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    const-string p2, "Error when parsing invalid user choice data: [%s]"

    .line 241
    .line 242
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/play_billing/b0;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    iget-object p1, p0, Lcom/android/billingclient/api/a1;->d:Lcom/android/billingclient/api/b1;

    .line 250
    .line 251
    invoke-static {p1}, Lcom/android/billingclient/api/b1;->b(Lcom/android/billingclient/api/b1;)Lcom/android/billingclient/api/i0;

    .line 252
    .line 253
    .line 254
    move-result-object p1

    .line 255
    sget-object p2, Lcom/android/billingclient/api/j0;->j:Lcom/android/billingclient/api/h;

    .line 256
    .line 257
    const/16 v0, 0x11

    .line 258
    .line 259
    invoke-static {v0, v1, p2}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    invoke-interface {p1, v0}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 264
    .line 265
    .line 266
    iget-object p1, p0, Lcom/android/billingclient/api/a1;->d:Lcom/android/billingclient/api/b1;

    .line 267
    .line 268
    invoke-static {p1}, Lcom/android/billingclient/api/b1;->c(Lcom/android/billingclient/api/b1;)Lc2/o;

    .line 269
    .line 270
    .line 271
    move-result-object p1

    .line 272
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/j;->s()Lcom/google/android/gms/internal/play_billing/j;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    invoke-interface {p1, p2, v0}, Lc2/o;->onPurchasesUpdated(Lcom/android/billingclient/api/h;Ljava/util/List;)V

    .line 277
    .line 278
    .line 279
    return-void

    .line 280
    :cond_6
    const-string p1, "Couldn\'t find alternative billing user choice data in bundle."

    .line 281
    .line 282
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/play_billing/b0;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    iget-object p1, p0, Lcom/android/billingclient/api/a1;->d:Lcom/android/billingclient/api/b1;

    .line 286
    .line 287
    invoke-static {p1}, Lcom/android/billingclient/api/b1;->b(Lcom/android/billingclient/api/b1;)Lcom/android/billingclient/api/i0;

    .line 288
    .line 289
    .line 290
    move-result-object p1

    .line 291
    sget-object p2, Lcom/android/billingclient/api/j0;->j:Lcom/android/billingclient/api/h;

    .line 292
    .line 293
    const/16 v0, 0x10

    .line 294
    .line 295
    invoke-static {v0, v1, p2}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    invoke-interface {p1, v0}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 300
    .line 301
    .line 302
    iget-object p1, p0, Lcom/android/billingclient/api/a1;->d:Lcom/android/billingclient/api/b1;

    .line 303
    .line 304
    invoke-static {p1}, Lcom/android/billingclient/api/b1;->c(Lcom/android/billingclient/api/b1;)Lc2/o;

    .line 305
    .line 306
    .line 307
    move-result-object p1

    .line 308
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/j;->s()Lcom/google/android/gms/internal/play_billing/j;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    invoke-interface {p1, p2, v0}, Lc2/o;->onPurchasesUpdated(Lcom/android/billingclient/api/h;Ljava/util/List;)V

    .line 313
    .line 314
    .line 315
    return-void

    .line 316
    :cond_7
    const-string p1, "AlternativeBillingListener and UserChoiceBillingListener is null."

    .line 317
    .line 318
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/play_billing/b0;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    iget-object p1, p0, Lcom/android/billingclient/api/a1;->d:Lcom/android/billingclient/api/b1;

    .line 322
    .line 323
    invoke-static {p1}, Lcom/android/billingclient/api/b1;->b(Lcom/android/billingclient/api/b1;)Lcom/android/billingclient/api/i0;

    .line 324
    .line 325
    .line 326
    move-result-object p1

    .line 327
    sget-object p2, Lcom/android/billingclient/api/j0;->j:Lcom/android/billingclient/api/h;

    .line 328
    .line 329
    const/16 v0, 0x4d

    .line 330
    .line 331
    invoke-static {v0, v1, p2}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    invoke-interface {p1, v0}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 336
    .line 337
    .line 338
    iget-object p1, p0, Lcom/android/billingclient/api/a1;->d:Lcom/android/billingclient/api/b1;

    .line 339
    .line 340
    invoke-static {p1}, Lcom/android/billingclient/api/b1;->c(Lcom/android/billingclient/api/b1;)Lc2/o;

    .line 341
    .line 342
    .line 343
    move-result-object p1

    .line 344
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/j;->s()Lcom/google/android/gms/internal/play_billing/j;

    .line 345
    .line 346
    .line 347
    move-result-object v0

    .line 348
    invoke-interface {p1, p2, v0}, Lc2/o;->onPurchasesUpdated(Lcom/android/billingclient/api/h;Ljava/util/List;)V

    .line 349
    .line 350
    .line 351
    :cond_8
    return-void

    .line 352
    :cond_9
    :goto_2
    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/b0;->i(Landroid/os/Bundle;)Ljava/util/List;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    invoke-virtual {v8}, Lcom/android/billingclient/api/h;->b()I

    .line 357
    .line 358
    .line 359
    move-result v2

    .line 360
    if-nez v2, :cond_a

    .line 361
    .line 362
    iget-object p1, p0, Lcom/android/billingclient/api/a1;->d:Lcom/android/billingclient/api/b1;

    .line 363
    .line 364
    invoke-static {p1}, Lcom/android/billingclient/api/b1;->b(Lcom/android/billingclient/api/b1;)Lcom/android/billingclient/api/i0;

    .line 365
    .line 366
    .line 367
    move-result-object p1

    .line 368
    invoke-static {v1}, Lcom/android/billingclient/api/h0;->d(I)Lcom/google/android/gms/internal/play_billing/t4;

    .line 369
    .line 370
    .line 371
    move-result-object v1

    .line 372
    invoke-interface {p1, v1}, Lcom/android/billingclient/api/i0;->c(Lcom/google/android/gms/internal/play_billing/t4;)V

    .line 373
    .line 374
    .line 375
    goto :goto_3

    .line 376
    :cond_a
    invoke-direct {p0, p1, v8, v1}, Lcom/android/billingclient/api/a1;->c(Landroid/os/Bundle;Lcom/android/billingclient/api/h;I)V

    .line 377
    .line 378
    .line 379
    :goto_3
    iget-object p1, p0, Lcom/android/billingclient/api/a1;->d:Lcom/android/billingclient/api/b1;

    .line 380
    .line 381
    invoke-static {p1}, Lcom/android/billingclient/api/b1;->b(Lcom/android/billingclient/api/b1;)Lcom/android/billingclient/api/i0;

    .line 382
    .line 383
    .line 384
    move-result-object v1

    .line 385
    const/4 v2, 0x4

    .line 386
    invoke-static {p2}, Lcom/android/billingclient/api/h0;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/d5;

    .line 387
    .line 388
    .line 389
    move-result-object p1

    .line 390
    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/j;->t(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/j;

    .line 391
    .line 392
    .line 393
    move-result-object v3

    .line 394
    const/4 v6, 0x0

    .line 395
    iget-boolean v7, p0, Lcom/android/billingclient/api/a1;->c:Z

    .line 396
    .line 397
    move-object v4, v0

    .line 398
    move-object v5, v8

    .line 399
    invoke-interface/range {v1 .. v7}, Lcom/android/billingclient/api/i0;->b(ILjava/util/List;Ljava/util/List;Lcom/android/billingclient/api/h;ZZ)V

    .line 400
    .line 401
    .line 402
    iget-object p1, p0, Lcom/android/billingclient/api/a1;->d:Lcom/android/billingclient/api/b1;

    .line 403
    .line 404
    invoke-static {p1}, Lcom/android/billingclient/api/b1;->c(Lcom/android/billingclient/api/b1;)Lc2/o;

    .line 405
    .line 406
    .line 407
    move-result-object p1

    .line 408
    invoke-interface {p1, v8, v0}, Lc2/o;->onPurchasesUpdated(Lcom/android/billingclient/api/h;Ljava/util/List;)V

    .line 409
    .line 410
    .line 411
    return-void
.end method
