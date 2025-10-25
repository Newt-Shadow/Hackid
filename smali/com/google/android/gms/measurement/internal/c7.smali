.class final Lcom/google/android/gms/measurement/internal/c7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/measurement/internal/i;

.field final synthetic b:Lcom/google/android/gms/measurement/internal/y7;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/y7;Lcom/google/android/gms/measurement/internal/i;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/c7;->a:Lcom/google/android/gms/measurement/internal/i;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/c7;->b:Lcom/google/android/gms/measurement/internal/y7;

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
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/c7;->b:Lcom/google/android/gms/measurement/internal/y7;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y7;->j1()Lcom/google/android/gms/measurement/internal/pd;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/pd;->E()V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/c7;->a:Lcom/google/android/gms/measurement/internal/i;

    .line 11
    .line 12
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/i;->c:Lcom/google/android/gms/measurement/internal/ud;

    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/ud;->g()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y7;->j1()Lcom/google/android/gms/measurement/internal/pd;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/pd;->l0(Lcom/google/android/gms/measurement/internal/i;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y7;->j1()Lcom/google/android/gms/measurement/internal/pd;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/pd;->j0(Lcom/google/android/gms/measurement/internal/i;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method
