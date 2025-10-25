.class final Lcom/google/android/gms/internal/measurement/g3;
.super Lcom/google/android/gms/internal/measurement/p3;
.source "SourceFile"


# instance fields
.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/Object;

.field final synthetic g:Lcom/google/android/gms/internal/measurement/a4;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/a4;ZILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/g3;->e:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p5, p0, Lcom/google/android/gms/internal/measurement/g3;->f:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/g3;->g:Lcom/google/android/gms/internal/measurement/a4;

    .line 9
    .line 10
    const/4 p2, 0x0

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/p3;-><init>(Lcom/google/android/gms/internal/measurement/a4;Z)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method final a()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/g3;->g:Lcom/google/android/gms/internal/measurement/a4;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/a4;->n()Lcom/google/android/gms/internal/measurement/t1;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ln5/q;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    move-object v1, v0

    .line 12
    check-cast v1, Lcom/google/android/gms/internal/measurement/t1;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/g3;->f:Ljava/lang/Object;

    .line 15
    .line 16
    const/4 v2, 0x5

    .line 17
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/g3;->e:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v0}, Lu5/b;->e1(Ljava/lang/Object;)Lu5/a;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    const/4 v0, 0x0

    .line 24
    invoke-static {v0}, Lu5/b;->e1(Ljava/lang/Object;)Lu5/a;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    invoke-static {v0}, Lu5/b;->e1(Ljava/lang/Object;)Lu5/a;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/t1;->logHealthData(ILjava/lang/String;Lu5/a;Lu5/a;Lu5/a;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method
