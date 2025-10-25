.class final Lcom/google/android/gms/measurement/internal/o7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/measurement/internal/ud;

.field final synthetic b:Lcom/google/android/gms/measurement/internal/ae;

.field final synthetic c:Lcom/google/android/gms/measurement/internal/y7;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/y7;Lcom/google/android/gms/measurement/internal/ud;Lcom/google/android/gms/measurement/internal/ae;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/o7;->a:Lcom/google/android/gms/measurement/internal/ud;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/o7;->b:Lcom/google/android/gms/measurement/internal/ae;

    .line 4
    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/o7;->c:Lcom/google/android/gms/measurement/internal/y7;

    .line 9
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/o7;->c:Lcom/google/android/gms/measurement/internal/y7;

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
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/o7;->a:Lcom/google/android/gms/measurement/internal/ud;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/ud;->g()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/o7;->b:Lcom/google/android/gms/measurement/internal/ae;

    .line 19
    .line 20
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/ud;->b:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y7;->j1()Lcom/google/android/gms/measurement/internal/pd;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/pd;->d0(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/ae;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/o7;->b:Lcom/google/android/gms/measurement/internal/ae;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y7;->j1()Lcom/google/android/gms/measurement/internal/pd;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/pd;->c0(Lcom/google/android/gms/measurement/internal/ud;Lcom/google/android/gms/measurement/internal/ae;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method
