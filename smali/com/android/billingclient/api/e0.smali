.class final Lcom/android/billingclient/api/e0;
.super Lcom/google/android/gms/internal/play_billing/c6;
.source "SourceFile"


# instance fields
.field final a:Lc2/h;

.field final g:Lcom/android/billingclient/api/i0;


# direct methods
.method synthetic constructor <init>(Lc2/h;Lcom/android/billingclient/api/i0;Lc2/y;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/c6;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/billingclient/api/e0;->a:Lc2/h;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/billingclient/api/e0;->g:Lcom/android/billingclient/api/i0;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final c(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/16 v1, 0xd

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/billingclient/api/e0;->g:Lcom/android/billingclient/api/i0;

    .line 7
    .line 8
    sget-object v2, Lcom/android/billingclient/api/j0;->j:Lcom/android/billingclient/api/h;

    .line 9
    .line 10
    const/16 v3, 0x3f

    .line 11
    .line 12
    invoke-static {v3, v1, v2}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-interface {p1, v1}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/android/billingclient/api/e0;->a:Lc2/h;

    .line 20
    .line 21
    invoke-interface {p1, v2, v0}, Lc2/h;->a(Lcom/android/billingclient/api/h;Lcom/android/billingclient/api/f;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    const-string v2, "BillingClient"

    .line 26
    .line 27
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/play_billing/b0;->b(Landroid/os/Bundle;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/play_billing/b0;->g(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-static {}, Lcom/android/billingclient/api/h;->c()Lcom/android/billingclient/api/h$a;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    invoke-virtual {v5, v3}, Lcom/android/billingclient/api/h$a;->c(I)Lcom/android/billingclient/api/h$a;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v5, v4}, Lcom/android/billingclient/api/h$a;->b(Ljava/lang/String;)Lcom/android/billingclient/api/h$a;

    .line 43
    .line 44
    .line 45
    if-eqz v3, :cond_1

    .line 46
    .line 47
    new-instance p1, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string v4, "getBillingConfig() failed. Response code: "

    .line 53
    .line 54
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/play_billing/b0;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v5}, Lcom/android/billingclient/api/h$a;->a()Lcom/android/billingclient/api/h;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    iget-object v2, p0, Lcom/android/billingclient/api/e0;->g:Lcom/android/billingclient/api/i0;

    .line 72
    .line 73
    const/16 v3, 0x17

    .line 74
    .line 75
    invoke-static {v3, v1, p1}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-interface {v2, v1}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 80
    .line 81
    .line 82
    iget-object v1, p0, Lcom/android/billingclient/api/e0;->a:Lc2/h;

    .line 83
    .line 84
    invoke-interface {v1, p1, v0}, Lc2/h;->a(Lcom/android/billingclient/api/h;Lcom/android/billingclient/api/f;)V

    .line 85
    .line 86
    .line 87
    return-void

    .line 88
    :cond_1
    const-string v3, "BILLING_CONFIG"

    .line 89
    .line 90
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    if-nez v4, :cond_2

    .line 95
    .line 96
    const-string p1, "getBillingConfig() returned a bundle with neither an error nor a billing config response"

    .line 97
    .line 98
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/play_billing/b0;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    const/4 p1, 0x6

    .line 102
    invoke-virtual {v5, p1}, Lcom/android/billingclient/api/h$a;->c(I)Lcom/android/billingclient/api/h$a;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v5}, Lcom/android/billingclient/api/h$a;->a()Lcom/android/billingclient/api/h;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    iget-object v2, p0, Lcom/android/billingclient/api/e0;->g:Lcom/android/billingclient/api/i0;

    .line 110
    .line 111
    const/16 v3, 0x40

    .line 112
    .line 113
    invoke-static {v3, v1, p1}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-interface {v2, v1}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 118
    .line 119
    .line 120
    iget-object v1, p0, Lcom/android/billingclient/api/e0;->a:Lc2/h;

    .line 121
    .line 122
    invoke-interface {v1, p1, v0}, Lc2/h;->a(Lcom/android/billingclient/api/h;Lcom/android/billingclient/api/f;)V

    .line 123
    .line 124
    .line 125
    return-void

    .line 126
    :cond_2
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    :try_start_0
    new-instance v3, Lcom/android/billingclient/api/f;

    .line 131
    .line 132
    invoke-direct {v3, p1}, Lcom/android/billingclient/api/f;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    iget-object p1, p0, Lcom/android/billingclient/api/e0;->a:Lc2/h;

    .line 136
    .line 137
    invoke-virtual {v5}, Lcom/android/billingclient/api/h$a;->a()Lcom/android/billingclient/api/h;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    invoke-interface {p1, v4, v3}, Lc2/h;->a(Lcom/android/billingclient/api/h;Lcom/android/billingclient/api/f;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .line 143
    .line 144
    return-void

    .line 145
    :catch_0
    move-exception p1

    .line 146
    const-string v3, "Got a JSON exception trying to decode BillingConfig. \n Exception: "

    .line 147
    .line 148
    invoke-static {v2, v3, p1}, Lcom/google/android/gms/internal/play_billing/b0;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 149
    .line 150
    .line 151
    iget-object p1, p0, Lcom/android/billingclient/api/e0;->g:Lcom/android/billingclient/api/i0;

    .line 152
    .line 153
    sget-object v2, Lcom/android/billingclient/api/j0;->j:Lcom/android/billingclient/api/h;

    .line 154
    .line 155
    const/16 v3, 0x41

    .line 156
    .line 157
    invoke-static {v3, v1, v2}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    invoke-interface {p1, v1}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 162
    .line 163
    .line 164
    iget-object p1, p0, Lcom/android/billingclient/api/e0;->a:Lc2/h;

    .line 165
    .line 166
    invoke-interface {p1, v2, v0}, Lc2/h;->a(Lcom/android/billingclient/api/h;Lcom/android/billingclient/api/f;)V

    .line 167
    .line 168
    .line 169
    return-void
.end method
