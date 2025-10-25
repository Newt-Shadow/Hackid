.class final Lcom/android/billingclient/api/f0;
.super Lcom/google/android/gms/internal/play_billing/e6;
.source "SourceFile"


# instance fields
.field final a:Lc2/d;

.field final g:Lcom/android/billingclient/api/i0;


# direct methods
.method synthetic constructor <init>(Lc2/d;Lcom/android/billingclient/api/i0;Lc2/z;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/e6;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/billingclient/api/f0;->a:Lc2/d;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/billingclient/api/f0;->g:Lcom/android/billingclient/api/i0;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final c(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    const/16 v0, 0xe

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/android/billingclient/api/f0;->g:Lcom/android/billingclient/api/i0;

    .line 6
    .line 7
    sget-object v1, Lcom/android/billingclient/api/j0;->j:Lcom/android/billingclient/api/h;

    .line 8
    .line 9
    const/16 v2, 0x43

    .line 10
    .line 11
    invoke-static {v2, v0, v1}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {p1, v0}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/android/billingclient/api/f0;->a:Lc2/d;

    .line 19
    .line 20
    invoke-interface {p1, v1}, Lc2/d;->a(Lcom/android/billingclient/api/h;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    const-string v1, "BillingClient"

    .line 25
    .line 26
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/play_billing/b0;->b(Landroid/os/Bundle;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/play_billing/b0;->g(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-static {v2, p1}, Lcom/android/billingclient/api/j0;->a(ILjava/lang/String;)Lcom/android/billingclient/api/h;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    new-instance v3, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v4, "isAlternativeBillingOnlyAvailableAsync() failed. Response code: "

    .line 46
    .line 47
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/b0;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object v1, p0, Lcom/android/billingclient/api/f0;->g:Lcom/android/billingclient/api/i0;

    .line 61
    .line 62
    const/16 v2, 0x17

    .line 63
    .line 64
    invoke-static {v2, v0, p1}, Lcom/android/billingclient/api/h0;->b(IILcom/android/billingclient/api/h;)Lcom/google/android/gms/internal/play_billing/p4;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-interface {v1, v0}, Lcom/android/billingclient/api/i0;->e(Lcom/google/android/gms/internal/play_billing/p4;)V

    .line 69
    .line 70
    .line 71
    :cond_1
    iget-object v0, p0, Lcom/android/billingclient/api/f0;->a:Lc2/d;

    .line 72
    .line 73
    invoke-interface {v0, p1}, Lc2/d;->a(Lcom/android/billingclient/api/h;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method
