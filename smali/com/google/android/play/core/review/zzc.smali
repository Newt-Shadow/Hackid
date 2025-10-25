.class final Lcom/google/android/play/core/review/zzc;
.super Landroid/os/ResultReceiver;
.source "SourceFile"


# instance fields
.field final synthetic zza:Lm6/l;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/review/zzd;Landroid/os/Handler;Lm6/l;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/google/android/play/core/review/zzc;->zza:Lm6/l;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceiveResult(ILandroid/os/Bundle;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/play/core/review/zzc;->zza:Lm6/l;

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    invoke-virtual {p1, p2}, Lm6/l;->e(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    return-void
.end method
