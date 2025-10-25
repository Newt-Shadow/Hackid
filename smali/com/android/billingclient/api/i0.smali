.class interface abstract Lcom/android/billingclient/api/i0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/gms/internal/play_billing/m;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const-string v0, "com.android.vending.billing.PURCHASES_UPDATED"

    .line 2
    .line 3
    sget-object v1, Lcom/google/android/gms/internal/play_billing/d5;->c:Lcom/google/android/gms/internal/play_billing/d5;

    .line 4
    .line 5
    const-string v2, "com.android.vending.billing.LOCAL_BROADCAST_PURCHASES_UPDATED"

    .line 6
    .line 7
    sget-object v3, Lcom/google/android/gms/internal/play_billing/d5;->d:Lcom/google/android/gms/internal/play_billing/d5;

    .line 8
    .line 9
    const-string v4, "com.android.vending.billing.ALTERNATIVE_BILLING"

    .line 10
    .line 11
    sget-object v5, Lcom/google/android/gms/internal/play_billing/d5;->e:Lcom/google/android/gms/internal/play_billing/d5;

    .line 12
    .line 13
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/play_billing/m;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/m;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/android/billingclient/api/i0;->a:Lcom/google/android/gms/internal/play_billing/m;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public abstract a([B)V
.end method

.method public abstract b(ILjava/util/List;Ljava/util/List;Lcom/android/billingclient/api/h;ZZ)V
.end method

.method public abstract c(Lcom/google/android/gms/internal/play_billing/t4;)V
.end method

.method public abstract d(ILjava/util/List;ZZ)V
.end method

.method public abstract e(Lcom/google/android/gms/internal/play_billing/p4;)V
.end method

.method public abstract f(Lcom/google/android/gms/internal/play_billing/b6;)V
.end method
