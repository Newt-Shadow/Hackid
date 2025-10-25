.class final Lcom/google/android/gms/internal/measurement/k2;
.super Lcom/google/android/gms/internal/measurement/p3;
.source "SourceFile"


# instance fields
.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/lang/Object;

.field final synthetic h:Z

.field final synthetic i:Lcom/google/android/gms/internal/measurement/a4;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/a4;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/k2;->e:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/k2;->f:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/k2;->g:Ljava/lang/Object;

    .line 6
    .line 7
    iput-boolean p5, p0, Lcom/google/android/gms/internal/measurement/k2;->h:Z

    .line 8
    .line 9
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/k2;->i:Lcom/google/android/gms/internal/measurement/a4;

    .line 13
    .line 14
    const/4 p2, 0x1

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/p3;-><init>(Lcom/google/android/gms/internal/measurement/a4;Z)V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method final a()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/k2;->i:Lcom/google/android/gms/internal/measurement/a4;

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
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/k2;->g:Ljava/lang/Object;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/k2;->e:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/k2;->f:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {v0}, Lu5/b;->e1(Ljava/lang/Object;)Lu5/a;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    iget-boolean v5, p0, Lcom/google/android/gms/internal/measurement/k2;->h:Z

    .line 25
    .line 26
    iget-wide v6, p0, Lcom/google/android/gms/internal/measurement/p3;->a:J

    .line 27
    .line 28
    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/measurement/t1;->setUserProperty(Ljava/lang/String;Ljava/lang/String;Lu5/a;ZJ)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
