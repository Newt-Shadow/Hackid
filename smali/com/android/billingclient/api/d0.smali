.class final Lcom/android/billingclient/api/d0;
.super Lcom/google/android/gms/internal/play_billing/j4;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/ref/WeakReference;

.field final g:Landroid/os/ResultReceiver;


# direct methods
.method synthetic constructor <init>(Ljava/lang/ref/WeakReference;Landroid/os/ResultReceiver;Lc2/x;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/j4;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/billingclient/api/d0;->a:Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/billingclient/api/d0;->g:Landroid/os/ResultReceiver;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final c(Landroid/os/Bundle;)V
    .locals 8

    .line 1
    const/4 v0, 0x6

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lcom/android/billingclient/api/d0;->g:Landroid/os/ResultReceiver;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p1, v0, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const-string v1, "RESPONSE_CODE"

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const-string v3, "BillingClient"

    .line 18
    .line 19
    if-nez v2, :cond_1

    .line 20
    .line 21
    const-string v1, "Response bundle doesn\'t contain a response code"

    .line 22
    .line 23
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/play_billing/b0;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/android/billingclient/api/d0;->g:Landroid/os/ResultReceiver;

    .line 27
    .line 28
    invoke-virtual {v1, v0, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    invoke-static {p1, v3}, Lcom/google/android/gms/internal/play_billing/b0;->b(Landroid/os/Bundle;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v1, "Unable to launch intent for alternative billing only dialog"

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {v3, v0}, Lcom/google/android/gms/internal/play_billing/b0;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/android/billingclient/api/d0;->g:Landroid/os/ResultReceiver;

    .line 59
    .line 60
    invoke-virtual {v0, v2, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_2
    const-string v2, "ALTERNATIVE_BILLING_ONLY_DIALOG_INTENT"

    .line 65
    .line 66
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    check-cast v4, Landroid/app/PendingIntent;

    .line 71
    .line 72
    if-nez v4, :cond_3

    .line 73
    .line 74
    const-string v0, "User has acknowledged the alternative billing only dialog before."

    .line 75
    .line 76
    invoke-static {v3, v0}, Lcom/google/android/gms/internal/play_billing/b0;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/android/billingclient/api/d0;->g:Landroid/os/ResultReceiver;

    .line 80
    .line 81
    const/4 v1, 0x0

    .line 82
    invoke-virtual {v0, v1, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :cond_3
    :try_start_0
    iget-object p1, p0, Lcom/android/billingclient/api/d0;->a:Ljava/lang/ref/WeakReference;

    .line 87
    .line 88
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    check-cast p1, Landroid/app/Activity;

    .line 93
    .line 94
    new-instance v5, Landroid/content/Intent;

    .line 95
    .line 96
    const-class v6, Lcom/android/billingclient/api/ProxyBillingActivity;

    .line 97
    .line 98
    invoke-direct {v5, p1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 99
    .line 100
    .line 101
    const-string v6, "alternative_billing_only_dialog_result_receiver"

    .line 102
    .line 103
    iget-object v7, p0, Lcom/android/billingclient/api/d0;->g:Landroid/os/ResultReceiver;

    .line 104
    .line 105
    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v5, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, v5}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :catch_0
    move-exception p1

    .line 116
    const-string v2, "Runtime error while launching intent for alternative billing only dialog."

    .line 117
    .line 118
    invoke-static {v3, v2, p1}, Lcom/google/android/gms/internal/play_billing/b0;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 119
    .line 120
    .line 121
    new-instance v2, Landroid/os/Bundle;

    .line 122
    .line 123
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 127
    .line 128
    .line 129
    const-string v1, "DEBUG_MESSAGE"

    .line 130
    .line 131
    const-string v3, "An internal error occurred."

    .line 132
    .line 133
    invoke-virtual {v2, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    const-string v1, "INTERNAL_LOG_ERROR_REASON"

    .line 137
    .line 138
    const/16 v3, 0x4b

    .line 139
    .line 140
    invoke-virtual {v2, v1, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/c;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    filled-new-array {v1, p1}, [Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    const-string v1, "%s: %s"

    .line 164
    .line 165
    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    const-string v1, "INTERNAL_LOG_ERROR_ADDITIONAL_DETAILS"

    .line 170
    .line 171
    invoke-virtual {v2, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    iget-object p1, p0, Lcom/android/billingclient/api/d0;->g:Landroid/os/ResultReceiver;

    .line 175
    .line 176
    invoke-virtual {p1, v0, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 177
    .line 178
    .line 179
    return-void
.end method
