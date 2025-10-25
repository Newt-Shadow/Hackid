.class final Lcom/google/android/play/core/review/zzh;
.super Lcom/google/android/play/core/review/zzg;
.source "SourceFile"


# instance fields
.field final zzd:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/review/zzi;Lm6/l;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/play/core/review/internal/zzi;

    .line 2
    .line 3
    const-string v1, "OnRequestInstallCallback"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/google/android/play/core/review/internal/zzi;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/play/core/review/zzg;-><init>(Lcom/google/android/play/core/review/zzi;Lcom/google/android/play/core/review/internal/zzi;Lm6/l;)V

    .line 9
    .line 10
    .line 11
    iput-object p3, p0, Lcom/google/android/play/core/review/zzh;->zzd:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final zzb(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/play/core/review/zzg;->zzb(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "confirmation_intent"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/app/PendingIntent;

    .line 11
    .line 12
    const-string v1, "is_review_no_op"

    .line 13
    .line 14
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    iget-object v1, p0, Lcom/google/android/play/core/review/zzg;->zzb:Lm6/l;

    .line 19
    .line 20
    new-instance v2, Lcom/google/android/play/core/review/zza;

    .line 21
    .line 22
    invoke-direct {v2, v0, p1}, Lcom/google/android/play/core/review/zza;-><init>(Landroid/app/PendingIntent;Z)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2}, Lm6/l;->e(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    return-void
.end method
