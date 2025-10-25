.class final Lcom/google/android/gms/measurement/internal/gc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:J

.field final b:J

.field final synthetic c:Lcom/google/android/gms/measurement/internal/hc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/hc;JJ)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/gc;->c:Lcom/google/android/gms/measurement/internal/hc;

    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/gc;->a:J

    .line 10
    .line 11
    iput-wide p4, p0, Lcom/google/android/gms/measurement/internal/gc;->b:J

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/gc;->c:Lcom/google/android/gms/measurement/internal/hc;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/hc;->b:Lcom/google/android/gms/measurement/internal/mc;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->b()Lcom/google/android/gms/measurement/internal/s6;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Lcom/google/android/gms/measurement/internal/fc;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/fc;-><init>(Lcom/google/android/gms/measurement/internal/gc;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/s6;->t(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
