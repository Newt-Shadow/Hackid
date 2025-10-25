.class Lcom/google/android/play/core/review/zzg;
.super Lcom/google/android/play/core/review/internal/zzg;
.source "SourceFile"


# instance fields
.field final zza:Lcom/google/android/play/core/review/internal/zzi;

.field final zzb:Lm6/l;

.field final synthetic zzc:Lcom/google/android/play/core/review/zzi;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/review/zzi;Lcom/google/android/play/core/review/internal/zzi;Lm6/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/play/core/review/zzg;->zzc:Lcom/google/android/play/core/review/zzi;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/play/core/review/internal/zzg;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/play/core/review/zzg;->zza:Lcom/google/android/play/core/review/internal/zzi;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/play/core/review/zzg;->zzb:Lm6/l;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public zzb(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/google/android/play/core/review/zzg;->zzc:Lcom/google/android/play/core/review/zzi;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/google/android/play/core/review/zzi;->zza:Lcom/google/android/play/core/review/internal/zzt;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/play/core/review/zzg;->zzb:Lm6/l;

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/google/android/play/core/review/internal/zzt;->zzr(Lm6/l;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object p1, p0, Lcom/google/android/play/core/review/zzg;->zza:Lcom/google/android/play/core/review/internal/zzi;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    new-array v0, v0, [Ljava/lang/Object;

    .line 16
    .line 17
    const-string v1, "onGetLaunchReviewFlowInfo"

    .line 18
    .line 19
    invoke-virtual {p1, v1, v0}, Lcom/google/android/play/core/review/internal/zzi;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 20
    .line 21
    .line 22
    return-void
.end method
