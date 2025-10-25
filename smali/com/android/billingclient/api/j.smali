.class public final Lcom/android/billingclient/api/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/billingclient/api/j$a;,
        Lcom/android/billingclient/api/j$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/play_billing/j;


# direct methods
.method synthetic constructor <init>(Lcom/android/billingclient/api/j$a;Lc2/u0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/billingclient/api/j$a;->c(Lcom/android/billingclient/api/j$a;)Lcom/google/android/gms/internal/play_billing/j;

    move-result-object p1

    iput-object p1, p0, Lcom/android/billingclient/api/j;->a:Lcom/google/android/gms/internal/play_billing/j;

    return-void
.end method

.method public static a()Lcom/android/billingclient/api/j$a;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/billingclient/api/j$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/billingclient/api/j$a;-><init>(Lc2/r0;)V

    return-object v0
.end method


# virtual methods
.method public final b()Lcom/google/android/gms/internal/play_billing/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/j;->a:Lcom/google/android/gms/internal/play_billing/j;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/j;->a:Lcom/google/android/gms/internal/play_billing/j;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/android/billingclient/api/j$b;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/android/billingclient/api/j$b;->c()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method
