.class final Lcom/google/android/gms/measurement/internal/tc;
.super Lcom/google/android/gms/measurement/internal/x;
.source "SourceFile"


# instance fields
.field final synthetic e:Lcom/google/android/gms/measurement/internal/uc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/uc;Lcom/google/android/gms/measurement/internal/b8;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/tc;->e:Lcom/google/android/gms/measurement/internal/uc;

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
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/tc;->e:Lcom/google/android/gms/measurement/internal/uc;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/uc;->n()V

    .line 4
    .line 5
    .line 6
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p5;->w()Lcom/google/android/gms/measurement/internal/n5;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string v2, "Starting upload from DelayedRunnable"

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/vc;->b:Lcom/google/android/gms/measurement/internal/pd;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/pd;->r()V

    .line 24
    .line 25
    .line 26
    return-void
.end method
