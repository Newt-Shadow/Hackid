.class final synthetic Lcom/google/android/gms/measurement/internal/jc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

.field private final synthetic b:Lcom/google/android/gms/internal/measurement/z1;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lcom/google/android/gms/internal/measurement/z1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/jc;->a:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/jc;->b:Lcom/google/android/gms/internal/measurement/z1;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jc;->b:Lcom/google/android/gms/internal/measurement/z1;

    .line 2
    .line 3
    :try_start_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/z1;->h()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :catch_0
    move-exception v0

    .line 8
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/jc;->a:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    .line 9
    .line 10
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 11
    .line 12
    invoke-static {v1}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/google/android/gms/measurement/internal/w6;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p5;->r()Lcom/google/android/gms/measurement/internal/n5;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const-string v2, "Failed to call IDynamiteUploadBatchesCallback"

    .line 27
    .line 28
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/n5;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
