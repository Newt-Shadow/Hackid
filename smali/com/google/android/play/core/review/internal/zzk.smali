.class public final synthetic Lcom/google/android/play/core/review/internal/zzk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm6/f;


# instance fields
.field public final synthetic zza:Lcom/google/android/play/core/review/internal/zzt;

.field public final synthetic zzb:Lm6/l;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/review/internal/zzt;Lm6/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/review/internal/zzk;->zza:Lcom/google/android/play/core/review/internal/zzt;

    iput-object p2, p0, Lcom/google/android/play/core/review/internal/zzk;->zzb:Lm6/l;

    return-void
.end method


# virtual methods
.method public final onComplete(Lm6/Task;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/review/internal/zzk;->zza:Lcom/google/android/play/core/review/internal/zzt;

    iget-object v1, p0, Lcom/google/android/play/core/review/internal/zzk;->zzb:Lm6/l;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/play/core/review/internal/zzt;->zzq(Lm6/l;Lm6/Task;)V

    return-void
.end method
