.class final Lcom/google/android/gms/measurement/internal/va;
.super Lcom/google/android/gms/measurement/internal/x;
.source "SourceFile"


# instance fields
.field final synthetic e:Lcom/google/android/gms/measurement/internal/vb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/vb;Lcom/google/android/gms/measurement/internal/b8;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/va;->e:Lcom/google/android/gms/measurement/internal/vb;

    .line 5
    .line 6
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/x;-><init>(Lcom/google/android/gms/measurement/internal/b8;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/va;->e:Lcom/google/android/gms/measurement/internal/vb;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/z7;->h()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/vb;->W()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p5;->w()Lcom/google/android/gms/measurement/internal/n5;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v2, "Inactivity, disconnecting from the service"

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/vb;->A()V

    .line 29
    .line 30
    .line 31
    return-void
.end method
