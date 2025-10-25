.class final Lcom/google/android/gms/measurement/internal/pa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/measurement/internal/ae;

.field final synthetic b:Z

.field final synthetic c:Lcom/google/android/gms/measurement/internal/ud;

.field final synthetic d:Lcom/google/android/gms/measurement/internal/vb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/vb;Lcom/google/android/gms/measurement/internal/ae;ZLcom/google/android/gms/measurement/internal/ud;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/pa;->a:Lcom/google/android/gms/measurement/internal/ae;

    .line 2
    .line 3
    iput-boolean p3, p0, Lcom/google/android/gms/measurement/internal/pa;->b:Z

    .line 4
    .line 5
    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/pa;->c:Lcom/google/android/gms/measurement/internal/ud;

    .line 6
    .line 7
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/pa;->d:Lcom/google/android/gms/measurement/internal/vb;

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
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/pa;->d:Lcom/google/android/gms/measurement/internal/vb;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/vb;->N()Li6/e;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/z7;->a:Lcom/google/android/gms/measurement/internal/w6;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w6;->a()Lcom/google/android/gms/measurement/internal/p5;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p5;->o()Lcom/google/android/gms/measurement/internal/n5;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "Discarding data. Failed to set user property"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/n5;->a(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/pa;->a:Lcom/google/android/gms/measurement/internal/ae;

    .line 26
    .line 27
    invoke-static {v2}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    iget-boolean v3, p0, Lcom/google/android/gms/measurement/internal/pa;->b:Z

    .line 31
    .line 32
    if-eqz v3, :cond_1

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/pa;->c:Lcom/google/android/gms/measurement/internal/ud;

    .line 37
    .line 38
    :goto_0
    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/gms/measurement/internal/vb;->b0(Li6/e;Lo5/a;Lcom/google/android/gms/measurement/internal/ae;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/vb;->J()V

    .line 42
    .line 43
    .line 44
    return-void
.end method
