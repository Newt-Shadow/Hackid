.class final Lcom/android/billingclient/api/c0;
.super Lcom/google/android/gms/internal/play_billing/b1;
.source "SourceFile"


# instance fields
.field final a:Lc2/f;

.field final g:Lcom/android/billingclient/api/i0;


# direct methods
.method synthetic constructor <init>(Lc2/f;Lcom/android/billingclient/api/i0;Lc2/v;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/b1;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/billingclient/api/c0;->a:Lc2/f;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/billingclient/api/c0;->g:Lcom/android/billingclient/api/i0;

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
    const/16 v1, 0xf

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/billingclient/api/c0;->g:Lcom/android/billingclient/api/i0;

    .line 7
    .line 8
    sget-object v2, Lcom/android/billingclient/api/j0;->j:Lcom/android/billingclient/api/h;

    .line 9
    .line 10
    const/16 v3, 0x47

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
    iget-object p1, p0, Lcom/android/billingclient/api/c0;->a:Lc2/f;

    .line 20
    .line 21
    invoke-interface {p1, v2, v0}, Lc2/f;->a(Lcom/android/billingclient/api/h;Lcom/android/billingclient/api/b;)V

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
    invoke-static {v3, v4}, Lcom/android/billingclient/api/j0;->a(ILjava/lang/String;)Lcom/android/billingclient/api/h;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    if-eqz v3, :cond_1

    .line 40
    .line 41
    new-instance p1, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string v5, "createAlternativeBillingOnlyReportingDetailsAsync() failed. Response code: "

    .line 47
    .line 48
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/play_billing/b0;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lcom/android/billingclient/api/c0;->g:Lcom/android/billingclient/api/i0;

    .line 62
    .line 63
    const/16 v2, 0x17

    .line 64
    .line 65
    invoke-static {v2, v1, v4}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-interface {p1, v1}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 70
    .line 71
    .line 72
    iget-object p1, p0, Lcom/android/billingclient/api/c0;->a:Lc2/f;

    .line 73
    .line 74
    invoke-interface {p1, v4, v0}, Lc2/f;->a(Lcom/android/billingclient/api/h;Lcom/android/billingclient/api/b;)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_1
    const-string v3, "CREATE_ALTERNATIVE_BILLING_ONLY_REPORTING_DETAILS"

    .line 79
    .line 80
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    :try_start_0
    new-instance v3, Lcom/android/billingclient/api/b;

    .line 85
    .line 86
    invoke-direct {v3, p1}, Lcom/android/billingclient/api/b;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .line 88
    .line 89
    iget-object p1, p0, Lcom/android/billingclient/api/c0;->a:Lc2/f;

    .line 90
    .line 91
    invoke-interface {p1, v4, v3}, Lc2/f;->a(Lcom/android/billingclient/api/h;Lcom/android/billingclient/api/b;)V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :catch_0
    move-exception p1

    .line 96
    const-string v3, "Error when parsing invalid alternative billing only reporting details. \n Exception: "

    .line 97
    .line 98
    invoke-static {v2, v3, p1}, Lcom/google/android/gms/internal/play_billing/b0;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 99
    .line 100
    .line 101
    iget-object p1, p0, Lcom/android/billingclient/api/c0;->g:Lcom/android/billingclient/api/i0;

    .line 102
    .line 103
    sget-object v2, Lcom/android/billingclient/api/j0;->j:Lcom/android/billingclient/api/h;

    .line 104
    .line 105
    const/16 v3, 0x48

    .line 106
    .line 107
    invoke-static {v3, v1, v2}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-interface {p1, v1}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 112
    .line 113
    .line 114
    iget-object p1, p0, Lcom/android/billingclient/api/c0;->a:Lc2/f;

    .line 115
    .line 116
    invoke-interface {p1, v2, v0}, Lc2/f;->a(Lcom/android/billingclient/api/h;Lcom/android/billingclient/api/b;)V

    .line 117
    .line 118
    .line 119
    return-void
.end method
