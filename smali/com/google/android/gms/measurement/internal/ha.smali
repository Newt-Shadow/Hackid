.class final Lcom/google/android/gms/measurement/internal/ha;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/google/android/gms/measurement/internal/la;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/la;J)V
    .locals 0

    .line 1
    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/ha;->a:J

    .line 2
    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/ha;->b:Lcom/google/android/gms/measurement/internal/la;

    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ha;->b:Lcom/google/android/gms/measurement/internal/la;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->M()Lcom/google/android/gms/measurement/internal/b2;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/ha;->a:J

    .line 10
    .line 11
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/b2;->k(J)V

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/la;->e:Lcom/google/android/gms/measurement/internal/da;

    .line 16
    .line 17
    return-void
.end method
