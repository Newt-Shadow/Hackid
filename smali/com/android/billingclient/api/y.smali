.class final Lcom/android/billingclient/api/y;
.super Landroid/os/ResultReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lc2/e;

.field final synthetic b:Lcom/android/billingclient/api/e;


# direct methods
.method constructor <init>(Lcom/android/billingclient/api/e;Landroid/os/Handler;Lc2/e;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/android/billingclient/api/y;->a:Lc2/e;

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/billingclient/api/y;->b:Lcom/android/billingclient/api/e;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onReceiveResult(ILandroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/billingclient/api/h;->c()Lcom/android/billingclient/api/h$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/h$a;->c(I)Lcom/android/billingclient/api/h$a;

    .line 6
    .line 7
    .line 8
    if-eqz p1, :cond_2

    .line 9
    .line 10
    const/16 p1, 0x10

    .line 11
    .line 12
    if-nez p2, :cond_0

    .line 13
    .line 14
    iget-object p2, p0, Lcom/android/billingclient/api/y;->b:Lcom/android/billingclient/api/e;

    .line 15
    .line 16
    invoke-static {p2}, Lcom/android/billingclient/api/e;->m0(Lcom/android/billingclient/api/e;)Lcom/android/billingclient/api/i0;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    sget-object v0, Lcom/android/billingclient/api/j0;->j:Lcom/android/billingclient/api/h;

    .line 21
    .line 22
    const/16 v1, 0x49

    .line 23
    .line 24
    invoke-static {v1, p1, v0}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-interface {p2, p1}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/android/billingclient/api/y;->a:Lc2/e;

    .line 32
    .line 33
    invoke-interface {p1, v0}, Lc2/e;->a(Lcom/android/billingclient/api/h;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    const-string v1, "BillingClient"

    .line 38
    .line 39
    invoke-static {p2, v1}, Lcom/google/android/gms/internal/play_billing/b0;->g(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/h$a;->b(Ljava/lang/String;)Lcom/android/billingclient/api/h$a;

    .line 44
    .line 45
    .line 46
    const-string v1, "INTERNAL_LOG_ERROR_REASON"

    .line 47
    .line 48
    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    iget-object v2, p0, Lcom/android/billingclient/api/y;->b:Lcom/android/billingclient/api/e;

    .line 53
    .line 54
    invoke-static {v2}, Lcom/android/billingclient/api/e;->m0(Lcom/android/billingclient/api/e;)Lcom/android/billingclient/api/i0;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    if-eqz v1, :cond_1

    .line 59
    .line 60
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/y4;->a(I)I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    goto :goto_0

    .line 65
    :cond_1
    const/16 v1, 0x17

    .line 66
    .line 67
    :goto_0
    invoke-virtual {v0}, Lcom/android/billingclient/api/h$a;->a()Lcom/android/billingclient/api/h;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    const-string v4, "INTERNAL_LOG_ERROR_ADDITIONAL_DETAILS"

    .line 72
    .line 73
    invoke-virtual {p2, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    invoke-static {v1, p1, v3, p2}, Lcom/android/billingclient/api/h0;->c(IILcom/android/billingclient/api/h;Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-interface {v2, p1}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 82
    .line 83
    .line 84
    :cond_2
    iget-object p1, p0, Lcom/android/billingclient/api/y;->a:Lc2/e;

    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/android/billingclient/api/h$a;->a()Lcom/android/billingclient/api/h;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    invoke-interface {p1, p2}, Lc2/e;->a(Lcom/android/billingclient/api/h;)V

    .line 91
    .line 92
    .line 93
    return-void
.end method
