.class final Lcom/google/android/gms/internal/measurement/gd;
.super Lcom/google/android/gms/internal/measurement/ed;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/ed;-><init>()V

    return-void
.end method


# virtual methods
.method final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/measurement/hb;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/hb;->zzc:Lcom/google/android/gms/internal/measurement/fd;

    .line 4
    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/fd;->a()Lcom/google/android/gms/internal/measurement/fd;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/measurement/fd;->b()Lcom/google/android/gms/internal/measurement/fd;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p1, Lcom/google/android/gms/internal/measurement/hb;->zzc:Lcom/google/android/gms/internal/measurement/fd;

    .line 16
    .line 17
    :cond_0
    return-object v0
.end method

.method final b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/measurement/hb;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/hb;->zzc:Lcom/google/android/gms/internal/measurement/fd;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/fd;->d()V

    .line 6
    .line 7
    .line 8
    return-void
.end method
