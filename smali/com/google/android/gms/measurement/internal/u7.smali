.class final Lcom/google/android/gms/measurement/internal/u7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/measurement/w1;

.field final synthetic b:Lcom/google/android/gms/measurement/internal/g0;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lcom/google/android/gms/internal/measurement/w1;Lcom/google/android/gms/measurement/internal/g0;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/u7;->a:Lcom/google/android/gms/internal/measurement/w1;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/u7;->b:Lcom/google/android/gms/measurement/internal/g0;

    .line 4
    .line 5
    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/u7;->c:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/u7;->d:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    .line 11
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/u7;->d:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->J()Lcom/google/android/gms/measurement/internal/vb;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/u7;->a:Lcom/google/android/gms/internal/measurement/w1;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/u7;->b:Lcom/google/android/gms/measurement/internal/g0;

    .line 12
    .line 13
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/u7;->c:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/vb;->B(Lcom/google/android/gms/internal/measurement/w1;Lcom/google/android/gms/measurement/internal/g0;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
