.class public Lcom/android/billingclient/api/ProxyBillingActivity;
.super Landroidx/activity/j;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/apps/common/proguard/UsedByReflection;
    value = "PlatformActivityProxy"
.end annotation


# instance fields
.field private a:Lf/c;

.field private b:Lf/c;

.field private c:Landroid/os/ResultReceiver;

.field private d:Landroid/os/ResultReceiver;

.field private e:Landroid/os/ResultReceiver;

.field private f:Landroid/os/ResultReceiver;

.field private g:Z

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/activity/j;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private q()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "ALTERNATIVE_BILLING_ONLY_DIALOG_INTENT"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/app/PendingIntent;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v2, "alternative_billing_only_dialog_result_receiver"

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Landroid/os/ResultReceiver;

    .line 24
    .line 25
    iput-object v1, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->e:Landroid/os/ResultReceiver;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->a:Lf/c;

    .line 28
    .line 29
    new-instance v2, Lf/g$a;

    .line 30
    .line 31
    invoke-direct {v2, v0}, Lf/g$a;-><init>(Landroid/app/PendingIntent;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Lf/g$a;->a()Lf/g;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v1, v0}, Lf/c;->a(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method private r()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "external_payment_dialog_pending_intent"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/app/PendingIntent;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v2, "external_payment_dialog_result_receiver"

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Landroid/os/ResultReceiver;

    .line 24
    .line 25
    iput-object v1, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->f:Landroid/os/ResultReceiver;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->b:Lf/c;

    .line 28
    .line 29
    new-instance v2, Lf/g$a;

    .line 30
    .line 31
    invoke-direct {v2, v0}, Lf/g$a;-><init>(Landroid/app/PendingIntent;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Lf/g$a;->a()Lf/g;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v1, v0}, Lf/c;->a(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method private s(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "com.android.vending.billing.ALTERNATIVE_BILLING"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    .line 18
    .line 19
    const-string v1, "ALTERNATIVE_BILLING_USER_CHOICE_DATA"

    .line 20
    .line 21
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {p1}, Lcom/android/billingclient/api/h0;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/d5;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/j;->t(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/j;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const/4 v1, 0x3

    .line 37
    invoke-static {v1, p1}, Lcom/android/billingclient/api/h0;->e(ILjava/util/List;)Lcom/google/android/gms/internal/play_billing/g5;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/o0;->d()[B

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const-string v1, "BROADCAST_RECEIVER_LOGGING_PAYLOAD"

    .line 46
    .line 47
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 48
    .line 49
    .line 50
    return-object v0
.end method

.method private t()Landroid/content/Intent;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "com.android.vending.billing.LOCAL_BROADCAST_PURCHASES_UPDATED"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v1}, Lcom/android/billingclient/api/h0;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/d5;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/j;->t(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/j;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const/4 v2, 0x3

    .line 32
    invoke-static {v2, v1}, Lcom/android/billingclient/api/h0;->e(ILjava/util/List;)Lcom/google/android/gms/internal/play_billing/g5;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/o0;->d()[B

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const-string v2, "BROADCAST_RECEIVER_LOGGING_PAYLOAD"

    .line 41
    .line 42
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 43
    .line 44
    .line 45
    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/activity/j;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x64

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x0

    .line 8
    const/16 v3, 0x6e

    .line 9
    .line 10
    const-string v4, "ProxyBillingActivity"

    .line 11
    .line 12
    if-eq p1, v0, :cond_3

    .line 13
    .line 14
    if-ne p1, v3, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    const/16 p2, 0x65

    .line 18
    .line 19
    if-ne p1, p2, :cond_2

    .line 20
    .line 21
    invoke-static {p3, v4}, Lcom/google/android/gms/internal/play_billing/b0;->a(Landroid/content/Intent;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    iget-object p2, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->d:Landroid/os/ResultReceiver;

    .line 26
    .line 27
    if-eqz p2, :cond_c

    .line 28
    .line 29
    if-nez p3, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    :goto_0
    invoke-virtual {p2, p1, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 37
    .line 38
    .line 39
    goto/16 :goto_6

    .line 40
    .line 41
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string p3, "Got onActivityResult with wrong requestCode: "

    .line 47
    .line 48
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string p1, "; skipping..."

    .line 55
    .line 56
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-static {v4, p1}, Lcom/google/android/gms/internal/play_billing/b0;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    goto/16 :goto_6

    .line 67
    .line 68
    :cond_3
    :goto_1
    invoke-static {p3, v4}, Lcom/google/android/gms/internal/play_billing/b0;->c(Landroid/content/Intent;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    const/4 v5, -0x1

    .line 73
    if-ne p2, v5, :cond_5

    .line 74
    .line 75
    if-eqz v0, :cond_4

    .line 76
    .line 77
    move p2, v5

    .line 78
    goto :goto_2

    .line 79
    :cond_4
    move v0, v2

    .line 80
    goto :goto_3

    .line 81
    :cond_5
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    .line 86
    const-string v6, "Activity finished with resultCode "

    .line 87
    .line 88
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string p2, " and billing\'s responseCode: "

    .line 95
    .line 96
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    invoke-static {v4, p2}, Lcom/google/android/gms/internal/play_billing/b0;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    :goto_3
    iget-object p2, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->c:Landroid/os/ResultReceiver;

    .line 110
    .line 111
    if-eqz p2, :cond_7

    .line 112
    .line 113
    if-nez p3, :cond_6

    .line 114
    .line 115
    goto :goto_4

    .line 116
    :cond_6
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    :goto_4
    invoke-virtual {p2, v0, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 121
    .line 122
    .line 123
    goto/16 :goto_6

    .line 124
    .line 125
    :cond_7
    if-eqz p3, :cond_a

    .line 126
    .line 127
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 128
    .line 129
    .line 130
    move-result-object p2

    .line 131
    const-string v0, "LAUNCH_BILLING_FLOW"

    .line 132
    .line 133
    const-string v1, "INTENT_SOURCE"

    .line 134
    .line 135
    if-eqz p2, :cond_9

    .line 136
    .line 137
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 138
    .line 139
    .line 140
    move-result-object p2

    .line 141
    const-string v4, "ALTERNATIVE_BILLING_USER_CHOICE_DATA"

    .line 142
    .line 143
    invoke-virtual {p2, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p2

    .line 147
    if-eqz p2, :cond_8

    .line 148
    .line 149
    invoke-direct {p0, p2}, Lcom/android/billingclient/api/ProxyBillingActivity;->s(Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    .line 151
    .line 152
    move-result-object p2

    .line 153
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    .line 155
    .line 156
    goto :goto_5

    .line 157
    :cond_8
    invoke-direct {p0}, Lcom/android/billingclient/api/ProxyBillingActivity;->t()Landroid/content/Intent;

    .line 158
    .line 159
    .line 160
    move-result-object p2

    .line 161
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 162
    .line 163
    .line 164
    move-result-object p3

    .line 165
    invoke-virtual {p2, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 166
    .line 167
    .line 168
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    .line 170
    .line 171
    goto :goto_5

    .line 172
    :cond_9
    invoke-direct {p0}, Lcom/android/billingclient/api/ProxyBillingActivity;->t()Landroid/content/Intent;

    .line 173
    .line 174
    .line 175
    move-result-object p2

    .line 176
    const-string p3, "Got null bundle!"

    .line 177
    .line 178
    invoke-static {v4, p3}, Lcom/google/android/gms/internal/play_billing/b0;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    const-string p3, "RESPONSE_CODE"

    .line 182
    .line 183
    const/4 v4, 0x6

    .line 184
    invoke-virtual {p2, p3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 185
    .line 186
    .line 187
    const-string p3, "DEBUG_MESSAGE"

    .line 188
    .line 189
    const-string v5, "An internal error occurred."

    .line 190
    .line 191
    invoke-virtual {p2, p3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    .line 193
    .line 194
    invoke-static {}, Lcom/android/billingclient/api/h;->c()Lcom/android/billingclient/api/h$a;

    .line 195
    .line 196
    .line 197
    move-result-object p3

    .line 198
    invoke-virtual {p3, v4}, Lcom/android/billingclient/api/h$a;->c(I)Lcom/android/billingclient/api/h$a;

    .line 199
    .line 200
    .line 201
    invoke-virtual {p3, v5}, Lcom/android/billingclient/api/h$a;->b(Ljava/lang/String;)Lcom/android/billingclient/api/h$a;

    .line 202
    .line 203
    .line 204
    invoke-virtual {p3}, Lcom/android/billingclient/api/h$a;->a()Lcom/android/billingclient/api/h;

    .line 205
    .line 206
    .line 207
    move-result-object p3

    .line 208
    const/16 v4, 0x16

    .line 209
    .line 210
    const/4 v5, 0x2

    .line 211
    invoke-static {v4, v5, p3}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 212
    .line 213
    .line 214
    move-result-object p3

    .line 215
    invoke-virtual {p3}, Lcom/google/android/gms/internal/play_billing/o0;->d()[B

    .line 216
    .line 217
    .line 218
    move-result-object p3

    .line 219
    const-string v4, "FAILURE_LOGGING_PAYLOAD"

    .line 220
    .line 221
    invoke-virtual {p2, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 222
    .line 223
    .line 224
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    .line 226
    .line 227
    goto :goto_5

    .line 228
    :cond_a
    invoke-direct {p0}, Lcom/android/billingclient/api/ProxyBillingActivity;->t()Landroid/content/Intent;

    .line 229
    .line 230
    .line 231
    move-result-object p2

    .line 232
    :goto_5
    if-ne p1, v3, :cond_b

    .line 233
    .line 234
    const-string p1, "IS_FIRST_PARTY_PURCHASE"

    .line 235
    .line 236
    const/4 p3, 0x1

    .line 237
    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 238
    .line 239
    .line 240
    :cond_b
    invoke-virtual {p0, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 241
    .line 242
    .line 243
    :cond_c
    :goto_6
    iput-boolean v2, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->g:Z

    .line 244
    .line 245
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 246
    .line 247
    .line 248
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/j;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    new-instance v1, Lg/i;

    .line 5
    .line 6
    invoke-direct {v1}, Lg/i;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v2, Lcom/android/billingclient/api/v0;

    .line 10
    .line 11
    invoke-direct {v2, p0}, Lcom/android/billingclient/api/v0;-><init>(Lcom/android/billingclient/api/ProxyBillingActivity;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v1, v2}, Landroidx/activity/j;->registerForActivityResult(Lg/a;Lf/b;)Lf/c;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iput-object v1, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->a:Lf/c;

    .line 19
    .line 20
    new-instance v1, Lg/i;

    .line 21
    .line 22
    invoke-direct {v1}, Lg/i;-><init>()V

    .line 23
    .line 24
    .line 25
    new-instance v2, Lcom/android/billingclient/api/w0;

    .line 26
    .line 27
    invoke-direct {v2, p0}, Lcom/android/billingclient/api/w0;-><init>(Lcom/android/billingclient/api/ProxyBillingActivity;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v1, v2}, Landroidx/activity/j;->registerForActivityResult(Lg/a;Lf/b;)Lf/c;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iput-object v1, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->b:Lf/c;

    .line 35
    .line 36
    const-string v1, "IS_FLOW_FROM_FIRST_PARTY_CLIENT"

    .line 37
    .line 38
    const-string v2, "in_app_message_result_receiver"

    .line 39
    .line 40
    const-string v3, "result_receiver"

    .line 41
    .line 42
    const-string v8, "ProxyBillingActivity"

    .line 43
    .line 44
    const/4 v9, 0x0

    .line 45
    if-nez p1, :cond_9

    .line 46
    .line 47
    const-string v0, "Launching Play Store billing flow"

    .line 48
    .line 49
    invoke-static {v8, v0}, Lcom/google/android/gms/internal/play_billing/b0;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const-string v4, "ALTERNATIVE_BILLING_ONLY_DIALOG_INTENT"

    .line 57
    .line 58
    invoke-virtual {v0, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_0

    .line 63
    .line 64
    invoke-direct {p0}, Lcom/android/billingclient/api/ProxyBillingActivity;->q()V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    const-string v4, "external_payment_dialog_pending_intent"

    .line 73
    .line 74
    invoke-virtual {v0, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_1

    .line 79
    .line 80
    invoke-direct {p0}, Lcom/android/billingclient/api/ProxyBillingActivity;->r()V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    const-string v4, "BUY_INTENT"

    .line 89
    .line 90
    invoke-virtual {v0, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    const/4 v10, 0x1

    .line 95
    const/4 v11, 0x0

    .line 96
    const/16 v5, 0x64

    .line 97
    .line 98
    if-eqz v0, :cond_2

    .line 99
    .line 100
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    check-cast v0, Landroid/app/PendingIntent;

    .line 109
    .line 110
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-virtual {v2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    if-eqz v2, :cond_3

    .line 119
    .line 120
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-virtual {v2, v1, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    if-eqz v1, :cond_3

    .line 129
    .line 130
    iput-boolean v10, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->h:Z

    .line 131
    .line 132
    const/16 v1, 0x6e

    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    const-string v1, "SUBS_MANAGEMENT_INTENT"

    .line 140
    .line 141
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    if-eqz v0, :cond_4

    .line 146
    .line 147
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    check-cast v0, Landroid/app/PendingIntent;

    .line 156
    .line 157
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    invoke-virtual {v1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    check-cast v1, Landroid/os/ResultReceiver;

    .line 166
    .line 167
    iput-object v1, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->c:Landroid/os/ResultReceiver;

    .line 168
    .line 169
    :cond_3
    move v3, v5

    .line 170
    goto :goto_1

    .line 171
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    const-string v1, "IN_APP_MESSAGE_INTENT"

    .line 176
    .line 177
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    if-eqz v0, :cond_5

    .line 182
    .line 183
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    check-cast v0, Landroid/app/PendingIntent;

    .line 192
    .line 193
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    check-cast v1, Landroid/os/ResultReceiver;

    .line 202
    .line 203
    iput-object v1, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->d:Landroid/os/ResultReceiver;

    .line 204
    .line 205
    const/16 v1, 0x65

    .line 206
    .line 207
    :goto_0
    move v3, v1

    .line 208
    goto :goto_1

    .line 209
    :cond_5
    move v3, v5

    .line 210
    move-object v0, v11

    .line 211
    :goto_1
    :try_start_0
    iput-boolean v10, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->g:Z

    .line 212
    .line 213
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    .line 214
    .line 215
    .line 216
    move-result-object v2

    .line 217
    new-instance v4, Landroid/content/Intent;

    .line 218
    .line 219
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 220
    .line 221
    .line 222
    const/4 v5, 0x0

    .line 223
    const/4 v6, 0x0

    .line 224
    const/4 v7, 0x0

    .line 225
    move-object v1, p0

    .line 226
    invoke-virtual/range {v1 .. v7}, Landroidx/activity/j;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    .line 228
    .line 229
    return-void

    .line 230
    :catch_0
    move-exception v0

    .line 231
    const-string v1, "Got exception while trying to start a purchase flow."

    .line 232
    .line 233
    invoke-static {v8, v1, v0}, Lcom/google/android/gms/internal/play_billing/b0;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 234
    .line 235
    .line 236
    iget-object v0, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->c:Landroid/os/ResultReceiver;

    .line 237
    .line 238
    const/4 v1, 0x6

    .line 239
    if-eqz v0, :cond_6

    .line 240
    .line 241
    invoke-virtual {v0, v1, v11}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 242
    .line 243
    .line 244
    goto :goto_2

    .line 245
    :cond_6
    iget-object v0, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->d:Landroid/os/ResultReceiver;

    .line 246
    .line 247
    if-eqz v0, :cond_7

    .line 248
    .line 249
    invoke-virtual {v0, v9, v11}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 250
    .line 251
    .line 252
    goto :goto_2

    .line 253
    :cond_7
    invoke-direct {p0}, Lcom/android/billingclient/api/ProxyBillingActivity;->t()Landroid/content/Intent;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    iget-boolean v2, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->h:Z

    .line 258
    .line 259
    if-eqz v2, :cond_8

    .line 260
    .line 261
    const-string v2, "IS_FIRST_PARTY_PURCHASE"

    .line 262
    .line 263
    invoke-virtual {v0, v2, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 264
    .line 265
    .line 266
    :cond_8
    const-string v2, "RESPONSE_CODE"

    .line 267
    .line 268
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 269
    .line 270
    .line 271
    const-string v1, "DEBUG_MESSAGE"

    .line 272
    .line 273
    const-string v2, "An internal error occurred."

    .line 274
    .line 275
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    .line 277
    .line 278
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 279
    .line 280
    .line 281
    :goto_2
    iput-boolean v9, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->g:Z

    .line 282
    .line 283
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 284
    .line 285
    .line 286
    return-void

    .line 287
    :cond_9
    const-string v4, "Launching Play Store billing flow from savedInstanceState"

    .line 288
    .line 289
    invoke-static {v8, v4}, Lcom/google/android/gms/internal/play_billing/b0;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    const-string v4, "send_cancelled_broadcast_if_finished"

    .line 293
    .line 294
    invoke-virtual {p1, v4, v9}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 295
    .line 296
    .line 297
    move-result v4

    .line 298
    iput-boolean v4, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->g:Z

    .line 299
    .line 300
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 301
    .line 302
    .line 303
    move-result v4

    .line 304
    if-eqz v4, :cond_a

    .line 305
    .line 306
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 307
    .line 308
    .line 309
    move-result-object v2

    .line 310
    check-cast v2, Landroid/os/ResultReceiver;

    .line 311
    .line 312
    iput-object v2, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->c:Landroid/os/ResultReceiver;

    .line 313
    .line 314
    goto :goto_3

    .line 315
    :cond_a
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 316
    .line 317
    .line 318
    move-result v3

    .line 319
    if-eqz v3, :cond_b

    .line 320
    .line 321
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 322
    .line 323
    .line 324
    move-result-object v2

    .line 325
    check-cast v2, Landroid/os/ResultReceiver;

    .line 326
    .line 327
    iput-object v2, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->d:Landroid/os/ResultReceiver;

    .line 328
    .line 329
    goto :goto_3

    .line 330
    :cond_b
    const-string v2, "alternative_billing_only_dialog_result_receiver"

    .line 331
    .line 332
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 333
    .line 334
    .line 335
    move-result v3

    .line 336
    if-eqz v3, :cond_c

    .line 337
    .line 338
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 339
    .line 340
    .line 341
    move-result-object v2

    .line 342
    check-cast v2, Landroid/os/ResultReceiver;

    .line 343
    .line 344
    iput-object v2, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->e:Landroid/os/ResultReceiver;

    .line 345
    .line 346
    goto :goto_3

    .line 347
    :cond_c
    const-string v2, "external_payment_dialog_result_receiver"

    .line 348
    .line 349
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 350
    .line 351
    .line 352
    move-result v3

    .line 353
    if-eqz v3, :cond_d

    .line 354
    .line 355
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 356
    .line 357
    .line 358
    move-result-object v2

    .line 359
    check-cast v2, Landroid/os/ResultReceiver;

    .line 360
    .line 361
    iput-object v2, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->f:Landroid/os/ResultReceiver;

    .line 362
    .line 363
    :cond_d
    :goto_3
    invoke-virtual {p1, v1, v9}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 364
    .line 365
    .line 366
    move-result v0

    .line 367
    iput-boolean v0, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->h:Z

    .line 368
    .line 369
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-boolean v0, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->g:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-direct {p0}, Lcom/android/billingclient/api/ProxyBillingActivity;->t()Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "RESPONSE_CODE"

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    const-string v1, "DEBUG_MESSAGE"

    .line 26
    .line 27
    const-string v2, "Billing dialog closed."

    .line 28
    .line 29
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    :goto_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/j;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->c:Landroid/os/ResultReceiver;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string v1, "result_receiver"

    .line 9
    .line 10
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->d:Landroid/os/ResultReceiver;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    const-string v1, "in_app_message_result_receiver"

    .line 18
    .line 19
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 20
    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->e:Landroid/os/ResultReceiver;

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    const-string v1, "alternative_billing_only_dialog_result_receiver"

    .line 27
    .line 28
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 29
    .line 30
    .line 31
    :cond_2
    iget-object v0, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->f:Landroid/os/ResultReceiver;

    .line 32
    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    const-string v1, "external_payment_dialog_result_receiver"

    .line 36
    .line 37
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 38
    .line 39
    .line 40
    :cond_3
    iget-boolean v0, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->g:Z

    .line 41
    .line 42
    const-string v1, "send_cancelled_broadcast_if_finished"

    .line 43
    .line 44
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 45
    .line 46
    .line 47
    iget-boolean v0, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->h:Z

    .line 48
    .line 49
    const-string v1, "IS_FLOW_FROM_FIRST_PARTY_CLIENT"

    .line 50
    .line 51
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method u(Lf/a;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lf/a;->a()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "ProxyBillingActivity"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/b0;->c(Landroid/content/Intent;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    iget-object v3, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->e:Landroid/os/ResultReceiver;

    .line 12
    .line 13
    if-eqz v3, :cond_1

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :goto_0
    invoke-virtual {v3, v2, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-virtual {p1}, Lf/a;->b()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const/4 v3, -0x1

    .line 31
    if-ne v0, v3, :cond_2

    .line 32
    .line 33
    if-eqz v2, :cond_3

    .line 34
    .line 35
    :cond_2
    invoke-virtual {p1}, Lf/a;->b()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string v3, "Alternative billing only dialog finished with resultCode "

    .line 45
    .line 46
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string p1, " and billing\'s responseCode: "

    .line 53
    .line 54
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/play_billing/b0;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method v(Lf/a;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lf/a;->a()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "ProxyBillingActivity"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/b0;->c(Landroid/content/Intent;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    iget-object v3, p0, Lcom/android/billingclient/api/ProxyBillingActivity;->f:Landroid/os/ResultReceiver;

    .line 12
    .line 13
    if-eqz v3, :cond_1

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :goto_0
    invoke-virtual {v3, v2, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-virtual {p1}, Lf/a;->b()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const/4 v3, -0x1

    .line 31
    if-ne v0, v3, :cond_2

    .line 32
    .line 33
    if-eqz v2, :cond_3

    .line 34
    .line 35
    :cond_2
    invoke-virtual {p1}, Lf/a;->b()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    filled-new-array {p1, v0}, [Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const-string v0, "External offer dialog finished with resultCode: %s and billing\'s responseCode: %s"

    .line 52
    .line 53
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/play_billing/b0;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 61
    .line 62
    .line 63
    return-void
.end method
